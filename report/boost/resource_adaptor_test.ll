Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/resource_adaptor_test?download=true
inline.NumInlined: 302
inline.NumDeleted: 84
begin_hunk_0_@_Z21test_move_constructorv:bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 44, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_move_constructorv, i1 noundef zeroext true) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @__PRETTY_FUNCTION__._Z21test_move_constructorv, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z29test_lvalue_alloc_constructorv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 53, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29test_lvalue_alloc_constructorv, i1 noundef zeroext true) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 54, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29test_lvalue_alloc_constructorv, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z29test_rvalue_alloc_constructorv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 62, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29test_rvalue_alloc_constructorv, i1 noundef zeroext true) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 63, ptr noundef nonnull @__PRETTY_FUNCTION__._Z29test_rvalue_alloc_constructorv, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16test_copy_assignv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 70, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_copy_assignv, i1 noundef zeroext true) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 72, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_copy_assignv, i1 noundef zeroext true) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 74, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_copy_assignv, i1 noundef zeroext true) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.1, i32 noundef 75, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_copy_assignv, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16test_move_assignv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 82, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_move_assignv, i1 noundef zeroext true) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 84, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_move_assignv, i1 noundef zeroext true) ; 0 uses
  %i.c = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 86, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_move_assignv, i1 noundef zeroext true) ; 0 uses
  %i.d = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 87, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_move_assignv, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z18test_get_allocatorv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 129, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_get_allocatorv, i1 noundef zeroext true) ; 0 uses
  %i.b = tail call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 130, ptr noundef nonnull @__PRETTY_FUNCTION__._Z18test_get_allocatorv, i1 noundef zeroext true) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z27test_do_allocate_deallocatev() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN5boost9container3pmr15memory_resource8allocateEmm.exit:
  %i.a = alloca [72 x i8], align 16               ; 7 uses
  %i.b = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.a, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !10

bb.a:                                             ; preds = %_ZN5boost9container3pmr15memory_resource8allocateEmm.exit
  %i.d = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit:      ; preds = %_ZN5boost9container3pmr15memory_resource8allocateEmm.exit, %bb.a, %bb.b
  %i.f = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit42, !prof !10

bb.c:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  %.not.i.i41 = icmp eq i32 %i.h, 0
  br i1 %.not.i.i41, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit42, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.i = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit42

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit42:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, %bb.c, %bb.d
  %i.j = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.e, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit44, !prof !10

bb.e:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit42
  %i.l = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  %.not.i.i43 = icmp eq i32 %i.l, 0
  br i1 %.not.i.i43, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit44, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.m = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit44

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit44:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit42, %bb.e, %bb.f
  %i.n = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.g, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit46, !prof !10

bb.g:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit44
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  %.not.i.i45 = icmp eq i32 %i.p, 0
  br i1 %.not.i.i45, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit46, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.q = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #17 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit46

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit46:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit44, %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.r = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.s = and i64 %i.r, -32
  %i.t = add i64 %i.s, 32
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = or i64 %i.r, 24
  %i.w = inttoptr i64 %i.v to ptr                 ; 2 uses
  store ptr %i.a, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = icmp ule ptr %i.x, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.aa = icmp ugt ptr %i.z, %i.u
  %i.ab = select i1 %i.y, i1 %i.aa, i1 false
  %i.ac = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.1, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_do_allocate_deallocatev, i1 noundef zeroext %i.ab) ; 0 uses
  %i.ad = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %bb.i, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit48, !prof !10

bb.i:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit46
  %i.af = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  %.not.i.i47 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i47, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit48, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.ag = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #17 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit48

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit48:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit46, %bb.i, %bb.j
  %i.ah = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit50, !prof !10

bb.k:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit48
  %i.aj = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  %.not.i.i49 = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i49, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit50, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.ak = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #17 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit50

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit50:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit48, %bb.k, %bb.l
  %.0.copyload.i.i = load ptr, ptr %i.w, align 8
  %i.al = icmp eq ptr %.0.copyload.i.i, %i.a
  %i.am = call noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1, i32 noundef 178, ptr noundef nonnull @__PRETTY_FUNCTION__._Z27test_do_allocate_deallocatev, i1 noundef zeroext %i.al) ; 0 uses
  %i.an = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.m, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit52, !prof !10

bb.m:                                             ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit50
  %i.ap = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  %.not.i.i51 = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i51, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit52, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr @_ZZN5boost6detail12test_resultsEvE8instance, align 4, !tbaa !13
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost6detail12test_resultsEvE8instance, i64 4), align 4, !tbaa !14
  %i.aq = call i32 @__cxa_atexit(ptr nonnull @_ZN5boost6detail11test_resultD2Ev, ptr nonnull @_ZZN5boost6detail12test_resultsEvE8instance, ptr nonnull @__dso_handle) #17 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost6detail12test_resultsEvE8instance) #17
  br label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit52

_ZN5boost6detail9test_implEPKcS2_iS2_b.exit52:    ; preds = %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit50, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.ar = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #19
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 16) #17
  %i.as = call noalias noundef nonnull dereferenceable(87) ptr @_Znwm(i64 noundef 87) #19 ; 3 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = add i64 %i.at, 71
  %i.av = and i64 %i.au, -64
  %i.aw = add i64 %i.av, -8
  %i.ax = inttoptr i64 %i.aw to ptr
  store ptr %i.as, ptr %i.ax, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 87) #17
  %0 = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20
  call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #21
  %i.ay = call noalias noundef nonnull dereferenceable(87) ptr @_Znwm(i64 noundef 87) #20 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = add i64 %i.az, 71
  %i.bb = and i64 %i.ba, -64
  %i.bc = add i64 %i.bb, -8
  %i.bd = inttoptr i64 %i.bc to ptr
  store ptr %i.ay, ptr %i.bd, align 8
  call void @_ZdlPvm(ptr noundef nonnull %i.ay, i64 noundef 87) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN5boost9container3pmr20resource_adaptor_impI8statefulE11do_allocateEmm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp ugt i64 %2, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.a, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52
  br label %_ZN5boost9container3pmr20resource_adaptor_impI8statefulE18priv_aligned_allocEmm.exit

bb.c:                                             ; preds = %bb.a
  %i.d = add i64 %2, 7                            ; 2 uses
  %i.e = add i64 %i.d, %1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !52   ; 3 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %_ZN5boost9container3pmr20resource_adaptor_impI8statefulE18priv_aligned_allocEmm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = add i64 %i.d, %i.i
  %i.k = sub i64 0, %2
  %i.l = and i64 %i.j, %i.k                       ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = add i64 %i.l, -8
  %i.o = inttoptr i64 %i.n to ptr
  store ptr %i.h, ptr %i.o, align 1
  br label %_ZN5boost9container3pmr20resource_adaptor_impI8statefulE18priv_aligned_allocEmm.exit

_ZN5boost9container3pmr20resource_adaptor_impI8statefulE18priv_aligned_allocEmm.exit: ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.m, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN5boost9container3pmr20resource_adaptor_impI8statefulE13do_deallocateEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp ugt i64 %3, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = add i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  %.0.copyload.i = load ptr, ptr %i.c, align 1
  %i.d = add i64 %2, 7
  %i.e = add i64 %i.d, %3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink6 = phi ptr [ %.0.copyload.i, %bb.b ], [ %1, %bb.a ]
  %.sink = phi i64 [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.sink6, ptr %i.f, align 8, !tbaa !53
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink, ptr %i.g, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost9container3pmr15memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z16test_do_is_equalv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %class.derived_from_memory_resource, align 8 ; 6 uses
  %1 = alloca %struct.derived_from_resource_adaptor_stateful, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV28derived_from_memory_resource, i64 16), ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !47
  %i.b = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %0, ptr nonnull @_ZTIN5boost9container3pmr15memory_resourceE, ptr nonnull @_ZTIN5boost9container3pmr20resource_adaptor_impI8statefulEE, i64 0) #17 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !48
  %i.e = icmp ne i32 %i.d, 0
  br label %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit

_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit: ; preds = %bb.a, %bb.b
  %i.f = phi i1 [ true, %bb.a ], [ %i.e, %bb.b ]
  %i.g = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.1, i32 noundef 210, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_do_is_equalv, i1 noundef zeroext %i.f)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.h, align 8, !tbaa !48
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV38derived_from_resource_adaptor_stateful, i64 16), ptr %1, align 8, !tbaa !16
  %i.i = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN5boost9container3pmr15memory_resourceE, ptr nonnull @_ZTIN5boost9container3pmr20resource_adaptor_impI8statefulEE, i64 0) #17 ; 2 uses
  %.not.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i5, label %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit6, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !48
  %i.l = icmp eq i32 %i.k, 0
  br label %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit6

_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit6: ; preds = %bb.c, %bb.d
  %i.m = phi i1 [ false, %bb.c ], [ %i.l, %bb.d ]
  %i.n = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 214, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_do_is_equalv, i1 noundef zeroext %i.m)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit6
  store i32 1234, ptr %i.h, align 8, !tbaa !48
  %i.o = call ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %1, ptr nonnull @_ZTIN5boost9container3pmr15memory_resourceE, ptr nonnull @_ZTIN5boost9container3pmr20resource_adaptor_impI8statefulEE, i64 0) #17 ; 2 uses
  %.not.i7 = icmp eq ptr %i.o, null
  br i1 %.not.i7, label %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit8, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !48
  %i.r = icmp ne i32 %i.q, 0
  br label %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit8

_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit8: ; preds = %bb.e, %bb.f
  %i.s = phi i1 [ true, %bb.e ], [ %i.r, %bb.f ]
  %i.t = invoke noundef zeroext i1 @_ZN5boost6detail9test_implEPKcS2_iS2_b(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 218, ptr noundef nonnull @__PRETTY_FUNCTION__._Z16test_do_is_equalv, i1 noundef zeroext %i.s)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  ret void

bb.h:                                             ; preds = %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit8, %_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE.exit6
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.u, %bb.h ]
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #17
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost9container3pmr20resource_adaptor_impI8statefulE11do_is_equalERKNS1_15memory_resourceE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %1, ptr nonnull @_ZTIN5boost9container3pmr15memory_resourceE, ptr nonnull @_ZTIN5boost9container3pmr20resource_adaptor_impI8statefulEE, i64 0) #17 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.b, align 8, !tbaa !48
  %i.e = load i32, ptr %i.c, align 8, !tbaa !48
  %i.f = icmp eq i32 %i.d, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ false, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN28derived_from_memory_resourceD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store i8 1, ptr @_ZN28derived_from_memory_resource17destructor_calledE, align 1, !tbaa !49
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define hidden noundef i32 @main() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5boost6detail12test_resultsEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5boost6detail9test_implEPKcS2_iS2_b.exit, !prof !10

end_hunk_0
