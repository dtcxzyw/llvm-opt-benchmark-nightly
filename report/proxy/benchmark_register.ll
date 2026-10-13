Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/benchmark_register?download=true
inline.NumInlined: 5083
inline.NumDeleted: 1969
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK9benchmark9Benchmark7GetNameEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZNK9benchmark9Benchmark10GetArgNameEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0, i32 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %bb.d, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit3, !prof !41

bb.d:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.f = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i2 = icmp eq i32 %i.f, 0
  br i1 %.not.i2, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit3

_ZN9benchmark8internal18GetNullLogInstanceEv.exit3: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.d, %bb.e
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.j = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.g
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76
  ret ptr %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK9benchmark9Benchmark11GetTimeUnitEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.b = load i8, ptr %i.a, align 4, !tbaa !162, !range !103, !noundef !104
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN9benchmark18GetDefaultTimeUnitEv()
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i32, ptr %i.e, align 8, !tbaa !161
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i32 %i.g
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark8internal17FunctionBenchmark3RunERNS_5StateE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef nonnull align 64 dereferenceable(184) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !494
  tail call void %i.b(ptr noundef nonnull align 64 dereferenceable(184) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark25ClearRegisteredBenchmarksEv() local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i8 0, i64 64, i1 false)
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN9benchmark8internal17BenchmarkFamiliesD2Ev, ptr nonnull @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, ptr nonnull @__dso_handle) #33 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance) #33
  br label %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit

_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #35
  unreachable

_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i:     ; preds = %_ZN9benchmark8internal17BenchmarkFamilies11GetInstanceEv.exit
  %i.f = load ptr, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, align 8, !tbaa !45 ; 4 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !46 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.f
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.l, %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i ], [ %i.f, %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i ] ; 2 uses
  %i.h = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !48 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(304) %i.h) #33, !inline_history !495
  br label %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN9benchmark9BenchmarkEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i2.i = icmp eq ptr %i.l, %i.g
  br i1 %.not.i.i.i.i2.i, label %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i.i
  store ptr %i.f, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 8), align 8, !tbaa !46
  br label %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.i

_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EES5_EvT_S7_RSaIT0_E.exit.i.i.i, %_ZN9benchmark9MutexLockC2ERNS_5MutexE.exit.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 16), align 8, !tbaa !52
  %i.n = icmp eq ptr %i.m, %i.f
  br i1 %i.n, label %_ZN9benchmark8internal17BenchmarkFamilies15ClearBenchmarksEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.i
  %i.o = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS3_EESaIS6_EELb1EE8_S_do_itERS8_(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance) #33 ; 0 uses
  br label %_ZN9benchmark8internal17BenchmarkFamilies15ClearBenchmarksEv.exit

_ZN9benchmark8internal17BenchmarkFamilies15ClearBenchmarksEv.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN9benchmark9BenchmarkESt14default_deleteIS2_EESaIS5_EE5clearEv.exit.i, %bb.e
  %i.p = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @_ZZN9benchmark8internal17BenchmarkFamilies11GetInstanceEvE8instance, i64 24)) #33 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark11CreateRangeElli(ptr dead_on_unwind noalias writable sret(%"class.std::vector.28") align 8 initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  invoke void @_ZN9benchmark8internal8AddRangeIlEEvPSt6vectorIT_SaIS3_EES3_S3_i(ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, i32 noundef %3)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = load ptr, ptr %0, align 8, !tbaa !92     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #34
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark16CreateDenseRangeElli(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.28") align 8 captures(none) initializes((0, 24)) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !55
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #33
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not18 = icmp sgt i64 %1, %2
  br i1 %.not18, label %._crit_edge.a, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sext i32 %3 to i64
  br label %bb.d

._crit_edge.a:                                    ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %.lcssa15 = phi ptr [ null, %_ZN9benchmark8internal18GetNullLogInstanceEv.exit ], [ %i.z, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ]
  store ptr %.lcssa15, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.g = phi ptr [ null, %.lr.ph ], [ %i.x, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 3 uses
  %i.h = phi ptr [ null, %.lr.ph ], [ %i.y, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 3 uses
  %storemerge19 = phi i64 [ %1, %.lr.ph ], [ %i.aa, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 3 uses
  %i.i = phi ptr [ null, %.lr.ph ], [ %i.z, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit ] ; 9 uses
  %.not.i5 = icmp eq ptr %i.h, %i.g
  br i1 %.not.i5, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i64 %storemerge19, ptr %i.h, align 8, !tbaa !135
  %4 = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %4, ptr %i.d, align 8, !tbaa !91
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.f:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 7 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.g, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.i, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #35
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #36
          to label %.noexc6 unwind label %.loopexit ; 4 uses

.noexc6:                                          ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  store i64 %storemerge19, ptr %i.u, align 8, !tbaa !135
  %i.v = icmp sgt i64 %i.l, 0
  br i1 %i.v, label %bb.h, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %.noexc6
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %.noexc6
  %5 = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #34
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  store ptr %5, ptr %i.d, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r ; 2 uses
  store ptr %i.w, ptr %i.e, align 8, !tbaa !93
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.e
  %i.x = phi ptr [ %i.w, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.g, %bb.e ]
  %i.y = phi ptr [ %5, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %4, %bb.e ]
  %i.z = phi ptr [ %i.t, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.aa = add nsw i64 %storemerge19, %i.f         ; 2 uses
  %.not = icmp sgt i64 %i.aa, %2
  br i1 %.not, label %._crit_edge.a, label %bb.d, !llvm.loop !496

.loopexit:                                        ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.i, ptr %0, align 8
  br label %bb.j

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i7 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.l) #34
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN9benchmark9BenchmarkD2Ev(ptr noundef nonnull align 8 dead_on_return(304) dereferenceable(304) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark9BenchmarkE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.d = invoke noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !124  ; 2 uses
  %.not.i1 = icmp eq ptr %i.h, null
  br i1 %.not.i1, label %_ZNSt14_Function_baseD2Ev.exit2, label %bb.d

bb.d:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.j = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit2 unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit2:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !124  ; 2 uses
  %.not.i3 = icmp eq ptr %i.n, null
  br i1 %.not.i3, label %_ZNSt14_Function_baseD2Ev.exit4, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.p = invoke noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit4 unwind label %bb.g ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  tail call void @__clang_call_terminate(ptr %i.r) #37
  unreachable

_ZNSt14_Function_baseD2Ev.exit4:                  ; preds = %_ZNSt14_Function_baseD2Ev.exit2, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !172  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !173
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt14_Function_baseD2Ev.exit4, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !174 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !167 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZSt8_DestroyIN9benchmark8internal10StatisticsEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyIN9benchmark8internal10StatisticsEEvPT_.exit.i.i.i ], [ %i.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i, align 8, !tbaa !76 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyIN9benchmark8internal10StatisticsEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !62
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #34
  br label %_ZSt8_DestroyIN9benchmark8internal10StatisticsEEvPT_.exit.i.i.i

_ZSt8_DestroyIN9benchmark8internal10StatisticsEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i5, label %_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN9benchmark8internal10StatisticsEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.z, align 8, !tbaa !174
  br label %_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.aa, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !168
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #34
  br label %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EED2Ev.exit

_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN9benchmark8internal10StatisticsES2_EvT_S4_RSaIT0_E.exit.i, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !96 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !95 ; 2 uses
  %.not4.i.i.i6 = icmp eq ptr %i.aq, %i.as
  br i1 %.not4.i.i.i6, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i7

.lr.ph.i.i.i7:                                    ; preds = %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EED2Ev.exit, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i
  %.05.i.i.i8 = phi ptr [ %i.az, %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i ], [ %i.aq, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EED2Ev.exit ] ; 3 uses
  %i.at = load ptr, ptr %.05.i.i.i8, align 8, !tbaa !92 ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i7
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !93
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.at to i64
  %i.ay = sub i64 %i.aw, %i.ax
  tail call void @_ZdlPvm(ptr noundef nonnull %i.at, i64 noundef %i.ay) #34
  br label %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i:  ; preds = %bb.j, %.lr.ph.i.i.i7
  %i.az = getelementptr inbounds nuw i8, ptr %.05.i.i.i8, i64 24 ; 2 uses
  %.not.i.i.i9 = icmp eq ptr %i.az, %i.as
  br i1 %.not.i.i.i9, label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i7, !llvm.loop !4

_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt6vectorIlSaIlEEEvPT_.exit.i.i.i
  %.pr.i10 = load ptr, ptr %i.ap, align 8, !tbaa !96
  br label %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EED2Ev.exit
  %i.ba = phi ptr [ %.pr.i10, %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.aq, %_ZNSt6vectorIN9benchmark8internal10StatisticsESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i11 = icmp eq ptr %i.ba, null
  br i1 %.not.i.i1.i11, label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !132
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.ba to i64
  %i.bf = sub i64 %i.bd, %i.be
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ba, i64 noundef %i.bf) #34
  br label %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit

_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit:         ; preds = %_ZSt8_DestroyIPSt6vectorIlSaIlEES2_EvT_S4_RSaIT0_E.exit.i, %bb.k
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !175 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !176 ; 2 uses
  %.not4.i.i.i12 = icmp eq ptr %i.bh, %i.bj
  br i1 %.not4.i.i.i12, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i13

.lr.ph.i.i.i13:                                   ; preds = %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i14 = phi ptr [ %i.bp, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bh, %_ZNSt6vectorIS_IlSaIlEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bk = load ptr, ptr %.05.i.i.i14, align 8, !tbaa !76 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i14, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i13
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !62
end_hunk_0
