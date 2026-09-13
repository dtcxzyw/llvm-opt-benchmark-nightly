Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ComplexVector?download=true
inline.NumInlined: 9532
inline.NumDeleted: 3275
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN8facebook5velox9RowVectorC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSt6vectorIS5_INS0_10BaseVectorEESaISH_EESt8optionalIiE:bb.a

_ZNK8facebook5velox9RowVector27updateContainsLazyNotLoadedEv.exit: ; preds = %bb.x, %.critedge.i, %.preheader
  ret void

bb.y:                                             ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.cq, %bb.y ], [ %i.ce, %bb.t ]
  call void @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ba) #39
  call void @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.as) #39
  call void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(94) dereferenceable(94) %0) #39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.z ], [ %i.cd, %bb.s ]
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN8facebook5velox10BaseVectorC2EPNS0_6memory10MemoryPoolESt10shared_ptrIKNS0_4TypeEENS0_14VectorEncoding6SimpleEN5boost13intrusive_ptrINS0_6BufferEEEiSt8optionalIiESG_SG_SG_(ptr noundef nonnull align 8 dereferenceable(94), ptr noundef, ptr noundef align 8, i32 noundef, ptr noundef align 8, i32 noundef, i64, i64, i64, i64) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !168  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !171
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !23
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39, !inline_history !23
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #39
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox10BaseVectorD2Ev(ptr noundef nonnull align 8 dead_on_return(94) dereferenceable(94) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 384) (i8, ptr @_ZTVN8facebook5velox10BaseVectorE, i64 16), ptr %0, align 8, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !131  ; 7 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = atomicrmw sub ptr %i.c, i32 1 acq_rel, align 4
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.b
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.noexc.i unwind label %bb.c, !inline_history !1

.noexc.i:                                         ; preds = %.sink.split.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !143
  %.not.i.i = icmp eq ptr %i.j, null
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !87
  %..i.i = select i1 %.not.i.i, i64 8, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %..i.i
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit unwind label %bb.c, !inline_history !1

bb.c:                                             ; preds = %.noexc.i, %.sink.split.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  tail call void @__clang_call_terminate(ptr %i.o) #41
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit: ; preds = %bb.a, %bb.b, %.noexc.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !168  ; 8 uses
  %.not.i.i1 = icmp eq ptr %i.q, null
  br i1 %.not.i.i1, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  %i.s = load atomic i64, ptr %i.r acquire, align 8 ; 2 uses
  %i.t = icmp eq i64 %i.s, 4294967297
  %i.u = trunc i64 %i.s to i32                    ; 2 uses
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.r, align 8, !tbaa !170
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !171
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !22
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !87
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39, !inline_history !22
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %i.u, -1
  store i32 %i.ad, ptr %i.r, align 8, !tbaa !122
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ae = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i = phi i32 [ %i.u, %bb.g ], [ %i.ae, %bb.h ]
  %i.af = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.af, label %bb.i, label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !56

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #39
  br label %_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #9

declare void @_ZN8facebook5velox10BaseVector16wrapInDictionaryEN5boost13intrusive_ptrINS0_6BufferEEES5_iSt10shared_ptrIS1_Eb(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.4") align 8, ptr noundef align 8, ptr noundef align 8, i32 noundef, ptr noundef align 8, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_T0_T1_"(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #24 {
bb.a:
  %.fr28 = freeze ptr %1                          ; 3 uses
  %.fr27 = freeze ptr %0                          ; 42 uses
  %i.a = ptrtoint ptr %.fr27 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr28 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr27, i64 4 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph59

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEET_SJ_SJ_T0_.exit"
  %i.h = icmp eq i64 %i.ej, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph59, !llvm.loop !1048

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fy, %bb.b ] ; 2 uses
  %storemerge24.lcssa = phi ptr [ %.fr28, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = lshr i64 %.fr.i.i.i26.lcssa, 2           ; 2 uses
  %i.j = add nsw i64 %i.i, -2                     ; 2 uses
  %i.k = lshr i64 %i.j, 1                         ; 4 uses
  %i.l = add nsw i64 %i.i, -1
  %i.m = lshr i64 %i.l, 1                         ; 4 uses
  %i.n = and i64 %.fr.i.i.i26.lcssa, 4
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.split.preheader.i.i.i, label %.split.us.i.i.i

.split.preheader.i.i.i:                           ; preds = %._crit_edge
  %i.p = or disjoint i64 %i.j, 1                  ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.az, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !122  ; 2 uses
  %i.u = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.u, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !126 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.v = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.w = add i64 %i.v, 2                          ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.w
  %i.y = or disjoint i64 %i.v, 1                  ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.y
  %i.aa = load i32, ptr %i.x, align 4, !tbaa !122
  %i.ab = load i32, ptr %i.z, align 4, !tbaa !122
  %i.ac = sext i32 %i.aa to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !122
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !122
  %i.ai = icmp slt i32 %i.ae, %i.ah
  %spec.select.i.us.i.i.i = select i1 %i.ai, i64 %i.y, i64 %i.w ; 4 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !122
  %i.al = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !122
  %i.am = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.am, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !1049

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.an = sext i32 %i.t to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.an
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !122 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !122
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !122
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %bb.e, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i32 %i.aq, ptr %i.aw, align 4, !tbaa !122
  %i.ax = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.ax, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !1050

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ], [ %.010.i.i.us.i.i.i, %bb.d ]
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i32 %i.t, ptr %i.ay, align 4, !tbaa !122
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.az = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !1051

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.ck, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !122 ; 2 uses
  %i.bc = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.bc, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bd = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.be = add i64 %i.bd, 2                        ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.be
  %i.bg = or disjoint i64 %i.bd, 1                ; 2 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bg
  %i.bi = load i32, ptr %i.bf, align 4, !tbaa !122
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !122
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !122
  %i.bn = sext i32 %i.bj to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !122
  %i.bq = icmp slt i32 %i.bm, %i.bp
  %spec.select.i.i.i.i = select i1 %i.bq, i64 %i.bg, i64 %i.be ; 4 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !122
  %i.bt = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !122
  %i.bu = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bu, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !1049

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bv = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bw = load i32, ptr %i.q, align 4, !tbaa !122
  store i32 %i.bw, ptr %i.r, align 4, !tbaa !122
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %i.p, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bx = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bx, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %i.by = sext i32 %i.bb to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.by
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !122 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !122
  %i.cf = load i32, ptr %i.bz, align 4, !tbaa !122
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i32 %i.cb, ptr %i.ch, align 4, !tbaa !122
  %i.ci = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ci, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !1050

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %bb.i ], [ %.0911.i.i.i.i.i, %bb.j ]
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.bb, ptr %i.cj, align 4, !tbaa !122
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.ck = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !1051

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  br label %.lr.ph.i9.i

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"
  %.sroa.0.03.i.i = phi ptr [ %i.cl, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_RT0_.exit.i.i" ], [ %storemerge24.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i" ]
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -4 ; 4 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !122 ; 2 uses
  %i.cn = load i32, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !122
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.co, %i.a                     ; 3 uses
  %i.cq = ashr exact i64 %i.cp, 2                 ; 3 uses
  %i.cr = add nsw i64 %i.cq, -1
  %i.cs = lshr i64 %i.cr, 1
  %i.ct = icmp sgt i64 %i.cq, 2
  br i1 %i.ct, label %.lr.ph.i.i.i18.i, label %._crit_edge.i.i.i10.i

.lr.ph.i.i.i18.i:                                 ; preds = %.lr.ph.i9.i
  %.val.val.i.i.i19.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i18.i
  %.038.i.i.i20.i = phi i64 [ 0, %.lr.ph.i.i.i18.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 2 uses
  %i.cu = shl i64 %.038.i.i.i20.i, 1              ; 2 uses
  %i.cv = add i64 %i.cu, 2                        ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.cv
  %i.cx = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.cx
  %i.cz = load i32, ptr %i.cw, align 4, !tbaa !122
  %i.da = load i32, ptr %i.cy, align 4, !tbaa !122
  %i.db = sext i32 %i.cz to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i19.i, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !122
  %i.de = sext i32 %i.da to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i19.i, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !122
  %i.dh = icmp slt i32 %i.dd, %i.dg
  %spec.select.i.i.i21.i = select i1 %i.dh, i64 %i.cx, i64 %i.cv ; 4 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i21.i
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !122
  %i.dk = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.i.i20.i
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !122
  %i.dl = icmp slt i64 %spec.select.i.i.i21.i, %i.cs
  br i1 %i.dl, label %bb.k, label %._crit_edge.i.i.i10.i, !llvm.loop !1049

._crit_edge.i.i.i10.i:                            ; preds = %bb.k, %.lr.ph.i9.i
  %.0.lcssa.i.i.i11.i = phi i64 [ 0, %.lr.ph.i9.i ], [ %spec.select.i.i.i21.i, %bb.k ] ; 5 uses
  %i.dm = and i64 %i.cp, 4
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i10.i
  %i.do = add nsw i64 %i.cq, -2
  %i.dp = ashr exact i64 %i.do, 1
  %i.dq = icmp eq i64 %.0.lcssa.i.i.i11.i, %i.dp
  br i1 %i.dq, label %.thread.i.i.i, label %bb.m

.thread.i.i.i:                                    ; preds = %bb.l
  %i.dr = shl nuw nsw i64 %.0.lcssa.i.i.i11.i, 1
  %i.ds = or disjoint i64 %i.dr, 1                ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !122
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i11.i
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !122
  br label %.lr.ph.i.i.i.i13.i

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i10.i
  %.not.i.i12.i = icmp eq i64 %.0.lcssa.i.i.i11.i, 0
  br i1 %.not.i.i12.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %.lr.ph.i.i.i.i13.i

.lr.ph.i.i.i.i13.i:                               ; preds = %bb.m, %.thread.i.i.i
  %.1.i6.i.i.i = phi i64 [ %i.ds, %.thread.i.i.i ], [ %.0.lcssa.i.i.i11.i, %bb.m ]
  %.val.val.i.i.i.i14.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %i.dw = sext i32 %i.cm to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.dw
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i13.i
  %.010.i.i.i.i15.i = phi i64 [ %.1.i6.i.i.i, %.lr.ph.i.i.i.i13.i ], [ %.0911.i.i78.i.i.i, %bb.o ] ; 3 uses
  %.0911.in.i.i.i.i16.i = add nsw i64 %.010.i.i.i.i15.i, -1
  %.0911.i.i78.i.i.i = lshr i64 %.0911.in.i.i.i.i16.i, 1 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i78.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !122 ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i14.i, i64 %i.ea
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !122
  %i.ed = load i32, ptr %i.dx, align 4, !tbaa !122
  %i.ee = icmp slt i32 %i.ec, %i.ed
  br i1 %i.ee, label %bb.o, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_RT0_.exit.i.i"

bb.o:                                             ; preds = %bb.n
  %i.ef = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.010.i.i.i.i15.i
  store i32 %i.dz, ptr %i.ef, align 4, !tbaa !122
  %.not9.i.i.i = icmp eq i64 %.0911.i.i78.i.i.i, 0
  br i1 %.not9.i.i.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", label %bb.n, !llvm.loop !1050

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_RT0_.exit.i.i": ; preds = %bb.o, %bb.n, %bb.m
  %.0.lcssa.i.i.i.i17.i = phi i64 [ 0, %bb.m ], [ %.010.i.i.i.i15.i, %bb.n ], [ 0, %bb.o ]
  %i.eg = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i17.i
  store i32 %i.cm, ptr %i.eg, align 4, !tbaa !122
  %i.eh = icmp sgt i64 %i.cp, 4
  br i1 %i.eh, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !1052

.lr.ph59:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2458 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %.fr28, %.lr.ph ] ; 3 uses
  %.02557 = phi i64 [ %i.ej, %bb.b ], [ %2, %.lr.ph ]
  %i.ei = phi i64 [ %i.fz, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ej = add nsw i64 %.02557, -1                 ; 3 uses
  %.val = load ptr, ptr %3, align 8, !tbaa !126   ; 6 uses
  %i.ek = lshr i64 %i.ei, 1
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.ek ; 3 uses
  %i.em = getelementptr inbounds i8, ptr %storemerge2458, i64 -4 ; 3 uses
  %i.en = load i32, ptr %i.f, align 4, !tbaa !122 ; 3 uses
  %i.eo = load i32, ptr %i.el, align 4, !tbaa !122 ; 3 uses
  %i.ep = sext i32 %i.en to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !122 ; 3 uses
  %i.es = sext i32 %i.eo to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !122 ; 3 uses
  %i.ev = icmp slt i32 %i.er, %i.eu
  %i.ew = load i32, ptr %i.em, align 4, !tbaa !122 ; 3 uses
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ex
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !122 ; 4 uses
  br i1 %i.ev, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.lr.ph59
  %i.fa = icmp slt i32 %i.eu, %i.ez
  br i1 %i.fa, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fb = load i32, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.eo, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.fb, ptr %i.el, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.r:                                             ; preds = %bb.p
  %i.fc = icmp slt i32 %i.er, %i.ez
  %i.fd = load i32, ptr %.fr27, align 4, !tbaa !122 ; 2 uses
  br i1 %i.fc, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 %i.ew, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.fd, ptr %i.em, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.t:                                             ; preds = %bb.r
  store i32 %i.en, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.fd, ptr %i.f, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.u:                                             ; preds = %.lr.ph59
  %i.fe = icmp slt i32 %i.er, %i.ez
  br i1 %i.fe, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ff = load i32, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.en, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.ff, ptr %i.f, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.w:                                             ; preds = %bb.u
  %i.fg = icmp slt i32 %i.eu, %i.ez
  %i.fh = load i32, ptr %.fr27, align 4, !tbaa !122 ; 2 uses
  br i1 %i.fg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.ew, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.fh, ptr %i.em, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

bb.y:                                             ; preds = %bb.w
  store i32 %i.eo, ptr %.fr27, align 4, !tbaa !122
  store i32 %i.fh, ptr %i.el, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader": ; preds = %bb.y, %bb.x, %bb.v, %bb.t, %bb.s, %bb.q
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader", %bb.ab
  %.sroa.011.0.i.i = phi ptr [ %.sroa.011.1.i.i, %bb.ab ], [ %storemerge2458, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %.sroa.014.0.i.i = phi ptr [ %i.fr, %bb.ab ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i.preheader" ]
  %i.fi = load i32, ptr %.fr27, align 4, !tbaa !122
  %i.fj = sext i32 %i.fi to i64
  %i.fk = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.fj
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !122 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i" ], [ %i.fr, %bb.z ] ; 8 uses
  %i.fm = load i32, ptr %.sroa.014.1.i.i, align 4, !tbaa !122 ; 2 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.fn
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !122
  %i.fq = icmp slt i32 %i.fp, %i.fl
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 4 ; 2 uses
  br i1 %i.fq, label %bb.z, label %.preheader.i.i, !llvm.loop !1053

.preheader.i.i:                                   ; preds = %bb.z, %.preheader.i.i
  %.sroa.011.0.pn.i.i = phi ptr [ %.sroa.011.1.i.i, %.preheader.i.i ], [ %.sroa.011.0.i.i, %bb.z ]
  %.sroa.011.1.i.i = getelementptr inbounds i8, ptr %.sroa.011.0.pn.i.i, i64 -4 ; 5 uses
  %i.fs = load i32, ptr %.sroa.011.1.i.i, align 4, !tbaa !122 ; 2 uses
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ft
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !122
  %i.fw = icmp slt i32 %i.fl, %i.fv
  br i1 %i.fw, label %.preheader.i.i, label %bb.aa, !llvm.loop !1054

bb.aa:                                            ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.011.1.i.i
  br i1 %.not.i.i, label %bb.ab, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEET_SJ_SJ_T0_.exit"

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.fs, ptr %.sroa.014.1.i.i, align 4, !tbaa !122
  store i32 %i.fm, ptr %.sroa.011.1.i.i, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_SJ_T0_.exit.i", !llvm.loop !1055

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEET_SJ_SJ_T0_.exit": ; preds = %bb.aa
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2458, i64 noundef %i.ej, ptr nonnull %3)
  %i.fx = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.fy = sub i64 %i.fx, %i.a                     ; 2 uses
  %i.fz = ashr exact i64 %i.fy, 2                 ; 2 uses
  %i.ga = icmp sgt i64 %i.fz, 16
  br i1 %i.ga, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_T0_.exit", !llvm.loop !1048

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEET_SJ_SJ_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_RT0_.exit.i.i", %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_T0_T1_"(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree readonly captures(none) %3) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph, label %"_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_SD_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 7 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph140

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEET_SD_SD_T0_.exit"
  %i.g = icmp eq i64 %i.v, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph140, !llvm.loop !1056

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.cw, %bb.b ]
  %.055.lcssa = phi ptr [ %1, %.lr.ph ], [ %.129.i.i, %bb.b ]
  %i.h = lshr exact i64 %.lcssa, 2                ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.014.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.i.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !122
  tail call fastcc void @"_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_T0_SE_T1_T2_"(ptr noundef %0, i64 noundef %.014.i.i.i, i64 noundef %i.h, i32 noundef %i.l, ptr readonly %3)
  %.not.i.i.i = icmp eq i64 %.014.i.i.i, 0
  %i.m = add nsw i64 %.014.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i5.i, label %bb.c, !llvm.loop !1057

.lr.ph.i5.i:                                      ; preds = %bb.c, %.lr.ph.i5.i
  %.01.i.i = phi ptr [ %i.n, %.lr.ph.i5.i ], [ %.055.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.01.i.i, i64 -4 ; 4 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122
  %i.p = load i32, ptr %0, align 4, !tbaa !122
  store i32 %i.p, ptr %i.n, align 4, !tbaa !122
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 2
  tail call fastcc void @"_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_T0_SE_T1_T2_"(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, i32 noundef %i.o, ptr readonly %3)
  %i.t = icmp sgt i64 %i.r, 4
  br i1 %i.t, label %.lr.ph.i5.i, label %"_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_SD_T0_.exit", !llvm.loop !1058

.lr.ph140:                                        ; preds = %.lr.ph, %bb.b
  %.01554139 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %.055138 = phi ptr [ %.129.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.cw, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = add nsw i64 %.01554139, -1               ; 3 uses
  %i.w = lshr i64 %i.u, 3
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds i8, ptr %.055138, i64 -4 ; 7 uses
  %.val34.i.i = load i32, ptr %i.e, align 4, !tbaa !122
  %.val35.i.i = load i32, ptr %i.x, align 4, !tbaa !122
  %.val33.val.i.i = load ptr, ptr %3, align 8, !tbaa !229
  %i.z = getelementptr i8, ptr %.val33.val.i.i, i64 128
  %.val33.val.val.i.i = load ptr, ptr %i.z, align 8, !tbaa !85 ; 3 uses
  %i.aa = load ptr, ptr %.val33.val.val.i.i, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 %i.ac(ptr noundef nonnull align 8 dereferenceable(94) %.val33.val.val.i.i, ptr noundef nonnull %.val33.val.val.i.i, i32 noundef %.val34.i.i, i32 noundef %.val35.i.i, i64 257), !inline_history !1059 ; 2 uses
  %i.ae = and i64 %i.ad, 4294967296
  %.not.i.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit.i.i"

bb.d:                                             ; preds = %.lr.ph140
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit.i.i": ; preds = %.lr.ph140
  %i.af = and i64 %i.ad, 2147483648
  %.not.i.i = icmp eq i64 %i.af, 0
  %.val26.i.i = load i32, ptr %i.y, align 4, !tbaa !122 ; 2 uses
  %.val24.val.i.i = load ptr, ptr %3, align 8, !tbaa !229
  %i.ag = getelementptr i8, ptr %.val24.val.i.i, i64 128
  %.val24.val.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !85 ; 5 uses
  %i.ah = load ptr, ptr %.val24.val.val.i.i, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8            ; 2 uses
  br i1 %.not.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit.i.i"
  %.val31.i.i = load i32, ptr %i.x, align 4, !tbaa !122
  %i.ak = tail call i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(94) %.val24.val.val.i.i, ptr noundef nonnull %.val24.val.val.i.i, i32 noundef %.val31.i.i, i32 noundef %.val26.i.i, i64 257), !inline_history !1059 ; 2 uses
  %i.al = and i64 %i.ak, 4294967296
  %.not.i.i.i36.i.i = icmp eq i64 %i.al, 0
  br i1 %.not.i.i.i36.i.i, label %bb.f, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit37.i.i"

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit37.i.i": ; preds = %bb.e
  %i.am = and i64 %i.ak, 2147483648
  %.not46.i.i = icmp eq i64 %i.am, 0
  br i1 %.not46.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit37.i.i"
  %i.an = load i32, ptr %0, align 4, !tbaa !122
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !122
  store i32 %i.ao, ptr %0, align 4, !tbaa !122
  store i32 %i.an, ptr %i.x, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_SD_SD_T0_.exit.i"

bb.h:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit37.i.i"
  %.val28.i.i = load i32, ptr %i.e, align 4, !tbaa !122
  %.val29.i.i = load i32, ptr %i.y, align 4, !tbaa !122
  %.val27.val.i.i = load ptr, ptr %3, align 8, !tbaa !229
  %i.ap = getelementptr i8, ptr %.val27.val.i.i, i64 128
  %.val27.val.val.i.i = load ptr, ptr %i.ap, align 8, !tbaa !85 ; 3 uses
  %i.aq = load ptr, ptr %.val27.val.val.i.i, align 8, !tbaa !87
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call i64 %i.as(ptr noundef nonnull align 8 dereferenceable(94) %.val27.val.val.i.i, ptr noundef nonnull %.val27.val.val.i.i, i32 noundef %.val28.i.i, i32 noundef %.val29.i.i, i64 257), !inline_history !1059 ; 2 uses
  %i.au = and i64 %i.at, 4294967296
  %.not.i.i.i38.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i38.i.i, label %bb.i, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit39.i.i"

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit39.i.i": ; preds = %bb.h
  %i.av = and i64 %i.at, 2147483648
  %.not47.i.i = icmp eq i64 %i.av, 0
  %i.aw = load i32, ptr %0, align 4, !tbaa !122   ; 2 uses
  br i1 %.not47.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit39.i.i"
  %i.ax = load i32, ptr %i.y, align 4, !tbaa !122
  store i32 %i.ax, ptr %0, align 4, !tbaa !122
  store i32 %i.aw, ptr %i.y, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_SD_SD_T0_.exit.i"

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit39.i.i"
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !122
  store i32 %i.ay, ptr %0, align 4, !tbaa !122
  store i32 %i.aw, ptr %i.e, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_SD_SD_T0_.exit.i"

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit.i.i"
  %.val25.i.i = load i32, ptr %i.e, align 4, !tbaa !122
  %i.az = tail call i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(94) %.val24.val.val.i.i, ptr noundef nonnull %.val24.val.val.i.i, i32 noundef %.val25.i.i, i32 noundef %.val26.i.i, i64 257), !inline_history !1059 ; 2 uses
  %i.ba = and i64 %i.az, 4294967296
  %.not.i.i.i40.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not.i.i.i40.i.i, label %bb.m, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit41.i.i"

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit41.i.i": ; preds = %bb.l
  %i.bb = and i64 %i.az, 2147483648
  %.not44.i.i = icmp eq i64 %i.bb, 0
  br i1 %.not44.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit41.i.i"
  %i.bc = load <2 x i32>, ptr %0, align 4, !tbaa !122
  %i.bd = shufflevector <2 x i32> %i.bc, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.bd, ptr %0, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_SD_SD_T0_.exit.i"

bb.o:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit41.i.i"
  %.val22.i.i = load i32, ptr %i.x, align 4, !tbaa !122
  %.val23.i.i = load i32, ptr %i.y, align 4, !tbaa !122
  %.val.val.i.i = load ptr, ptr %3, align 8, !tbaa !229
  %i.be = getelementptr i8, ptr %.val.val.i.i, i64 128
  %.val.val.val.i.i = load ptr, ptr %i.be, align 8, !tbaa !85 ; 3 uses
  %i.bf = load ptr, ptr %.val.val.val.i.i, align 8, !tbaa !87
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(94) %.val.val.val.i.i, ptr noundef nonnull %.val.val.val.i.i, i32 noundef %.val22.i.i, i32 noundef %.val23.i.i, i64 257), !inline_history !1059 ; 2 uses
  %i.bj = and i64 %i.bi, 4294967296
  %.not.i.i.i42.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i.i42.i.i, label %bb.p, label %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit43.i.i"

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt27__throw_bad_optional_accessv() #38
  unreachable

"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit43.i.i": ; preds = %bb.o
  %i.bk = and i64 %i.bi, 2147483648
  %.not45.i.i = icmp eq i64 %i.bk, 0
  %i.bl = load i32, ptr %0, align 4, !tbaa !122   ; 2 uses
  br i1 %.not45.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit43.i.i"
  %i.bm = load i32, ptr %i.y, align 4, !tbaa !122
  store i32 %i.bm, ptr %0, align 4, !tbaa !122
  store i32 %i.bl, ptr %i.y, align 4, !tbaa !122
  br label %"_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS6_EbE3$_0EEEvT_SD_SD_SD_T0_.exit.i"

bb.r:                                             ; preds = %"_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN8facebook5velox9MapVector12canonicalizeERKSt10shared_ptrIS4_EbE3$_0EclIPiSC_EEbT_T0_.exit43.i.i"
end_hunk_0
