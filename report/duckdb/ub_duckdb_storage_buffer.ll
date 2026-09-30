Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_buffer?download=true
inline.NumInlined: 2020
inline.NumDeleted: 1034
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNSt10unique_ptrIN6duckdb22TemporaryMemoryManagerESt14default_deleteIS1_EED2Ev:bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !253  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.j) #33
  br label %_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit

_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit: ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #33
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !250
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !249
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb10unique_ptrINS2_13EvictionQueueESt14default_deleteIS4_ELb1EEEEEvT_S9_(ptr noundef %i.a, ptr noundef %i.c)
          to label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit unwind label %bb.c

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #33
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit, %bb.b
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #31
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb10BufferPoolD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(8984) dereferenceable(8984) initializes((0, 8)) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb10BufferPoolE, i64 16), ptr %0, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !213  ; 6 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb22TemporaryMemoryManagerESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !252  ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i.i.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = load ptr, ptr %.06.i.i.i.i.i.i.i, align 8, !tbaa !161 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i.i.i.i) #33
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !22

_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.b
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !253
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !254
  %i.j = shl i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.j, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !253  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.k) #33
  br label %_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit.i: ; preds = %bb.c, %_ZNSt10_HashtableISt17reference_wrapperIN6duckdb20TemporaryMemoryStateEES3_SaIS3_ENSt8__detail9_IdentityENS1_17ReferenceEqualityIS2_EENS1_21ReferenceHashFunctionIS2_EENS5_18_Mod_range_hashingENS5_20_Default_ranged_hashENS5_20_Prime_rehash_policyENS5_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #33
  br label %_ZNSt10unique_ptrIN6duckdb22TemporaryMemoryManagerESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb22TemporaryMemoryManagerESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb22TemporaryMemoryManagerEEclEPS1_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !250
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !249
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb10unique_ptrINS2_13EvictionQueueESt14default_deleteIS4_ELb1EEEEEvT_S9_(ptr noundef %i.o, ptr noundef %i.q)
          to label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i unwind label %bb.e

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb22TemporaryMemoryManagerESt14default_deleteIS1_EED2Ev.exit
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !250  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.r) #33
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb22TemporaryMemoryManagerESt14default_deleteIS1_EED2Ev.exit
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #31
  unreachable

_ZNSt6vectorIN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_13EvictionQueueESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb10BufferPoolD0Ev(ptr noundef nonnull align 8 dead_on_return(8984) dereferenceable(8984) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb10BufferPoolD1Ev(ptr noundef nonnull align 8 dead_on_return(8984) dereferenceable(8984) %0) #30
  tail call void @_ZdlPv(ptr noundef nonnull %0) #33
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(728) ptr @_ZN6duckdb10BufferPool30GetEvictionQueueForBlockMemoryERKNS_11BlockMemoryE(ptr noundef nonnull align 8 dereferenceable(8984) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(176) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.52", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.b = load i8, ptr %i.a, align 1, !tbaa !108
  switch i8 %i.b, label %bb.c [
    i8 1, label %._crit_edge
    i8 4, label %._crit_edge
    i8 2, label %.lr.ph
    i8 3, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %.lr.ph

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.i unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.f) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i, label %bb.g, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn4.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #30
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn3.i = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn4.i, %bb.g ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn3.i

bb.i:                                             ; preds = %bb.e
  unreachable

._crit_edge:                                      ; preds = %.lr.ph, %4, %bb.a, %bb.a
  %.06.i22 = phi i64 [ 0, %bb.a ], [ 0, %bb.a ], [ %.06.i.ph, %4 ], [ %.06.i.ph, %.lr.ph ]
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ 0, %bb.a ], [ %i.v, %.lr.ph ], [ %7, %4 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.06.i22
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.l = load atomic i64, ptr %i.k seq_cst, align 8 ; 2 uses
  %i.m = load i64, ptr %i.j, align 8, !tbaa !144  ; 2 uses
  %i.n = icmp ult i64 %i.l, %i.m
  %i.o = xor i64 %i.l, -1
  %i.p = add i64 %i.m, %i.o
  %i.q = select i1 %i.n, i64 %i.p, i64 0
  %.1 = add i64 %i.q, %.015.lcssa
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_13EvictionQueueESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %.1)
  %i.t = tail call noundef nonnull align 8 dereferenceable(728) ptr @_ZNK6duckdb10unique_ptrINS_13EvictionQueueESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  ret ptr %i.t

.lr.ph:                                           ; preds = %bb.b, %bb.a
  %exitcond.not = phi i1 [ false, %bb.b ], [ true, %bb.a ]
  %.06.i.ph = phi i64 [ 2, %bb.b ], [ 1, %bb.a ]  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !144  ; 2 uses
  br i1 %exitcond.not, label %._crit_edge, label %4

4:                                                ; preds = %.lr.ph
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %6 = load i64, ptr %5, align 8, !tbaa !144
  %7 = add i64 %6, %i.v
  br label %._crit_edge
}

; Function Attrs: nounwind
declare i64 @_ZNSt6chrono3_V212steady_clock3nowEv() local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_13EvictionQueueESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.52", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !249
  %i.e = load ptr, ptr %0, align 8, !tbaa !250    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !144
  store i64 %i.i, ptr %i.b, align 8, !tbaa !144
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_10unique_ptrINS_13EvictionQueueESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit, label %bb.b, !prof !212

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_10unique_ptrINS_13EvictionQueueESt14default_deleteIS2_ELb1EEELb1ESaIS5_EE3getILb1EEERS5_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(728) ptr @_ZNK6duckdb10unique_ptrINS_13EvictionQueueESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.52", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !248    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13EvictionQueueESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #30 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #32
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
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #33
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

_ZN6duckdb10unique_ptrINS_13EvictionQueueESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10BufferPool16UpdateUsedMemoryENS_9MemoryTagEl(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8984) %0, i8 noundef zeroext %1, i64 noundef %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = zext i8 %1 to i64                        ; 3 uses
  %i.c = add i64 %2, 32767
  %i.d = icmp ult i64 %i.c, 65535
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6duckdb13TaskScheduler17GetEstimatedCPUIdEv()
  %i.f = and i64 %i.e, 63
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.h = getelementptr inbounds nuw [136 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.b ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 %2 monotonic, align 8
  %i.k = add nsw i64 %2, -32768                   ; 2 uses
  %i.l = add i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, -65535
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = atomicrmw xchg ptr %i.i, i64 0 monotonic, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.p = atomicrmw add ptr %i.o, i64 %i.n monotonic, align 8 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 %2 monotonic, align 8
  %i.s = add i64 %i.r, %i.k
  %i.t = icmp ult i64 %i.s, -65535
  br i1 %i.t, label %bb.e, label %_ZN6duckdb10BufferPool11MemoryUsage16UpdateUsedMemoryENS_9MemoryTagEl.exit

bb.e:                                             ; preds = %bb.d
  %i.u = atomicrmw xchg ptr %i.q, i64 0 monotonic, align 8
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.b
  %i.w = atomicrmw add ptr %i.v, i64 %2 monotonic, align 8 ; 0 uses
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.f, %bb.e
  %.sink21.i = phi i64 [ %i.u, %bb.e ], [ %2, %bb.f ]
end_hunk_0
