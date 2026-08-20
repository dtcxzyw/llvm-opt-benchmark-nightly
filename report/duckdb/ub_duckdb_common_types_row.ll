inline.NumInlined: 10729
inline.NumDeleted: 3679
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 254
loop-unroll.NumUnrolled: 260
begin_hunk_0_@_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_18TupleDataScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE:bb.a
  %.0911.i.i.i.i.i.i64.ph = phi ptr [ %i.fc, %vector.memcheck191 ], [ %i.fc, %.lr.ph.i.i.i.i.i.i62.preheader ], [ %i.fy, %middle.block210 ]
  br label %.lr.ph.i.i.i.i.i.i62

.lr.ph.i.i.i.i.i.i62:                             ; preds = %.lr.ph.i.i.i.i.i.i62.preheader239, %.lr.ph.i.i.i.i.i.i62
  %.012.i.i.i.i.i.i63 = phi ptr [ %i.gg, %.lr.ph.i.i.i.i.i.i62 ], [ %.012.i.i.i.i.i.i63.ph, %.lr.ph.i.i.i.i.i.i62.preheader239 ] ; 2 uses
  %.0911.i.i.i.i.i.i64 = phi ptr [ %i.gf, %.lr.ph.i.i.i.i.i.i62 ], [ %.0911.i.i.i.i.i.i64.ph, %.lr.ph.i.i.i.i.i.i62.preheader239 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !974)
  call void @llvm.experimental.noalias.scope.decl(metadata !977)
  %i.ge = load i64, ptr %.0911.i.i.i.i.i.i64, align 8, !tbaa !821, !alias.scope !977, !noalias !974
  store i64 %i.ge, ptr %.012.i.i.i.i.i.i63, align 8, !tbaa !821, !alias.scope !974, !noalias !977
  store ptr null, ptr %.0911.i.i.i.i.i.i64, align 8, !tbaa !821, !alias.scope !977, !noalias !974
  %i.gf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i64, i64 8 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i63, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i65 = icmp eq ptr %i.gf, %i.ez
  br i1 %.not.i.i.i.i.i.i65, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i, label %.lr.ph.i.i.i.i.i.i62, !llvm.loop !985

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i.i62, %middle.block210, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i66 = phi ptr [ %i.fn, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.fx, %middle.block210 ], [ %i.gg, %.lr.ph.i.i.i.i.i.i62 ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i66, i64 8
  %.not.i22.i.i67 = icmp eq ptr %i.fc, null
  br i1 %.not.i22.i.i67, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.fc) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit21.i.i
  store ptr %i.fn, ptr %i.v, align 8, !tbaa !819
  store ptr %i.gh, ptr %i.w, align 8, !tbaa !820
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  store ptr %i.gi, ptr %i.x, align 8, !tbaa !827
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE12emplace_backIJEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_11VectorCacheESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i, %bb.ab, %_ZNSt10unique_ptrIN6duckdb6VectorESt14default_deleteIS1_EED2Ev.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.068.093, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.gj, %i.q
  br i1 %.not, label %._crit_edge.loopexit, label %bb.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_26TupleDataParallelScanStateENS_22TupleDataPinPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(600) %1, i8 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_18TupleDataScanStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, i8 noundef zeroext %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_26TupleDataParallelScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr nofree noundef captures(none) %2, i8 noundef zeroext %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::vector.27", align 16 ; 5 uses
  %i.a = load <2 x ptr>, ptr %2, align 8, !tbaa !90
  store <2 x ptr> %i.a, ptr %4, align 16, !tbaa !90
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !803
  store ptr %i.d, ptr %i.b, align 16, !tbaa !803
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZNK6duckdb19TupleDataCollection14InitializeScanERNS_18TupleDataScanStateENS_6vectorImLb1ESaImEEENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, ptr noundef nonnull %4, i8 noundef zeroext %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %4, align 16, !tbaa !449   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  ret void

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %4, align 16, !tbaa !449   ; 2 uses
  %.not.i.i.i4 = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorImSaImEED2Ev.exit5, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #30
  br label %_ZNSt6vectorImSaImEED2Ev.exit5

_ZNSt6vectorImSaImEED2Ev.exit5:                   ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb19TupleDataCollection10FetchChunkERNS_18TupleDataScanStateEmbNS_12optional_ptrINS_19SortKeyPayloadStateELb1EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, i64 noundef %2, i1 noundef zeroext %3, ptr %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::allocator.172", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !243  ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !244  ; 3 uses
  %.not46 = icmp eq ptr %i.c, %i.d
  br i1 %.not46, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.02845 = phi i64 [ %i.t, %bb.b ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.02944 = phi i64 [ %i.s, %bb.b ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.02845
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !245  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !422
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !413
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %.not = icmp ult i64 %.02944, %i.r
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = sub nuw i64 %.02944, %i.r
  %i.t = add nuw i64 %.02845, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !986

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.u = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %._crit_edge
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.u, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.x = load ptr, ptr %5, align 8, !tbaa !53     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.x) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn40 = phi { ptr, i32 } [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.u) #31
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ab = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.j)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = ptrtoint ptr %4 to i64
  tail call void @_ZN6duckdb18TupleDataAllocator20InitializeChunkStateERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmbNS_12optional_ptrINS_19SortKeyPayloadStateELb1EEE(ptr noundef nonnull align 8 dereferenceable(128) %i.ab, ptr noundef nonnull align 8 dereferenceable(192) %i.j, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(488) %i.ac, i64 noundef %.02944, i1 noundef zeroext %3, i64 %i.ad)
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !413
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %.02944
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !414
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !416
  ret i64 %i.ai

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn39 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn40, %bb.f ], [ %i.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn39

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb19TupleDataCollection4ScanERNS_18TupleDataScanStateERNS_9DataChunkE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(560) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !420  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !243  ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !244  ; 5 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %.not.i = icmp ult i64 %i.b, %i.j
  br i1 %.not.i, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 5 uses
  %.promoted.i = load i64, ptr %i.k, align 8, !tbaa !421 ; 3 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !245  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !422
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !413
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %.not12.peel.i = icmp ult i64 %.promoted.i, %i.u
  br i1 %.not12.peel.i, label %.thread, label %bb.b

.thread:                                          ; preds = %.preheader.i
  %i.v = add nuw i64 %.promoted.i, 1
  store i64 %i.v, ptr %i.k, align 8, !tbaa !421
  br label %bb.g

bb.b:                                             ; preds = %.preheader.i
  %i.w = add nuw i64 %i.b, 1                      ; 3 uses
  store i64 %i.w, ptr %i.a, align 8, !tbaa !420
  store i64 0, ptr %i.k, align 8, !tbaa !421
  %.not13.peel.i = icmp ult i64 %i.w, %i.j
  br i1 %.not13.peel.i, label %.peel.next.i, label %.loopexit

.peel.next.i:                                     ; preds = %bb.b, %bb.c
  %i.x = phi i64 [ %i.ae, %bb.c ], [ %i.w, %bb.b ] ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !245  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !422
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !413
  %.not12.not.i = icmp eq ptr %i.ac, %i.ad
  br i1 %.not12.not.i, label %bb.c, label %3

bb.c:                                             ; preds = %.peel.next.i
  %i.ae = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.ae, ptr %i.a, align 8, !tbaa !420
  store i64 0, ptr %i.k, align 8, !tbaa !421
  %exitcond.not = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not, label %.loopexit, label %.peel.next.i, !llvm.loop !423

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %i.af = icmp eq ptr %i.f, %i.e
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !245 ; 2 uses
  %i.ai = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ah)
  tail call void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %i.ai, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %i.ah)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 0, ptr %i.aj, align 8, !tbaa !93
  br label %bb.h

3:                                                ; preds = %.peel.next.i
  store i64 1, ptr %i.k, align 8, !tbaa !421
  %.not15 = icmp eq i64 %i.x, %i.b
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %3
  %i.ak = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(192) %i.m)
  tail call void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %i.ak, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %i.m)
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %3
  %4 = phi i64 [ %.promoted.i, %.thread ], [ 0, %bb.f ], [ 0, %3 ]
  %.lcssa.i28 = phi i64 [ %i.b, %.thread ], [ %i.x, %bb.f ], [ %i.x, %3 ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @_ZN6duckdb19TupleDataCollection11ScanAtIndexERNS_17TupleDataPinStateERNS_19TupleDataChunkStateERKNS_6vectorImLb1ESaImEEEmmRNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(488) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 noundef %.lcssa.i28, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(72) %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.0.i22 = phi i1 [ true, %bb.g ], [ false, %bb.e ]
  ret i1 %.0.i22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN6duckdb19TupleDataCollection13NextScanIndexERNS_18TupleDataScanStateERmS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(560) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !420  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !243
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !244  ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3                   ; 3 uses
  %.not = icmp ult i64 %i.b, %i.j
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 5 uses
  %.promoted = load i64, ptr %i.k, align 8, !tbaa !421
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !245  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !422
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !413
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3
  %.not12.peel = icmp ult i64 %.promoted, %i.u
  br i1 %.not12.peel, label %.loopexit20, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.v = add nuw i64 %i.b, 1                      ; 3 uses
  store i64 %i.v, ptr %i.a, align 8, !tbaa !420
  store i64 0, ptr %i.k, align 8, !tbaa !421
  %.not13.peel = icmp ult i64 %i.v, %i.j
  br i1 %.not13.peel, label %.peel.next, label %.loopexit

.peel.next:                                       ; preds = %bb.b, %bb.c
  %i.w = phi i64 [ %i.ad, %bb.c ], [ %i.v, %bb.b ] ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !245  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !422
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !413
  %.not12.not = icmp eq ptr %i.ab, %i.ac
  br i1 %.not12.not, label %bb.c, label %.loopexit20

bb.c:                                             ; preds = %.peel.next
  %i.ad = add nuw i64 %i.w, 1                     ; 3 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !420
  store i64 0, ptr %i.k, align 8, !tbaa !421
  %.not13 = icmp ult i64 %i.ad, %i.j
  br i1 %.not13, label %.peel.next, label %.loopexit, !llvm.loop !423

.loopexit20:                                      ; preds = %.peel.next, %.preheader
  %.lcssa = phi i64 [ %i.b, %.preheader ], [ %i.w, %.peel.next ]
  store i64 %.lcssa, ptr %2, align 8, !tbaa !92
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !421 ; 2 uses
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.k, align 8, !tbaa !421
  store i64 %i.ae, ptr %3, align 8, !tbaa !92
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a, %.loopexit20
  %.0 = phi i1 [ true, %.loopexit20 ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection16FinalizePinStateERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
  tail call void @_ZN6duckdb18TupleDataAllocator21ReleaseOrStoreHandlesERNS_17TupleDataPinStateERNS_16TupleDataSegmentE(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(192) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb19TupleDataCollection11ScanAtIndexERNS_17TupleDataPinStateERNS_19TupleDataChunkStateERKNS_6vectorImLb1ESaImEEEmmRNS_9DataChunkE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(488) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(72) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %4
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !245  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !413
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %5
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !414
  %i.i = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_18TupleDataAllocatorELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  tail call void @_ZN6duckdb18TupleDataAllocator20InitializeChunkStateERNS_16TupleDataSegmentERNS_17TupleDataPinStateERNS_19TupleDataChunkStateEmbNS_12optional_ptrINS_19SortKeyPayloadStateELb1EEE(ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef nonnull align 8 dereferenceable(49) %1, ptr noundef nonnull align 8 dereferenceable(488) %2, i64 noundef %5, i1 noundef zeroext false, i64 0)
  tail call void @_ZN6duckdb9DataChunk5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
  tail call void @_ZN6duckdb19TupleDataCollection22ResetCachedCastVectorsERNS_19TupleDataChunkStateERKNS_6vectorImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(488) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.k = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !416  ; 2 uses
  %i.n = tail call noundef ptr @_ZN6duckdb10FlatVector26IncrementalSelectionVectorEv() ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 392
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !448
  %i.r = load ptr, ptr %3, align 8, !tbaa !449
  %.not.i = icmp eq ptr %i.q, %i.r
  br i1 %.not.i, label %_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmRKNS_6vectorImLb1ESaImEEERNS_9DataChunkES5_RNS6_INS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaISG_EEE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.013.i = phi i64 [ 0, %.lr.ph.i ], [ %i.af, %bb.b ] ; 4 uses
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.013.i)
  %i.v = load i64, ptr %i.u, align 8, !tbaa !92   ; 2 uses
  %i.w = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(72) %6, i64 noundef %.013.i) ; 2 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_6VectorESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.013.i)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !439
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = load ptr, ptr %i.s, align 8, !tbaa !760
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.v ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !796
  %i.ad = load ptr, ptr %i.t, align 8, !tbaa !241, !nonnull !60, !align !61
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(217) %i.ad, ptr noundef nonnull align 8 dereferenceable(104) %i.j, i64 noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ae), !inline_history !987
  tail call void @_ZN6duckdb6Vector6VerifyERS0_RKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.m)
  %i.af = add nuw i64 %.013.i, 1                  ; 2 uses
  %i.ag = load ptr, ptr %i.p, align 8, !tbaa !448
  %i.ah = load ptr, ptr %3, align 8, !tbaa !449
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = ashr exact i64 %i.ak, 3
  %i.am = icmp ult i64 %i.af, %i.al
  br i1 %i.am, label %bb.b, label %_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmRKNS_6vectorImLb1ESaImEEERNS_9DataChunkES5_RNS6_INS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaISG_EEE.exit, !llvm.loop !988

_ZNK6duckdb19TupleDataCollection6GatherERNS_6VectorERKNS_15SelectionVectorEmRKNS_6vectorImLb1ESaImEEERNS_9DataChunkES5_RNS6_INS_10unique_ptrIS1_St14default_deleteIS1_ELb1EEELb1ESaISG_EEE.exit: ; preds = %bb.b, %bb.a
  %i.an = load i64, ptr %i.l, align 8, !tbaa !416
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb19TupleDataCollection4ScanERNS_26TupleDataParallelScanStateERNS_18TupleDataScanStateERNS_9DataChunkE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull align 8 dereferenceable(600) %1, ptr noundef nonnull align 8 dereferenceable(560) initializes((48, 49)) %2, ptr noundef nonnull align 8 dereferenceable(72) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.b = load i8, ptr %i.a, align 8, !tbaa !989
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i8 %i.b, ptr %i.c, align 8, !tbaa !931
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 544 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !420  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 560 ; 4 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #31 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 552 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 544 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !420  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !243  ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !244  ; 5 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3                   ; 3 uses
  %.not.i = icmp ult i64 %i.j, %i.r
  br i1 %.not.i, label %.preheader.i, label %.loopexit36

.preheader.i:                                     ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 552 ; 5 uses
  %.promoted.i = load i64, ptr %i.s, align 8, !tbaa !421
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.j
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !245  ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !422
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !413
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 3
  %.not12.peel.i = icmp ult i64 %.promoted.i, %i.ac
  br i1 %.not12.peel.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.preheader.i
end_hunk_0
