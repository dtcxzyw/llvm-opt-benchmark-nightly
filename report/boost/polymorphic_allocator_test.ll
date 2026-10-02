Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/polymorphic_allocator_test?download=true
inline.NumInlined: 162
inline.NumDeleted: 65
begin_hunk_0_@__gxx_personality_v0
; Function Attrs: mustprogress uwtable
define hidden void @_Z21test_copy_constructorv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_copy_constructorv, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z20test_copy_assignmentv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.b = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_assignmentv, i1 noundef zeroext %i.c)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 48, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_assignmentv, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z13test_allocatev() local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
_ZN5boost9container3pmr21polymorphic_allocatorIiE8allocateEm.exit:
  store i8 0, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.a, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !10

bb.a:                                             ; preds = %_ZN5boost9container3pmr21polymorphic_allocatorIiE8allocateEm.exit
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %bb.b, %bb.a, %_ZN5boost9container3pmr21polymorphic_allocatorIiE8allocateEm.exit
  %i.e = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, !prof !10

bb.c:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.g = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  %.not.i.i3 = icmp eq i32 %i.g, 0
  br i1 %.not.i.i3, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.h = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4:     ; preds = %bb.d, %bb.c, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.i = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, !prof !10

bb.e:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4
  %i.k = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  %.not.i.i5 = icmp eq i32 %i.k, 0
  br i1 %.not.i.i5, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.l = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6:     ; preds = %bb.f, %bb.e, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit4
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN5boost9container3pmr21polymorphic_allocatorIiE10deallocateEPim.exit, !prof !10

bb.g:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  %.not.i.i7 = icmp eq i32 %i.o, 0
  br i1 %.not.i.i7, label %_ZN5boost9container3pmr21polymorphic_allocatorIiE10deallocateEPim.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  br label %_ZN5boost9container3pmr21polymorphic_allocatorIiE10deallocateEPim.exit

_ZN5boost9container3pmr21polymorphic_allocatorIiE10deallocateEPim.exit: ; preds = %bb.h, %bb.g, %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit6
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z15test_deallocatev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN5boost9container3pmr21polymorphic_allocatorIiE10deallocateEPim.exit:
  store i8 0, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  %i.a = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %bb.a unwind label %bb.e       ; 0 uses

bb.a:                                             ; preds = %_ZN5boost9container3pmr21polymorphic_allocatorIiE10deallocateEPim.exit
  %i.b = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 77, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.e       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 78, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.e       ; 0 uses

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZN5boost9container3pmr21polymorphic_allocatorIiE10deallocateEPim.exit
  %i.e = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z14test_constructv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 90, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 91, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.d = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.e = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 100, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.f = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.g = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.h = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 110, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.i = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 111, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.j = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.k = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.1, i32 noundef 121, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.l = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.1, i32 noundef 122, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.m = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.n = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.o = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 132, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.p = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.q = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.1, i32 noundef 141, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  %i.r = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.1, i32 noundef 142, ptr noundef nonnull @__PRETTY_FUNCTION__._Z14test_constructv, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z12test_destroyv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.b = load i8, ptr @_ZN11char_holder17destructor_calledE, align 1, !tbaa !42, !range !43, !noundef !44
  %i.c = icmp eq i8 %i.b, 0
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 161, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_destroyv, i1 noundef zeroext %i.c)
          to label %bb.b unwind label %bb.d       ; 0 uses

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZN11char_holder17destructor_calledE, align 1, !tbaa !42
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 163, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_destroyv, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr @_ZN11char_holder17destructor_calledE, align 1, !tbaa !42
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr @_ZN11char_holder17destructor_calledE, align 1, !tbaa !42
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z42test_select_on_container_copy_constructionv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.b = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13, !noalias !51
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 173, ptr noundef nonnull @__PRETTY_FUNCTION__._Z42test_select_on_container_copy_constructionv, i1 noundef zeroext %i.c)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z13test_resourcev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 180, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_resourcev, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.b = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.c = icmp eq ptr %i.a, %i.b
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 23, ptr noundef nonnull @__PRETTY_FUNCTION__._Z24test_default_constructorv, i1 noundef zeroext %i.c) ; 0 uses
  %i.e = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 30, ptr noundef nonnull @__PRETTY_FUNCTION__._Z25test_resource_constructorv, i1 noundef zeroext true)
          to label %_Z25test_resource_constructorv.exit unwind label %bb.b ; 0 uses

common.resume:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.k, %bb.g, %bb.c, %bb.b
  %_ZN28derived_from_memory_resource17destructor_calledE.sink = phi ptr [ @_ZN28derived_from_memory_resource17destructor_calledE, %bb.q ], [ @_ZN28derived_from_memory_resource17destructor_calledE, %bb.p ], [ @_ZN11char_holder17destructor_calledE, %bb.o ], [ @_ZN28derived_from_memory_resource17destructor_calledE, %bb.k ], [ @_ZN28derived_from_memory_resource17destructor_calledE, %bb.g ], [ @_ZN28derived_from_memory_resource17destructor_calledE, %bb.c ], [ @_ZN28derived_from_memory_resource17destructor_calledE, %bb.b ]
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.q ], [ %i.aj, %bb.p ], [ %i.ae, %bb.o ], [ %i.v, %bb.k ], [ %i.q, %bb.g ], [ %i.h, %bb.c ], [ %i.f, %bb.b ]
  store i8 1, ptr %_ZN28derived_from_memory_resource17destructor_calledE.sink, align 1, !tbaa !42
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z25test_resource_constructorv.exit:              ; preds = %bb.a
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 38, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_copy_constructorv, i1 noundef zeroext true)
          to label %_Z21test_copy_constructorv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %_Z25test_resource_constructorv.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z21test_copy_constructorv.exit:                  ; preds = %_Z25test_resource_constructorv.exit
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  %i.i = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.j = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.k = icmp eq ptr %i.i, %i.j
  %i.l = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 46, ptr noundef nonnull @__PRETTY_FUNCTION__._Z20test_copy_assignmentv, i1 noundef zeroext %i.k)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %_Z21test_copy_constructorv.exit
  %i.m = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %_Z20test_copy_assignmentv.exit, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.o = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %_Z20test_copy_assignmentv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.p = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  br label %_Z20test_copy_assignmentv.exit

bb.g:                                             ; preds = %_Z21test_copy_constructorv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z20test_copy_assignmentv.exit:                   ; preds = %bb.f, %bb.e, %bb.d
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  tail call void @_Z13test_allocatev()
  store i8 0, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  %i.r = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.k       ; 0 uses

bb.h:                                             ; preds = %_Z20test_copy_assignmentv.exit
  %i.s = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 76, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.1, i32 noundef 77, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.k       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 78, ptr noundef nonnull @__PRETTY_FUNCTION__._Z15test_deallocatev, i1 noundef zeroext true)
          to label %_Z15test_deallocatev.exit unwind label %bb.k ; 0 uses

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %_Z20test_copy_assignmentv.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z15test_deallocatev.exit:                        ; preds = %bb.j
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  tail call void @_Z14test_constructv()
  %i.w = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13 ; 0 uses
  %i.x = load i8, ptr @_ZN11char_holder17destructor_calledE, align 1, !tbaa !42, !range !43, !noundef !44
  %i.y = icmp eq i8 %i.x, 0
  %i.z = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 161, ptr noundef nonnull @__PRETTY_FUNCTION__._Z12test_destroyv, i1 noundef zeroext %i.y)
          to label %bb.l unwind label %bb.o       ; 0 uses

bb.l:                                             ; preds = %_Z15test_deallocatev.exit
  store i8 1, ptr @_ZN11char_holder17destructor_calledE, align 1, !tbaa !42
  %i.aa = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.m, label %_Z12test_destroyv.exit, !prof !10

bb.m:                                             ; preds = %bb.l
  %i.ac = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  %.not.i.i1 = icmp eq i32 %i.ac, 0
  br i1 %.not.i.i1, label %_Z12test_destroyv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.ad = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  br label %_Z12test_destroyv.exit

bb.o:                                             ; preds = %_Z15test_deallocatev.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z12test_destroyv.exit:                           ; preds = %bb.n, %bb.m, %bb.l
  store i8 1, ptr @_ZN11char_holder17destructor_calledE, align 1, !tbaa !42
  %i.af = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13
  %i.ag = tail call noundef ptr @_ZN5boost9container3pmr20get_default_resourceEv() #13, !noalias !57
  %i.ah = icmp eq ptr %i.af, %i.ag
  %i.ai = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 173, ptr noundef nonnull @__PRETTY_FUNCTION__._Z42test_select_on_container_copy_constructionv, i1 noundef zeroext %i.ah)
          to label %_Z42test_select_on_container_copy_constructionv.exit unwind label %bb.p ; 0 uses

bb.p:                                             ; preds = %_Z12test_destroyv.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z42test_select_on_container_copy_constructionv.exit: ; preds = %_Z12test_destroyv.exit
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  %i.ak = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.1, i32 noundef 180, ptr noundef nonnull @__PRETTY_FUNCTION__._Z13test_resourcev, i1 noundef zeroext true)
          to label %_Z13test_resourcev.exit unwind label %bb.q ; 0 uses

bb.q:                                             ; preds = %_Z42test_select_on_container_copy_constructionv.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_Z13test_resourcev.exit:                          ; preds = %_Z42test_select_on_container_copy_constructionv.exit
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !42
  %i.am = tail call noundef i32 @_ZN5boost13report_errorsEv()
  ret i32 %i.am
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost13report_errorsEv() local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail12test_resultsEv.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5boost6detail12test_resultsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #13 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #13
  br label %_ZN5boost6detail12test_resultsEv.exit

_ZN5boost6detail12test_resultsEv.exit:            ; preds = %bb.a, %bb.b, %bb.c
  store i8 1, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !41 ; 4 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.30, i64 noundef 19) ; 0 uses
  %i.h = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !16
  %i.i = getelementptr i8, ptr %i.h, i64 -24
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.e, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %i.o = load i8, ptr %i.n, align 8, !tbaa !39
  %.not.i1.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i1.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 67
  %i.q = load i8, ptr %i.p, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.g:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.m)
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef signext i8 %i.t(ptr noundef nonnull align 8 dereferenceable(570) %i.m, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i.i = phi i8 [ %i.q, %bb.f ], [ %i.u, %bb.g ]
  %i.v = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
  br label %bb.l

bb.h:                                             ; preds = %_ZN5boost6detail12test_resultsEv.exit
  %i.w = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %i.e) ; 6 uses
  %i.x = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.31, i64 noundef 6) ; 0 uses
  %i.y = icmp ne i32 %i.e, 1                      ; 2 uses
  %i.z = select i1 %i.y, ptr @.str.33, ptr @.str.32
  %i.aa = zext i1 %i.y to i64
  %i.ab = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.z, i64 noundef %i.aa) ; 0 uses
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull @.str.34, i64 noundef 10) ; 0 uses
  %i.ad = load ptr, ptr %i.w, align 8, !tbaa !16
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33 ; 6 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i7, label %bb.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt16__throw_bad_castv() #14
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8: ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !39
  %.not.i1.i.i9 = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i8
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !16
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10), !inline_history !0
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11: ; preds = %bb.j, %bb.k
  %.0.i.i.i10 = phi i8 [ %i.am, %bb.j ], [ %i.aq, %bb.k ]
  %i.ar = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i8 noundef signext %.0.i.i.i10)
  br label %bb.l

bb.l:                                             ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.sink = phi ptr [ %i.ar, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit11 ], [ %i.v, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.as = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %.sink) ; 0 uses
  %i.at = tail call i32 @llvm.smin.i32(i32 %i.e, i32 255)
  ret i32 %i.at
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6detail11test_resultD2Ev(ptr noundef nonnull align 4 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !13, !range !43, !noundef !44
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.29, i64 noundef 36)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.d ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.b
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr)
          to label %_ZNSolsEPFRSoS_E.exit unwind label %bb.d, !inline_history !58 ; 0 uses

_ZNSolsEPFRSoS_E.exit:                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  tail call void @abort() #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void

bb.d:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #15
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #6

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #11

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, null, null, null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"branch_weights", i32 1, i32 1048575}
!11 = !{!"bool", !6, i64 0}
!12 = !{!"_ZTSN5boost6detail11test_resultE", !11, i64 0, !7, i64 4}
!13 = !{!12, !11, i64 0}
!14 = !{!12, !7, i64 4}
!15 = !{!"vtable pointer", !5, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"long", !6, i64 0}
!18 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!19 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!22 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !17, i64 8}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!25 = !{!"_ZTSSt6locale", !24, i64 0}
!26 = !{!"_ZTSSt8ios_base", !17, i64 8, !17, i64 16, !18, i64 24, !19, i64 28, !19, i64 32, !21, i64 40, !22, i64 48, !6, i64 64, !7, i64 192, !23, i64 200, !25, i64 208}
!27 = !{!"p1 _ZTSSo", !20, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!32 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0, !27, i64 216, !6, i64 224, !11, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!33 = !{!32, !29, i64 240}
!34 = !{!"_ZTSNSt6locale5facetE", !7, i64 8}
!35 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!36 = !{!"p1 int", !20, i64 0}
!37 = !{!"p1 short", !20, i64 0}
!38 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !35, i64 16, !11, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!39 = !{!38, !6, i64 56}
!40 = !{!6, !6, i64 0}
!41 = !{!7, !7, i64 0}
!42 = !{!11, !11, i64 0}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = !{!26, !19, i64 32}
!49 = distinct !{!49, i1 false, !"_ZNK5boost9container3pmr21polymorphic_allocatorIiE37select_on_container_copy_constructionEv"}
!50 = distinct !{!50, !49, !"_ZNK5boost9container3pmr21polymorphic_allocatorIiE37select_on_container_copy_constructionEv: argument 0"}
!51 = !{!50}
!55 = distinct !{!55, i1 false, !"_ZNK5boost9container3pmr21polymorphic_allocatorIiE37select_on_container_copy_constructionEv"}
!56 = distinct !{!56, !55, !"_ZNK5boost9container3pmr21polymorphic_allocatorIiE37select_on_container_copy_constructionEv: argument 0"}
!57 = !{!56}
!58 = distinct !{null}
end_hunk_0
