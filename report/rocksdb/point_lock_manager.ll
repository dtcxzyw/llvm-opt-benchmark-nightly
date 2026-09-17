Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/point_lock_manager?download=true
inline.NumInlined: 3593
inline.NumDeleted: 1557
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN7rocksdb12_GLOBAL__N_118UnrefKeyLockWaiterEPv:bb.a
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !169
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !433
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !97
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28, !inline_history !433
  br label %_ZN7rocksdb13KeyLockWaiterD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZN7rocksdb13KeyLockWaiterD2Ev.exit, !prof !41

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #28
  br label %_ZN7rocksdb13KeyLockWaiterD2Ev.exit

_ZN7rocksdb13KeyLockWaiterD2Ev.exit:              ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #30
  br label %bb.i

bb.i:                                             ; preds = %_ZN7rocksdb13KeyLockWaiterD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb23DeadlockInfoBufferTemplINS_12DeadlockPathEED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !152    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !162  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb12DeadlockPathEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN7rocksdb12DeadlockPathEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 5 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !170 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 2 uses
  %.not4.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.k = load i64, ptr %i.i, align 8, !tbaa !45
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #30
  br label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, %i.f
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i, %.lr.ph.i.i.i
  %i.n = phi ptr [ %.pr.i.i.i.i.i.i.i, %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i.i ] ; 3 uses
  %.not.i.i1.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN7rocksdb12DeadlockPathEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !172
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #30
  br label %_ZSt8_DestroyIN7rocksdb12DeadlockPathEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb12DeadlockPathEEvPT_.exit.i.i.i: ; preds = %bb.b, %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb12DeadlockPathEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !152
  br label %_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.u = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb12DeadlockPathESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #30
  br label %_ZNSt6vectorIN7rocksdb12DeadlockPathESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb12DeadlockPathESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockPathES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb7HashMapImiLm128EED2Ev(ptr noundef nonnull align 8 dead_on_return(7168) dereferenceable(7168) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7168
  br label %bb.b

bb.b:                                             ; preds = %_ZN7rocksdb10autovectorISt4pairImiELm1EED2Ev.exit.i, %bb.a
  %i.b = phi ptr [ %i.a, %bb.a ], [ %i.c, %_ZN7rocksdb10autovectorISt4pairImiELm1EED2Ev.exit.i ] ; 4 uses
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -56 ; 4 uses
  %.pr.i.i.i = load i64, ptr %i.c, align 8, !tbaa !142
  %.not1.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not1.i.i.i, label %bb.c, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.b
  store i64 0, ptr %i.c, align 8, !tbaa !142
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i, %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.b, i64 -24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !173  ; 5 uses
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !174
  %.not.i.i.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb10autovectorISt4pairImiELm1EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPSt4pairImiES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPSt4pairImiES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i: ; preds = %bb.c
  store ptr %i.e, ptr %i.f, align 8, !tbaa !174
  br label %_ZN7rocksdb10autovectorISt4pairImiELm1EE5clearEv.exit.i.i

_ZN7rocksdb10autovectorISt4pairImiELm1EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairImiES1_EvT_S3_RSaIT0_E.exit.i.i.i.i.i, %bb.c
  %.not.i.i.i1.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7rocksdb10autovectorISt4pairImiELm1EED2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb10autovectorISt4pairImiELm1EE5clearEv.exit.i.i
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.l) #30
  br label %_ZN7rocksdb10autovectorISt4pairImiELm1EED2Ev.exit.i

_ZN7rocksdb10autovectorISt4pairImiELm1EED2Ev.exit.i: ; preds = %bb.d, %_ZN7rocksdb10autovectorISt4pairImiELm1EE5clearEv.exit.i.i
  %i.m = icmp eq ptr %i.c, %0
  br i1 %i.m, label %_ZNSt5arrayIN7rocksdb10autovectorISt4pairImiELm1EEELm128EED2Ev.exit, label %bb.b

_ZNSt5arrayIN7rocksdb10autovectorISt4pairImiELm1EEELm128EED2Ev.exit: ; preds = %_ZN7rocksdb10autovectorISt4pairImiELm1EED2Ev.exit.i
  ret void
}

; Function Attrs: nounwind
declare void @_ZN7rocksdb14ThreadLocalPtrD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !135    ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZNKSt14default_deleteIN7rocksdb14ThreadLocalPtrEEclEPS1_.exit

_ZNKSt14default_deleteIN7rocksdb14ThreadLocalPtrEEclEPS1_.exit: ; preds = %bb.a
  tail call void @_ZN7rocksdb14ThreadLocalPtrD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %i.a) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #30
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt14default_deleteIN7rocksdb14ThreadLocalPtrEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, -1) i64 @_ZNK7rocksdb7LockMap9GetStripeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !46
  %i.d = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.a, i64 noundef %i.c)
  %i.e = load i64, ptr %0, align 8, !tbaa !185
  %2 = zext i64 %i.e to i128
  %3 = zext i64 %i.d to i128
  %4 = mul nuw i128 %2, %3
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64
  ret i64 %6
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16PointLockManager15AddColumnFamilyEPKNS_18ColumnFamilyHandleE(ptr noundef nonnull align 8 dereferenceable(32040) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca %"class.std::shared_ptr.84", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN7rocksdb17InstrumentedMutex4LockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.r       ; 4 uses

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load i64, ptr %i.h, align 8, !tbaa !186
  %.not.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.not.i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.sroa.06.0.in.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.06.0.i.i, %bb.e ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !64 ; 3 uses
  %i.k = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %i.k, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !166
  %i.n = icmp eq i32 %i.g, %i.m
  br i1 %i.n, label %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %bb.d, !llvm.loop !5

bb.f:                                             ; preds = %bb.b
  %i.o = zext i32 %i.g to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.q = load i64, ptr %i.p, align 8, !tbaa !133  ; 2 uses
  %i.r = urem i64 %i.o, %i.q                      ; 2 uses
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !132
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.r
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !63   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !166
  %i.y = icmp eq i32 %i.g, %i.x
  br i1 %i.y, label %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.z = icmp eq i32 %i.g, %i.ac
  br i1 %i.z, label %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.aa, %bb.h ], [ %i.v, %bb.g ]
  %i.aa = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !64 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i.i.i, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !166 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = urem i64 %i.ad, %i.q
  %.not19.i.i.i.i = icmp eq i64 %i.ae, %i.r
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit, !llvm.loop !6

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.d, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.af = load ptr, ptr %1, align 8, !tbaa !97
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i32 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %.loopexit
  store i32 %i.ai, ptr %i.a, align 4, !tbaa !166
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.aj = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #29
          to label %.noexc unwind label %bb.t     ; 4 uses

.noexc:                                           ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32024
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN7rocksdb7LockMapESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRKmRSt10shared_ptrINS0_25TransactionDBMutexFactoryEERNS0_14ThreadLocalPtrEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(4) %i.ak)
          to label %bb.k unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb7LockMapESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, !noalias !436

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb7LockMapESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i: ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #30, !noalias !436
  br label %.body

bb.k:                                             ; preds = %.noexc
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.aj, ptr %i.ao, align 8, !tbaa !165, !alias.scope !436
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.ap, ptr %2, align 8, !tbaa !437, !alias.scope !436
  %i.aq = invoke { ptr, i8 } @_ZNSt10_HashtableIjSt4pairIKjSt10shared_ptrIN7rocksdb7LockMapEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJjS5_EEES0_INS8_14_Node_iteratorIS6_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7emplaceIJjS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit unwind label %bb.u ; 0 uses

_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7emplaceIJjS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit: ; preds = %bb.k
  %i.ar = load ptr, ptr %i.ao, align 8, !tbaa !165 ; 8 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7emplaceIJjS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.at = load atomic i64, ptr %i.as acquire, align 8 ; 2 uses
  %i.au = icmp eq i64 %i.at, 4294967297
  %i.av = trunc i64 %i.at to i32                  ; 2 uses
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.as, align 8, !tbaa !168
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 0, ptr %i.aw, align 4, !tbaa !169
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !97
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !7
  %i.ba = load ptr, ptr %i.ar, align 8, !tbaa !97
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = add nsw i32 %i.av, -1
  store i32 %i.be, ptr %i.as, align 8, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.p:                                             ; preds = %bb.n
  %i.bf = atomicrmw volatile add ptr %i.as, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i = phi i32 [ %i.av, %bb.o ], [ %i.bf, %bb.p ]
  %i.bg = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bg, label %bb.q, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar) #28
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE7emplaceIJjS3_EEES8_INSt8__detail14_Node_iteratorISA_Lb0ELb0EEEbEDpOT_.exit, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit

bb.r:                                             ; preds = %bb.a
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %.loopexit
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.t:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.u:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #28
  br label %.body

.body:                                            ; preds = %bb.t, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb7LockMapESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bk, %bb.u ], [ %i.bj, %bb.t ], [ %i.an, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN7rocksdb7LockMapESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.v

bb.v:                                             ; preds = %.body, %bb.s
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bi, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.x

_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit: ; preds = %bb.h, %bb.e, %bb.g, %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZN7rocksdb4port5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(60) %i.b)
end_hunk_0
begin_hunk_1_@_ZN7rocksdb16PointLockManager10GetLockMapEj:bb.a
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  %i.di = extractvalue { ptr, i32 } %i.dh, 0
  call void @__clang_call_terminate(ptr %i.di) #31
  unreachable

_ZN7rocksdb21InstrumentedMutexLockD2Ev.exit28:    ; preds = %bb.ag
  resume { ptr, i32 } %i.de

_ZNSt10shared_ptrIN7rocksdb7LockMapEEC2ERKS2_.exit: ; preds = %_ZNSt10shared_ptrIN7rocksdb7LockMapEEC2ERKS2_.exit27, %bb.m, %bb.l, %_ZNSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE4findERS9_.exit
  ret void
}

declare noundef ptr @_ZNK7rocksdb14ThreadLocalPtr3GetEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #7

declare void @_ZN7rocksdb14ThreadLocalPtr5ResetEPv(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt4pairIKjSt10shared_ptrIN7rocksdb7LockMapEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !169
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !7
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !97
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb16PointLockManager13IsLockExpiredEmRKNS_8LockInfoEPNS_3EnvEPm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32040) %0, i64 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %2, ptr noundef %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !200
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !97
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(72) %3)
  %i.h = load i64, ptr %i.a, align 8, !tbaa !200  ; 2 uses
  %.not = icmp ugt i64 %i.h, %i.g
  br i1 %.not, label %.loopexit.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !74, !noalias !455
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !75, !noalias !455
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !76, !noalias !455
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 3
  %i.s = add i64 %i.r, %i.j                       ; 2 uses
  %.not4244 = icmp eq i64 %i.s, 0
  br i1 %.not4244, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.5.045 = phi i64 [ 0, %.lr.ph ], [ %i.af, %bb.f ] ; 4 uses
  %i.v = icmp ult i64 %.sroa.5.045, 8
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.5.045
  %i.y = load ptr, ptr %i.k, align 8
  %i.z = getelementptr [8 x i8], ptr %i.y, i64 %.sroa.5.045
  %i.aa = getelementptr i8, ptr %i.z, i64 -64
  %.0.i.i = select i1 %i.v, ptr %i.x, ptr %i.aa
  %i.ab = load i64, ptr %.0.i.i, align 8, !tbaa !80 ; 2 uses
  %i.ac = icmp eq i64 %1, %i.ab
  br i1 %i.ac, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !130
  %i.ae = tail call noundef zeroext i1 @_ZN7rocksdb24PessimisticTransactionDB34TryStealingExpiredTransactionLocksEm(ptr noundef nonnull align 8 dereferenceable(520) %i.ad, i64 noundef %i.ab)
  br i1 %i.ae, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.af = add nuw i64 %.sroa.5.045, 1             ; 2 uses
  %.not42 = icmp eq i64 %i.af, %i.s
  br i1 %.not42, label %.loopexit, label %bb.d

.loopexit.sink.split:                             ; preds = %bb.e, %bb.b, %bb.a
  %.sink = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ]
  store i64 %.sink, ptr %4, align 8, !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %bb.c
  %.030 = phi i1 [ false, %.loopexit.sink.split ], [ true, %bb.c ], [ true, %bb.f ]
  ret i1 %.030
}

declare noundef zeroext i1 @_ZN7rocksdb24PessimisticTransactionDB34TryStealingExpiredTransactionLocksEm(ptr noundef nonnull align 8 dereferenceable(520), i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16PointLockManager7TryLockEPNS_22PessimisticTransactionEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_3EnvEb(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32040) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i1 noundef zeroext %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::shared_ptr.84", align 8 ; 7 uses
  %i.a = alloca [255 x i8], align 16              ; 6 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %10 = alloca %"struct.rocksdb::LockInfo", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @_ZN7rocksdb16PointLockManager10GetLockMapEj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.84") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32040) %1, i32 noundef %3)
  %i.b = load ptr, ptr %7, align 8, !tbaa !201    ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.d = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 255, ptr noundef nonnull @.str.41, i32 noundef %3) #28 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr %i.a, ptr %8, align 8, !tbaa !203
  %i.e = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #32
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.f, align 8, !tbaa !204
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  store ptr @.str, ptr %9, align 8, !tbaa !203
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 0, ptr %i.g, align 8, !tbaa !204
  invoke void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %9, i8 noundef zeroext 0)
          to label %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit unwind label %bb.c

_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.x

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %4, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !46
  %i.l = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.i, i64 noundef %i.k)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %i.b, align 8, !tbaa !185
  %11 = zext i64 %i.m to i128
  %12 = zext i64 %i.l to i128
  %13 = mul nuw i128 %11, %12
  %14 = lshr i128 %13, 64
  %15 = trunc nuw i128 %14 to i64                 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !205
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !206  ; 2 uses
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 3                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.u, %15
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, i64 noundef %15, i64 noundef %i.u) #27
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %15
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !208
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  %i.x = load ptr, ptr %2, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 680
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = invoke noundef i64 %i.z(ptr noundef nonnull align 8 dereferenceable(697) %2)
          to label %bb.h unwind label %.body

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 416
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !456
  %i.ad = zext i1 %6 to i8
  store i8 %i.ad, ptr %10, align 8, !tbaa !276
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !277
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 88 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i8 0, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 112
  store i64 %i.ac, ptr %i.ai, align 8, !tbaa !200
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 120 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !278
  store i64 1, ptr %i.ae, align 8, !tbaa !74
  store i64 %i.aa, ptr %i.ag, align 8, !tbaa !80
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !457
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 672
  %i.an = load i64, ptr %i.am, align 8, !tbaa !458
  %i.ao = load ptr, ptr %1, align 8, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 128
  %i.aq = load ptr, ptr %i.ap, align 8
  invoke void %i.aq(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32040) %1, ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef %i.w, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5, i64 noundef %i.al, i64 noundef %i.an, ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !48 ; 5 uses
  %.not.i.i32 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i32, label %_ZNSt10unique_ptrINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEESt14default_deleteIS6_EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.as, %i.ar
  br i1 %.not8.i.i.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEEEclEPS6_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %i.as, %bb.j ] ; 2 uses
  %i.at = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !51 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 24) #30
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %i.ar
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEEEclEPS6_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !9

_ZNKSt14default_deleteINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEEEclEPS6_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.j
  call void @_ZdlPvm(ptr noundef nonnull %i.ar, i64 noundef 24) #30
  br label %_ZNSt10unique_ptrINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEESt14default_deleteIS6_EED2Ev.exit.i

_ZNSt10unique_ptrINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEESt14default_deleteIS6_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEEEclEPS6_.exit.i.i, %bb.i
  %.pr.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !74
  %.not1.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not1.i.i.i, label %bb.k, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt10unique_ptrINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEESt14default_deleteIS6_EED2Ev.exit.i
  store i64 0, ptr %i.ae, align 8, !tbaa !74
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph.preheader.i.i.i, %_ZNSt10unique_ptrINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEESt14default_deleteIS6_EED2Ev.exit.i
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !76 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 96 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !75
  %.not.i.i.i.i1.i = icmp eq ptr %i.aw, %i.au
  br i1 %.not.i.i.i.i1.i, label %_ZN7rocksdb10autovectorImLm8EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.k
  store ptr %i.au, ptr %i.av, align 8, !tbaa !75
  br label %_ZN7rocksdb10autovectorImLm8EE5clearEv.exit.i.i

_ZN7rocksdb10autovectorImLm8EE5clearEv.exit.i.i:  ; preds = %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i.i.i.i, %bb.k
  %.not.i.i.i1.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i1.i.i, label %_ZN7rocksdb8LockInfoD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN7rocksdb10autovectorImLm8EE5clearEv.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %10, i64 104
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !279
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.bb) #30
  br label %_ZN7rocksdb8LockInfoD2Ev.exit

_ZN7rocksdb8LockInfoD2Ev.exit:                    ; preds = %_ZN7rocksdb10autovectorImLm8EE5clearEv.exit.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.q

bb.m:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.n:                                             ; preds = %bb.f
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.body:                                            ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7rocksdb8LockInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %10) #28
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.body
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.o ], [ %i.be, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.x

bb.q:                                             ; preds = %_ZN7rocksdb8LockInfoD2Ev.exit, %_ZN7rocksdb6Status15InvalidArgumentERKNS_5SliceES3_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !165 ; 8 uses
  %.not.i.i33 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i33, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.bi, align 8, !tbaa !168
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !169
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !97
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #28, !inline_history !7
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !97
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #28, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i = phi i32 [ %i.bl, %bb.u ], [ %i.bv, %bb.v ]
  %i.bw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bw, label %bb.w, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.w:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #28
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.q, %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  ret void

bb.x:                                             ; preds = %bb.m, %bb.p, %bb.n, %bb.c
  %.pn30 = phi { ptr, i32 } [ %i.h, %bb.c ], [ %i.bc, %bb.m ], [ %.pn, %bb.p ], [ %i.bd, %bb.n ]
  call void @_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  resume { ptr, i32 } %.pn30
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb8LockInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48   ; 5 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEESt14default_deleteIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !51   ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not8.i.i.i.i, label %_ZNKSt14default_deleteINSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS4_EEEEclEPS6_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !51 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 24) #30
end_hunk_1
begin_hunk_2_@_ZN7rocksdb23DeadlockInfoBufferTemplINS_12DeadlockPathEE10AddNewPathES1_:bb.a

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !339    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !339
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !163
  %i.i = zext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [40 x i8], ptr %i.c, i64 %i.i ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !171  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !172
  %i.p = load <2 x ptr>, ptr %1, align 8, !tbaa !333
  store <2 x ptr> %i.p, ptr %i.j, align 8, !tbaa !333
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !172
  store ptr %i.r, ptr %i.n, align 8, !tbaa !172
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.k, %i.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.c, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.y, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 32 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !45
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #30
  br label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.m
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i.i.i.i, %bb.c
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN7rocksdb12DeadlockPathaSEOS0_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  %i.z = ptrtoint ptr %i.o to i64
  %i.aa = ptrtoint ptr %i.k to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ab) #30
  br label %_ZN7rocksdb12DeadlockPathaSEOS0_.exit

_ZN7rocksdb12DeadlockPathaSEOS0_.exit:            ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  %i.ae = load i32, ptr %i.g, align 8, !tbaa !163
  %i.af = add i32 %i.ae, 1
  %i.ag = zext i32 %i.af to i64
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !162
  %i.ai = load ptr, ptr %0, align 8, !tbaa !152
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = sdiv exact i64 %i.al, 40
  %i.an = urem i64 %i.ag, %i.am
  %i.ao = trunc nuw i64 %i.an to i32
  store i32 %i.ao, ptr %i.g, align 8, !tbaa !163
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, %_ZN7rocksdb12DeadlockPathaSEOS0_.exit
  %i.ap = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #28 ; 0 uses
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb12DeadlockPathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !45
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.k = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #30
  br label %_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !170    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.h = load i64, ptr %i.f, align 8, !tbaa !45
  %i.i = add i64 %i.h, 1
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #30
  br label %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i

_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !3

_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN7rocksdb12DeadlockInfoEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !170
  br label %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !172
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #30
  br label %_ZNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb12DeadlockInfoES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16PointLockManager6UnLockEPNS_22PessimisticTransactionEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_3EnvE(ptr noundef nonnull align 8 dereferenceable(32040) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.84", align 8 ; 7 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN7rocksdb16PointLockManager10GetLockMapEj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.84") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32040) %0, i32 noundef %2)
  %i.a = load ptr, ptr %5, align 8, !tbaa !201    ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !185
  %7 = zext i64 %i.g to i128
  %8 = zext i64 %i.f to i128
  %9 = mul nuw i128 %7, %8
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !205
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !206  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.o, %11
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, i64 noundef %11, i64 noundef %i.o) #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %11
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !208  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.f unwind label %bb.r

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !297  ; 2 uses
  %.not.i.i21 = icmp eq ptr %i.w, null
  br i1 %.not.i.i21, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.w) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.f, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.x = load ptr, ptr %0, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32040) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, ptr noundef %4)
          to label %bb.g unwind label %bb.q

bb.g:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !284 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.h unwind label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !95 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  invoke void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !165 ; 8 uses
  %.not.i.i22 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i22, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 4 uses
  %i.am = load atomic i64, ptr %i.al acquire, align 8 ; 2 uses
  %i.an = icmp eq i64 %i.am, 4294967297
  %i.ao = trunc i64 %i.am to i32                  ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.al, align 8, !tbaa !168
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  store i32 0, ptr %i.ap, align 4, !tbaa !169
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28, !inline_history !7
  %i.at = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.aw, 0
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = add nsw i32 %i.ao, -1
  store i32 %i.ax, ptr %i.al, align 8, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ay = atomicrmw volatile add ptr %i.al, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.ao, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.az, label %bb.o, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ak) #28
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.i, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.p:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.q:                                             ; preds = %bb.d, %bb.h, %bb.g, %_ZN7rocksdb6StatusD2Ev.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.p
  %.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.p ], [ %i.bb, %bb.q ], [ %i.bc, %bb.r ]
  call void @_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb16PointLockManager6UnLockEPNS_22PessimisticTransactionERKNS_11LockTrackerEPNS_3EnvE(ptr noundef nonnull align 8 dereferenceable(32040) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, std::vector<const std::__cxx11::basic_string<char> *>>, std::allocator<std::pair<const unsigned long, std::vector<const std::__cxx11::basic_string<char> *>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.84", align 8 ; 8 uses
  %6 = alloca %"class.std::unordered_map.246", align 8 ; 17 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %_ZNSt10unique_ptrIN7rocksdb11LockTracker20ColumnFamilyIteratorESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN7rocksdb16PointLockManager10GetLockMapEj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.84") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32040) %0, i32 noundef %i.t)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %5, align 8, !tbaa !201    ; 6 uses
  %.not.not = icmp eq ptr %i.u, null
  br i1 %.not.not, label %.critedge, label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker20ColumnFamilyIteratorESt14default_deleteIS2_EED2Ev.exit72

bb.h:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker20ColumnFamilyIteratorESt14default_deleteIS2_EED2Ev.exit72

bb.i:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.y = load i64, ptr %i.u, align 8, !tbaa !185
  store ptr %i.e, ptr %6, align 8, !tbaa !341
  store i64 1, ptr %i.f, align 8, !tbaa !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.z = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.y)
          to label %bb.k unwind label %.loopexit99 ; 6 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !342
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.l, label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !41

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.e, align 8, !tbaa !343
  br label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ad = icmp ugt i64 %i.z, 1152921504606846975
  br i1 %i.ad, label %bb.o, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !41

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp ugt i64 %i.z, 2305843009213693951
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc.i.i unwind label %.loopexit.split-lp100

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc9.i.i unwind label %.loopexit.split-lp100

.noexc9.i.i:                                      ; preds = %bb.q
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.n
  %i.af = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
          to label %.noexc10.i.i unwind label %.loopexit99 ; 2 uses

.noexc10.i.i:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %i.af, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %.noexc10.i.i, %bb.m
  %.0.i.i.i = phi ptr [ %i.e, %bb.m ], [ %i.ag, %.noexc10.i.i ]
  store ptr %.0.i.i.i, ptr %6, align 8, !tbaa !341
  store i64 %i.z, ptr %i.f, align 8, !tbaa !342
  br label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit

.loopexit99:                                      ; preds = %bb.j, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp100:                            ; preds = %bb.p, %bb.q
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp100, %.loopexit99
  %lpad.phi103 = phi { ptr, i32 } [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ]
  call void @_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #28
  br label %.body

_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i, %bb.k
  %i.ah = load ptr, ptr %2, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.t)
          to label %.preheader unwind label %bb.af ; 8 uses

.preheader:                                       ; preds = %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit, %.preheader.backedge
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %.preheader
  br i1 %i.ao, label %bb.t, label %bb.aj

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.u unwind label %bb.ah      ; 4 uses

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46
  %i.aw = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.at, i64 noundef %i.av)
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %i.u, align 8, !tbaa !185
  %8 = zext i64 %i.ax to i128
  %9 = zext i64 %i.aw to i128
  %10 = mul nuw i128 %8, %9
  %11 = lshr i128 %10, 64
  %12 = trunc nuw i128 %11 to i64                 ; 5 uses
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !342 ; 2 uses
  %i.az = urem i64 %12, %i.ay                     ; 3 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !341
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !80
  %i.bg = icmp eq i64 %i.bf, %12
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.bh = icmp eq i64 %i.bk, %12
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %bb.x
  %.020.i.i.i.i = phi ptr [ %i.bi, %bb.x ], [ %i.bd, %bb.w ]
  %i.bi = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.ay
  %.not19.i.i.i.i = icmp eq i64 %i.bl, %i.az
  br i1 %.not19.i.i.i.i, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.y
  br label %.loopexit.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %6, ptr %4, align 8, !tbaa !347
  %i.bm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc unwind label %bb.ai    ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bm, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %12, ptr %i.bn, align 8, !tbaa !354
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  store ptr %i.bm, ptr %i.j, align 8, !tbaa !355
  %i.bp = invoke ptr @_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSF_10_Hash_nodeISD_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.az, i64 noundef %12, ptr noundef nonnull %i.bm, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.z

_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit

bb.z:                                             ; preds = %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit63

.loopexit:                                        ; preds = %bb.x, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.w
  %.pn.i.i = phi ptr [ %i.bp, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bd, %bb.w ], [ %i.bi, %bb.x ] ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !356 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !357
  %.not.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  store ptr %i.as, ptr %i.bs, align 8, !tbaa !358
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !356
  br label %.preheader.backedge

bb.ab:                                            ; preds = %.loopexit
  %i.bw = load ptr, ptr %.1.i.i, align 8, !tbaa !359 ; 4 uses
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.ac, label %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #27
          to label %.noexc53 unwind label %.loopexit.split-lp95

.noexc53:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ab
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i52 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i52)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #29
          to label %.noexc54 unwind label %.loopexit94 ; 4 uses

.noexc54:                                         ; preds = %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store ptr %i.as, ptr %i.ci, align 8, !tbaa !358
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.ad, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

bb.ad:                                            ; preds = %.noexc54
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i: ; preds = %bb.ad, %.noexc54
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !357
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cn) #30
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i
  store ptr %i.ch, ptr %.1.i.i, align 8, !tbaa !359
  store ptr %i.ck, ptr %i.br, align 8, !tbaa !356
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.co, ptr %i.bt, align 8, !tbaa !357
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, %bb.aa
  br label %.preheader, !llvm.loop !564

bb.af:                                            ; preds = %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ag:                                            ; preds = %.preheader
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit63

bb.ah:                                            ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit63

bb.ai:                                            ; preds = %.loopexit.i.i, %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit63

.loopexit94:                                      ; preds = %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit63

.loopexit.split-lp95:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit63

bb.aj:                                            ; preds = %bb.s
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !360 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit, label %.lr.ph138

.lr.ph138:                                        ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  br label %bb.as

_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.ba, %bb.aj
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #28, !inline_history !16
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !360 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i55

.lr.ph.i.i.i.i55:                                 ; preds = %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.db, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i ], [ %i.da, %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit ] ; 4 uses
  %i.db = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !359 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i55
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !357
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i55
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #30
  %.not.i.i.i.i56 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i56, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i55, !llvm.loop !17

_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit
  %i.dj = load ptr, ptr %6, align 8, !tbaa !341
  %i.dk = load i64, ptr %i.f, align 8, !tbaa !342
  %i.dl = shl i64 %i.dk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dj, i8 0, i64 %i.dl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.dm = load ptr, ptr %6, align 8, !tbaa !341   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.e
  br i1 %i.dn, label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.do = load i64, ptr %i.f, align 8, !tbaa !342
  %i.dp = shl i64 %i.do, 3
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #30
  br label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit

_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !165 ; 8 uses
  %.not.i.i57 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i57, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dr, align 8, !tbaa !168
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !169
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !97
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #28, !inline_history !7
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !97
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
end_hunk_2
begin_hunk_3_@_ZN7rocksdb22PerKeyPointLockManager9UnLockKeyEPNS_22PessimisticTransactionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_13LockMapStripeEPNS_7LockMapEPNS_3EnvE:bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.t, ptr %.sroa.2.0..sroa_idx, align 8, !noalias !683
  call void @_ZSt9__find_ifIN7rocksdb10autovectorImLm8EE13iterator_implIS2_mEEN9__gnu_cxx5__ops16_Iter_equals_valIKmEEET_SA_SA_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::autovector<unsigned long>::iterator_impl") align 8 %8, ptr noundef nonnull align 8 %6, ptr noundef nonnull align 8 %7, ptr nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %6), !noalias !683
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !683
  %i.u = load i64, ptr %i.j, align 8, !tbaa !74, !noalias !684
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !75, !noalias !684 ; 5 uses
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !76, !noalias !684 ; 4 uses
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 3
  %i.ab = add i64 %i.aa, %i.u                     ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !79 ; 9 uses
  %.not = icmp eq i64 %i.ad, %i.ab
  br i1 %.not, label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i8, ptr %i.i, align 8, !tbaa !276, !range !92, !noundef !93
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !131
  call void @_ZN7rocksdb13LockMapStripe21ReleaseLastLockHolderERNS_8LockInfoENSt8__detail14_Node_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_ELb0ELb1EEEPNS_7LockMapEmRSC_lRNS_10autovectorImLm8EEERNSJ_13iterator_implISJ_mEE(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr nonnull %i.g, ptr noundef %4, i64 poison, ptr nonnull align 8 poison, i64 noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = icmp ugt i64 %i.ab, 2
  br i1 %i.ai, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %i.ab, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.ad, %i.aj
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = icmp ult i64 %i.ab, 9
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.aj
  %i.ao = getelementptr [8 x i8], ptr %i.w, i64 %i.aj
  %i.ap = getelementptr i8, ptr %i.ao, i64 -64
  %.0.i.i.i = select i1 %i.ak, ptr %i.an, ptr %i.ap
  %i.aq = load i64, ptr %.0.i.i.i, align 8, !tbaa !80
  %i.ar = load ptr, ptr %8, align 8, !tbaa !81    ; 2 uses
  %i.as = icmp ult i64 %i.ad, 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.ad
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr [8 x i8], ptr %i.ax, i64 %i.ad
  %i.az = getelementptr i8, ptr %i.ay, i64 -64
  %.0.i.i8.i = select i1 %i.as, ptr %i.av, ptr %i.az
  store i64 %i.aq, ptr %.0.i.i8.i, align 8, !tbaa !80
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = icmp eq ptr %i.w, %i.v
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds i8, ptr %i.v, i64 -8
  store ptr %i.bb, ptr %i.m, align 8, !tbaa !75
  br label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.j, align 8, !tbaa !74
  %i.bd = add i64 %i.bc, -1
  store i64 %i.bd, ptr %i.j, align 8, !tbaa !74
  br label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit

bb.k:                                             ; preds = %bb.e
  %i.be = icmp eq i64 %i.ab, 2
  br i1 %i.be, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k
  %.not.i47 = icmp eq i64 %i.ad, 1
  br i1 %.not.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !80
  %i.bj = load ptr, ptr %8, align 8, !tbaa !81    ; 2 uses
  %i.bk = icmp ult i64 %i.ad, 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.ad
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.ad
  %i.br = getelementptr i8, ptr %i.bq, i64 -64
  %.0.i.i8.i49 = select i1 %i.bk, ptr %i.bn, ptr %i.br
  store i64 %i.bi, ptr %.0.i.i8.i49, align 8, !tbaa !80
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = icmp eq ptr %i.w, %i.v
  br i1 %i.bs, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds i8, ptr %i.v, i64 -8
  store ptr %i.bt, ptr %i.m, align 8, !tbaa !75
  br label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit50

bb.p:                                             ; preds = %bb.n
  %i.bu = load i64, ptr %i.j, align 8, !tbaa !74
  %i.bv = add i64 %i.bu, -1
  store i64 %i.bv, ptr %i.j, align 8, !tbaa !74
  br label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit50

_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit50: ; preds = %bb.p, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !48 ; 3 uses
  %.not.i51 = icmp eq ptr %i.bx, null
  br i1 %.not.i51, label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit50
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !51 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bx
  br i1 %i.bz, label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !83 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !388
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !80
  %i.cg = icmp eq i64 %i.cc, %i.cf
  br i1 %i.cg, label %_ZN7rocksdb13KeyLockWaiter6NotifyEv.exit, label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit

_ZN7rocksdb13KeyLockWaiter6NotifyEv.exit:         ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 9
  store i8 1, ptr %i.ch, align 1, !tbaa !94
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !95 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !97
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj), !inline_history !1
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.44, ptr noundef nonnull align 1 dereferenceable(1) %10)
  %i.cn = load ptr, ptr %9, align 8, !tbaa !44    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN7rocksdb13KeyLockWaiter6NotifyEv.exit
  %i.cq = load i64, ptr %i.co, align 8, !tbaa !45
  %i.cr = add i64 %i.cq, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cr) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN7rocksdb13KeyLockWaiter6NotifyEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit

bb.s:                                             ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !131
  call void @_ZN7rocksdb13LockMapStripe21ReleaseLastLockHolderERNS_8LockInfoENSt8__detail14_Node_iteratorISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES1_ELb0ELb1EEEPNS_7LockMapEmRSC_lRNS_10autovectorImLm8EEERNSJ_13iterator_implISJ_mEE(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(128) %i.i, ptr nonnull %i.g, ptr noundef %4, i64 poison, ptr nonnull align 8 poison, i64 noundef %i.ct, ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %8)
  br label %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit

_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit: ; preds = %bb.d, %bb.s, %bb.j, %bb.i, %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit50, %bb.q, %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %_ZN7rocksdb17RemoveTransactionERNS_10autovectorImLm8EEERNS1_13iterator_implIS1_mEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22PerKeyPointLockManager6UnLockEPNS_22PessimisticTransactionEjRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_3EnvE(ptr noundef nonnull align 8 dereferenceable(32040) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::shared_ptr.84", align 8 ; 7 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN7rocksdb16PointLockManager10GetLockMapEj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.84") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32040) %0, i32 noundef %2)
  %i.a = load ptr, ptr %5, align 8, !tbaa !201    ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %3, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.c, i64 noundef %i.e)
          to label %bb.c unwind label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr %i.a, align 8, !tbaa !185
  %7 = zext i64 %i.g to i128
  %8 = zext i64 %i.f to i128
  %9 = mul nuw i128 %7, %8
  %10 = lshr i128 %9, 64
  %11 = trunc nuw i128 %10 to i64                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !205
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !206  ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.o, %11
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.47, i64 noundef %11, i64 noundef %i.o) #27
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %11
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !208  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !284  ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !97
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  invoke void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %bb.f unwind label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !297  ; 2 uses
  %.not.i.i20 = icmp eq ptr %i.w, null
  br i1 %.not.i.i20, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.f
  call void @_ZdaPv(ptr noundef nonnull %i.w) #30
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.f, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.x = load ptr, ptr %0, align 8, !tbaa !97
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.z = load ptr, ptr %i.y, align 8
  invoke void %i.z(ptr noundef nonnull align 8 dereferenceable(32040) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %i.q, ptr noundef nonnull %i.a, ptr noundef %4)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !284 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !97
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  invoke void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !165 ; 8 uses
  %.not.i.i21 = icmp eq ptr %i.af, null
  br i1 %.not.i.i21, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 4 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 4294967297
  %i.aj = trunc i64 %i.ah to i32                  ; 2 uses
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.ag, align 8, !tbaa !168
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !169
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !7
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !97
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28, !inline_history !7
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = load i8, ptr @__libc_single_threaded, align 1, !tbaa !45
  %.not.i.i.i = icmp eq i8 %i.ar, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i32 %i.aj, -1
  store i32 %i.as, ptr %i.ag, align 8, !tbaa !166
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.at = atomicrmw volatile add ptr %i.ag, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.aj, %bb.l ], [ %i.at, %bb.m ]
  %i.au = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.au, label %bb.n, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af) #28
  br label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.o:                                             ; preds = %bb.b
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.p:                                             ; preds = %bb.d, %bb.g, %_ZN7rocksdb6StatusD2Ev.exit
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.e
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o
  %.pn.pn = phi { ptr, i32 } [ %i.av, %bb.o ], [ %i.aw, %bb.p ], [ %i.ax, %bb.q ]
  call void @_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb22PerKeyPointLockManager6UnLockEPNS_22PessimisticTransactionERKNS_11LockTrackerEPNS_3EnvE(ptr noundef nonnull align 8 dereferenceable(32040) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, std::vector<const std::__cxx11::basic_string<char> *>>, std::allocator<std::pair<const unsigned long, std::vector<const std::__cxx11::basic_string<char> *>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %5 = alloca %"class.std::shared_ptr.84", align 8 ; 8 uses
  %6 = alloca %"class.std::unordered_map.246", align 8 ; 17 uses
  %7 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.a
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = invoke noundef zeroext i1 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  br i1 %i.p, label %bb.d, label %_ZNSt10unique_ptrIN7rocksdb11LockTracker20ColumnFamilyIteratorESt14default_deleteIS2_EED2Ev.exit

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef i32 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.e unwind label %bb.h       ; 2 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN7rocksdb16PointLockManager10GetLockMapEj(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.84") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32040) %0, i32 noundef %i.t)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %5, align 8, !tbaa !201    ; 6 uses
  %.not.not = icmp eq ptr %i.u, null
  br i1 %.not.not, label %.critedge, label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker20ColumnFamilyIteratorESt14default_deleteIS2_EED2Ev.exit71

bb.h:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker20ColumnFamilyIteratorESt14default_deleteIS2_EED2Ev.exit71

bb.i:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.y = load i64, ptr %i.u, align 8, !tbaa !185
  store ptr %i.e, ptr %6, align 8, !tbaa !341
  store i64 1, ptr %i.f, align 8, !tbaa !342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 8, !tbaa !134
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  %i.z = invoke noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 noundef %i.y)
          to label %bb.k unwind label %.loopexit98 ; 6 uses

bb.k:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !342
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.l, label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = icmp eq i64 %i.z, 1
  br i1 %i.ac, label %bb.m, label %bb.n, !prof !41

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.e, align 8, !tbaa !343
  br label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

bb.n:                                             ; preds = %bb.l
  %i.ad = icmp ugt i64 %i.z, 1152921504606846975
  br i1 %i.ad, label %bb.o, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i, !prof !41

bb.o:                                             ; preds = %bb.n
  %i.ae = icmp ugt i64 %i.z, 2305843009213693951
  br i1 %i.ae, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc.i.i unwind label %.loopexit.split-lp99

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  invoke void @_ZSt17__throw_bad_allocv() #27
          to label %.noexc9.i.i unwind label %.loopexit.split-lp99

.noexc9.i.i:                                      ; preds = %bb.q
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i: ; preds = %bb.n
  %i.af = shl nuw nsw i64 %i.z, 3                 ; 2 uses
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #29
          to label %.noexc10.i.i unwind label %.loopexit98 ; 2 uses

.noexc10.i.i:                                     ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ag, i8 0, i64 %i.af, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i

_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i: ; preds = %.noexc10.i.i, %bb.m
  %.0.i.i.i = phi ptr [ %i.e, %bb.m ], [ %i.ag, %.noexc10.i.i ]
  store ptr %.0.i.i.i, ptr %6, align 8, !tbaa !341
  store i64 %i.z, ptr %i.f, align 8, !tbaa !342
  br label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit

.loopexit98:                                      ; preds = %bb.j, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE19_M_allocate_bucketsEm.exit.i.i.i
  %lpad.loopexit100 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp99:                             ; preds = %bb.p, %bb.q
  %lpad.loopexit.split-lp101 = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp99, %.loopexit98
  %lpad.phi102 = phi { ptr, i32 } [ %lpad.loopexit100, %.loopexit98 ], [ %lpad.loopexit.split-lp101, %.loopexit.split-lp99 ]
  call void @_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %6) #28
  br label %.body

_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit.i.i, %bb.k
  %i.ah = load ptr, ptr %2, align 8, !tbaa !97
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 120
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.t)
          to label %.preheader unwind label %bb.af ; 8 uses

.preheader:                                       ; preds = %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit, %.preheader.backedge
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = invoke noundef zeroext i1 %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.s unwind label %bb.ag

bb.s:                                             ; preds = %.preheader
  br i1 %i.ao, label %bb.t, label %bb.aj

bb.t:                                             ; preds = %bb.s
  %i.ap = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef nonnull align 8 dereferenceable(32) ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.ak)
          to label %bb.u unwind label %bb.ah      ; 4 uses

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !44
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !46
  %i.aw = invoke noundef i64 @_ZN7rocksdb6Hash64EPKcm(ptr noundef %i.at, i64 noundef %i.av)
          to label %bb.v unwind label %bb.ai

bb.v:                                             ; preds = %bb.u
  %i.ax = load i64, ptr %i.u, align 8, !tbaa !185
  %8 = zext i64 %i.ax to i128
  %9 = zext i64 %i.aw to i128
  %10 = mul nuw i128 %8, %9
  %11 = lshr i128 %10, 64
  %12 = trunc nuw i128 %11 to i64                 ; 5 uses
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !342 ; 2 uses
  %i.az = urem i64 %12, %i.ay                     ; 3 uses
  %i.ba = load ptr, ptr %6, align 8, !tbaa !341
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.az
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !63 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !64 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !80
  %i.bg = icmp eq i64 %i.bf, %12
  br i1 %i.bg, label %.loopexit, label %.lr.ph.i.i.i.i

bb.x:                                             ; preds = %bb.y
  %i.bh = icmp eq i64 %i.bk, %12
  br i1 %i.bh, label %.loopexit, label %.lr.ph.i.i.i.i, !llvm.loop !15

.lr.ph.i.i.i.i:                                   ; preds = %bb.w, %bb.x
  %.020.i.i.i.i = phi ptr [ %i.bi, %bb.x ], [ %i.bd, %bb.w ]
  %i.bi = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !64 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bi, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !80 ; 2 uses
  %i.bl = urem i64 %i.bk, %i.ay
  %.not19.i.i.i.i = icmp eq i64 %i.bl, %i.az
  br i1 %.not19.i.i.i.i, label %bb.x, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !15

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.y
  br label %.loopexit.i.i, !llvm.loop !15

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  store ptr %6, ptr %4, align 8, !tbaa !347
  %i.bm = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc unwind label %bb.ai    ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.bm, align 8, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i64 %12, ptr %i.bn, align 8, !tbaa !354
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i8 0, i64 24, i1 false)
  store ptr %i.bm, ptr %i.j, align 8, !tbaa !355
  %i.bp = invoke ptr @_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNSF_10_Hash_nodeISD_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %6, i64 noundef %i.az, i64 noundef %12, ptr noundef nonnull %i.bm, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.z

_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.loopexit

bb.z:                                             ; preds = %.noexc
  %i.bq = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit62

.loopexit:                                        ; preds = %bb.x, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.w
  %.pn.i.i = phi ptr [ %i.bp, %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bd, %bb.w ], [ %i.bi, %bb.x ] ; 3 uses
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 24 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !356 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 32 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !357
  %.not.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  store ptr %i.as, ptr %i.bs, align 8, !tbaa !358
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !356
  br label %.preheader.backedge

bb.ab:                                            ; preds = %.loopexit
  %i.bw = load ptr, ptr %.1.i.i, align 8, !tbaa !359 ; 4 uses
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 5 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.ac, label %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.49) #27
          to label %.noexc52 unwind label %.loopexit.split-lp94

.noexc52:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ab
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i.i51 = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i51)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #29
          to label %.noexc53 unwind label %.loopexit93 ; 4 uses

.noexc53:                                         ; preds = %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.bz ; 2 uses
  store ptr %i.as, ptr %i.ci, align 8, !tbaa !358
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.ad, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

bb.ad:                                            ; preds = %.noexc53
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ch, ptr align 8 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i: ; preds = %bb.ad, %.noexc53
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !357
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = sub i64 %i.cm, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.cn) #30
  br label %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i

_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i: ; preds = %bb.ae, %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE11_S_relocateEPS7_SA_SA_RS8_.exit16.i.i.i
  store ptr %i.ch, ptr %.1.i.i, align 8, !tbaa !359
  store ptr %i.ck, ptr %i.br, align 8, !tbaa !356
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.co, ptr %i.bt, align 8, !tbaa !357
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %_ZNSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE17_M_realloc_insertIJS7_EEEvN9__gnu_cxx17__normal_iteratorIPS7_S9_EEDpOT_.exit.i.i, %bb.aa
  br label %.preheader, !llvm.loop !685

bb.af:                                            ; preds = %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEEC2EmRKSC_RKSE_RKSI_.exit
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.ag:                                            ; preds = %.preheader
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit62

bb.ah:                                            ; preds = %bb.t
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit62

bb.ai:                                            ; preds = %.loopexit.i.i, %bb.u
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit62

.loopexit93:                                      ; preds = %_ZNKSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS7_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit62

.loopexit.split-lp94:                             ; preds = %bb.ac
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit62

bb.aj:                                            ; preds = %bb.s
  %i.ct = load ptr, ptr %i.g, align 8, !tbaa !360 ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.aj
  %i.cv = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  br label %bb.as

_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.az, %bb.aj
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #28, !inline_history !16
  %i.da = load ptr, ptr %i.g, align 8, !tbaa !360 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i54

.lr.ph.i.i.i.i54:                                 ; preds = %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.db, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i ], [ %i.da, %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit ] ; 4 uses
  %i.db = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !64 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !359 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.de = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !357
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.dd to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.di) #30
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i: ; preds = %bb.ak, %.lr.ph.i.i.i.i54
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 40) #30
  %.not.i.i.i.i55 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i55, label %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i54, !llvm.loop !17

_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISC_EEELb0EEEEE18_M_deallocate_nodeEPSG_.exit.i.i.i.i, %_ZNSt10unique_ptrIN7rocksdb11LockTracker11KeyIteratorESt14default_deleteIS2_EED2Ev.exit
  %i.dj = load ptr, ptr %6, align 8, !tbaa !341
  %i.dk = load i64, ptr %i.f, align 8, !tbaa !342
  %i.dl = shl i64 %i.dk, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.dj, i8 0, i64 %i.dl, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.dm = load ptr, ptr %6, align 8, !tbaa !341   ; 2 uses
  %i.dn = icmp eq ptr %i.dm, %i.e
  br i1 %i.dn, label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i
  %i.do = load i64, ptr %i.f, align 8, !tbaa !342
  %i.dp = shl i64 %i.do, 3
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.dp) #30
  br label %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit

_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISA_EEESaISD_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i.i, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dq = load ptr, ptr %i.l, align 8, !tbaa !165 ; 8 uses
  %.not.i.i56 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i56, label %_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt13unordered_mapImSt6vectorIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS8_EESt4hashImESt8equal_toImESaISt4pairIKmSA_EEED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.dr, align 8, !tbaa !168
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !169
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !97
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #28, !inline_history !7
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !97
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
end_hunk_3
begin_hunk_4_@_GLOBAL__sub_I_point_lock_manager.cc:bb.a

.noexc106.i:                                      ; preds = %.noexc98.i
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 368), align 16, !tbaa !44
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 384), align 16, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ai, ptr noundef nonnull align 1 dereferenceable(35) @.str.22, i64 35, i1 false)
  store i64 35, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 376), align 8, !tbaa !46
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 35
  store i8 0, ptr %i.aj, align 1, !tbaa !45
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), align 16, !tbaa !853
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !40
  %i.ak = invoke noalias noundef nonnull dereferenceable(45) ptr @_Znwm(i64 noundef 45) #29
          to label %__cxx_global_var_init.13.exit unwind label %bb.o ; 3 uses

bb.g:                                             ; preds = %__cxx_global_var_init.1.exit
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.h:                                             ; preds = %.noexc50.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.i:                                             ; preds = %.noexc58.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.j:                                             ; preds = %.noexc66.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.k:                                             ; preds = %.noexc74.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.l:                                             ; preds = %.noexc82.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.m:                                             ; preds = %.noexc90.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.n:                                             ; preds = %.noexc98.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %.noexc106.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.923.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 360), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 400), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 80), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 120), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 160), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 200), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 240), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 280), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 320), %bb.m ]
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.as, %bb.n ], [ %i.at, %bb.o ], [ %i.al, %bb.g ], [ %i.am, %bb.h ], [ %i.an, %bb.i ], [ %i.ao, %bb.j ], [ %i.ap, %bb.k ], [ %i.aq, %bb.l ], [ %i.ar, %bb.m ]
  br label %bb.q

bb.q:                                             ; preds = %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, %bb.p
  %i.au = phi ptr [ %.923.i, %bb.p ], [ %i.av, %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 -40 ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -32
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.au, i64 -16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1: ; preds = %bb.q
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !45
  %i.bb = add i64 %i.ba, 1
  tail call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #30
  br label %_ZN7rocksdb18OperationStageInfoD2Ev.exit.i

_ZN7rocksdb18OperationStageInfoD2Ev.exit.i:       ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1
  %i.bc = icmp eq ptr %i.av, @_ZN7rocksdbL21global_op_stage_tableE
  br i1 %i.bc, label %common.resume, label %bb.q

__cxx_global_var_init.13.exit:                    ; preds = %.noexc106.i
  store ptr %i.ak, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 408), align 8, !tbaa !44
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 424), align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(44) %i.ak, ptr noundef nonnull align 1 dereferenceable(44) @.str.23, i64 44, i1 false)
  store i64 44, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL21global_op_stage_tableE, i64 416), align 16, !tbaa !46
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ak, i64 44
  store i8 0, ptr %i.bd, align 1, !tbaa !45
  %i.be = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.24, ptr null, ptr nonnull @__dso_handle) #28 ; 0 uses
  %i.bf = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.27, ptr null, ptr nonnull @__dso_handle) #28 ; 0 uses
  store i32 0, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, align 16, !tbaa !855
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 8), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 24), ptr noundef nonnull align 1 dereferenceable(5) @.str.29, i64 5, i1 false)
  store i64 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 16), align 16, !tbaa !46
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 29), align 1, !tbaa !45
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), align 8, !tbaa !855
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !40
  %i.bg = invoke noalias noundef nonnull dereferenceable(17) ptr @_Znwm(i64 noundef 17) #29
          to label %.noexc27.i unwind label %bb.r ; 3 uses

.noexc27.i:                                       ; preds = %__cxx_global_var_init.13.exit
  store ptr %i.bg, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 48), align 16, !tbaa !44
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 64), align 16, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bg, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, i64 16, i1 false)
  store i64 16, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 56), align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.bh, align 1, !tbaa !45
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), align 16, !tbaa !855
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !40
  %i.bi = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %__cxx_global_var_init.28.exit unwind label %bb.s ; 3 uses

bb.r:                                             ; preds = %__cxx_global_var_init.13.exit
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %.noexc27.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.413.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 80), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 40), %bb.r ]
  %.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %i.bk, %bb.s ], [ %i.bj, %bb.r ]
  br label %bb.u

bb.u:                                             ; preds = %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, %bb.t
  %i.bl = phi ptr [ %.413.i, %bb.t ], [ %i.bm, %_ZN7rocksdb17OperationPropertyD2Ev.exit.i ] ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 -40 ; 2 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bl, i64 -32
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !44 ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 -16 ; 2 uses
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3: ; preds = %bb.u
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !45
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.bs) #30
  br label %_ZN7rocksdb17OperationPropertyD2Ev.exit.i

_ZN7rocksdb17OperationPropertyD2Ev.exit.i:        ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i3
  %i.bt = icmp eq ptr %i.bm, @_ZN7rocksdbL31compaction_operation_propertiesE
  br i1 %i.bt, label %common.resume, label %bb.u

__cxx_global_var_init.28.exit:                    ; preds = %.noexc27.i
  store ptr %i.bi, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 88), align 8, !tbaa !44
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 104), align 8, !tbaa !45
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.bi, ptr noundef nonnull align 1 dereferenceable(23) @.str.31, i64 23, i1 false)
  store i64 23, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 96), align 16, !tbaa !46
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 23
  store i8 0, ptr %i.bu, align 1, !tbaa !45
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 120), align 8, !tbaa !855
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 128), align 16, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 144), ptr noundef nonnull align 1 dereferenceable(15) @.str.32, i64 15, i1 false)
  store i64 15, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 136), align 8, !tbaa !46
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 159), align 1, !tbaa !45
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 160), align 16, !tbaa !855
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 168), align 8, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 184), ptr noundef nonnull align 1 dereferenceable(9) @.str.33, i64 9, i1 false)
  store i64 9, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 176), align 16, !tbaa !46
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 193), align 1, !tbaa !45
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 200), align 8, !tbaa !855
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 208), align 16, !tbaa !40
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 224), ptr noundef nonnull align 1 dereferenceable(12) @.str.34, i64 12, i1 false)
  store i64 12, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 216), align 8, !tbaa !46
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN7rocksdbL31compaction_operation_propertiesE, i64 236), align 4, !tbaa !45
  %i.bv = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.35, ptr null, ptr nonnull @__dso_handle) #28 ; 0 uses
  %i.bw = tail call i32 @__cxa_atexit(ptr nonnull @__cxx_global_array_dtor.38, ptr null, ptr nonnull @__dso_handle) #28 ; 0 uses
  ret void
}

declare extern_weak void @_ZTHN7rocksdb12perf_contextE() #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

declare extern_weak void @_ZTHN7rocksdb10perf_levelE() #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #25

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nofree nounwind }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #10 = { nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nofree nounwind "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { inlinehint mustprogress uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { noreturn "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { noinline noreturn nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { cold nofree noreturn }
attributes #20 = { mustprogress noinline nounwind uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { uwtable "frame-pointer"="non-leaf-no-reserve" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { noreturn }
attributes #28 = { nounwind }
attributes #29 = { builtin allocsize(0) }
attributes #30 = { builtin nounwind }
attributes #31 = { noreturn nounwind }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}
!llvm.errno.tbaa = !{!36}

!0 = distinct !{!0, !65}
!1 = distinct !{null}
!2 = distinct !{!2, !65}
!3 = distinct !{!3, !65}
!4 = distinct !{!4, !65}
!5 = distinct !{!5, !65}
!6 = distinct !{!6, !65}
!7 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !65}
!10 = distinct !{null}
!11 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb18TransactionDBMutexELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!12 = distinct !{null}
!13 = distinct !{!13, !65}
!14 = distinct !{!14, !65}
!15 = distinct !{!15, !65}
!16 = distinct !{null, null}
!17 = distinct !{!17, !65}
!18 = distinct !{null, null}
!19 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb25TransactionDBMutexFactoryELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!20 = distinct !{!20, !65}
!21 = distinct !{!21, !65}
!22 = distinct !{!22, !65}
!23 = distinct !{ptr @_ZNSt12__shared_ptrIN7rocksdb20TransactionDBCondVarELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!24 = distinct !{!24, !65}
!25 = distinct !{!25, !65}
!26 = distinct !{ptr @_ZNSt10_HashtableIjSt4pairIKjSt10shared_ptrIN7rocksdb7LockMapEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev, null, null, ptr @_ZNSt4pairIKjSt10shared_ptrIN7rocksdb7LockMapEEED2Ev, ptr @_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!27 = distinct !{null, null, ptr @_ZNSt4pairIKjSt10shared_ptrIN7rocksdb7LockMapEEED2Ev, ptr @_ZNSt12__shared_ptrIN7rocksdb7LockMapELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!28 = !{i32 8, !"PIC Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 2}
!30 = !{i32 7, !"frame-pointer", i32 4}
!31 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!32 = !{!"Simple C++ TBAA"}
!33 = !{!"omnipotent char", !32, i64 0}
!34 = !{!"int", !33, i64 0}
!35 = !{!"__libc_errno", !34, i64 0}
!36 = !{!35, !34, i64 0}
!37 = !{!"any pointer", !33, i64 0}
!38 = !{!"p1 omnipotent char", !37, i64 0}
!39 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !38, i64 0}
!40 = !{!39, !38, i64 0}
!41 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!42 = !{!"long", !33, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !39, i64 0, !42, i64 8, !33, i64 16}
!44 = !{!43, !38, i64 0}
!45 = !{!33, !33, i64 0}
!46 = !{!43, !42, i64 8}
!47 = !{!"p1 _ZTSNSt7__cxx114listIPN7rocksdb13KeyLockWaiterESaIS3_EEE", !37, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!"p1 _ZTSNSt8__detail15_List_node_baseE", !37, i64 0}
!50 = !{!"_ZTSNSt8__detail15_List_node_baseE", !49, i64 0, !49, i64 8}
!51 = !{!50, !49, i64 0}
!52 = !{!"any p2 pointer", !37, i64 0}
!53 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !52, i64 0}
!54 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !37, i64 0}
!55 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !54, i64 0}
!56 = !{!"float", !33, i64 0}
!57 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !56, i64 0, !42, i64 8}
!58 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N7rocksdb8LockInfoEESaISA_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSC_18_Mod_range_hashingENSC_20_Default_ranged_hashENSC_20_Prime_rehash_policyENSC_17_Hashtable_traitsILb1ELb0ELb1EEEE", !53, i64 0, !42, i64 8, !55, i64 16, !42, i64 24, !57, i64 32, !54, i64 48}
!59 = !{!58, !42, i64 8}
!60 = !{!"_ZTSNSt8__detail21_Hash_node_code_cacheILb1EEE", !42, i64 0}
!61 = !{!60, !42, i64 0}
!62 = !{!58, !53, i64 0}
!63 = !{!54, !54, i64 0}
!64 = !{!55, !54, i64 0}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!58, !54, i64 16}
!67 = !{!58, !42, i64 24}
!68 = !{!"p1 long", !37, i64 0}
!69 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !68, i64 0, !68, i64 8, !68, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseImSaImEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorImSaImEE", !71, i64 0}
!73 = !{!"_ZTSN7rocksdb10autovectorImLm8EEE", !42, i64 0, !33, i64 8, !68, i64 72, !72, i64 80}
!74 = !{!73, !42, i64 0}
!75 = !{!69, !68, i64 8}
!76 = !{!69, !68, i64 0}
!77 = !{!"p1 _ZTSN7rocksdb10autovectorImLm8EEE", !37, i64 0}
!78 = !{!"_ZTSN7rocksdb10autovectorImLm8EE13iterator_implIS1_mEE", !77, i64 0, !42, i64 8}
!79 = !{!78, !42, i64 8}
!80 = !{!42, !42, i64 0}
!81 = !{!78, !77, i64 0}
!82 = !{!"p1 _ZTSN7rocksdb13KeyLockWaiterE", !37, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"bool", !33, i64 0}
!85 = !{!"p1 _ZTSN7rocksdb20TransactionDBCondVarE", !37, i64 0}
!86 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!87 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !86, i64 0}
!88 = !{!"_ZTSSt12__shared_ptrIN7rocksdb20TransactionDBCondVarELN9__gnu_cxx12_Lock_policyE2EE", !85, i64 0, !87, i64 8}
!89 = !{!"_ZTSSt10shared_ptrIN7rocksdb20TransactionDBCondVarEE", !88, i64 0}
!90 = !{!"_ZTSN7rocksdb13KeyLockWaiterE", !42, i64 0, !84, i64 8, !84, i64 9, !89, i64 16}
!91 = !{!90, !84, i64 8}
!92 = !{i8 0, i8 2}
!93 = !{}
!94 = !{!90, !84, i64 9}
!95 = !{!88, !85, i64 0}
!96 = !{!"vtable pointer", !32, i64 0}
!97 = !{!96, !96, i64 0}
!98 = !{!"_ZTSN7rocksdb11LockManagerE"}
!99 = !{!"p1 _ZTSN7rocksdb24PessimisticTransactionDBE", !37, i64 0}
!100 = !{!"_ZTSN7rocksdb4port5MutexE", !33, i64 0}
!101 = !{!"p1 _ZTSN7rocksdb10StatisticsE", !37, i64 0}
!102 = !{!"p1 _ZTSN7rocksdb11SystemClockE", !37, i64 0}
!103 = !{!"_ZTSN7rocksdb17InstrumentedMutexE", !100, i64 0, !101, i64 40, !102, i64 48, !34, i64 56}
!104 = !{!"_ZTSSt10_HashtableIjSt4pairIKjSt10shared_ptrIN7rocksdb7LockMapEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb0ELb0ELb1EEEE", !53, i64 0, !42, i64 8, !55, i64 16, !42, i64 24, !57, i64 32, !54, i64 48}
!105 = !{!"_ZTSSt13unordered_mapIjSt10shared_ptrIN7rocksdb7LockMapEESt4hashIjESt8equal_toIjESaISt4pairIKjS3_EEE", !104, i64 0}
!106 = !{!"p1 _ZTSN7rocksdb14ThreadLocalPtrE", !37, i64 0}
!107 = !{!"_ZTSSt10_Head_baseILm0EPN7rocksdb14ThreadLocalPtrELb0EE", !106, i64 0}
!108 = !{!"_ZTSSt11_Tuple_implILm0EJPN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EEE", !107, i64 0}
!109 = !{!"_ZTSSt5tupleIJPN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EEE", !108, i64 0}
!110 = !{!"_ZTSSt15__uniq_ptr_implIN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EE", !109, i64 0}
!111 = !{!"_ZTSSt15__uniq_ptr_dataIN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_ELb1ELb1EE", !110, i64 0}
!112 = !{!"_ZTSSt10unique_ptrIN7rocksdb14ThreadLocalPtrESt14default_deleteIS1_EE", !111, i64 0}
!113 = !{!"_ZTSN7rocksdb14ThreadLocalPtrE", !34, i64 0}
!114 = !{!"_ZTSSt12__mutex_base", !33, i64 0}
!115 = !{!"_ZTSSt5mutex", !114, i64 0}
!116 = !{!"_ZTSSt5arrayIN7rocksdb10autovectorISt4pairImiELm1EEELm128EE", !33, i64 0}
!117 = !{!"_ZTSN7rocksdb7HashMapImiLm128EEE", !116, i64 0}
!118 = !{!"_ZTSSt5arrayIN7rocksdb10autovectorISt4pairImNS0_14TrackedTrxInfoEELm1EEELm128EE", !33, i64 0}
!119 = !{!"_ZTSN7rocksdb7HashMapImNS_14TrackedTrxInfoELm128EEE", !118, i64 0}
!120 = !{!"p1 _ZTSN7rocksdb12DeadlockPathE", !37, i64 0}
!121 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12DeadlockPathESaIS1_EE17_Vector_impl_dataE", !120, i64 0, !120, i64 8, !120, i64 16}
!122 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12DeadlockPathESaIS1_EE12_Vector_implE", !121, i64 0}
!123 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12DeadlockPathESaIS1_EE", !122, i64 0}
!124 = !{!"_ZTSSt6vectorIN7rocksdb12DeadlockPathESaIS1_EE", !123, i64 0}
!125 = !{!"_ZTSN7rocksdb23DeadlockInfoBufferTemplINS_12DeadlockPathEEE", !124, i64 0, !34, i64 24, !115, i64 32}
!126 = !{!"p1 _ZTSN7rocksdb25TransactionDBMutexFactoryE", !37, i64 0}
!127 = !{!"_ZTSSt12__shared_ptrIN7rocksdb25TransactionDBMutexFactoryELN9__gnu_cxx12_Lock_policyE2EE", !126, i64 0, !87, i64 8}
!128 = !{!"_ZTSSt10shared_ptrIN7rocksdb25TransactionDBMutexFactoryEE", !127, i64 0}
!129 = !{!"_ZTSN7rocksdb16PointLockManagerE", !98, i64 0, !99, i64 8, !42, i64 16, !42, i64 24, !103, i64 32, !105, i64 96, !112, i64 152, !113, i64 160, !115, i64 168, !117, i64 208, !119, i64 7376, !125, i64 31952, !128, i64 32024}
!130 = !{!129, !99, i64 8}
!131 = !{!129, !42, i64 24}
!132 = !{!104, !53, i64 0}
!133 = !{!104, !42, i64 8}
!134 = !{!57, !56, i64 0}
!135 = !{!106, !106, i64 0}
!136 = !{!"p1 _ZTSSt4pairImiE", !37, i64 0}
!137 = !{!"_ZTSNSt12_Vector_baseISt4pairImiESaIS1_EE17_Vector_impl_dataE", !136, i64 0, !136, i64 8, !136, i64 16}
!138 = !{!"_ZTSNSt12_Vector_baseISt4pairImiESaIS1_EE12_Vector_implE", !137, i64 0}
!139 = !{!"_ZTSSt12_Vector_baseISt4pairImiESaIS1_EE", !138, i64 0}
!140 = !{!"_ZTSSt6vectorISt4pairImiESaIS1_EE", !139, i64 0}
!141 = !{!"_ZTSN7rocksdb10autovectorISt4pairImiELm1EEE", !42, i64 0, !33, i64 8, !136, i64 24, !140, i64 32}
!142 = !{!141, !42, i64 0}
!143 = !{!141, !136, i64 24}
!144 = !{!"p1 _ZTSSt4pairImN7rocksdb14TrackedTrxInfoEE", !37, i64 0}
!145 = !{!"_ZTSNSt12_Vector_baseISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE17_Vector_impl_dataE", !144, i64 0, !144, i64 8, !144, i64 16}
!146 = !{!"_ZTSNSt12_Vector_baseISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE12_Vector_implE", !145, i64 0}
!147 = !{!"_ZTSSt12_Vector_baseISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE", !146, i64 0}
!148 = !{!"_ZTSSt6vectorISt4pairImN7rocksdb14TrackedTrxInfoEESaIS3_EE", !147, i64 0}
!149 = !{!"_ZTSN7rocksdb10autovectorISt4pairImNS_14TrackedTrxInfoEELm1EEE", !42, i64 0, !33, i64 8, !144, i64 160, !148, i64 168}
!150 = !{!149, !42, i64 0}
!151 = !{!149, !144, i64 160}
!152 = !{!121, !120, i64 0}
!153 = !{!121, !120, i64 16}
!154 = !{!"p1 _ZTSN7rocksdb12DeadlockInfoE", !37, i64 0}
!155 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!156 = !{!"_ZTSNSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EE12_Vector_implE", !155, i64 0}
!157 = !{!"_ZTSSt12_Vector_baseIN7rocksdb12DeadlockInfoESaIS1_EE", !156, i64 0}
!158 = !{!"_ZTSSt6vectorIN7rocksdb12DeadlockInfoESaIS1_EE", !157, i64 0}
!159 = !{!"_ZTSN7rocksdb12DeadlockPathE", !158, i64 0, !84, i64 24, !42, i64 32}
end_hunk_4
