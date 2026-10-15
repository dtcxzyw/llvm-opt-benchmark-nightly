Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/salsa-rs/original/salsa-18876957f0a83274.salsa.72a3b6749c32557-cgu.02?download=true
inline.NumInlined: 266
inline.NumDeleted: 104
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvCsa3bo7ChGFM8_8thin_vec6layoutNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBA_:bb.a
bb.j:                                             ; preds = %bb.h
  %i.l = insertvalue { i64, i64 } { i64 8, i64 poison }, i64 %i.k, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, i64 } @_RINvCsa3bo7ChGFM8_8thin_vec6layoutTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBB_2id2IdEEBB_(i64 noundef %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = icmp slt i64 %0, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %0, ptr %i.c, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 2, ptr %i.d, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge.i = phi i8 [ 0, %bb.b ], [ 1, %bb.c ]
  store i8 %storemerge.i, ptr %i.a, align 8
  %i.e = call noundef i64 @_RNvXs_Csa3bo7ChGFM8_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsC8CapfvpQ1_5salsa(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.e, i64 24) ; 2 uses
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %bb.f, label %bb.e, !prof !4

bb.e:                                             ; preds = %bb.d
  %i.h = extractvalue { i64, i1 } %i.f, 0
  %i.i = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.h, i64 16) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.h, !prof !4

bb.f:                                             ; preds = %bb.d
  tail call void @_RNvCsa3bo7ChGFM8_8thin_vec17capacity_overflow() #27
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void @_RNvCsa3bo7ChGFM8_8thin_vec17capacity_overflow() #27
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  %.not = icmp ugt i64 %i.k, 9223372036854775800
  br i1 %.not, label %bb.i, label %bb.j, !prof !4

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCsa3bo7ChGFM8_8thin_vec17capacity_overflow() #27
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.l = insertvalue { i64, i64 } { i64 8, i64 poison }, i64 %i.k, 1
  ret { i64, i64 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCsC8CapfvpQ1_5salsa4sync4shimNtB6_7Condvar4waitNtNtNtBa_7runtime16dependency_graph15DependencyGraphEBa_(ptr noundef nonnull align 8 %0, ptr noundef nonnull returned align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 undef, i32 noundef -1)
          to label %bb.d unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = cmpxchg ptr %1, i8 1, i8 0 release monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %1, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  ret ptr %1

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RINvMs0_NtNtCsC8CapfvpQ1_5salsa4sync4shimNtB6_7Condvar4waitjEBa_(ptr noundef nonnull align 8 %0, ptr noundef nonnull returned align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = invoke noundef zeroext i1 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, i64 undef, i32 noundef -1)
          to label %bb.d unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = cmpxchg ptr %1, i8 1, i8 0 release monotonic, align 1
  %i.d = extractvalue { i8, i1 } %i.c, 1
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexjEECsC8CapfvpQ1_5salsa.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %1, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexjEECsC8CapfvpQ1_5salsa.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  ret ptr %1

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexjEECsC8CapfvpQ1_5salsa.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8function8backdate17BackdateViolationEBH_(ptr captures(address) %.16.val, i64 %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.16.val, null
  br i1 %i.a, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceEEB11_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  %i.b = icmp eq i64 %.24.val, 0
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceEEB11_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit.i.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [32 x i8], ptr %.16.val, i64 %.sroa.0.09.i.i.i.i
  %i.d = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 1   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !40, !nonnull !3, !noundef !3
  %i.g = icmp eq ptr %i.f, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit.i.i.i.i, label %bb.c, !prof !5

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit.i.i.i.i unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.h = icmp eq i64 %i.d, %.24.val
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBG_.exit.i.i.i, label %.lr.ph.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.d, %.24.val
  br i1 %i.j, label %.loopexit.i.i.i, label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit8.i.i.i.i
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.l, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit8.i.i.i.i ], [ %i.d, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %.16.val, i64 %.sroa.0.110.i.i.i.i
  %i.l = add i64 %.sroa.0.110.i.i.i.i, 1          ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !41, !nonnull !3, !noundef !3
  %i.o = icmp eq ptr %i.n, @_RNvCsa3bo7ChGFM8_8thin_vec12EMPTY_HEADER
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit8.i.i.i.i, label %bb.e, !prof !5

bb.e:                                             ; preds = %.lr.ph12.i.i.i.i
  invoke void @_RINvCsa3bo7ChGFM8_8thin_vec18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEBN_(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit8.i.i.i.i unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit8.i.i.i.i: ; preds = %bb.e, %.lr.ph12.i.i.i.i
  %i.p = icmp eq i64 %i.l, %.24.val
  br i1 %i.p, label %.loopexit.i.i.i, label %.lr.ph12.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29, !noalias !39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBG_.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit.i.i.i.i
  %i.r = shl nuw nsw i64 %.24.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef range(i64 1, -9223372036854775808) %i.r, i64 noundef 8) #28
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceEEB11_.exit

.loopexit.i.i.i:                                  ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_.exit8.i.i.i.i, %bb.d
  %i.s = shl nuw nsw i64 %.24.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.16.val, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef 8) #28
  resume { ptr, i32 } %i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceEEB11_.exit: ; preds = %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBG_.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0EB16_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %1 = load ptr, ptr %0, align 8, !noalias !54, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !54, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !54, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !54, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !54
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !54, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !54, !inline_history !44
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.w = load ptr, ptr %0, align 8, !noalias !55, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !55, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !55, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !55, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !55
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !55, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !55, !inline_history !47
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !56, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !56
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %i.at = load ptr, ptr %0, align 8, !noalias !57, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !57, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !57, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !57
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !57, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !44

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit: ; preds = %bb.p, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit9, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit ], [ %i.ca, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %i.bn = load ptr, ptr %0, align 8, !noalias !58, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !58, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !58, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !58, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !58
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit9

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !58, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !58, !inline_history !44
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0E0bEB2o_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0EB16_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  %1 = load ptr, ptr %0, align 8, !noalias !71, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !71, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !71, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !71, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !71
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !71, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !71, !inline_history !61
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.w = load ptr, ptr %0, align 8, !noalias !72, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !72, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !72, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !72, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !72
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit.i.i

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !72, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !72, !inline_history !64
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !73)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !73, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !73
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !74
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.at = load ptr, ptr %0, align 8, !noalias !74, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !74, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !74, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !74
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !74, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !61

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit: ; preds = %bb.p, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit.i.i, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit9, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit ], [ %i.ca, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  %i.bn = load ptr, ptr %0, align 8, !noalias !75, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !75, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !75, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !75, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !75
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit9

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !75, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !75, !inline_history !61
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0E0bEB2o_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0EB16_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !88)
  %1 = load ptr, ptr %0, align 8, !noalias !88, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !88, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !88, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !88, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !88
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !88, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !88, !inline_history !78
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  %i.w = load ptr, ptr %0, align 8, !noalias !89, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !89, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !89, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !89, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !89
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit.i.i

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !89, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !89, !inline_history !81
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !90, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !90
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !91
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %i.at = load ptr, ptr %0, align 8, !noalias !91, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !91, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !91, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !91
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !91, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !78

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit: ; preds = %bb.p, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit.i.i, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit9, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit ], [ %i.ca, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.bn = load ptr, ptr %0, align 8, !noalias !92, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !92, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !92, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !92, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !92
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit9

_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !92, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !92, !inline_history !78
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0E0bEB2o_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB14_7Runtime12new_revisions_0EB16_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %1 = load ptr, ptr %0, align 8, !noalias !105, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !105, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !105, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !105, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !105
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit

_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !105, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !105, !inline_history !95
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  %i.w = load ptr, ptr %0, align 8, !noalias !106, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !106, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !106, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !106, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !106
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit.i.i

_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !106, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !106, !inline_history !98
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !107, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !107
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !108
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.at = load ptr, ptr %0, align 8, !noalias !108, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !108, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !108, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !108
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !108, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !95

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit: ; preds = %bb.p, %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit.i.i, %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit9, %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit ], [ %i.ca, %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.bn = load ptr, ptr %0, align 8, !noalias !109, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !109, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !109, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !109, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !109
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit9

_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !109, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !109, !inline_history !95
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB2m_7Runtime12new_revisions_0E0bEB2o_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB15_4memo10MemoHeader18previous_iterations_0EB17_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %1 = load ptr, ptr %0, align 8, !noalias !122, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !122, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !122, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !122, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !122
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit

_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !122, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !122, !inline_history !112
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.w = load ptr, ptr %0, align 8, !noalias !123, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !123, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !123, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !123, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !123
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit.i.i

_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !123, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !123, !inline_history !115
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !124)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !124, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !124
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !125
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.at = load ptr, ptr %0, align 8, !noalias !125, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !125, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !125, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !125
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !125, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !112

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit: ; preds = %bb.p, %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit.i.i, %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit9, %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit ], [ %i.ca, %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.bn = load ptr, ptr %0, align 8, !noalias !126, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !126, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !126, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !126, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !126
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit9

_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !126, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !126, !inline_history !112
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB2n_4memo10MemoHeader18previous_iterations_0E0bEB2p_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0EB14_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %1 = load ptr, ptr %0, align 8, !noalias !139, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !139, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !139, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !139, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !139
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !139, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !139, !inline_history !129
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  %i.w = load ptr, ptr %0, align 8, !noalias !140, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !140, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !140, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !140, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !140
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit.i.i

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !140, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !140, !inline_history !132
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !141, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !141
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !142
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.at = load ptr, ptr %0, align 8, !noalias !142, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !142, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !142, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !142
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !142, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !129

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit: ; preds = %bb.p, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit.i.i, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit9, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit ], [ %i.ca, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.bn = load ptr, ptr %0, align 8, !noalias !143, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !143, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !143, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !143, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !143
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit9

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !143, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !143, !inline_history !129
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0E0bEB2m_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0EB14_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  %1 = load ptr, ptr %0, align 8, !noalias !156, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !156, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !156, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !156, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !156
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !156, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !156, !inline_history !146
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.w = load ptr, ptr %0, align 8, !noalias !157, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !157, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !157, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !157, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !157
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit.i.i

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !157, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !157, !inline_history !149
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !158, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !158
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !159
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  %i.at = load ptr, ptr %0, align 8, !noalias !159, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !159, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !159, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !159
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !159, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !146

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit: ; preds = %bb.p, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit.i.i, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit9, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit ], [ %i.ca, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %i.bn = load ptr, ptr %0, align 8, !noalias !160, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !160, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !160, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !160, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !160
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit9

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !160, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !160, !inline_history !146
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0E0bEB2m_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0EB16_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8
  %i.d = icmp eq i64 %i.c, 2
  %.sroa.01.0 = select i1 %i.d, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %1 = load ptr, ptr %0, align 8, !noalias !173, !nonnull !3, !align !6, !noundef !3
  %2 = load i64, ptr %.sroa.01.0, align 8, !range !7, !alias.scope !173, !noundef !3
  %i.e = trunc nuw i64 %2 to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 8
  %.val11 = load ptr, ptr %3, align 8, !alias.scope !173, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 16
  %.val13 = load ptr, ptr %4, align 8, !alias.scope !173, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.e, label %bb.c, label %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val13, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !3, !noalias !173
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %.val11, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  br label %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit

_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ %i.k, %bb.c ], [ %.val11, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %.val13, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !3, !noalias !173, !nonnull !3
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !noalias !173, !inline_history !163
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit

bb.d:                                             ; preds = %bb.a
  %i.o = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.q = load i8, ptr %i.p, align 8, !range !9, !noundef !3
  switch i8 %i.q, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit.thread
  ], !prof !10

default.unreachable:                              ; preds = %bb.d
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i: ; preds = %bb.d
  %i.r = tail call noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.o) ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit.thread, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i: ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i, %bb.d
  %.sroa.0.0.i.i4.i = phi ptr [ %i.r, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i ], [ %i.o, %bb.d ] ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 32 ; 4 uses
  %i.u = load i8, ptr %i.t, align 1, !range !11, !noundef !3
  %i.v = trunc nuw i8 %i.u to i1
  store i8 0, ptr %i.t, align 1
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.w = load ptr, ptr %0, align 8, !noalias !174, !nonnull !3, !align !6, !noundef !3
  %i.x = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !174, !noundef !3
  %i.y = trunc nuw i64 %i.x to i1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !174, !nonnull !3, !noundef !3 ; 2 uses
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !174, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.y, label %bb.f, label %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !8, !invariant.load !3, !noalias !174
  %i.ad = add nsw i64 %i.ac, -1
  %i.ae = and i64 %i.ad, -16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  br label %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit.i.i

_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit.i.i: ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i6.i = phi ptr [ %i.ag, %bb.f ], [ %i.z, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !3, !noalias !174, !nonnull !3
  %i.aj = tail call noundef zeroext i1 %i.ai(ptr noundef nonnull %.sroa.0.0.i.i6.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.w), !noalias !174, !inline_history !166
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit

bb.g:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i
  %i.ak = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 9223372036854775807
  br i1 %i.al, label %bb.j, label %bb.h, !prof !5

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i unwind label %bb.i

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.j:                                             ; preds = %bb.g
  %i.an = add nuw nsw i64 %i.ak, 1
  store i64 %i.an, ptr %.sroa.0.0.i.i4.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.ap = load i64, ptr %i.ao, align 8, !range !12, !alias.scope !175, !noundef !3 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ap, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !175
  %i.ar = icmp eq i64 %i.aq, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i = select i1 %i.ar, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, align 8, !range !7, !alias.scope !176
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi i64 [ %i.ap, %bb.j ], [ %.pre.i.i, %bb.k ]
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ao, %bb.j ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i, %bb.k ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.at = load ptr, ptr %0, align 8, !noalias !176, !nonnull !3, !align !6, !noundef !3
  %i.au = trunc nuw i64 %i.as to i1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !176, !nonnull !3, !noundef !3 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !176, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !range !8, !invariant.load !3, !noalias !176
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = and i64 %i.bb, -16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sroa.0.0.i9.i.i = phi ptr [ %i.be, %bb.m ], [ %i.aw, %bb.l ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !3, !noalias !176, !nonnull !3
  %i.bh = invoke noundef zeroext i1 %i.bg(ptr noundef nonnull %.sroa.0.0.i9.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.at)
          to label %bb.p unwind label %bb.o, !inline_history !163

bb.o:                                             ; preds = %bb.n
  %i.bi = landingpad { ptr, i32 }
          cleanup
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = load i64, ptr %.sroa.0.0.i.i4.i, align 8, !noundef !3
  %i.bm = add i64 %i.bl, -1
  store i64 %i.bm, ptr %.sroa.0.0.i.i4.i, align 8
  store i8 1, ptr %i.t, align 8
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit

bb.q:                                             ; preds = %bb.o, %bb.i
  %.pn.i.i = phi { ptr, i32 } [ %i.am, %bb.i ], [ %i.bi, %bb.o ]
  store i8 1, ptr %i.t, align 8
  resume { ptr, i32 } %.pn.i.i

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit: ; preds = %bb.p, %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit.i.i, %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit9, %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit
  %.sroa.0.0 = phi i1 [ %i.n, %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit ], [ %i.ca, %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit9 ], [ %i.bh, %bb.p ], [ %i.aj, %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit.i.i ]
  ret i1 %.sroa.0.0

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit.thread: ; preds = %bb.d, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %i.bn = load ptr, ptr %0, align 8, !noalias !177, !nonnull !3, !align !6, !noundef !3
  %i.bo = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !177, !noundef !3
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !177, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !177, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bp, label %bb.r, label %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit9

bb.r:                                             ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit.thread
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !range !8, !invariant.load !3, !noalias !177
  %i.bu = add nsw i64 %i.bt, -1
  %i.bv = and i64 %i.bu, -16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  br label %_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit9

_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_.exit9: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit.thread, %bb.r
  %.sroa.0.0.i8 = phi ptr [ %i.bx, %bb.r ], [ %i.bq, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit.thread ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !3, !noalias !177, !nonnull !3
  %i.ca = tail call noundef zeroext i1 %i.bz(ptr noundef nonnull %.sroa.0.0.i8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.bn), !noalias !177, !inline_history !163
  br label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0E0bEB2o_.exit
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RINvNvXsG_Csa3bo7ChGFM8_8thin_vecINtB8_8IntoIterpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop18drop_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEB1S_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !180, !nonnull !3, !noundef !3 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.e = icmp ugt i64 %i.d, %i.b
  br i1 %i.e, label %bb.c, label %bb.b, !prof !4

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.d, i64 noundef %i.b, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  store i64 0, ptr %i.a, align 8
  resume { ptr, i32 } %i.f
}

; Function Attrs: cold noinline nonlazybind uwtable
define noundef i64 @_RINvNvXsp_Csa3bo7ChGFM8_8thin_vecINtB8_7ThinVecpENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone19clone_non_singletonNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEB1P_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs4_NtCsC8CapfvpQ1_5salsa5tableNtB5_5Table9dyn_memos:bb.a
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsm_NtCsC8CapfvpQ1_5salsa5tableNtB5_9SlotIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.u, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27
  unreachable

_RNvMs7_NtCsC8CapfvpQ1_5salsa5tableNtB5_4Page3get.exit: ; preds = %_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE3getBN_.exit
  %i.v = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.w = load ptr, ptr %i.m, align 8, !nonnull !3, !align !6, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !noundef !3
  %i.z = mul i64 %i.y, %i.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ab = tail call noundef ptr %i.p(ptr noundef nonnull %i.aa, i64 noundef %3)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = insertvalue { ptr, ptr } poison, ptr %i.ae, 0
  %i.ag = insertvalue { ptr, ptr } %i.af, ptr %i.ab, 1
  ret { ptr, ptr } %i.ag

select.unfold:                                    ; preds = %bb.b, %bb.a
  tail call void @_RNvNvXs_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef %i.f) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs4_NtCsC8CapfvpQ1_5salsa5tableNtB5_5Table9memos_mut(ptr noalias noundef align 8 dereferenceable(520) %0, i32 noundef range(i32 1, 0) %1, i32 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = add i32 %1, -1
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = lshr i64 %i.g, 7                         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %i.h, ptr %i.e, align 8
  %i.i = tail call noundef i64 @_RNvMs8_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsC8CapfvpQ1_5salsa(i64 noundef range(i64 0, 33554432) %i.h), !noalias !211
  %i.j = tail call noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E7get_mutB1g_(ptr noalias noundef nonnull align 8 dereferenceable(480) %0, i64 noundef %i.i) ; 6 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.l = load i8, ptr %i.k, align 8, !range !11, !noundef !3
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_.exit, label %bb.d

_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_.exit: ; preds = %bb.b
  %i.n = and i64 %i.g, 127
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !3, !align !6, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.n, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.t = load atomic i64, ptr %i.s acquire, align 8 ; 2 uses
  store i64 %i.t, ptr %i.b, align 8
  %i.u = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  br i1 %i.v, label %_RNvMs7_NtCsC8CapfvpQ1_5salsa5tableNtB5_4Page3get.exit, label %bb.c, !prof !5

bb.c:                                             ; preds = %_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsm_NtCsC8CapfvpQ1_5salsa5tableNtB5_9SlotIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.w, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #27
  unreachable

_RNvMs7_NtCsC8CapfvpQ1_5salsa5tableNtB5_4Page3get.exit: ; preds = %_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_.exit
  %i.x = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.y = load ptr, ptr %i.o, align 8, !nonnull !3, !align !6, !noundef !3
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !3
  %i.ab = mul i64 %i.aa, %i.u
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ad = tail call noundef ptr %i.r(ptr noundef nonnull %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ah = insertvalue { ptr, ptr } poison, ptr %i.ag, 0
  %i.ai = insertvalue { ptr, ptr } %i.ah, ptr %i.ad, 1
  ret { ptr, ptr } %i.ai

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.44.0..sroa_idx, align 8
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @8, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #27
  unreachable
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define { i64, i64 } @_RNvMs4_NtCsC8CapfvpQ1_5salsa8revisionNtB5_22OptionalAtomicRevision16compare_exchange(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = cmpxchg ptr %0, i64 %1, i64 %2 acq_rel acquire, align 8 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %not..i = xor i1 %i.b, true
  %i.c = extractvalue { i64, i1 } %i.a, 0
  %.sroa.0.0 = zext i1 %not..i to i64
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %i.c, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i64 @_RNvMs4_NtCsC8CapfvpQ1_5salsa8revisionNtB5_22OptionalAtomicRevision3new(i64 noundef returned %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  ret i64 %0
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef i64 @_RNvMs4_NtCsC8CapfvpQ1_5salsa8revisionNtB5_22OptionalAtomicRevision4swap(ptr nofree noundef nonnull align 8 captures(none) %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = atomicrmw xchg ptr %0, i64 %1 acq_rel, align 8
  ret i64 %i.a
}

; Function Attrs: cold noinline nonlazybind uwtable
define hidden void @_RNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation(ptr noalias noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %0, i64 noundef range(i64 1, 0) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { ptr, i64 } @_RNvMs7_NtCsC8CapfvpQ1_5salsa12active_queryNtB5_9Backtrace7capture() ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false)
  store i64 %1, ptr %i.b, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.d, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  store i64 %i.e, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.j = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %bb.c, label %bb.v

bb.b:                                             ; preds = %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke, %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i.i, %bb.w, %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.b ], [ %.pn.i.i.i, %bb.u ]
  %.val11 = load ptr, ptr %i.h, align 8, !align !6, !noundef !3
  %.val12 = load i64, ptr %i.i, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8function8backdate17BackdateViolationEBH_(ptr %.val11, i64 %.val12) #30
          to label %bb.y unwind label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.m = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.m, label %bb.d [
    i8 0, label %bb.v
    i8 1, label %bb.e
    i8 2, label %bb.e
  ], !prof !13

bb.d:                                             ; preds = %bb.c
  %i.n = invoke noundef i8 @_RNvMNtCsjvLTWb8VeNU_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation10___CALLSITE)
          to label %bb.f unwind label %bb.b       ; 2 uses

bb.e:                                             ; preds = %bb.c, %bb.c, %bb.f
  %.sroa.05.0 = phi i8 [ %i.n, %bb.f ], [ %i.m, %bb.c ], [ %i.m, %bb.c ]
  %i.o = load ptr, ptr @_RNvNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation10___CALLSITE, align 8, !nonnull !3, !align !6, !noundef !3
  %i.p = invoke noundef zeroext i1 @_RNvNtCsdyr9GQQDC9w_7tracing15___macro_support12___is_enabled(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.o, i8 noundef %.sroa.05.0)
          to label %bb.g unwind label %bb.b

bb.f:                                             ; preds = %bb.d
  %i.q = icmp eq i8 %i.n, 0
  br i1 %i.q, label %bb.v, label %bb.e

bb.g:                                             ; preds = %bb.e
  br i1 %i.p, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @_RNvNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation10___CALLSITE, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.s = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher12SCOPED_COUNT acquire, align 8, !noalias !226
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !226
  %i.v = icmp eq i64 %i.u, 2
  %.sroa.01.0.i = select i1 %i.v, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 3 uses
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.val.i = load i64, ptr %.sroa.01.0.i, align 8, !range !7, !alias.scope !227, !noalias !226, !noundef !3
  %i.w = trunc nuw i64 %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.val.i to i1
  %3 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %.val11.i = load ptr, ptr %3, align 8, !alias.scope !227, !noalias !226, !nonnull !3, !noundef !3 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 16
  %.val13.i = load ptr, ptr %4, align 8, !alias.scope !227, !noalias !226, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.w, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke

bb.j:                                             ; preds = %bb.h
  %i.x = call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load i8, ptr %i.y, align 8, !range !9, !noalias !226, !noundef !3
  switch i8 %i.z, label %default.unreachable [
    i8 0, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i.i
    i8 1, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i.i
    i8 2, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i
  ], !prof !10

default.unreachable:                              ; preds = %bb.j
  unreachable

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i.i: ; preds = %bb.j
  %i.aa = invoke noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8 %i.x)
          to label %.noexc13 unwind label %bb.b   ; 2 uses

.noexc13:                                         ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.i.i
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i, label %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i.i

_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i.i: ; preds = %.noexc13, %bb.j
  %.sroa.0.0.i.i4.i.i = phi ptr [ %i.aa, %.noexc13 ], [ %i.x, %bb.j ] ; 8 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 32 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 1, !range !11, !noalias !226, !noundef !3
  %i.ae = trunc nuw i8 %i.ad to i1
  store i8 0, ptr %i.ac, align 1, !noalias !226
  br i1 %i.ae, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i.i
  %i.af = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !228, !noalias !226, !noundef !3
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !228, !noalias !226, !nonnull !3, !noundef !3 ; 2 uses
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !228, !noalias !226, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.ag, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke

bb.l:                                             ; preds = %_RNvYNCNKNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher13CURRENT_STATE00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTINtNtB1c_6option6OptionQIB1R_NtB8_5StateEEEE9call_onceCsC8CapfvpQ1_5salsa.exit.thread2.i.i
  %i.aj = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !226, !noundef !3 ; 2 uses
  %i.ak = icmp ult i64 %i.aj, 9223372036854775807
  br i1 %i.ak, label %bb.o, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #27
          to label %.noexc.i.i.i unwind label %bb.n, !noalias !226

.noexc.i.i.i:                                     ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.o:                                             ; preds = %bb.l
  %i.am = add nuw nsw i64 %i.aj, 1
  store i64 %i.am, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !226
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i4.i.i, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ao = load i64, ptr %i.an, align 8, !range !12, !alias.scope !229, !noalias !226, !noundef !3 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ao, 2
  br i1 %.not.i.i.i.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = load atomic i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11GLOBAL_INIT seq_cst, align 8, !noalias !230
  %i.aq = icmp eq i64 %i.ap, 2
  %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i.i = select i1 %i.aq, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE ; 2 uses
  %.pre.i.i.i = load i64, ptr %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i.i, align 8, !range !7, !alias.scope !231, !noalias !226
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ar = phi i64 [ %i.ao, %bb.o ], [ %.pre.i.i.i, %bb.p ]
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.an, %bb.o ], [ %_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher15GLOBAL_DISPATCH._RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE.i.i.i.i.i, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.as = trunc nuw i64 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !231, !noalias !226, !nonnull !3, !noundef !3 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !231, !noalias !226, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.as, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !range !8, !invariant.load !3, !noalias !232
  %i.az = add nsw i64 %i.ay, -1
  %i.ba = and i64 %i.az, -16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.sroa.0.0.i9.i.i.i = phi ptr [ %i.bc, %bb.r ], [ %i.au, %bb.q ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !3, !noalias !232, !nonnull !3
  %i.bf = invoke noundef zeroext i1 %i.be(ptr noundef nonnull %.sroa.0.0.i9.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r)
          to label %.split unwind label %bb.t, !noalias !226, !inline_history !222

bb.t:                                             ; preds = %bb.s
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !226, !noundef !3
  %i.bi = add i64 %i.bh, -1
  store i64 %i.bi, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !226
  br label %bb.u

.split:                                           ; preds = %bb.s
  %i.bj = load i64, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !226, !noundef !3
  %i.bk = add i64 %i.bj, -1
  store i64 %i.bk, ptr %.sroa.0.0.i.i4.i.i, align 8, !noalias !226
  store i8 1, ptr %i.ac, align 8, !noalias !226
  br i1 %i.bf, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.n
  %.pn.i.i.i = phi { ptr, i32 } [ %i.al, %bb.n ], [ %i.bg, %bb.t ]
  store i8 1, ptr %i.ac, align 8, !noalias !226
  br label %.body

_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i: ; preds = %.noexc13, %bb.j
  %i.bl = load i64, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, align 8, !range !7, !alias.scope !233, !noalias !226, !noundef !3
  %i.bm = trunc nuw i64 %i.bl to i1
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 8), align 8, !alias.scope !233, !noalias !226, !nonnull !3, !noundef !3 ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCsjvLTWb8VeNU_12tracing_core10dispatcher4NONE, i64 16), align 8, !alias.scope !233, !noalias !226, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  br i1 %i.bm, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split, label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split: ; preds = %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i, %bb.k, %bb.i
  %.sink26 = phi ptr [ %i.ai, %bb.k ], [ %.val13.i, %bb.i ], [ %i.bo, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ] ; 2 uses
  %.sink23 = phi ptr [ %i.ah, %bb.k ], [ %.val11.i, %bb.i ], [ %i.bn, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sink26, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !8, !invariant.load !3, !noalias !226
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = and i64 %i.br, -16
  %i.bt = getelementptr inbounds nuw i8, ptr %.sink23, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  br label %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke

_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke: ; preds = %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i, %bb.k, %bb.i
  %.sink22 = phi ptr [ %i.ai, %bb.k ], [ %.val13.i, %bb.i ], [ %i.bo, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ], [ %.sink26, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split ]
  %i.bv = phi ptr [ %i.ah, %bb.k ], [ %.val11.i, %bb.i ], [ %i.bn, %_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE8try_withNCINvBW_11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0E0bEB2m_.exit.thread.i ], [ %i.bu, %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke.sink.split ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.sink22, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !3, !noalias !226, !nonnull !3
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull %i.bv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r)
          to label %_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit unwind label %bb.b, !inline_history !225

_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit: ; preds = %_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_.exit9.i.invoke
  br i1 %i.by, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.split, %bb.c, %bb.a, %bb.w, %bb.g, %bb.f, %_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %i.h, align 8, !align !6, !noundef !3
  %.val10 = load i64, ptr %i.i, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsC8CapfvpQ1_5salsa8function8backdate17BackdateViolationEBH_(ptr %.val, i64 %.val10)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.w:                                             ; preds = %.split, %_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_.exit
  invoke fastcc void @_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violation0B7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %bb.v unwind label %bb.b

bb.x:                                             ; preds = %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.y:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCsC8CapfvpQ1_5salsa8function8backdateNtB5_17BackdateViolationNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.f, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.e, ptr %i.g, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, ptr %.sroa.413.0..sroa_idx, align 8
  %i.h = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.k = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @20, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !align !6, !noundef !3
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.l, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceNtB6_7Display3fmtBA_, ptr %.sroa.428.0..sroa_idx, align 8
  %i.n = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noundef nonnull @21, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi i1 [ false, %bb.b ], [ %i.n, %bb.c ], [ true, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtB6_5Debug3fmtB18_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3
  %.val = load ptr, ptr %i.a, align 8, !alias.scope !238, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load i64, ptr %.val, align 8, !noalias !239, !noundef !3
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadNtB5_5Debug3fmtBz_(ptr noundef nonnull align 4 %i.b, i64 noundef %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB6_5Debug3fmtBA_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !244
  store ptr %i.b, ptr %i.a, align 8, !noalias !244
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !244
  %i.c = load ptr, ptr %1, align 8, !alias.scope !243, !noalias !245, !nonnull !3, !noundef !3
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !243, !noalias !245, !nonnull !3, !align !6, !noundef !3
  %i.f = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @29, ptr noundef nonnull %i.a), !noalias !243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !244
  ret i1 %i.f
}

; Function Attrs: mustprogress norecurse nounwind nonlazybind willreturn uwtable
define noundef range(i64 1, 0) i64 @_RNvXs2_NtCsC8CapfvpQ1_5salsa8revisionNtB5_14AtomicRevisionNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr %0 acquire, align 8 ; 2 uses
  %i.b = icmp ne i64 %i.a, 0
  tail call void @llvm.assume(i1 %i.b)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtCsC8CapfvpQ1_5salsa5tableNtB5_5TableNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([520 x i8]) align 8 captures(none) dereferenceable(520) initializes((0, 520)) %0) unnamed_addr #1 {
bb.a:
  %.sroa.4 = alloca [39 x i8], align 1            ; 4 uses
  %i.a = tail call noundef i64 @_RNvMs8_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsC8CapfvpQ1_5salsa(i64 noundef 0)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(464) %0, i8 0, i64 464, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.sroa.4.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.4.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false)
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %i.a, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i8 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.4, i64 39, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCsC8CapfvpQ1_5salsa5tableNtB5_11ErasedSlotsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(104) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.55.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.f = phi ptr [ %i.k, %bb.i ], [ %.pre, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.b, align 8, !noundef !3 ; 4 uses
  %i.h = load i64, ptr %i.c, align 8, !noundef !3
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !256)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  %.sroa.01.0.copyload.i.i.i = load i128, ptr %i.d, align 8, !alias.scope !257, !noalias !258
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.j = tail call { i64, ptr } @_RNvXs8_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !259 ; 2 uses
  %i.k = extractvalue { i64, ptr } %i.j, 1        ; 5 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i64, ptr %i.e, align 8, !alias.scope !260, !noalias !259, !noundef !3
  %i.m = tail call i64 @llvm.usub.sat.i64(i64 %i.l, i64 1)
  store i64 %i.m, ptr %i.e, align 8, !alias.scope !260, !noalias !259
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.0.0.copyload.i.i.i = load i128, ptr %i.n, align 8, !noalias !261
  %i.o = icmp eq i128 %.sroa.0.0.copyload.i.i.i, %.sroa.01.0.copyload.i.i.i
  br i1 %i.o, label %bb.i, label %bb.e

bb.g:                                             ; preds = %bb.c
  %i.p = add nuw i64 %i.g, 1
  store i64 %i.p, ptr %i.b, align 8
  %i.q = load i64, ptr %.sroa.55.0..sroa_idx6, align 8, !noundef !3
  %i.r = trunc i64 %i.q to i32
  %i.s = trunc i64 %i.g to i32
  %i.t = shl i32 %i.r, 7
  %i.u = or i32 %i.t, %i.s
  %i.v = add i32 %i.u, 1                          ; 2 uses
  %i.w = icmp ne i32 %i.v, 0
  tail call void @llvm.assume(i1 %i.w)
  %i.x = load ptr, ptr %i.f, align 8, !nonnull !3, !noundef !3
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !3, !align !6, !noundef !3
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !3
  %i.ac = mul i64 %i.ab, %i.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ac
  store i32 %i.v, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %.sroa.42.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  ret void

bb.i:                                             ; preds = %bb.f
  %i.ae = extractvalue { i64, ptr } %i.j, 0
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !261
  store ptr %i.k, ptr %i.a, align 8
  store i64 %i.ae, ptr %.sroa.55.0..sroa_idx6, align 8
  store i64 0, ptr %i.b, align 8
  store i64 %i.ag, ptr %i.c, align 8
  br label %bb.b

bb.j:                                             ; preds = %bb.e
  store ptr null, ptr %i.a, align 8
  store i64 0, ptr %i.b, align 8
  store i32 0, ptr %0, align 8
  br label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs7_NtCsUsIPftNhTL_8lock_api5mutexINtB5_5MutexNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtB1F_(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = load atomic i8, ptr %0 monotonic, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.sroa.03.0.i = phi i8 [ %i.d, %bb.a ], [ %i.j, %bb.c ] ; 3 uses
  %i.e = and i8 %.sroa.03.0.i, 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.c, label %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit

bb.c:                                             ; preds = %bb.b
  %i.g = or disjoint i8 %.sroa.03.0.i, 1
  %i.h = cmpxchg weak ptr %0, i8 %.sroa.03.0.i, i8 %i.g acquire monotonic, align 1 ; 2 uses
  %i.i = extractvalue { i8, i1 } %i.h, 1
  %i.j = extractvalue { i8, i1 } %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5)
  %i.k = call noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull inttoptr (i64 1 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @23)
  %i.l = call noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 5)
          to label %bb.g unwind label %bb.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4: ; preds = %bb.j, %bb.i, %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit
  %.sroa.0.0.in = phi i1 [ %i.l, %_RNvXNtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB2_8RawMutexNtNtCsUsIPftNhTL_8lock_api5mutex8RawMutex8try_lock.exit ], [ %i.r, %bb.i ], [ %i.r, %bb.j ]
  ret i1 %.sroa.0.0.in

bb.e:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.o = extractvalue { i8, i1 } %i.n, 1
  br i1 %i.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit, label %bb.f, !prof !5

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit unwind label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.b, align 8
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.r = invoke noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %bb.i unwind label %bb.e       ; 2 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = cmpxchg ptr %0, i8 1, i8 0 release monotonic, align 1
  %i.t = extractvalue { i8, i1 } %i.s, 1
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4, label %bb.j, !prof !5

bb.j:                                             ; preds = %bb.i
  call void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull %0, i1 noundef zeroext false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit4

bb.k:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsUsIPftNhTL_8lock_api5mutex10MutexGuardNtNtCscHkFMvyoPQb_11parking_lot9raw_mutex8RawMutexNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphEEB2e_.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs8_NtCsC8CapfvpQ1_5salsa5tableNtB5_4PageNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3
  %i.g = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  tail call void %i.f(ptr noundef nonnull %i.g, i64 noundef %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j)
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull ptr @_RNvXs9_NtCsC8CapfvpQ1_5salsa5tableNtB5_9DummySlotNtB5_4Slot5memos(ptr nofree noundef readnone captures(none) %0, i64 noundef range(i64 1, 0) %1) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXs9_NtCsC8CapfvpQ1_5salsa5tableNtB5_9DummySlotNtB5_4Slot9memos_mut(ptr noalias nofree noundef nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #27
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsC_Csa3bo7ChGFM8_8thin_vecINtB5_8IntoIterNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 4 captures(none) dereferenceable(16) initializes((0, 4)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !3 ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = icmp eq i64 %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %i.b, 1
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 0, ptr %0, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i64, ptr %0, align 8, !range !262, !noundef !3
  store i64 %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsG_NtNtCs4NRVxsYgnAr_4core3num7nonzeroINtB5_7NonZerojENtNtB9_3fmt7Display3fmtCsC8CapfvpQ1_5salsa, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3
  %i.e = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @29, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !align !6, !noundef !3
  ret ptr %i.a
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCs4NRVxsYgnAr_4core5slice10specializeSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionINtB4_8SpecFillBK_E9spec_fillBO_(ptr noalias nofree noundef nonnull writeonly align 8 captures(address) %0, i64 noundef range(i64 0, 1152921504606846976) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %1, 3                   ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.b = icmp eq i64 %1, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = add nsw i64 %.idx, -8                    ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.01.04.prol = phi ptr [ %i.f, %.lr.ph.prol ], [ %0, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.01.04.prol, i64 8 ; 2 uses
  store i64 %2, ptr %.sroa.01.04.prol, align 8
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !263

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.01.04.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %i.g = icmp ult i64 %i.c, 56
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.01.04 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.01.04.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 8
  store i64 %2, ptr %.sroa.01.04, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 16
  store i64 %2, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 24
  store i64 %2, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 32
  store i64 %2, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 40
  store i64 %2, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 48
  store i64 %2, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 56
  store i64 %2, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.01.04, i64 64 ; 2 uses
  store i64 %2, ptr %i.n, align 8
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtNtCsC8CapfvpQ1_5salsa4sync4shimNtB4_7CondvarNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 7)
  %i.b = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31)
  %i.c = call noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsa_NtCs4NRVxsYgnAr_4core5arrayANtNtCsC8CapfvpQ1_5salsa8revision8Revisionj3_NtNtB7_3fmt5Debug3fmtBB_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  call void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !269
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCsC8CapfvpQ1_5salsa8revision8RevisionINtNtNtBa_5slice4iter4IterB14_EEB18_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 %0, ptr noundef nonnull readonly %i.b)
  %i.d = call noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsm_NtCsC8CapfvpQ1_5salsa5tableNtB5_9SlotIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RNvXsn_Csa3bo7ChGFM8_8thin_vecRINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBM_2id2IdEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBM_(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !272, !nonnull !3, !noundef !3 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !noundef !3
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %i.c
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.d, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsjvLTWb8VeNU_12tracing_core8callsite15DefaultCallsiteNtB4_8Callsite15private_type_idCsC8CapfvpQ1_5salsa(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #11 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @34, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvXs_Csa3bo7ChGFM8_8thin_vecINtNtCs4NRVxsYgnAr_4core6result6ResultiNtNtNtBw_3num5error15TryFromIntErrorEINtB4_17UnwrapCapOverflowiE19unwrap_cap_overflowCsC8CapfvpQ1_5salsa(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #13

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvCsa3bo7ChGFM8_8thin_vec17capacity_overflow() unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #16

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8, ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBT_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsC8CapfvpQ1_5salsa5cycleNtB4_9CycleHeadNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 4 captures(none) dereferenceable(16), ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCsjvLTWb8VeNU_12tracing_core10dispatcher5StateE10initializeCsC8CapfvpQ1_5salsa(ptr noundef nonnull align 8) unnamed_addr #22

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCsjvLTWb8VeNU_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsdyr9GQQDC9w_7tracing15___macro_support12___is_enabled(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsl_NtCsjvLTWb8VeNU_12tracing_core5fieldNtNtCs4NRVxsYgnAr_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsjvLTWb8VeNU_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i64 1, 0) i64 @_RNvMs8_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_5IndexKj3a_E13new_uncheckedCsC8CapfvpQ1_5salsa(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E3getB1g_(ptr noundef nonnull align 8, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RNvMs2_NtCs36qfJazsBC0_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCsC8CapfvpQ1_5salsa5table4PageEKj3a_E7get_mutB1g_(ptr noalias noundef align 8 dereferenceable(464), i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare noundef i64 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar15notify_all_slow(ptr noundef nonnull align 8, ptr noundef) unnamed_addr #22

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCscHkFMvyoPQb_11parking_lot7condvarNtB4_7Condvar15notify_one_slow(ptr noundef nonnull align 8, ptr noundef) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBT_5table9PageIndexEEE14insert_no_growBT_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEEE14insert_no_growBT_(ptr noalias noundef align 8 dereferenceable(32), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvXs8_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias noundef align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsE_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12IntoIterator9into_iterBR_(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs1c_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB7_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexNtNtNtB19_8database12memory_usage8PageInfoNtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTB15_B1P_EE9from_iterINtNtNtB3k_8adapters10filter_map9FilterMapINtB7_8IntoIterB15_INtNtCscdodAO9FK5_5alloc3vec3VecjEENCNvMs4_NtB19_5tableNtB6e_5Table10page_infos0EEB19_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex9lock_slow(ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBS_5table9PageIndexENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE7get_mutBO_EBS_(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB13_5table9PageIndexENtCs3CTDFEpwZhE_10rustc_hash13FxBuildHasherE11rustc_entryB13_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(32), i32 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNvXs_NtNtCs36qfJazsBC0_6boxcar3vec3rawINtB6_3VecpEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5index13assert_failed(i64 noundef) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsksLH4kKx6iM_15crossbeam_utils(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #24

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core4cell30panic_already_mutably_borrowed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs7_NtCsC8CapfvpQ1_5salsa12active_queryNtB5_9Backtrace7capture() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtCsjvLTWb8VeNU_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite12set_interest(ptr noundef nonnull align 8, i8 noundef range(i8 0, 3)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs1_NtCscHkFMvyoPQb_11parking_lot9raw_mutexNtB5_8RawMutex11unlock_slow(ptr noundef nonnull, i1 noundef zeroext) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsC8CapfvpQ1_5salsa3keyNtB4_16DatabaseKeyIndexNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(12), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsC8CapfvpQ1_5salsa12active_query9BacktraceNtB6_7Display3fmtBA_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs7_NtCsUsIPftNhTL_8lock_api5mutexINtB8_5MutexppENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtNtB2_17LockedPlaceholderBR_3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias noundef align 8 dereferenceable(16), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsC8CapfvpQ1_5salsa7runtime16dependency_graph15DependencyGraphNtB6_5Debug3fmtBC_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter11debug_tuple(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCscHkFMvyoPQb_11parking_lot7condvarNtB5_7CondvarNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple5field(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_10DebugTuple6finish(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1
end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!16 = distinct !{!16, !15, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_: argument 0"}
!17 = !{!16}
!18 = distinct !{!18, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_"}
!19 = distinct !{!19, !18, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_: argument 0"}
!20 = !{!19}
!21 = distinct !{!21, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBG_"}
!22 = distinct !{!22, !21, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBG_: argument 0"}
!23 = distinct !{!23, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_"}
!24 = distinct !{!24, !23, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_: argument 0"}
!25 = distinct !{!25, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_"}
!26 = distinct !{!26, !25, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_: argument 0"}
!27 = distinct !{!27, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_"}
!28 = distinct !{!28, !27, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_: argument 0"}
!29 = distinct !{!29, i1 false, !"_RNvXs6_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_"}
!30 = distinct !{!30, !29, !"_RNvXs6_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_: argument 0"}
!31 = distinct !{!31, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_"}
!32 = distinct !{!32, !31, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa12active_query13CapturedQueryEBF_: argument 0"}
!33 = distinct !{!33, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_"}
!34 = distinct !{!34, !33, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsC8CapfvpQ1_5salsa5cycle10CycleHeadsEBF_: argument 0"}
!35 = distinct !{!35, i1 false, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_"}
!36 = distinct !{!36, !35, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsa3bo7ChGFM8_8thin_vec7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadEEB1d_: argument 0"}
!37 = distinct !{!37, i1 false, !"_RNvXs6_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_"}
!38 = distinct !{!38, !37, !"_RNvXs6_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_: argument 0"}
!39 = !{!22}
!40 = !{!30, !28, !26, !24, !22}
!41 = !{!38, !36, !34, !32, !22}
!42 = distinct !{!42, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_"}
!43 = distinct !{!43, !42, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_: argument 0"}
!44 = distinct !{null}
!45 = distinct !{!45, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_"}
!46 = distinct !{!46, !45, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_: argument 0"}
!47 = distinct !{null, null, null}
!48 = distinct !{!48, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!49 = distinct !{!49, !48, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!50 = distinct !{!50, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_"}
!51 = distinct !{!51, !50, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_: argument 0"}
!52 = distinct !{!52, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_"}
!53 = distinct !{!53, !52, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute18try_complete_query0s_0B9_: argument 0"}
!54 = !{!43}
!55 = !{!46}
!56 = !{!49}
!57 = !{!51}
!58 = !{!53}
!59 = distinct !{!59, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_"}
!60 = distinct !{!60, !59, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!61 = distinct !{null}
!62 = distinct !{!62, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_"}
!63 = distinct !{!63, !62, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!64 = distinct !{null, null, null}
!65 = distinct !{!65, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!66 = distinct !{!66, !65, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!67 = distinct !{!67, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_"}
!68 = distinct !{!68, !67, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!69 = distinct !{!69, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_"}
!70 = distinct !{!70, !69, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads0_0s_0B9_: argument 0"}
!71 = !{!60}
!72 = !{!63}
!73 = !{!66}
!74 = !{!68}
!75 = !{!70}
!76 = distinct !{!76, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!77 = distinct !{!77, !76, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!78 = distinct !{null}
!79 = distinct !{!79, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!80 = distinct !{!80, !79, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!81 = distinct !{null, null, null}
!82 = distinct !{!82, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!83 = distinct !{!83, !82, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!84 = distinct !{!84, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!85 = distinct !{!85, !84, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!86 = distinct !{!86, i1 false, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_"}
!87 = distinct !{!87, !86, !"_RNCNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute26complete_cycle_participant0s_0B9_: argument 0"}
!88 = !{!77}
!89 = !{!80}
!90 = !{!83}
!91 = !{!85}
!92 = !{!87}
!93 = distinct !{!93, i1 false, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!94 = distinct !{!94, !93, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!95 = distinct !{null}
!96 = distinct !{!96, i1 false, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!97 = distinct !{!97, !96, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!98 = distinct !{null, null, null}
!99 = distinct !{!99, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!100 = distinct !{!100, !99, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!101 = distinct !{!101, i1 false, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!102 = distinct !{!102, !101, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!103 = distinct !{!103, i1 false, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_"}
!104 = distinct !{!104, !103, !"_RNCNvMs3_NtCsC8CapfvpQ1_5salsa7runtimeNtB7_7Runtime12new_revisions_0B9_: argument 0"}
!105 = !{!94}
!106 = !{!97}
!107 = !{!100}
!108 = !{!102}
!109 = !{!104}
!110 = distinct !{!110, i1 false, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!111 = distinct !{!111, !110, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!112 = distinct !{null}
!113 = distinct !{!113, i1 false, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!114 = distinct !{!114, !113, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!115 = distinct !{null, null, null}
!116 = distinct !{!116, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!117 = distinct !{!117, !116, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!118 = distinct !{!118, i1 false, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!119 = distinct !{!119, !118, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!120 = distinct !{!120, i1 false, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_"}
!121 = distinct !{!121, !120, !"_RNCNvMs_NtNtCsC8CapfvpQ1_5salsa8function7executeNtNtB8_4memo10MemoHeader18previous_iterations_0Ba_: argument 0"}
!122 = !{!111}
!123 = !{!114}
!124 = !{!117}
!125 = !{!119}
!126 = !{!121}
!127 = distinct !{!127, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!128 = distinct !{!128, !127, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!129 = distinct !{null}
!130 = distinct !{!130, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!131 = distinct !{!131, !130, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!132 = distinct !{null, null, null}
!133 = distinct !{!133, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!134 = distinct !{!134, !133, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!135 = distinct !{!135, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!136 = distinct !{!136, !135, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!137 = distinct !{!137, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_"}
!138 = distinct !{!138, !137, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads3_0B7_: argument 0"}
!139 = !{!128}
!140 = !{!131}
!141 = !{!134}
!142 = !{!136}
!143 = !{!138}
!144 = distinct !{!144, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!145 = distinct !{!145, !144, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!146 = distinct !{null}
!147 = distinct !{!147, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!148 = distinct !{!148, !147, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!149 = distinct !{null, null, null}
!150 = distinct !{!150, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!151 = distinct !{!151, !150, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!152 = distinct !{!152, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!153 = distinct !{!153, !152, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!154 = distinct !{!154, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_"}
!155 = distinct !{!155, !154, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function7execute23try_complete_cycle_heads7_0B7_: argument 0"}
!156 = !{!145}
!157 = !{!148}
!158 = !{!151}
!159 = !{!153}
!160 = !{!155}
!161 = distinct !{!161, i1 false, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!162 = distinct !{!162, !161, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!163 = distinct !{null}
!164 = distinct !{!164, i1 false, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!165 = distinct !{!165, !164, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!166 = distinct !{null, null, null}
!167 = distinct !{!167, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!168 = distinct !{!168, !167, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!169 = distinct !{!169, i1 false, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!170 = distinct !{!170, !169, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!171 = distinct !{!171, i1 false, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_"}
!172 = distinct !{!172, !171, !"_RNCNvNvNtNtCsC8CapfvpQ1_5salsa8function7execute23collect_all_cycle_heads17collect_recursives_0B9_: argument 0"}
!173 = !{!162}
!174 = !{!165}
!175 = !{!168}
!176 = !{!170}
!177 = !{!172}
!178 = distinct !{!178, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_"}
!179 = distinct !{!179, !178, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_: argument 0"}
!180 = !{!179}
!181 = distinct !{!181, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE14push_uncheckedBK_"}
!182 = distinct !{!182, !181, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE14push_uncheckedBK_: argument 0"}
!183 = !{!182}
!184 = distinct !{!184, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE10reallocateBK_"}
!185 = distinct !{!185, !184, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE10reallocateBK_: argument 0"}
!186 = !{!185}
!187 = distinct !{!187, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE7reserveBL_"}
!188 = distinct !{!188, !187, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE7reserveBL_: argument 0"}
!189 = distinct !{!189, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE14push_uncheckedBL_"}
!190 = distinct !{!190, !189, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE14push_uncheckedBL_: argument 0"}
!191 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!192 = !{!188}
!193 = !{!190}
!194 = distinct !{!194, i1 false, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE4iterBN_"}
!195 = distinct !{!195, !194, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE4iterBN_: argument 0"}
!196 = distinct !{!196, i1 false, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEE10or_defaultB16_"}
!197 = distinct !{!197, !196, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecjEE10or_defaultB16_: argument 0"}
!198 = distinct !{!198, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8push_mutCsC8CapfvpQ1_5salsa"}
!199 = distinct !{!199, !198, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjE8push_mutCsC8CapfvpQ1_5salsa: argument 0"}
!200 = !{!195}
!201 = !{!197}
!202 = !{!199}
!203 = distinct !{!203, i1 false, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB16_5table9PageIndexEE10or_defaultB16_"}
!204 = distinct !{!204, !203, !"_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryNtNtCsC8CapfvpQ1_5salsa5zalsa15IngredientIndexINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB16_5table9PageIndexEE10or_defaultB16_: argument 0"}
!205 = distinct !{!205, i1 false, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexE8push_mutBI_"}
!206 = distinct !{!206, !205, !"_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsC8CapfvpQ1_5salsa5table9PageIndexE8push_mutBI_: argument 0"}
!207 = !{!204}
!208 = !{!206}
!209 = distinct !{!209, i1 false, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_"}
!210 = distinct !{!210, !209, !"_RNvMNtNtCs36qfJazsBC0_6boxcar3vec3rawINtB2_3VecNtNtCsC8CapfvpQ1_5salsa5table4PageE7get_mutBN_: argument 0"}
!211 = !{!210}
!212 = distinct !{!212, i1 false, !"_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_"}
!213 = distinct !{!213, !212, !"_RINvNtCsjvLTWb8VeNU_12tracing_core10dispatcher11get_defaultbNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0EB14_: argument 0"}
!214 = distinct !{!214, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_"}
!215 = distinct !{!215, !214, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_: argument 0"}
!216 = distinct !{!216, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_"}
!217 = distinct !{!217, !216, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_: argument 0"}
!218 = distinct !{!218, i1 false, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa"}
!219 = distinct !{!219, !218, !"_RNCNvMsc_NtCsjvLTWb8VeNU_12tracing_core10dispatcherNtB7_7Entered7current0CsC8CapfvpQ1_5salsa: argument 0"}
!220 = distinct !{!220, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_"}
!221 = distinct !{!221, !220, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_: argument 0"}
!222 = distinct !{null}
!223 = distinct !{!223, i1 false, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_"}
!224 = distinct !{!224, !223, !"_RNCNvNtNtCsC8CapfvpQ1_5salsa8function8backdate25report_backdate_violations_0B7_: argument 0"}
!225 = distinct !{null}
!226 = !{!213}
!227 = !{!215}
!228 = !{!217}
!229 = !{!219}
!230 = !{!219, !213}
!231 = !{!221}
!232 = !{!221, !213}
!233 = !{!224}
!234 = distinct !{!234, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_"}
!235 = distinct !{!235, !234, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadE8data_rawBK_: argument 0"}
!236 = distinct !{!236, i1 false, !"_RNvXsd_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBK_"}
!237 = distinct !{!237, !236, !"_RNvXsd_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecNtNtCsC8CapfvpQ1_5salsa5cycle9CycleHeadENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtBK_: argument 0"}
!238 = !{!235}
!239 = !{!237}
!240 = distinct !{!240, i1 false, !"_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt"}
!241 = distinct !{!241, !240, !"_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 1"}
!242 = distinct !{!242, !240, !"_RNvXs_NtCsC8CapfvpQ1_5salsa8revisionNtB4_8RevisionNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt: argument 0"}
!243 = !{!241}
!244 = !{!242, !241}
!245 = !{!242}
!246 = distinct !{!246, i1 false, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_"}
!247 = distinct !{!247, !246, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_: argument 1"}
!248 = distinct !{!248, !246, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_: argument 2"}
!249 = distinct !{!249, !246, !"_RINvYINtNtCs36qfJazsBC0_6boxcar3vec4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1b_8find_map5checkTjRBC_ETNtBE_9PageIndexB2I_INtNtNtB1j_3ops5range5RangejEENCNvXs5_BE_NtBE_11ErasedSlotsB1b_4next0E0INtNtB3c_12control_flow11ControlFlowB2N_EEBG_: argument 0"}
!250 = distinct !{!250, i1 false, !"_RNvXs8_NtCs36qfJazsBC0_6boxcar3vecINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_"}
!251 = distinct !{!251, !250, !"_RNvXs8_NtCs36qfJazsBC0_6boxcar3vecINtB5_4IterNtNtCsC8CapfvpQ1_5salsa5table4PageENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextBL_: argument 0"}
!252 = distinct !{!252, i1 false, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCsC8CapfvpQ1_5salsa5table4PageETNtB1l_9PageIndexB1i_INtNtNtBe_3ops5range5RangejEENCNvXs5_B1l_NtB1l_11ErasedSlotsB6_4next0E0B1n_"}
!253 = distinct !{!253, !252, !"_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8find_map5checkTjRNtNtCsC8CapfvpQ1_5salsa5table4PageETNtB1l_9PageIndexB1i_INtNtNtBe_3ops5range5RangejEENCNvXs5_B1l_NtB1l_11ErasedSlotsB6_4next0E0B1n_: argument 0"}
!254 = distinct !{!254, i1 false, !"_RNCNvXs5_NtCsC8CapfvpQ1_5salsa5tableNtB7_11ErasedSlotsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0B9_"}
!255 = distinct !{!255, !254, !"_RNCNvXs5_NtCsC8CapfvpQ1_5salsa5tableNtB7_11ErasedSlotsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next0B9_: argument 0"}
!256 = !{!247}
!257 = !{!248}
!258 = !{!249, !247}
!259 = !{!249, !248}
!260 = !{!251, !247}
!261 = !{!255, !253, !249, !248}
!262 = !{i64 1, i64 0}
!263 = distinct !{!263, !264}
!264 = !{!"llvm.loop.unroll.disable"}
!265 = distinct !{!265, i1 false, !"_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB5_5Debug3fmtBz_"}
!266 = distinct !{!266, !265, !"_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB5_5Debug3fmtBz_: argument 1"}
!267 = distinct !{!267, !265, !"_RNvXsr_NtCs4NRVxsYgnAr_4core3fmtSNtNtCsC8CapfvpQ1_5salsa8revision8RevisionNtB5_5Debug3fmtBz_: argument 0"}
!268 = !{!267, !266}
!269 = !{!267}
!270 = distinct !{!270, i1 false, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_"}
!271 = distinct !{!271, !270, !"_RNvMs3_Csa3bo7ChGFM8_8thin_vecINtB5_7ThinVecTNtNtCsC8CapfvpQ1_5salsa14tracked_struct8IdentityNtNtBL_2id2IdEE8data_rawBL_: argument 0"}
!272 = !{!271}
end_hunk_2
