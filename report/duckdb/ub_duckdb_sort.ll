Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_sort?download=true
inline.NumInlined: 29524
inline.NumDeleted: 7047
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 234
begin_hunk_0_@__gxx_personality_v0
; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb23FullSortGlobalSinkStateC2ERNS_13ClientContextERKNS_8FullSortE(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 9), (16, 81), (88, 160)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1476 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !383
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !396
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb23FullSortGlobalSinkStateE, i64 16), ptr %0, align 8, !tbaa !376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %1, ptr %i.d, align 8, !tbaa !398
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.e, align 8, !tbaa !400
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.f, i8 0, i64 56, i1 false)
  %i.i = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #28
          to label %.noexc unwind label %bb.e     ; 3 uses

.noexc:                                           ; preds = %bb.b
  invoke void @_ZN6duckdb13FullSortGroupC1ERNS_13ClientContextERKNS_4SortE(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(129) %i.i)
          to label %_ZN6duckdb9make_uniqINS_13FullSortGroupEJRNS_13ClientContextERNS_4SortEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.c, !noalias !1477

bb.c:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #29, !noalias !1477
  br label %.body

_ZN6duckdb9make_uniqINS_13FullSortGroupEJRNS_13ClientContextERNS_4SortEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %.noexc
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !402  ; 4 uses
  store ptr %i.j, ptr %i.g, align 8, !tbaa !402
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb13FullSortGroupESt14default_deleteIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb9make_uniqINS_13FullSortGroupEJRNS_13ClientContextERNS_4SortEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !378  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !376
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(80) %i.n) #30, !inline_history !1474
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i.i.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !374  ; 3 uses
  %.not.i1.i.i.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i1.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !376
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(81) %i.s) #30, !inline_history !1475
  br label %_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.l) #29
  br label %_ZNSt10unique_ptrIN6duckdb13FullSortGroupESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb13FullSortGroupESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit.i.i.i.i.i, %_ZN6duckdb9make_uniqINS_13FullSortGroupEJRNS_13ClientContextERNS_4SortEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.e ], [ %i.k, %bb.c ]
  tail call void @_ZNSt10unique_ptrIN6duckdb13FullSortGroupESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #30
  tail call void @_ZN6duckdb15GlobalSinkStateD2Ev(ptr noundef nonnull align 8 dereferenceable(81) %0) #30
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(129) ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1478 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.45", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !404    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !405

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !410    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN6duckdb13FullSortGroupESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1481 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !402    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !376
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(80) %i.c) #30, !inline_history !1479
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !374  ; 3 uses
  %.not.i1.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i1.i.i, label %_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !376
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(81) %i.h) #30, !inline_history !1480
  br label %_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIN6duckdb15GlobalSinkStateEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #29
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb13FullSortGroupEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb23FullSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE(ptr dead_on_unwind noalias nofree writable sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(512) %2, ptr nofree noundef readonly byval(%"struct.duckdb::ProgressData") align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1484 {
bb.a:
  %i.a = load <2 x double>, ptr %3, align 8, !tbaa !412
  %i.b = fmul <2 x double> %i.a, <double 5.000000e-01, double 1.000000e+00>
  store <2 x double> %i.b, ptr %0, align 8, !tbaa !412
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !414, !range !415, !noundef !416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.d, ptr %i.e, align 8, !tbaa !414
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !427, !nonnull !416, !align !428
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13FullSortGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = invoke noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8, !noalias !1485
  %i.r = uitofp i64 %i.q to double
  %i.s = fmul nnan double %i.r, 5.000000e-01
  %i.t = load double, ptr %0, align 8, !tbaa !429
  %i.u = fadd double %i.t, %i.s
  store double %i.u, ptr %0, align 8, !tbaa !429
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #30 ; 0 uses
  ret void

bb.f:                                             ; preds = %bb.d, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #30 ; 0 uses
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1486 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.45", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !404    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !405

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !410    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define void @_ZNK6duckdb4Sort15GetSinkProgressERNS_13ClientContextERNS_15GlobalSinkStateENS_12ProgressDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(129) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(512) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(81) %3, ptr nofree noundef readonly byval(%"struct.duckdb::ProgressData") align 8 captures(none) %4) local_unnamed_addr #3 align 2 !guid !1487 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %0, i8 0, i64 17, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = uitofp i64 %i.b to double
  %i.d = load double, ptr %4, align 8, !tbaa !429
  %i.e = fmul double %i.d, 5.000000e-01
  %i.f = fmul nnan double %i.c, 5.000000e-01
  %i.g = fadd double %i.e, %i.f
  store double %i.g, ptr %0, align 8, !tbaa !429
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !430
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.j, align 8, !tbaa !430
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load i8, ptr %i.k, align 8, !tbaa !414, !range !415, !noundef !416
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.l, ptr %i.m, align 8, !tbaa !414
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13FullSortGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !guid !1488 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.45", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !402    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13FullSortGroupESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !405

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.15, ptr noundef nonnull align 1 dereferenceable(1) %2)
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
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !410    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable
end_hunk_0
begin_hunk_1_@_ZNK6duckdb8FullSort8FinalizeERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ab) ; 0 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.014.017.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ad, %i.m
  br i1 %.not.i, label %bb.c, label %bb.d

bb.e:                                             ; preds = %bb.c
  %i.ae = load i64, ptr %i.o, align 8, !tbaa !527
  %i.af = tail call noundef i64 @llvm.umin.i64(i64 %i.ae, i64 122880)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %.sink.i = phi i64 [ %i.af, %bb.e ], [ 2048, %bb.c ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store i64 %.sink.i, ptr %i.ag, align 8, !tbaa !528
  br label %_ZNK6duckdb4Sort8FinalizeERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE.exit

_ZNK6duckdb4Sort8FinalizeERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE.exit: ; preds = %bb.b, %.sink.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.ah = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @_ZNK6duckdb4Sort20GetGlobalSourceStateERNS_13ClientContextERNS_15GlobalSinkStateE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2") align 8 %3, ptr noundef nonnull align 8 dereferenceable(129) %i.ah, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(81) %i.g)
  %i.ai = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13FullSortGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNK6duckdb4Sort8FinalizeERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %3, align 8, !tbaa !378
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !378 ; 3 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !378
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.f
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !376
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(80) %i.al) #30, !inline_history !3
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.h

bb.g:                                             ; preds = %_ZNK6duckdb4Sort8FinalizeERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE.exit
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = load ptr, ptr %3, align 8, !tbaa !378   ; 3 uses
  %.not.i14 = icmp eq ptr %i.aq, null
  br i1 %.not.i14, label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit16, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i15

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i15: ; preds = %bb.g
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !376
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(80) %i.aq) #30, !inline_history !1
  br label %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit16

_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit16: ; preds = %bb.g, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  resume { ptr, i32 } %i.ap

bb.h:                                             ; preds = %bb.a, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit
  %.0 = phi i8 [ 0, %_ZNSt10unique_ptrIN6duckdb17GlobalSourceStateESt14default_deleteIS1_EED2Ev.exit ], [ 1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZNK6duckdb4Sort8FinalizeERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(129) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(512) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) local_unnamed_addr #0 align 2 !guid !1491 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !432, !nonnull !416, !align !428 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !434  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !434  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 190
  %i.i = load i8, ptr %i.h, align 2, !tbaa !511, !range !415, !noundef !416
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.sink.split, label %bb.d

bb.c:                                             ; preds = %.preheader, %bb.c
  %.sroa.014.017 = phi ptr [ %i.c, %.preheader ], [ %i.v, %bb.c ] ; 3 uses
  %i.k = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.017)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.m = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.m)
  %i.o = load i64, ptr %i.n, align 8, !tbaa !512
  %i.p = load i64, ptr %i.g, align 8, !tbaa !527
  %i.q = add i64 %i.p, %i.o
  store i64 %i.q, ptr %i.g, align 8, !tbaa !527
  %i.r = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_9SortedRunESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.014.017)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.t = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.t) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.014.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.e
  br i1 %.not, label %bb.b, label %bb.c

bb.d:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.g, align 8, !tbaa !527
  %i.x = tail call noundef i64 @llvm.umin.i64(i64 %i.w, i64 122880)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi i64 [ %i.x, %bb.d ], [ 2048, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i64 %.sink, ptr %i.y, align 8, !tbaa !528
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  %.0 = phi i8 [ 1, %bb.a ], [ 0, %.sink.split ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb4Sort20GetGlobalSourceStateERNS_13ClientContextERNS_15GlobalSinkStateE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.2") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(81) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1498 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(168) ptr @_Znwm(i64 noundef 168) #28, !noalias !1499 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 1, ptr %i.b, align 1, !tbaa !383, !noalias !1499
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, i8 0, i64 64, i1 false), !noalias !1499
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb21SortGlobalSourceStateE, i64 16), ptr %i.a, align 8, !tbaa !376, !noalias !1499
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %i.d, align 8, !tbaa !1500, !noalias !1499
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 88 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.h = load i64, ptr %i.g, align 8, !tbaa !528, !noalias !1499
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.j = load i8, ptr %i.i, align 8, !tbaa !530, !range !415, !noalias !1499, !noundef !416
  %i.k = trunc nuw i8 %i.j to i1
  invoke void @_ZN6duckdb15SortedRunMergerC1ERKNS_4SortEONS_6vectorINS_10unique_ptrINS_9SortedRunESt14default_deleteIS6_ELb1EEELb1ESaIS9_EEEmbb(ptr noundef nonnull align 8 dereferenceable(58) %i.e, ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.h, i1 noundef zeroext %i.k, i1 noundef zeroext false)
          to label %bb.b unwind label %bb.e, !noalias !1499

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.m = load i64, ptr %i.l, align 8, !tbaa !550, !noalias !1499
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt10unique_ptrIN6duckdb21SortGlobalSourceStateESt14default_deleteIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = invoke noalias noundef nonnull dereferenceable(280) ptr @_Znwm(i64 noundef 280) #28
          to label %.noexc.i.i unwind label %bb.f, !noalias !1499 ; 3 uses

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZN6duckdb26SortedRunMergerGlobalStateC2ERNS_13ClientContextERKNS_15SortedRunMergerE(ptr noundef nonnull align 8 dereferenceable(280) %i.o, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(58) %i.e)
          to label %_ZNSt10unique_ptrIN6duckdb21SortGlobalSourceStateESt14default_deleteIS1_EED2Ev.exit unwind label %bb.d, !noalias !1501

bb.d:                                             ; preds = %.noexc.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #29, !noalias !1501
  br label %.body.i.i

bb.e:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.p, %bb.d ]
  tail call void @_ZN6duckdb15SortedRunMergerD1Ev(ptr noundef nonnull align 8 dead_on_return(58) dereferenceable(58) %i.e) #30, !noalias !1499
  br label %.body.i

.body.i:                                          ; preds = %.body.i.i, %bb.e
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.q, %bb.e ]
  tail call void @_ZN6duckdb17GlobalSourceStateD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.a) #30, !noalias !1499
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #29, !noalias !1499
  resume { ptr, i32 } %.pn.i.i

_ZNSt10unique_ptrIN6duckdb21SortGlobalSourceStateESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc.i.i, %bb.b
  %storemerge.i.i = phi ptr [ null, %bb.b ], [ %i.o, %.noexc.i.i ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %storemerge.i.i, ptr %i.s, align 8, !tbaa !551, !noalias !1499
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr null, ptr %i.t, align 8, !tbaa !1502, !noalias !1499
  store ptr %i.a, ptr %0, align 8, !tbaa !551
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb8FullSort15GetSinkProgressERNS_13ClientContextERNS_15GlobalSinkStateENS_12ProgressDataE(ptr dead_on_unwind noalias nofree writable sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr noundef nonnull align 8 dereferenceable(81) %3, ptr nofree noundef readonly byval(%"struct.duckdb::ProgressData") align 8 captures(none) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1507 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !552
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1508)
  %i.a = load <2 x double>, ptr %4, align 8, !tbaa !412
  %i.b = fmul <2 x double> %i.a, <double 5.000000e-01, double 1.000000e+00>
  store <2 x double> %i.b, ptr %0, align 8, !tbaa !412, !alias.scope !1508
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.3.0.copyload, ptr %i.c, align 8, !tbaa !414, !alias.scope !1508
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 104 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30, !noalias !1508 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #31, !noalias !1508
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !427, !noalias !1508, !nonnull !416, !align !428
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %i.i = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.c unwind label %bb.e, !noalias !1508 ; 0 uses

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.k = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_13FullSortGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
          to label %bb.d unwind label %bb.e, !noalias !1508

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = invoke noundef nonnull align 8 dereferenceable(81) ptr @_ZNK6duckdb10unique_ptrINS_15GlobalSinkStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_ZNK6duckdb23FullSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE.exit unwind label %bb.e, !noalias !1508

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30, !noalias !1508 ; 0 uses
  resume { ptr, i32 } %i.n

_ZNK6duckdb23FullSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE.exit: ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  %i.q = load atomic i64, ptr %i.p seq_cst, align 8, !noalias !1509
  %i.r = uitofp i64 %i.q to double
  %i.s = fmul nnan double %i.r, 5.000000e-01
  %i.t = load double, ptr %0, align 8, !tbaa !429, !alias.scope !1508
  %i.u = fadd double %i.t, %i.s
  store double %i.u, ptr %0, align 8, !tbaa !429, !alias.scope !1508
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30, !noalias !1508 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb22FullSortLocalSinkStateC2ERNS_16ExecutionContextERKNS_8FullSortE(ptr noundef nonnull align 8 dereferenceable(448) initializes((0, 56)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1515 {
bb.a:
  %3 = alloca %"class.duckdb::vector.120", align 8 ; 12 uses
  %4 = alloca %"class.duckdb::vector.120", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb22FullSortLocalSinkStateE, i64 16), ptr %0, align 8, !tbaa !376
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.c, align 8, !tbaa !400
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !557, !nonnull !416, !align !428
  invoke void @_ZN6duckdb18ExpressionExecutorC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(512) %i.e)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.h)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %i.k, align 8, !tbaa !559
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 1, ptr %i.m, align 8, !tbaa !560
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.o, align 8, !tbaa !561
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.p, i8 0, i64 17, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 424
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !563  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !563  ; 2 uses
  %.not51 = icmp eq ptr %i.s, %i.u
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %bb.o, %bb.e
  %i.x = load ptr, ptr %1, align 8, !tbaa !557, !nonnull !416, !align !428
  invoke void @_ZN6duckdb9DataChunk10InitializeERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEEm(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(512) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 2048)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.g:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.h:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.i:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.048.052 = phi ptr [ %i.s, %.lr.ph ], [ %i.aj, %bb.o ] ; 3 uses
  %i.ac = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.052)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !566 ; 3 uses
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !567
  %.not.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %i.ag = load ptr, ptr %i.v, align 8, !tbaa !566
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ah, ptr %i.v, align 8, !tbaa !566
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit

bb.m:                                             ; preds = %bb.k
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit: ; preds = %.noexc, %bb.m
  %i.ai = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.048.052)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12emplace_backIJRS1_EEEvDpOT_.exit
  invoke void @_ZN6duckdb18ExpressionExecutor13AddExpressionERKNS_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(65) %i.d, ptr noundef nonnull align 8 dereferenceable(88) %i.ai)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.048.052, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.u
  br i1 %.not, label %._crit_edge, label %bb.j

bb.p:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit unwind label %bb.v

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit: ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.am = invoke noundef nonnull align 8 dereferenceable(129) ptr @_ZNK6duckdb10unique_ptrINS_4SortESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.q unwind label %bb.w

bb.q:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit
  %i.an = load ptr, ptr %1, align 8, !tbaa !557, !noalias !1516, !nonnull !416, !align !428
  %i.ao = invoke noalias noundef nonnull dereferenceable(288) ptr @_Znwm(i64 noundef 288) #28
          to label %.noexc32 unwind label %bb.w   ; 3 uses

.noexc32:                                         ; preds = %bb.q
  invoke void @_ZN6duckdb18SortLocalSinkStateC2ERKNS_4SortERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(288) %i.ao, ptr noundef nonnull align 8 dereferenceable(129) %i.am, ptr noundef nonnull align 8 dereferenceable(512) %i.an)
          to label %_ZNK6duckdb4Sort17GetLocalSinkStateERNS_16ExecutionContextE.exit unwind label %bb.r, !noalias !1517

bb.r:                                             ; preds = %.noexc32
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.ao) #29, !noalias !1517
  br label %.body

_ZNK6duckdb4Sort17GetLocalSinkStateERNS_16ExecutionContextE.exit: ; preds = %.noexc32
end_hunk_1
begin_hunk_2_@_ZNK6duckdb10HashedSort13GetColumnDataEmRNS_19OperatorSourceInputE
define void @_ZNK6duckdb10HashedSort13GetColumnDataEmRNS_19OperatorSourceInputE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.192") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1834 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.192", align 8 ; 9 uses
  %i.a = load ptr, ptr %3, align 8, !tbaa !743, !nonnull !416, !align !428
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !918, !nonnull !416, !align !428
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15HashedSortGroupESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %2)
  %i.f = tail call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK6duckdb10unique_ptrINS_15HashedSortGroupESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 680 ; 3 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #30, !noalias !1835 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #31, !noalias !1835
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BatchedDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.c unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit5.i, !noalias !1836

bb.c:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i
  invoke void @_ZN6duckdb21BatchedDataCollection15FetchCollectionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.192") align 8 %4, ptr noundef nonnull align 8 dereferenceable(192) %i.l)
          to label %_ZNK6duckdb4Sort13GetColumnDataERNS_19OperatorSourceInputE.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit5.i

common.resume:                                    ; preds = %bb.f, %_ZNSt11unique_lockISt5mutexED2Ev.exit5.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %_ZNSt11unique_lockISt5mutexED2Ev.exit5.i ], [ %i.ab, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_ZNSt11unique_lockISt5mutexED2Ev.exit5.i:         ; preds = %bb.c, %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #30 ; 0 uses
  br label %common.resume

_ZNK6duckdb4Sort13GetColumnDataERNS_19OperatorSourceInputE.exit: ; preds = %bb.c
  %i.o = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #30 ; 0 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !378  ; 3 uses
  store ptr null, ptr %i.g, align 8, !tbaa !378
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i: ; preds = %_ZNK6duckdb4Sort13GetColumnDataERNS_19OperatorSourceInputE.exit
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !376
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(80) %i.p) #30, !inline_history !16
  br label %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %_ZNK6duckdb4Sort13GetColumnDataERNS_19OperatorSourceInputE.exit, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i
  %i.t = load ptr, ptr %4, align 8, !tbaa !583
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.thread14, label %bb.d

.thread14:                                        ; preds = %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  store ptr null, ptr %0, align 8, !tbaa !778
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

bb.d:                                             ; preds = %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit
  %i.u = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !512
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.y = load atomic i64, ptr %i.x seq_cst, align 8
  %i.z = icmp eq i64 %i.w, %i.y
  br i1 %i.z, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e
  %i.aa = load i64, ptr %4, align 8, !tbaa !583
  store i64 %i.aa, ptr %0, align 8, !tbaa !583
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %common.resume

bb.g:                                             ; preds = %bb.e
  %.pr.pr = load ptr, ptr %4, align 8, !tbaa !583 ; 3 uses
  store ptr null, ptr %0, align 8, !tbaa !778
  %.not.i = icmp eq ptr %.pr.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i: ; preds = %bb.g
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %.pr.pr) #30
  call void @_ZdlPv(ptr noundef nonnull %.pr.pr) #29
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %.thread14, %.thread, %bb.g, %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZNK6duckdb10HashedSort20MaterializeSortedRunERNS_16ExecutionContextEmRNS_19OperatorSourceInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 !guid !1837 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i8 @_ZN6duckdbL24MaterializeHashGroupDataERNS_16ExecutionContextEmbRNS_19OperatorSourceInputE(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(24) %3)
  ret i8 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb10HashedSort12GetSortedRunERNS_13ClientContextEmRNS_19OperatorSourceInputE(ptr dead_on_unwind noalias nofree writable sret(%"class.duckdb::unique_ptr.331") align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, i64 noundef %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1842 {
bb.a:
  %i.a = load ptr, ptr %4, align 8, !tbaa !743, !nonnull !416, !align !428
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !918, !nonnull !416, !align !428
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_15HashedSortGroupESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %3)
  %i.f = tail call noundef nonnull align 8 dereferenceable(688) ptr @_ZNK6duckdb10unique_ptrINS_15HashedSortGroupESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !919, !nonnull !416, !align !428
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 680 ; 3 uses
  %i.j = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1843)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = load i64, ptr %i.k, align 8, !tbaa !550, !noalias !1843
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN6duckdb4Sort12GetSortedRunERNS_17GlobalSourceStateE.exit.thread, label %_ZN6duckdb4Sort12GetSortedRunERNS_17GlobalSourceStateE.exit

_ZN6duckdb4Sort12GetSortedRunERNS_17GlobalSourceStateE.exit.thread: ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !779, !alias.scope !1843
  br label %.noexc

_ZN6duckdb4Sort12GetSortedRunERNS_17GlobalSourceStateE.exit: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.o = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n), !noalias !1843
  tail call void @_ZN6duckdb15SortedRunMerger12GetSortedRunERNS_17GlobalSourceStateE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.331") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %i.o)
  %.pr = load ptr, ptr %0, align 8, !tbaa !648
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %.noexc, label %bb.b

.noexc:                                           ; preds = %_ZN6duckdb4Sort12GetSortedRunERNS_17GlobalSourceStateE.exit.thread, %_ZN6duckdb4Sort12GetSortedRunERNS_17GlobalSourceStateE.exit
  %i.p = tail call noalias noundef nonnull dereferenceable(1176) ptr @_Znwm(i64 noundef 1176) #28 ; 3 uses
  invoke void @_ZN6duckdb9SortedRunC1ERNS_13ClientContextERKNS_4SortEb(ptr noundef nonnull align 8 dereferenceable(1170) %i.p, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(129) %i.h, i1 noundef zeroext false)
          to label %_ZNSt10unique_ptrIN6duckdb9SortedRunESt14default_deleteIS1_EED2Ev.exit unwind label %_ZNSt10unique_ptrIN6duckdb9SortedRunESt14default_deleteIS1_EED2Ev.exit15, !noalias !1844

_ZNSt10unique_ptrIN6duckdb9SortedRunESt14default_deleteIS1_EED2Ev.exit15: ; preds = %.noexc
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.p) #29, !noalias !1844
  resume { ptr, i32 } %i.q

_ZNSt10unique_ptrIN6duckdb9SortedRunESt14default_deleteIS1_EED2Ev.exit: ; preds = %.noexc
  store ptr %i.p, ptr %0, align 8, !tbaa !648
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb9SortedRunESt14default_deleteIS1_EED2Ev.exit, %_ZN6duckdb4Sort12GetSortedRunERNS_17GlobalSourceStateE.exit
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !378  ; 3 uses
  store ptr null, ptr %i.i, align 8, !tbaa !378
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i: ; preds = %bb.b
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !376
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(80) %i.r) #30, !inline_history !16
  br label %_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit

_ZN6duckdb10unique_ptrINS_17GlobalSourceStateESt14default_deleteIS1_ELb1EE5resetEPS1_.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN6duckdb17GlobalSourceStateEEclEPS1_.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb16NaturalSortGroupC2ERNS_13ClientContextE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !guid !1845 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb26NaturalSortGlobalSinkStateC2ERNS_13ClientContextERKNS_11NaturalSortE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) initializes((0, 9), (16, 81), (88, 152)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !guid !1846 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.a, align 8, !tbaa !383
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.c, align 8, !tbaa !396
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb26NaturalSortGlobalSinkStateE, i64 16), ptr %0, align 8, !tbaa !376
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %2, ptr %i.d, align 8, !tbaa !921
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK6duckdb26NaturalSortGlobalSinkState15GetSinkProgressERNS_13ClientContextENS_12ProgressDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(152) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(512) %2, ptr nofree noundef readonly byval(%"struct.duckdb::ProgressData") align 8 captures(none) %3) local_unnamed_addr #10 align 2 !guid !1847 {
bb.a:
  %i.a = load <2 x double>, ptr %3, align 8, !tbaa !412
  %i.b = fmul <2 x double> %i.a, <double 5.000000e-01, double 1.000000e+00>
  store <2 x double> %i.b, ptr %0, align 8, !tbaa !412
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !414, !range !415, !noundef !416
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.d, ptr %i.e, align 8, !tbaa !414
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef zeroext range(i8 0, 2) i8 @_ZNK6duckdb11NaturalSort8FinalizeERNS_13ClientContextERNS_25OperatorSinkFinalizeInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #3 align 2 !guid !1848 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !432, !nonnull !416, !align !428
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %.not = icmp eq i64 %i.c, 0
  %i.d = zext i1 %.not to i8
  ret i8 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZNK6duckdb11NaturalSort15GetSinkProgressERNS_13ClientContextERNS_15GlobalSinkStateENS_12ProgressDataE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::ProgressData") align 8 captures(none) initializes((0, 17)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree noundef readonly byval(%"struct.duckdb::ProgressData") align 8 captures(none) %4) unnamed_addr #10 align 2 !guid !1851 {
bb.a:
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !552
  %i.a = load <2 x double>, ptr %4, align 8, !tbaa !412
  %i.b = fmul <2 x double> %i.a, <double 5.000000e-01, double 1.000000e+00>
  store <2 x double> %i.b, ptr %0, align 8, !tbaa !412, !alias.scope !1852
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sroa.3.0.copyload, ptr %i.c, align 8, !tbaa !414, !alias.scope !1852
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25NaturalSortLocalSinkStateC2ERNS_16ExecutionContextERKNS_11NaturalSortE(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 64)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1855 {
bb.a:
  %3 = alloca %"class.duckdb::vector.120", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25NaturalSortLocalSinkStateE, i64 16), ptr %0, align 8, !tbaa !376
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.c, align 8, !tbaa !921
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store ptr null, ptr %i.d, align 8, !tbaa !778
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.f, ptr %i.e, align 8, !tbaa !559
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 1, ptr %i.g, align 8, !tbaa !560
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.i, align 8, !tbaa !561
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.j, i8 0, i64 17, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !tbaa !557, !nonnull !416, !align !428
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #28
          to label %.noexc unwind label %bb.j     ; 3 uses

.noexc:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i unwind label %bb.d, !noalias !1856

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i: ; preds = %.noexc
  invoke void @_ZN6duckdb20ColumnDataCollectionC1ERNS_13ClientContextENS_6vectorINS_11LogicalTypeELb1ESaIS4_EEENS_23ColumnDataAllocatorTypeENS_28ColumnDataCollectionLifetimeE(ptr noundef nonnull align 8 dereferenceable(112) %i.m, ptr noundef nonnull align 8 dereferenceable(512) %i.l, ptr noundef nonnull %3, i8 noundef zeroext 0, i32 noundef 0)
          to label %bb.b unwind label %bb.e, !noalias !1856

bb.b:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.o = load ptr, ptr %3, align 8, !tbaa !570, !noalias !1856 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !566, !noalias !1856 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i ], [ %i.o, %bb.b ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i) #30, !noalias !1856
  %i.r = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.q
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !570, !noalias !1856
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.s = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.o, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.s) #29, !noalias !1856
  br label %bb.g

bb.d:                                             ; preds = %.noexc
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #30, !noalias !1856
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.u, %bb.e ], [ %i.t, %bb.d ]
  call void @_ZdlPv(ptr noundef nonnull %i.m) #29, !noalias !1856
  br label %.body

bb.g:                                             ; preds = %bb.c, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !583  ; 3 uses
  store ptr %i.m, ptr %i.d, align 8, !tbaa !583
  %.not.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.g
  call void @_ZN6duckdb20ColumnDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %i.v) #30
  call void @_ZdlPv(ptr noundef nonnull %i.v) #29
  br label %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb20ColumnDataCollectionEEclEPS1_.exit.i.i.i.i.i, %bb.g
  %i.w = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit
  invoke void @_ZN6duckdb20ColumnDataCollection16InitializeAppendERNS_21ColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(112) %i.w, ptr noundef nonnull align 8 dereferenceable(88) %i.e)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  ret void

bb.j:                                             ; preds = %bb.a, %bb.h, %_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.j
  %.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %.pn.i, %bb.f ]
  call void @_ZN6duckdb21ColumnDataAppendStateD2Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.e) #30
  call void @_ZNSt10unique_ptrIN6duckdb20ColumnDataCollectionESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #30
  call void @_ZN6duckdb14LocalSinkStateD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #30
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb20ColumnDataCollection16InitializeAppendERNS_21ColumnDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb11NaturalSort4SinkERNS_16ExecutionContextERNS_9DataChunkERNS_17OperatorSinkInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 align 2 !guid !1857 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !596, !nonnull !416, !align !428
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !597, !nonnull !416, !align !428 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !611
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.g = atomicrmw add ptr %i.f, i64 %i.e seq_cst, align 8 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  tail call void @_ZN6duckdb20ColumnDataCollection6AppendERNS_21ColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(72) %2)
  ret i8 0
}

declare void @_ZN6duckdb20ColumnDataCollection6AppendERNS_21ColumnDataAppendStateERNS_9DataChunkE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK6duckdb11NaturalSort7CombineERNS_16ExecutionContextERNS_24OperatorSinkCombineInputE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !1860 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !706, !nonnull !416, !align !428 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !707, !nonnull !416, !align !428 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96 ; 3 uses
  %i.e = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.e) #31
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !923
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16NaturalSortGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.d unwind label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.e unwind label %bb.r

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !583
  %.not25 = icmp eq ptr %i.l, null
  br i1 %.not25, label %_ZN6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EE5resetEPS1_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.g unwind label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !512
  %i.p = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16NaturalSortGroupESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.h unwind label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.q = atomicrmw add ptr %i.p, i64 %i.o seq_cst, align 8 ; 0 uses
  %i.r = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZNK6duckdb10unique_ptrINS_20ColumnDataCollectionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6duckdb20ColumnDataCollection7CombineERS0_(ptr noundef nonnull align 8 dereferenceable(112) %i.j, ptr noundef nonnull align 8 dereferenceable(112) %i.r)
          to label %bb.j unwind label %bb.r

end_hunk_2
