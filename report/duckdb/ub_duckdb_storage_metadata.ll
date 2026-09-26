Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_storage_metadata?download=true
inline.NumInlined: 1642
inline.NumDeleted: 696
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNSt6vectorIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev:bb.a

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #24
  br label %_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb17MetadataBlockInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb17MetadataBlockInfoES1_EvT_S3_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6duckdb15MetadataManager9GetBlocksEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.69") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.b) #23
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit:         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.011.017 = load ptr, ptr %i.c, align 8, !tbaa !80 ; 2 uses
  %.not18 = icmp eq ptr %.sroa.011.017, null
  br i1 %.not18, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit, %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit
  %i.f = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit
  %.sroa.011.019 = phi ptr [ %.sroa.011.017, %.lr.ph ], [ %.sroa.011.0, %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !146  ; 5 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !147
  %.not.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.011.019, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %i.m = load <2 x ptr>, ptr %i.h, align 8, !tbaa !44
  store <2 x ptr> %i.m, ptr %i.i, align 8, !tbaa !44
  %.not.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.n, align 4, !tbaa !24
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !24
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

bb.h:                                             ; preds = %bb.f
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !146
  br label %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i

_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i: ; preds = %bb.h, %bb.g, %bb.e
  %i.s = phi ptr [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %.pre.i, %bb.h ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.d, align 8, !tbaa !146
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit

bb.i:                                             ; preds = %bb.d
  invoke void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit10

_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockHandleELb1EEC2ERKS2_.exit.i, %bb.i
  %.sroa.011.0 = load ptr, ptr %.sroa.011.019, align 8, !tbaa !80 ; 2 uses
  %.not = icmp eq ptr %.sroa.011.0, null
  br i1 %.not, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.d

_ZNSt11unique_lockISt5mutexED2Ev.exit10:          ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #21 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit10, %bb.c
  %.pn = phi { ptr, i32 } [ %i.u, %_ZNSt11unique_lockISt5mutexED2Ev.exit10 ], [ %i.g, %bb.c ]
  tail call void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !148    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !146  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45   ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !48
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !241
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21, !inline_history !241
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !51
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !24
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i, !prof !52

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #21
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !242

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !148
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.v) #24
  br label %_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb10shared_ptrINS0_11BlockHandleELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_11BlockHandleELb1EEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataReaderC2ERNS_15MetadataManagerENS_16MetaBlockPointerENS_12optional_ptrINS_6vectorIS3_Lb1ESaIS3_EEELb1EEENS_15BlockReaderTypeE(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 20)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 %2, i64 %3, ptr %4, i32 noundef %5) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
_ZN6duckdb14MetadataHandleC2Ev.exit:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb14MetadataReaderE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !150
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %5, ptr %i.b, align 8, !tbaa !159
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.d, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %3, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.e, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %4, ptr %i.f, align 8, !tbaa !161
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = and i64 %3, 4294967295
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 %i.i, ptr %i.h, align 8, !tbaa !162
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.j, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataReaderC2ERNS_15MetadataManagerENS_12BlockPointerE(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 20)) %0, ptr noundef nonnull align 8 dereferenceable(168) %1, i64 %2, i64 %3) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.e = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %.not.i = icmp eq i64 %2, -1
  br i1 %.not.i, label %_ZN6duckdb15MetadataManager16FromBlockPointerENS_12BlockPointerEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sub i64 %i.c, %i.e
  %i.g = lshr i64 %i.f, 6
  %i.h = and i64 %i.g, 288230376151711736         ; 2 uses
  %i.i = and i64 %3, 4294967295                   ; 2 uses
  %i.j = udiv i64 %i.i, %i.h
  %i.k = urem i64 %i.i, %i.h
  %i.l = shl i64 %i.j, 56
  %i.m = or i64 %i.l, %2
  br label %_ZN6duckdb15MetadataManager16FromBlockPointerENS_12BlockPointerEm.exit

_ZN6duckdb15MetadataManager16FromBlockPointerENS_12BlockPointerEm.exit: ; preds = %bb.a, %bb.b
  %.sroa.05.0.i = phi i64 [ %i.m, %bb.b ], [ -1, %bb.a ]
  %.sroa.4.0.i = phi i64 [ %i.k, %bb.b ], [ 0, %bb.a ] ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb14MetadataReaderE, i64 16), ptr %0, align 8, !tbaa !50
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.n, align 8, !tbaa !150
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.o, align 8, !tbaa !159
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb12BufferHandleC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.05.0.i, ptr %i.q, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.4.0.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.r, align 8, !tbaa !160
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false)
  store i64 %.sroa.4.0.i, ptr %i.t, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.u, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress uwtable
define i64 @_ZN6duckdb14MetadataReader15FromDiskPointerENS_16MetaBlockPointerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, i64 returned %1, i64 %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !159
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !164, !nonnull !58, !align !93 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.g = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.g) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i:       ; preds = %bb.b
  %i.h = invoke i64 @_ZN6duckdb15MetadataManager23FromDiskPointerInternalERSt11unique_lockISt5mutexENS_16MetaBlockPointerE(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr nonnull align 8 poison, i64 %1, i64 %2)
          to label %_ZN6duckdb15MetadataManager15FromDiskPointerENS_16MetaBlockPointerE.exit unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6.i ; 0 uses

_ZNSt11unique_lockISt5mutexED2Ev.exit6.i:         ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 0 uses
  resume { ptr, i32 } %i.i

_ZN6duckdb15MetadataManager15FromDiskPointerENS_16MetaBlockPointerE.exit: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i
  %i.k = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.f) #21 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = tail call i64 @_ZN6duckdb15MetadataManager19RegisterDiskPointerENS_16MetaBlockPointerE(ptr noundef nonnull align 8 dereferenceable(168) %i.e, i64 %1, i64 %2) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN6duckdb15MetadataManager15FromDiskPointerENS_16MetaBlockPointerE.exit
  ret i64 %1
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14MetadataReaderD2Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6duckdb14MetadataReaderE, i64 16), ptr %0, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14MetadataReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb14MetadataReaderD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) #21
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataReader8ReadDataEPhm(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr null, ptr noundef %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataReader8ReadDataENS_12QueryContextEPhm(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %i.d = add i64 %i.c, %3
  %i.e = load i64, ptr %i.b, align 8, !tbaa !163  ; 2 uses
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i64 [ %i.e, %.lr.ph ], [ %i.aj, %bb.d ] ; 2 uses
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.ah, %bb.d ] ; 2 uses
  %.018 = phi ptr [ %2, %.lr.ph ], [ %.1, %bb.d ] ; 3 uses
  %.01317 = phi i64 [ %3, %.lr.ph ], [ %.114, %bb.d ] ; 2 uses
  %.not = icmp eq i64 %i.j, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.p = load i64, ptr %i.h, align 8, !tbaa !166
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !164, !nonnull !58, !align !93
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 128
  %i.t = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  %i.v = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.u)
  %i.w = sub i64 %i.t, %i.v
  %i.x = lshr i64 %i.w, 6
  %i.y = and i64 %i.x, 288230376151711736
  %i.z = mul i64 %i.y, %i.p
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.z
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !165
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.018, ptr align 1 %i.ac, i64 %i.l, i1 false)
  %i.ad = sub i64 %.01317, %i.l                   ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.018, i64 %i.l
  %i.af = load i64, ptr %i.a, align 8, !tbaa !165
  %i.ag = add i64 %i.af, %i.ad
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !165
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.114 = phi i64 [ %i.ad, %bb.c ], [ %.01317, %bb.b ] ; 3 uses
  %.1 = phi ptr [ %i.ae, %bb.c ], [ %.018, %bb.b ] ; 2 uses
  tail call void @_ZN6duckdb14MetadataReader13ReadNextBlockENS_12QueryContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr poison)
  %i.ah = load i64, ptr %i.a, align 8, !tbaa !165 ; 2 uses
  %i.ai = add i64 %i.ah, %.114
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !163 ; 2 uses
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !243

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.013.lcssa = phi i64 [ %3, %bb.a ], [ %.114, %bb.d ] ; 2 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.1, %bb.d ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !110
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !114
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !166
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !164, !nonnull !58, !align !93
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 128
  %i.av = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 136
  %i.ax = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
  %i.ay = sub i64 %i.av, %i.ax
  %i.az = lshr i64 %i.ay, 6
  %i.ba = and i64 %i.az, 288230376151711736
  %i.bb = mul i64 %i.ba, %i.aq
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bb
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !165
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.lcssa, ptr align 1 %i.be, i64 %.013.lcssa, i1 false)
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !165
  %i.bg = add i64 %i.bf, %.013.lcssa
  store i64 %i.bg, ptr %i.a, align 8, !tbaa !165
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14MetadataReader3PtrEv(ptr noundef nonnull align 8 dereferenceable(120) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i64, ptr %i.e, align 8, !tbaa !166
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !164, !nonnull !58, !align !93
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 136
  %i.m = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  %i.n = sub i64 %i.k, %i.m
  %i.o = lshr i64 %i.n, 6
  %i.p = and i64 %i.o, 288230376151711736
  %i.q = mul i64 %i.p, %i.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load i64, ptr %i.s, align 8, !tbaa !165
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  ret ptr %i.u
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataReader13ReadNextBlockENS_12QueryContextE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree readnone captures(none) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %4 = alloca %"struct.duckdb::MetadataPointer", align 8 ; 5 uses
  %5 = alloca %"struct.duckdb::MetadataHandle", align 8 ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !160, !range !57, !noundef !58
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb11IOExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.ab unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.011 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.011, label %bb.f, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br i1 %.011, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn24 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #21
  br label %common.resume

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !167
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZNK6duckdb12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j)
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !167  ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !169  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !170
  %.not.i = icmp eq ptr %i.o, %i.q
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !171
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !169
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.s, ptr %i.n, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %bb.h
  %i.t = load ptr, ptr %i.l, align 8, !tbaa !172  ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775792
  br i1 %i.x, label %bb.k, label %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.y = ashr exact i64 %i.w, 4                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 576460752303423487)
  %i.ac = select i1 %i.aa, i64 576460752303423487, i64 %i.ab ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #25 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !171
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !171, !alias.scope !247
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.o
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ah, %.lr.ph.i.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i23.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.t) #24
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !172
  store ptr %i.ai, ptr %i.n, align 8, !tbaa !169
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !170
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.ak, align 8, !tbaa !54 ; 4 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !159
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !164, !nonnull !58, !align !93 ; 3 uses
  br i1 %i.an, label %bb.m, label %bb.o

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.ar = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #21 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #23
  unreachable

_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i:     ; preds = %bb.m
  %i.as = invoke i64 @_ZN6duckdb15MetadataManager23FromDiskPointerInternalERSt11unique_lockISt5mutexENS_16MetaBlockPointerE(ptr noundef nonnull align 8 dereferenceable(168) %i.ap, ptr nonnull align 8 poison, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
          to label %_ZN6duckdb15MetadataManager15FromDiskPointerENS_16MetaBlockPointerE.exit.i unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit6.i.i ; 0 uses

common.resume:                                    ; preds = %bb.z, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt11unique_lockISt5mutexED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.at, %_ZNSt11unique_lockISt5mutexED2Ev.exit6.i.i ], [ %.pn1527, %bb.z ], [ %.pn24, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt11unique_lockISt5mutexED2Ev.exit6.i.i:       ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #21 ; 0 uses
  br label %common.resume

_ZN6duckdb15MetadataManager15FromDiskPointerENS_16MetaBlockPointerE.exit.i: ; preds = %_ZNSt11unique_lockISt5mutexEC2ERS0_.exit.i.i
  %i.av = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.aq) #21 ; 0 uses
  br label %_ZN6duckdb14MetadataReader15FromDiskPointerENS_16MetaBlockPointerE.exit

bb.o:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backERKS1_.exit
  %i.aw = tail call i64 @_ZN6duckdb15MetadataManager19RegisterDiskPointerENS_16MetaBlockPointerE(ptr noundef nonnull align 8 dereferenceable(168) %i.ap, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload) ; 0 uses
  br label %_ZN6duckdb14MetadataReader15FromDiskPointerENS_16MetaBlockPointerE.exit

_ZN6duckdb14MetadataReader15FromDiskPointerENS_16MetaBlockPointerE.exit: ; preds = %_ZN6duckdb15MetadataManager15FromDiskPointerENS_16MetaBlockPointerE.exit.i, %bb.o
  store i64 %.sroa.0.0.copyload, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !164, !nonnull !58, !align !93
  call void @_ZN6duckdb15MetadataManager3PinERKNS_12QueryContextERKNS_15MetadataPointerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::MetadataHandle") align 8 %5, ptr noundef nonnull align 8 dereferenceable(168) %i.ax, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.az = load i64, ptr %5, align 8, !tbaa !51
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !51
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bc = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) #21 ; 0 uses
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.bb) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.bd = lshr i64 %.sroa.0.0.copyload, 56
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !166
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bf)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !110
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !114
  %i.bj = load i64, ptr %i.be, align 8, !tbaa !166
  %i.bk = load ptr, ptr %i.ao, align 8, !tbaa !164, !nonnull !58, !align !93
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 128
  %i.bn = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bp = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bo)
  %i.bq = sub i64 %i.bn, %i.bp
  %i.br = lshr i64 %i.bq, 6
  %i.bs = and i64 %i.br, 288230376151711736
  %i.bt = mul i64 %i.bs, %i.bj
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bt
  %.0.copyload.i = load i64, ptr %i.bu, align 1   ; 2 uses
  %i.bv = icmp eq i64 %.0.copyload.i, -1
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN6duckdb14MetadataReader15FromDiskPointerENS_16MetaBlockPointerE.exit
  store i8 0, ptr %i.a, align 8, !tbaa !160
  br label %bb.r

bb.q:                                             ; preds = %_ZN6duckdb14MetadataReader15FromDiskPointerENS_16MetaBlockPointerE.exit
  store i64 %.0.copyload.i, ptr %i.ak, align 8, !tbaa !54
  store i32 0, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !162 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 8
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 8, ptr %i.bw, align 8, !tbaa !162
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bz = phi i64 [ 8, %bb.s ], [ %i.bx, %bb.r ]
  %i.ca = load ptr, ptr %i.ao, align 8, !tbaa !164, !nonnull !58, !align !93
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 128
  %i.cd = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cc)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 136
  %i.cf = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ce)
  %i.cg = sub i64 %i.cd, %i.cf
  %i.ch = lshr i64 %i.cg, 6
  %i.ci = and i64 %i.ch, 288230376151711736
  %i.cj = icmp ugt i64 %i.bz, %i.ci
  br i1 %i.cj, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.ck = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.v unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  invoke void @__cxa_throw(ptr nonnull %i.ck, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.ab unwind label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread: ; preds = %bb.u
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.y

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0 = phi i1 [ false, %bb.w ], [ true, %bb.v ]  ; 2 uses
  %i.cm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.cn = load ptr, ptr %6, align 8, !tbaa !64    ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cp = icmp eq ptr %i.cn, %i.co
  br i1 %i.cp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %bb.x
  call void @_ZdlPv(ptr noundef %i.cn) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.0, label %bb.y, label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br i1 %.0, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn1528 = phi { ptr, i32 } [ %i.cl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  call void @__cxa_free_exception(ptr %i.ck) #21
  br label %bb.z

bb.z:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  %.pn1527 = phi { ptr, i32 } [ %.pn1528, %bb.y ], [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20 ], [ %i.cm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.aa:                                            ; preds = %bb.t
  %i.cq = load i64, ptr %i.bw, align 8, !tbaa !162
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !165
  store i64 8, ptr %i.bw, align 8, !tbaa !162
  %i.cs = load ptr, ptr %i.ao, align 8, !tbaa !164, !nonnull !58, !align !93
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %i.cv = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cu)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 136
  %i.cx = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cw)
  %i.cy = sub i64 %i.cv, %i.cx
  %i.cz = lshr i64 %i.cy, 6
  %i.da = and i64 %i.cz, 288230376151711736
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.da, ptr %i.db, align 8, !tbaa !163
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.ab:                                            ; preds = %bb.w, %bb.d
  unreachable
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb14MetadataReader19GetMetaBlockPointerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !163
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
end_hunk_0
begin_hunk_1_@_ZN6duckdb14MetadataWriterD2Ev:bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb14MetadataWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6duckdb14MetadataWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #21
  tail call void @_ZdlPv(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb14MetadataWriter15GetBlockPointerEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176
  %.not.i = icmp ult i64 %i.b, %i.d
  br i1 %.not.i, label %_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !175
  br label %_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv.exit

_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv.exit: ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %.pre.i, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.n = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = sub i64 %i.l, %i.n
  %i.p = lshr i64 %i.o, 6
  %i.q = and i64 %i.p, 288230376151711736
  %.sroa.3.8.extract.trunc.i = trunc i64 %i.e to i32
  %i.r = and i64 %i.g, 72057594037927935
  %i.s = lshr i64 %i.g, 56
  %i.t = trunc nuw nsw i64 %i.s to i32
  %i.u = tail call noundef i32 @_ZN6duckdb15NumericCastImplIjmLb0EE7ConvertEm(i64 noundef %i.q)
  %i.v = mul i32 %i.u, %i.t
  %i.w = add i32 %i.v, %.sroa.3.8.extract.trunc.i
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.r, 0
  %.sroa.33.8.insert.ext.i = zext i32 %i.w to i64
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.33.8.insert.ext.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN6duckdb14MetadataWriter19GetMetaBlockPointerEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176
  %.not = icmp ult i64 %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %.pre = load i64, ptr %i.a, align 8, !tbaa !175
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i64 [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  %.fca.0.insert.i = insertvalue { i64, i64 } poison, i64 %i.g, 0
  %.sroa.2.8.insert.ext.i = and i64 %i.e, 4294967295
  %.fca.1.insert.i = insertvalue { i64, i64 } %.fca.0.insert.i, i64 %.sroa.2.8.insert.ext.i, 1
  ret { i64, i64 } %.fca.1.insert.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.duckdb::MetadataHandle", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.a = load ptr, ptr %0, align 8, !tbaa !50
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  call void %i.c(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::MetadataHandle") align 8 %1, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !176
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !114
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8
  %i.n = lshr i64 %i.m, 56
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  %i.r = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %.noexc4 unwind label %bb.d

.noexc4:                                          ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.t = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.noexc4
  %i.u = sub i64 %i.r, %i.t
  %i.v = lshr i64 %i.u, 6
  %i.w = and i64 %i.v, 288230376151711736
  %i.x = mul i64 %i.w, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.x
  store i64 %i.f, ptr %i.y, align 1
  br label %bb.e

bb.d:                                             ; preds = %.noexc4, %.noexc, %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load i64, ptr %1, align 8, !tbaa !51
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !51
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ae = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb12BufferHandleaSEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #21 ; 0 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ag = load i64, ptr %i.aa, align 8, !tbaa !51
  store i64 %i.ag, ptr %i.af, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 8, ptr %i.ah, align 8, !tbaa !175
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 128
  %i.am = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %.noexc6 unwind label %bb.n

.noexc6:                                          ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 136
  %i.ao = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.an)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %.noexc6
  %i.ap = sub i64 %i.am, %i.ao
  %i.aq = lshr i64 %i.ap, 6
  %i.ar = and i64 %i.aq, 288230376151711736
  store i64 %i.ar, ptr %i.d, align 8, !tbaa !176
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  invoke void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.as)
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.f
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !110
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !114
  %i.aw = load i64, ptr %i.af, align 8
  %i.ax = lshr i64 %i.aw, 56
  %i.ay = load ptr, ptr %i.ai, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bb = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %.noexc9 unwind label %bb.o

.noexc9:                                          ; preds = %.noexc8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 136
  %i.bd = invoke noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bc)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %.noexc9
  %i.be = sub i64 %i.bb, %i.bd
  %i.bf = lshr i64 %i.be, 6
  %i.bg = and i64 %i.bf, 288230376151711736
  %i.bh = mul i64 %i.bg, %i.ax
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bh
  store i64 -1, ptr %i.bi, align 1
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !167
  %.not21 = icmp eq ptr %i.bk, null
  br i1 %.not21, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZNK6duckdb12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bj)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !167 ; 4 uses
  %i.bm = load i64, ptr %i.af, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !169 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !170
  %.not.i.i = icmp eq ptr %i.bo, %i.bq
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 %i.bm, ptr %i.bo, align 8, !tbaa !54
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.br, ptr %i.bn, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.k:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %i.bl, align 8, !tbaa !172 ; 5 uses
  %i.bt = ptrtoint ptr %i.bo to i64
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 3 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775792
  br i1 %i.bw, label %bb.l, label %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
          to label %.noexc15 unwind label %bb.p

.noexc15:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.bx = ashr exact i64 %i.bv, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bx, i64 1)
  %i.by = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bx ; 2 uses
  %i.bz = icmp ult i64 %i.by, %i.bx
  %i.ca = call i64 @llvm.umin.i64(i64 %i.by, i64 576460752303423487)
  %i.cb = select i1 %i.bz, i64 576460752303423487, i64 %i.ca ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.cb, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.cc = shl nuw nsw i64 %i.cb, 4
  %i.cd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #25
          to label %.noexc16 unwind label %bb.p   ; 5 uses

.noexc16:                                         ; preds = %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.bv ; 2 uses
  store i64 %i.bm, ptr %i.ce, align 8, !tbaa !54
  %.sroa.6.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx18, align 8, !tbaa !24
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.bo
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc16, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cd, %.noexc16 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bs, %.noexc16 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !171, !alias.scope !256
  %i.cf = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cf, %i.bo
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc16
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.noexc16 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bs) #24
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.cd, ptr %i.bl, align 8, !tbaa !172
  store ptr %i.ch, ptr %i.bn, align 8, !tbaa !169
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cb
  store ptr %i.ci, ptr %i.bp, align 8, !tbaa !170
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.n:                                             ; preds = %bb.h, %.noexc6, %bb.e
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %.noexc9, %.noexc8, %bb.f
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.l
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.j, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.g
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ad) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.d
  %.pn = phi { ptr, i32 } [ %i.cl, %bb.p ], [ %i.cj, %bb.n ], [ %i.ck, %bb.o ], [ %i.z, %bb.d ]
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_ZN6duckdb12BufferHandleD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.cm) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter18SetWrittenPointersENS_12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS3_EEELb1EEE(ptr noundef nonnull align 8 dereferenceable(80) initializes((56, 64)) %0, ptr %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !161
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %.not = icmp ne i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp ult i64 %i.e, %i.c
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNK6duckdb12optional_ptrINS_6vectorINS_16MetaBlockPointerELb1ESaIS2_EEELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !167  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !169  ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !170
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.i, ptr %i.k, align 8, !tbaa !54
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.n, ptr %i.j, align 8, !tbaa !169
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !172  ; 5 uses
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775792
  br i1 %i.s, label %bb.f, label %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #23
  unreachable

_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.t = ashr exact i64 %i.r, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 576460752303423487)
  %i.x = select i1 %i.v, i64 576460752303423487, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 4
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #25 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r ; 2 uses
  store i64 %i.i, ptr %i.aa, align 8, !tbaa !54
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 0, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !24
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.k
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ], [ %i.z, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !171, !alias.scope !260
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, %i.k
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !14

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ac, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #24
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.z, ptr %i.g, align 8, !tbaa !172
  store ptr %i.ad, ptr %i.j, align 8, !tbaa !169
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ae, ptr %i.l, align 8, !tbaa !170
  br label %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN6duckdb16MetaBlockPointerESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter10NextHandleEv(ptr dead_on_unwind noalias writable sret(%"struct.duckdb::MetadataHandle") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !177, !nonnull !58, !align !93
  tail call void @_ZN6duckdb15MetadataManager14AllocateHandleEv(ptr dead_on_unwind writable sret(%"struct.duckdb::MetadataHandle") align 8 %0, ptr noundef nonnull align 8 dereferenceable(168) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14MetadataWriter7BasePtrEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.n = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = sub i64 %i.l, %i.n
  %i.p = lshr i64 %i.o, 6
  %i.q = and i64 %i.p, 288230376151711736
  %i.r = mul i64 %i.q, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  ret ptr %i.s
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter9WriteDataEPKhm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %i.d = add i64 %i.c, %2
  %i.e = load i64, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %i.f = icmp ugt i64 %i.d, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.j = phi i64 [ %i.e, %.lr.ph ], [ %i.ak, %bb.d ] ; 2 uses
  %i.k = phi i64 [ %i.c, %.lr.ph ], [ %i.ai, %bb.d ] ; 2 uses
  %.017 = phi i64 [ %2, %.lr.ph ], [ %.1, %bb.d ] ; 2 uses
  %.01216 = phi ptr [ %1, %.lr.ph ], [ %.113, %bb.d ] ; 3 uses
  %.not = icmp eq i64 %i.j, %i.k
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub i64 %i.j, %i.k                       ; 4 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g)
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !110
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114
  %i.p = load i64, ptr %i.h, align 8
  %i.q = lshr i64 %i.p, 56
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 136
  %i.w = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v)
  %i.x = sub i64 %i.u, %i.w
  %i.y = lshr i64 %i.x, 6
  %i.z = and i64 %i.y, 288230376151711736
  %i.aa = mul i64 %i.z, %i.q
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aa
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !175
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ad, ptr align 1 %.01216, i64 %i.l, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %.01216, i64 %i.l
  %i.af = load i64, ptr %i.a, align 8, !tbaa !175
  %i.ag = add i64 %i.af, %i.l
  store i64 %i.ag, ptr %i.a, align 8, !tbaa !175
  %i.ah = sub i64 %.017, %i.l
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.113 = phi ptr [ %i.ae, %bb.c ], [ %.01216, %bb.b ] ; 2 uses
  %.1 = phi i64 [ %i.ah, %bb.c ], [ %.017, %bb.b ] ; 3 uses
  tail call void @_ZN6duckdb14MetadataWriter9NextBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !175 ; 2 uses
  %i.aj = add i64 %i.ai, %.1
  %i.ak = load i64, ptr %i.b, align 8, !tbaa !176 ; 2 uses
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.b, label %._crit_edge, !llvm.loop !261

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.012.lcssa = phi ptr [ %1, %bb.a ], [ %.113, %bb.d ]
  %.0.lcssa = phi i64 [ %2, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.am)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !110
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !114
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = lshr i64 %i.ar, 56
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 128
  %i.ax = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 136
  %i.az = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ay)
  %i.ba = sub i64 %i.ax, %i.az
  %i.bb = lshr i64 %i.ba, 6
  %i.bc = and i64 %i.bb, 288230376151711736
  %i.bd = mul i64 %i.bc, %i.as
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bd
  %i.bf = load i64, ptr %i.a, align 8, !tbaa !175
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %.012.lcssa, i64 %.0.lcssa, i1 false)
  %i.bh = load i64, ptr %i.a, align 8, !tbaa !175
  %i.bi = add i64 %i.bh, %.0.lcssa
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !175
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6duckdb14MetadataWriter3PtrEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_10FileBufferELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i64, ptr %i.e, align 8
  %i.g = lshr i64 %i.f, 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177, !nonnull !58, !align !93
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !92, !nonnull !58, !align !93 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.l = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 136
  %i.n = tail call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %i.m)
  %i.o = sub i64 %i.l, %i.n
  %i.p = lshr i64 %i.o, 6
  %i.q = and i64 %i.p, 288230376151711736
  %i.r = mul i64 %i.q, %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.u = load i64, ptr %i.t, align 8, !tbaa !175
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb14MetadataWriter5FlushEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !175
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !176
end_hunk_1
