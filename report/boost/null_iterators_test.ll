inline.NumInlined: 1047
inline.NumDeleted: 544
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_Z15check_plus_zeroIN5boost9container13static_vectorIiLm1EvEEEvRKSt26random_access_iterator_tag:bb.a
bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit2, %bb.f, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i5 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i5, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, %bb.h, %bb.i
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i7 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i7, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit: ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, %bb.j, %bb.k
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit, !prof !9

bb.l:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i9 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i9, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, %bb.l, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit, !prof !9

bb.n:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i11 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i11, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb1EEEEvT_.exit, %bb.n, %bb.o
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit, !prof !9

bb.p:                                             ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i13 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i13, label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit

_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb1EEEEEEvT_.exit: ; preds = %_Z20check_plus_zero_implIN5boost7movelib16reverse_iteratorINS0_9container12vec_iteratorIPiLb0EEEEEEvT_.exit, %bb.p, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15check_plus_zeroIN5boost9container12basic_stringIcSt11char_traitsIcEvvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_Z20check_plus_zero_implIPcEvT_.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i, label %_Z20check_plus_zero_implIPcEvT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIPcEvT_.exit

_Z20check_plus_zero_implIPcEvT_.exit:             ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_Z20check_plus_zero_implIPKcEvT_.exit, !prof !9

bb.d:                                             ; preds = %_Z20check_plus_zero_implIPcEvT_.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i.i1 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i1, label %_Z20check_plus_zero_implIPKcEvT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIPKcEvT_.exit

_Z20check_plus_zero_implIPKcEvT_.exit:            ; preds = %_Z20check_plus_zero_implIPcEvT_.exit, %bb.d, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !9

bb.f:                                             ; preds = %_Z20check_plus_zero_implIPKcEvT_.exit
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %_Z20check_plus_zero_implIPKcEvT_.exit, %bb.f, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit9, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i8 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i8, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit9

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit9:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.h, %bb.i
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_Z20check_plus_zero_implIPcEvT_.exit3, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit9
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i.i2 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i2, label %_Z20check_plus_zero_implIPcEvT_.exit3, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIPcEvT_.exit3

_Z20check_plus_zero_implIPcEvT_.exit3:            ; preds = %bb.k, %bb.j, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit9
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6rbeginEv.exit, !prof !9

bb.l:                                             ; preds = %_Z20check_plus_zero_implIPcEvT_.exit3
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i.i4 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i4, label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6rbeginEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6rbeginEv.exit

_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6rbeginEv.exit: ; preds = %_Z20check_plus_zero_implIPcEvT_.exit3, %bb.l, %bb.m
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.n, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7crbeginEv.exit, !prof !9

bb.n:                                             ; preds = %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6rbeginEv.exit
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i10 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i10, label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7crbeginEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7crbeginEv.exit

_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7crbeginEv.exit: ; preds = %bb.o, %bb.n, %_ZN5boost9container12basic_stringIcSt11char_traitsIcEvvE6rbeginEv.exit
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.p, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit, !prof !9

bb.p:                                             ; preds = %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7crbeginEv.exit
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i12 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i12, label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit

_ZN5boost9container3dtl17basic_string_baseINS0_13new_allocatorIcEEvED2Ev.exit: ; preds = %bb.q, %bb.p, %_ZNK5boost9container12basic_stringIcSt11char_traitsIcEvvE7crbeginEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15check_plus_zeroIN5boost9container8flat_setIiSt4lessIiEvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, !prof !9

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i3, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.f, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, !prof !9

bb.f:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i5 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i5, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, %bb.f, %bb.g
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, !prof !9

bb.h:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i7 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i7, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, %bb.h, %bb.i
  %i.q = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.j, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, !prof !9

bb.j:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8
  %i.s = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i9 = icmp eq i32 %i.s, 0
  br i1 %.not.i.i9, label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.t = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit

_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit: ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit8, %bb.j, %bb.k
  %i.u = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.l, label %bb.n, !prof !9

bb.l:                                             ; preds = %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit
  %i.w = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i11 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i11, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.x = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %_Z20check_plus_zero_implIN5boost9container12vec_iteratorIPiLb0EEEEvT_.exit
  %i.y = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %bb.o, label %bb.q, !prof !9

bb.o:                                             ; preds = %bb.n
  %i.aa = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i13 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i13, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.ab = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ac = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.r, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiEvED2Ev.exit, !prof !9

bb.r:                                             ; preds = %bb.q
  %i.ae = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i15 = icmp eq i32 %i.ae, 0
  br i1 %.not.i.i15, label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiEvED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.af = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiEvED2Ev.exit

_ZN5boost9container3dtl9flat_treeIiNS_11move_detail8identityIiEESt4lessIiEvED2Ev.exit: ; preds = %bb.s, %bb.r, %bb.q
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_Z15check_plus_zeroIN5boost9container13flat_multisetIiSt4lessIiEvEEEvRKSt26random_access_iterator_tag(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %bb.a, %bb.b, %bb.c
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, !prof !9

bb.d:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  %.not.i.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i3, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !10
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !13
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #15 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #15
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4:     ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.d, %bb.e
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
end_hunk_0
