Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/ComplexVector?download=true
inline.NumInlined: 9532
inline.NumDeleted: 3275
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN8facebook5velox9RowVectorC2EPNS0_6memory10MemoryPoolERKSt10shared_ptrIKNS0_4TypeEEN5boost13intrusive_ptrINS0_6BufferEEEiSt6vectorIS5_INS0_10BaseVectorEESaISH_EESt8optionalIiE:bb.a

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
  %.fr.i.i.i26.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fy, %bb.b ] ; 3 uses
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
  %4 = or disjoint i64 %i.j, 1                    ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %4
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %i.k
  br label %.split.i.i.i

.split.us.i.i.i:                                  ; preds = %._crit_edge, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"
  %.09.us.i.i.i = phi i64 [ %i.ay, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i" ], [ %i.k, %._crit_edge ] ; 7 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.us.i.i.i
  %i.s = load i32, ptr %i.r, align 4, !tbaa !122  ; 2 uses
  %i.t = icmp slt i64 %.09.us.i.i.i, %i.m
  br i1 %i.t, label %.lr.ph.i.us.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

.lr.ph.i.us.i.i.i:                                ; preds = %.split.us.i.i.i
  %.val.val.i.us.i.i.i = load ptr, ptr %3, align 8, !tbaa !126 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.us.i.i.i
  %.038.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.lr.ph.i.us.i.i.i ], [ %spec.select.i.us.i.i.i, %bb.c ] ; 2 uses
  %i.u = shl i64 %.038.i.us.i.i.i, 1              ; 2 uses
  %i.v = add i64 %i.u, 2                          ; 2 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.v
  %i.x = or disjoint i64 %i.u, 1                  ; 2 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.x
  %i.z = load i32, ptr %i.w, align 4, !tbaa !122
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !122
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !122
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !122
  %i.ah = icmp slt i32 %i.ad, %i.ag
  %spec.select.i.us.i.i.i = select i1 %i.ah, i64 %i.x, i64 %i.v ; 4 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.us.i.i.i
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !122
  %i.ak = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.us.i.i.i
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !122
  %i.al = icmp slt i64 %spec.select.i.us.i.i.i, %i.m
  br i1 %i.al, label %bb.c, label %._crit_edge.i.us.i.i.i, !llvm.loop !1049

._crit_edge.i.us.i.i.i:                           ; preds = %bb.c
  %i.am = sext i32 %i.s to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.am
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %._crit_edge.i.us.i.i.i
  %.010.i.i.us.i.i.i = phi i64 [ %spec.select.i.us.i.i.i, %._crit_edge.i.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ] ; 3 uses
  %.0911.in.i.i.us.i.i.i = add nsw i64 %.010.i.i.us.i.i.i, -1
  %.0911.i.i.us.i.i.i = sdiv i64 %.0911.in.i.i.us.i.i.i, 2 ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.us.i.i.i
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !122 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %.val.val.i.us.i.i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !122
  %i.at = load i32, ptr %i.an, align 4, !tbaa !122
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.e, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i"

bb.e:                                             ; preds = %bb.d
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.us.i.i.i
  store i32 %i.ap, ptr %i.av, align 4, !tbaa !122
  %i.aw = icmp sgt i64 %.0911.i.i.us.i.i.i, %.09.us.i.i.i
  br i1 %i.aw, label %bb.d, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", !llvm.loop !1050

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i": ; preds = %bb.e, %bb.d, %.split.us.i.i.i
  %.0.lcssa.i.i.us.i.i.i = phi i64 [ %.09.us.i.i.i, %.split.us.i.i.i ], [ %.0911.i.i.us.i.i.i, %bb.e ], [ %.010.i.i.us.i.i.i, %bb.d ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.us.i.i.i
  store i32 %i.s, ptr %i.ax, align 4, !tbaa !122
  %.not.us.i.i.i = icmp eq i64 %.09.us.i.i.i, 0
  %i.ay = add nsw i64 %.09.us.i.i.i, -1
  br i1 %.not.us.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.us.i.i.i, !llvm.loop !1051

.split.i.i.i:                                     ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", %.split.preheader.i.i.i
  %.09.i.i.i = phi i64 [ %i.cj, %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i" ], [ %i.k, %.split.preheader.i.i.i ] ; 8 uses
  %i.az = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.09.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !122 ; 2 uses
  %i.bb = icmp slt i64 %.09.i.i.i, %i.m
  br i1 %i.bb, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.split.i.i.i
  %.val.val.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.038.i.i.i.i = phi i64 [ %.09.i.i.i, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bc = shl i64 %.038.i.i.i.i, 1                ; 2 uses
  %i.bd = add i64 %i.bc, 2                        ; 2 uses
  %i.be = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bd
  %i.bf = or disjoint i64 %i.bc, 1                ; 2 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %i.bf
  %i.bh = load i32, ptr %i.be, align 4, !tbaa !122
  %i.bi = load i32, ptr %i.bg, align 4, !tbaa !122
  %i.bj = sext i32 %i.bh to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !122
  %i.bm = sext i32 %i.bi to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !122
  %i.bp = icmp slt i32 %i.bl, %i.bo
  %spec.select.i.i.i.i = select i1 %i.bp, i64 %i.bf, i64 %i.bd ; 4 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %spec.select.i.i.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !122
  %i.bs = getelementptr inbounds [4 x i8], ptr %.fr27, i64 %.038.i.i.i.i
  store i32 %i.br, ptr %i.bs, align 4, !tbaa !122
  %i.bt = icmp slt i64 %spec.select.i.i.i.i, %i.m
  br i1 %i.bt, label %bb.f, label %._crit_edge.i.i.i.i, !llvm.loop !1049

._crit_edge.i.i.i.i:                              ; preds = %bb.f, %.split.i.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ %.09.i.i.i, %.split.i.i.i ], [ %spec.select.i.i.i.i, %bb.f ] ; 2 uses
  %i.bu = icmp eq i64 %.0.lcssa.i.i.i.i, %i.k
  br i1 %i.bu, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bv = load i32, ptr %i.p, align 4, !tbaa !122
  store i32 %i.bv, ptr %i.q, align 4, !tbaa !122
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi i64 [ %4, %bb.g ], [ %.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.bw = icmp sgt i64 %.1.i.i.i.i, %.09.i.i.i
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h
  %.val.val.i.i.i.i.i = load ptr, ptr %3, align 8, !tbaa !126 ; 2 uses
  %i.bx = sext i32 %i.ba to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.bx
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i, %bb.j ] ; 3 uses
  %.0911.in.i.i.i.i.i = add nsw i64 %.010.i.i.i.i.i, -1
  %.0911.i.i.i.i.i = sdiv i64 %.0911.in.i.i.i.i.i, 2 ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0911.i.i.i.i.i
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !122 ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i.i, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !122
  %i.ce = load i32, ptr %i.by, align 4, !tbaa !122
  %i.cf = icmp slt i32 %i.cd, %i.ce
  br i1 %i.cf, label %bb.j, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.010.i.i.i.i.i
  store i32 %i.ca, ptr %i.cg, align 4, !tbaa !122
  %i.ch = icmp sgt i64 %.0911.i.i.i.i.i, %.09.i.i.i
  br i1 %i.ch, label %bb.i, label %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i", !llvm.loop !1050

"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i": ; preds = %bb.j, %bb.i, %bb.h
  %.0.lcssa.i.i.i.i.i = phi i64 [ %.1.i.i.i.i, %bb.h ], [ %.010.i.i.i.i.i, %bb.i ], [ %.0911.i.i.i.i.i, %bb.j ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.fr27, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.ba, ptr %i.ci, align 4, !tbaa !122
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.cj = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i", label %.split.i.i.i, !llvm.loop !1051

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_RT0_.exit.i.i": ; preds = %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.us.i.i.i", %"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_T0_SK_T1_T2_.exit.i.i.i"
  %i.ck = icmp sgt i64 %.fr.i.i.i26.lcssa, 4
  br i1 %i.ck, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZN8facebook5velox15ArrayVectorBase20hasOverlappingRangesEiPKmPKiSF_RS5_E3$_0EEEvT_SJ_SJ_T0_.exit"

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
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_:bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %3, ptr %5, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %4, ptr %i.j, align 8
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %storemerge19.lcssa, ptr noundef nonnull align 8 dereferenceable(16) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %.loopexit

.lr.ph27:                                         ; preds = %.lr.ph, %bb.b
  %storemerge1926 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02025 = phi i64 [ %i.af, %bb.b ], [ %2, %.lr.ph ]
  %i.k = phi i64 [ %i.ai, %bb.b ], [ %i.d, %.lr.ph ]
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds i8, ptr %storemerge1926, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr nonnull %i.f, ptr %i.m, ptr nonnull %i.n, ptr %3, ptr %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph27
  %.sroa.013.0.i.i = phi ptr [ %storemerge1926, %.lr.ph27 ], [ %.sroa.013.1.i.i, %bb.f ]
  %.sroa.016.0.i.i = phi ptr [ %i.f, %.lr.ph27 ], [ %i.v, %bb.f ]
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.c ], [ %i.v, %bb.d ] ; 9 uses
  %i.o = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !122
  %i.p = load i32, ptr %0, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %4, align 4
  %i.q = load ptr, ptr %3, align 8, !tbaa !87
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i64 %i.s(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.o, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2232
  %i.u = and i64 %i.t, 6442450944
  %.not.i.i = icmp eq i64 %i.u, 4294967296
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4 ; 2 uses
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.d, !llvm.loop !2233

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.1.i.i, %.preheader.i.i ], [ %.sroa.013.0.i.i, %bb.d ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 6 uses
  %i.w = load i32, ptr %0, align 4, !tbaa !122
  %i.x = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i10.i.i = load i64, ptr %4, align 4
  %i.y = load ptr, ptr %3, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %3, ptr noundef nonnull %3, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i10.i.i), !inline_history !2232
  %i.ac = and i64 %i.ab, 6442450944
  %.not19.i.i = icmp eq i64 %i.ac, 4294967296
  br i1 %.not19.i.i, label %bb.e, label %.preheader.i.i, !llvm.loop !2234

bb.e:                                             ; preds = %.preheader.i.i
  %.not20.i.i = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
  br i1 %.not20.i.i, label %bb.f, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !122
  %i.ae = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !122
  store i32 %i.ae, ptr %.sroa.016.1.i.i, align 4, !tbaa !122
  store i32 %i.ad, ptr %.sroa.013.1.i.i, align 4, !tbaa !122
  br label %bb.c, !llvm.loop !2235

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit: ; preds = %bb.e
  %i.af = add nsw i64 %.02025, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_T1_(ptr nonnull %.sroa.016.1.i.i, ptr %storemerge1926, i64 noundef %i.af, ptr nonnull %3, ptr nonnull %4)
  %i.ag = ptrtoint ptr %.sroa.016.1.i.i to i64
  %i.ah = sub i64 %i.ag, %i.a
  %i.ai = ashr exact i64 %i.ah, 2                 ; 2 uses
  %i.aj = icmp sgt i64 %i.ai, 16
  br i1 %i.aj, label %bb.b, label %.loopexit, !llvm.loop !2231

.loopexit:                                        ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEET_SG_SG_T0_.exit, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !122  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !122
  store i32 %i.g, ptr %i.e, align 4, !tbaa !122
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !167 ; 6 uses
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !451 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.037.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.037.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !122
  %i.t = load i32, ptr %i.r, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.u = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i64 %i.w(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.s, i32 noundef %i.t, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2236
  %i.y = and i64 %i.x, 6442450944
  %.not.i.i = icmp eq i64 %i.y, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.o, i64 %i.q ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !122
  %i.ab = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i.i
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !122
  %i.ac = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.ac, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !30

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ad = and i64 %i.i, 4
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.af = add nsw i64 %i.j, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i, %i.ag
  br i1 %i.ah, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !122
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !122
  br label %.lr.ph.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d, %.thread.i
  %.019.i.i.i.ph = phi i64 [ %.0.lcssa.i.i, %bb.d ], [ %i.aj, %.thread.i ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %bb.e
  %.019.i.i.i = phi i64 [ %.0920.i.i67.i, %bb.e ], [ %.019.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i67.i = lshr i64 %.0920.in.i.i.i, 1    ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i67.i ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0.copyload.i, align 4
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !87
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.0.copyload.i, i32 noundef %i.ao, i32 noundef %i.f, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !2237
  %i.at = and i64 %i.as, 6442450944
  %.not.i.i.i = icmp eq i64 %i.at, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.au = load i32, ptr %i.an, align 4, !tbaa !122
  %i.av = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.au, ptr %i.av, align 4, !tbaa !122
  %.not8.i = icmp eq i64 %.0920.i.i67.i, 0
  br i1 %.not8.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !31

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit: ; preds = %.lr.ph.i.i.i, %bb.e, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.e ]
  %i.aw = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.aw, align 4, !tbaa !122
  %i.ax = icmp sgt i64 %i.i, 4
  br i1 %i.ax, label %bb.b, label %._crit_edge, !llvm.loop !2238

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.b
  %.09 = phi i64 [ %i.g, %bb.b ], [ %i.av, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.09
  %i.p = load i32, ptr %i.o, align 4, !tbaa !122  ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !167 ; 6 uses
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !451 ; 2 uses
  %i.q = icmp slt i64 %.09, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.037.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.09, %bb.c ] ; 2 uses
  %i.r = shl i64 %.037.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !122
  %i.x = load i32, ptr %i.v, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.y = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.w, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !2239
  %i.ac = and i64 %i.ab, 6442450944
  %.not.i = icmp eq i64 %i.ac, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.s, i64 %i.u ; 4 uses
  %i.ad = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !122
  %i.af = getelementptr inbounds [4 x i8], ptr %0, i64 %.037.i
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !122
  %i.ag = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ag, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !30

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.09, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ah = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ah, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.m, align 4, !tbaa !122
  store i32 %i.ai, ptr %i.n, align 4, !tbaa !122
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.aj = icmp sgt i64 %.1.i, %.09
  br i1 %i.aj, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0.copyload, align 4
  %i.am = load ptr, ptr %.sroa.0.0.copyload, align 8, !tbaa !87
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 80
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.0.copyload, i32 noundef %i.al, i32 noundef %i.p, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2240
  %i.aq = and i64 %i.ap, 6442450944
  %.not.i.i = icmp eq i64 %i.aq, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ar = load i32, ptr %i.ak, align 4, !tbaa !122
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.ar, ptr %i.as, align 4, !tbaa !122
  %i.at = icmp sgt i64 %.0920.i.i, %.09
  br i1 %i.at, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, !llvm.loop !31

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.p, ptr %i.au, align 4, !tbaa !122
  %.not = icmp eq i64 %.09, 0
  %i.av = add nsw i64 %.09, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2241

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_T0_SH_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_SG_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !122
  %i.b = load i32, ptr %2, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i = load i64, ptr %5, align 4
  %i.c = load ptr, ptr %4, align 8, !tbaa !87
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 %i.e(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.a, i32 noundef %i.b, i64 %.sroa.01.0.copyload.i.i), !inline_history !32
  %i.g = and i64 %i.f, 6442450944
  %.not = icmp eq i64 %i.g, 4294967296
  %i.h = load i32, ptr %3, align 4, !tbaa !122    ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %5, align 4 ; 2 uses
  %i.i = load ptr, ptr %4, align 8, !tbaa !87
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %2, align 4, !tbaa !122
  %i.m = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.l, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !32
  %i.n = and i64 %i.m, 6442450944
  %.not40 = icmp eq i64 %i.n, 4294967296
  br i1 %.not40, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 4, !tbaa !122
  %i.p = load i32, ptr %2, align 4, !tbaa !122
  store i32 %i.p, ptr %0, align 4, !tbaa !122
  store i32 %i.o, ptr %2, align 4, !tbaa !122
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.q = load i32, ptr %1, align 4, !tbaa !122
  %i.r = load i32, ptr %3, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %5, align 4
  %i.s = load ptr, ptr %4, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call i64 %i.u(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.q, i32 noundef %i.r, i64 %.sroa.01.0.copyload.i.i27), !inline_history !32
  %i.w = and i64 %i.v, 6442450944
  %.not41 = icmp eq i64 %i.w, 4294967296
  %i.x = load i32, ptr %0, align 4, !tbaa !122    ; 2 uses
  br i1 %.not41, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %3, align 4, !tbaa !122
  store i32 %i.y, ptr %0, align 4, !tbaa !122
  store i32 %i.x, ptr %3, align 4, !tbaa !122
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.z = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.z, ptr %0, align 4, !tbaa !122
  store i32 %i.x, ptr %1, align 4, !tbaa !122
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.aa = load i32, ptr %1, align 4, !tbaa !122
  %i.ab = tail call i64 %i.k(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.aa, i32 noundef %i.h, i64 %.sroa.01.0.copyload.i.i28), !inline_history !32
  %i.ac = and i64 %i.ab, 6442450944
  %.not38 = icmp eq i64 %i.ac, 4294967296
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %0, align 4, !tbaa !122
  %i.ae = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.ae, ptr %0, align 4, !tbaa !122
  store i32 %i.ad, ptr %1, align 4, !tbaa !122
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.af = load i32, ptr %2, align 4, !tbaa !122
  %i.ag = load i32, ptr %3, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i29 = load i64, ptr %5, align 4
  %i.ah = load ptr, ptr %4, align 8, !tbaa !87
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(94) %4, ptr noundef nonnull %4, i32 noundef %i.af, i32 noundef %i.ag, i64 %.sroa.01.0.copyload.i.i29), !inline_history !32
  %i.al = and i64 %i.ak, 6442450944
  %.not39 = icmp eq i64 %i.al, 4294967296
  %i.am = load i32, ptr %0, align 4, !tbaa !122   ; 2 uses
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.an = load i32, ptr %3, align 4, !tbaa !122
  store i32 %i.an, ptr %0, align 4, !tbaa !122
  store i32 %i.am, ptr %3, align 4, !tbaa !122
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = load i32, ptr %2, align 4, !tbaa !122
  store i32 %i.ao, ptr %0, align 4, !tbaa !122
  store i32 %i.am, ptr %2, align 4, !tbaa !122
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.c, %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_NSA_12CompareFlagsEEUliiE_EEEvT_SG_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.019 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = icmp eq ptr %.sroa.0.019, %1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
end_hunk_1
begin_hunk_2_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_:bb.a
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !451 ; 2 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i
  %.sroa.03.08.i = phi ptr [ %i.ah, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i ], [ %i.e, %bb.b ] ; 5 uses
  %i.g = load i32, ptr %.sroa.03.08.i, align 4, !tbaa !122 ; 2 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %.sroa.0.07.i.i = getelementptr inbounds i8, ptr %.sroa.03.08.i, i64 -4 ; 2 uses
  %i.i = load i32, ptr %.sroa.0.07.i.i, align 4, !tbaa !122
  %i.j = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !126 ; 2 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.h
  %i.l = load i32, ptr %i.k, align 4, !tbaa !122
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i8.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.p = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !87
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call i64 %i.r(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.l, i32 noundef %i.o, i64 %.sroa.01.0.copyload.i.i8.i.i), !inline_history !2248
  %i.t = and i64 %i.s, 6442450944
  %.not9.i.i = icmp eq i64 %i.t, 4294967296
  br i1 %.not9.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.i
  %.sroa.0.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.07.i.i, %.lr.ph.i ] ; 4 uses
  %.sroa.04.010.i.i = phi ptr [ %.sroa.0.011.i.i, %.lr.ph.i.i ], [ %.sroa.03.08.i, %.lr.ph.i ]
  %i.u = load i32, ptr %.sroa.0.011.i.i, align 4, !tbaa !122
  store i32 %i.u, ptr %.sroa.04.010.i.i, align 4, !tbaa !122
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i, i64 -4 ; 2 uses
  %i.v = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !122
  %i.w = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !126 ; 2 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.h
  %i.y = load i32, ptr %i.x, align 4, !tbaa !122
  %i.z = sext i32 %i.v to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ac = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !87
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = tail call i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.y, i32 noundef %i.ab, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2248
  %i.ag = and i64 %i.af, 6442450944
  %.not.i.i = icmp eq i64 %i.ag, 4294967296
  br i1 %.not.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, label %.lr.ph.i.i, !llvm.loop !33

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %.sroa.04.0.lcssa.i.i = phi ptr [ %.sroa.03.08.i, %.lr.ph.i ], [ %.sroa.0.011.i.i, %.lr.ph.i.i ]
  store i32 %i.g, ptr %.sroa.04.0.lcssa.i.i, align 4, !tbaa !122
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.03.08.i, i64 4 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit, label %.lr.ph.i, !llvm.loop !2249

bb.c:                                             ; preds = %bb.a
  tail call void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_(ptr %0, ptr %1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.804") align 8 %2)
  br label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_T0_.exit: ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_.exit.i, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__sort_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = icmp sgt i64 %i.c, 4
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.0.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit
  %.sroa.0.05 = phi ptr [ %1, %.lr.ph ], [ %i.e, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit ]
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !122  ; 2 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !122
  store i32 %i.g, ptr %i.e, align 4, !tbaa !122
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.h, %i.a                       ; 3 uses
  %i.j = ashr exact i64 %i.i, 2                   ; 3 uses
  %.sroa.0.sroa.0.0.copyload.i = load ptr, ptr %2, align 8, !tbaa !167 ; 6 uses
  %.sroa.0.sroa.2.0.copyload.i = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx.i, align 8, !tbaa !453 ; 2 uses
  %.sroa.0.sroa.3.0.copyload.i = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx.i, align 8, !tbaa !451 ; 2 uses
  %i.k = add nsw i64 %i.j, -1
  %i.l = lshr i64 %i.k, 1
  %i.m = icmp sgt i64 %i.j, 2
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %.lr.ph.i.i
  %.036.i.i = phi i64 [ %spec.select.i.i, %.lr.ph.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.n = shl i64 %.036.i.i, 1                     ; 2 uses
  %i.o = add i64 %i.n, 2                          ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %0, i64 %i.o
  %i.q = or disjoint i64 %i.n, 1                  ; 2 uses
  %i.r = getelementptr inbounds [4 x i8], ptr %0, i64 %i.q
  %i.s = load i32, ptr %i.p, align 4, !tbaa !122
  %i.t = load i32, ptr %i.r, align 4, !tbaa !122
  %i.u = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !126 ; 2 uses
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !122
  %i.y = sext i32 %i.t to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.ab = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !87
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i64 %i.ad(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.x, i32 noundef %i.aa, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2250
  %i.af = and i64 %i.ae, 6442450944
  %.not.i.i = icmp eq i64 %i.af, 4294967296
  %spec.select.i.i = select i1 %.not.i.i, i64 %i.o, i64 %i.q ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !122
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i.i
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !122
  %i.aj = icmp slt i64 %spec.select.i.i, %i.l
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !34

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.b
  %.0.lcssa.i.i = phi i64 [ 0, %bb.b ], [ %spec.select.i.i, %.lr.ph.i.i ] ; 5 uses
  %i.ak = and i64 %i.i, 4
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.am = add nsw i64 %i.j, -2
  %i.an = ashr exact i64 %i.am, 1
  %i.ao = icmp eq i64 %.0.lcssa.i.i, %i.an
  br i1 %i.ao, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.ap = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.aq = or disjoint i64 %i.ap, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !122
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.as, ptr %i.at, align 4, !tbaa !122
  br label %.lr.ph.i.i.i

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i
  %.not.i = icmp eq i64 %.0.lcssa.i.i, 0
  br i1 %.not.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.thread.i
  %.1.i8.i = phi i64 [ %i.aq, %.thread.i ], [ %.0.lcssa.i.i, %bb.d ]
  %i.au = sext i32 %i.f to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %.019.i.i.i = phi i64 [ %.1.i8.i, %.lr.ph.i.i.i ], [ %.0920.i.i910.i, %bb.f ] ; 3 uses
  %.0920.in.i.i.i = add nsw i64 %.019.i.i.i, -1
  %.0920.i.i910.i = lshr i64 %.0920.in.i.i.i, 1   ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i910.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !122
  %i.ax = load ptr, ptr %.sroa.0.sroa.2.0.copyload.i, align 8, !tbaa !126 ; 2 uses
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !122
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.au
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload.i, align 4
  %i.bd = load ptr, ptr %.sroa.0.sroa.0.0.copyload.i, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = tail call i64 %i.bf(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload.i, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload.i, i32 noundef %i.ba, i32 noundef %i.bc, i64 %.sroa.01.0.copyload.i.i.i.i.i), !inline_history !2251
  %i.bh = and i64 %i.bg, 6442450944
  %.not.i.i.i = icmp eq i64 %i.bh, 4294967296
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bi = load i32, ptr %i.av, align 4, !tbaa !122
  %i.bj = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i.i.i
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !122
  %.not11.i = icmp eq i64 %.0920.i.i910.i, 0
  br i1 %.not11.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, label %bb.e, !llvm.loop !35

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit: ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %.019.i.i.i, %bb.e ], [ 0, %bb.f ]
  %i.bk = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i.i.i
  store i32 %i.f, ptr %i.bk, align 4, !tbaa !122
  %i.bl = icmp sgt i64 %i.i, 4
  br i1 %i.bl, label %bb.b, label %._crit_edge, !llvm.loop !2252

._crit_edge:                                      ; preds = %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_RT0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_RT0_(ptr %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp slt i64 %i.d, 2
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.d, -2                     ; 3 uses
  %i.g = lshr i64 %i.f, 1
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = add nsw i64 %i.d, -1
  %i.i = lshr i64 %i.h, 1                         ; 2 uses
  %i.j = and i64 %i.c, 4
  %i.k = icmp eq i64 %i.j, 0
  %i.l = lshr exact i64 %i.f, 1                   ; 2 uses
  %3 = or disjoint i64 %i.f, 1                    ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %3
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.b
  %.08 = phi i64 [ %i.g, %bb.b ], [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit ] ; 8 uses
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %.08
  %i.p = load i32, ptr %i.o, align 4, !tbaa !122  ; 2 uses
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !167 ; 6 uses
  %.sroa.0.sroa.2.0.copyload = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !tbaa !453 ; 2 uses
  %.sroa.0.sroa.3.0.copyload = load ptr, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8, !tbaa !451 ; 2 uses
  %i.q = icmp slt i64 %.08, %i.i
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %.036.i = phi i64 [ %spec.select.i, %.lr.ph.i ], [ %.08, %bb.c ] ; 2 uses
  %i.r = shl i64 %.036.i, 1                       ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %i.u
  %i.w = load i32, ptr %i.t, align 4, !tbaa !122
  %i.x = load i32, ptr %i.v, align 4, !tbaa !122
  %i.y = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !126 ; 2 uses
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !122
  %i.ac = sext i32 %i.x to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.af = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !87
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ab, i32 noundef %i.ae, i64 %.sroa.01.0.copyload.i.i.i), !inline_history !2253
  %i.aj = and i64 %i.ai, 6442450944
  %.not.i = icmp eq i64 %i.aj, 4294967296
  %spec.select.i = select i1 %.not.i, i64 %i.s, i64 %i.u ; 4 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !122
  %i.am = getelementptr inbounds [4 x i8], ptr %0, i64 %.036.i
  store i32 %i.al, ptr %i.am, align 4, !tbaa !122
  %i.an = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.an, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !34

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %.0.lcssa.i = phi i64 [ %.08, %bb.c ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.ao = icmp eq i64 %.0.lcssa.i, %i.l
  %or.cond = select i1 %i.k, i1 %i.ao, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !122
  store i32 %i.ap, ptr %i.n, align 4, !tbaa !122
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %3, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.aq = icmp sgt i64 %.1.i, %.08
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ar = sext i32 %i.p to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %.1.i, %.lr.ph.i.i ], [ %.0920.i.i, %bb.g ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !122
  %i.au = load ptr, ptr %.sroa.0.sroa.2.0.copyload, align 8, !tbaa !126 ; 2 uses
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !122
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ar
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i.i.i = load i64, ptr %.sroa.0.sroa.3.0.copyload, align 4
  %i.ba = load ptr, ptr %.sroa.0.sroa.0.0.copyload, align 8, !tbaa !87
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = tail call i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(94) %.sroa.0.sroa.0.0.copyload, ptr noundef nonnull %.sroa.0.sroa.0.0.copyload, i32 noundef %i.ax, i32 noundef %i.az, i64 %.sroa.01.0.copyload.i.i.i.i), !inline_history !2254
  %i.be = and i64 %i.bd, 6442450944
  %.not.i.i = icmp eq i64 %i.be, 4294967296
  br i1 %.not.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load i32, ptr %i.as, align 4, !tbaa !122
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !122
  %i.bh = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bh, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, !llvm.loop !35

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.g ], [ %.019.i.i, %bb.f ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.p, ptr %i.bi, align 4, !tbaa !122
  %.not = icmp eq i64 %.08, 0
  %i.bj = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %bb.c, !llvm.loop !2255

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_T0_SJ_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIZNK8facebook5velox10BaseVector11sortIndicesERS5_PKiNSA_12CompareFlagsEEUliiE_EEEvT_SI_SI_SI_T0_(ptr %0, ptr %1, ptr %2, ptr %3, ptr noundef byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter.804") align 8 %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !122
  %i.b = load i32, ptr %2, align 4, !tbaa !122
  %i.c = load ptr, ptr %4, align 8, !tbaa !455    ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !456, !nonnull !148, !align !208 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !126  ; 2 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4, !tbaa !122
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !122
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !457, !nonnull !148, !align !259 ; 4 uses
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.n, align 4
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i64 %i.q(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.i, i32 noundef %i.l, i64 %.sroa.01.0.copyload.i.i), !inline_history !36
  %i.s = and i64 %i.r, 6442450944
  %.not = icmp eq i64 %i.s, 4294967296
  %i.t = load i32, ptr %3, align 4, !tbaa !122
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !126  ; 3 uses
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !122  ; 2 uses
  %.sroa.01.0.copyload.i.i28 = load i64, ptr %i.n, align 4 ; 2 uses
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = load i32, ptr %2, align 4, !tbaa !122
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !122
  %i.af = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.ae, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i28), !inline_history !36
  %i.ag = and i64 %i.af, 6442450944
  %.not32 = icmp eq i64 %i.ag, 4294967296
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ah = load i32, ptr %0, align 4, !tbaa !122
  %i.ai = load i32, ptr %2, align 4, !tbaa !122
  store i32 %i.ai, ptr %0, align 4, !tbaa !122
  store i32 %i.ah, ptr %2, align 4, !tbaa !122
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.aj = load i32, ptr %1, align 4, !tbaa !122
  %i.ak = load i32, ptr %3, align 4, !tbaa !122
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !126 ; 2 uses
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !122
  %i.ap = sext i32 %i.ak to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !122
  %.sroa.01.0.copyload.i.i27 = load i64, ptr %i.n, align 4
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !87
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i64 %i.au(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.ao, i32 noundef %i.ar, i64 %.sroa.01.0.copyload.i.i27), !inline_history !36
  %i.aw = and i64 %i.av, 6442450944
  %.not33 = icmp eq i64 %i.aw, 4294967296
  %i.ax = load i32, ptr %0, align 4, !tbaa !122   ; 2 uses
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = load i32, ptr %3, align 4, !tbaa !122
  store i32 %i.ay, ptr %0, align 4, !tbaa !122
  store i32 %i.ax, ptr %3, align 4, !tbaa !122
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.az = load i32, ptr %1, align 4, !tbaa !122
  store i32 %i.az, ptr %0, align 4, !tbaa !122
  store i32 %i.ax, ptr %1, align 4, !tbaa !122
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %i.ba = load i32, ptr %1, align 4, !tbaa !122
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !122
  %i.be = tail call i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(94) %i.c, ptr noundef nonnull %i.c, i32 noundef %i.bd, i32 noundef %i.x, i64 %.sroa.01.0.copyload.i.i28), !inline_history !36
  %i.bf = and i64 %i.be, 6442450944
  %.not30 = icmp eq i64 %i.bf, 4294967296
  br i1 %.not30, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
end_hunk_2
