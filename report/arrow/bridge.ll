Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/bridge?download=true
inline.NumInlined: 8873
inline.NumDeleted: 3382
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IN5arrow19BackgroundGeneratorINS4_23RecordBatchWithMetadataEE5StateESaIvEJRPNS4_8internal8ExecutorENS4_8IteratorIS6_EERiSG_EEERPT_St20_Sp_alloc_shared_tagIT0_EDpOT1_:bb.a
  store ptr null, ptr %i.g, align 8, !tbaa !271
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !585
  store ptr %i.k, ptr %i.i, align 16, !tbaa !585
  %i.l = load i32, ptr %5, align 4, !tbaa !69
  %i.m = load i32, ptr %6, align 4, !tbaa !69
  invoke void @_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5StateC2EPNS_8internal8ExecutorENS_8IteratorIS1_EEii(ptr noundef nonnull align 8 dereferenceable(192) %i.d, ptr noundef %i.e, ptr noundef nonnull %7, i32 noundef %i.l, i32 noundef %i.m)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !271  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %7, align 16, !tbaa !271
  invoke void %i.o(ptr noundef nonnull %i.n)
          to label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #37
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !271  ; 2 uses
  %.not.i.i6.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i6.i.i, label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %7, align 16, !tbaa !271
  invoke void %i.t(ptr noundef nonnull %i.s)
          to label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #37
  unreachable

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  store ptr %i.a, ptr %0, align 8, !tbaa !180
  store ptr %i.d, ptr %1, align 8, !tbaa !3439
  ret void

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit12: ; preds = %bb.e, %bb.f
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #33
  resume { ptr, i32 } %i.r
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow19BackgroundGeneratorINS3_23RecordBatchWithMetadataEE5StateEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5StateD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 208) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE5StateESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !545  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !94
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5StateC2EPNS_8internal8ExecutorENS_8IteratorIS1_EEii(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !628
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !629
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.b, align 4, !tbaa !630
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %2, align 8, !tbaa !271
  store i64 %i.d, ptr %i.c, align 8, !tbaa !271
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !271
  store i64 %i.g, ptr %i.e, align 8, !tbaa !271
  store ptr null, ptr %i.f, align 8, !tbaa !271
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !585
  store ptr %i.j, ptr %i.h, align 8, !tbaa !585
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -1, ptr %i.k, align 8, !tbaa !3440
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.l, align 8, !tbaa !631
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 49
  store i8 0, ptr %i.m, align 1, !tbaa !632
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 50
  store i8 0, ptr %i.n, align 2, !tbaa !633
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i8 0, i64 80, i1 false)
  invoke void @_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 noundef 0)
          to label %_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit unwind label %bb.c

_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit: ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i8 0, ptr %i.p, align 8, !tbaa !634
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176
  invoke void @_ZN5arrow4util5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.r)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEEC2IS6_vEEv.exit
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN5arrow6FutureINS_8internal5EmptyEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.q) #31
  tail call void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.u) #31
  tail call void @_ZNSt5dequeIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.o) #31
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.d ], [ %i.s, %bb.c ]
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !271  ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !271
  invoke void %i.w(ptr noundef nonnull %i.v)
          to label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEED2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #37
  unreachable

_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEED2Ev.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %.pn
}

declare void @_ZN5arrow4util5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !634, !range !146, !noundef !147
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.a, align 8, !tbaa !634
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !180  ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0ELb0EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.f, align 8, !tbaa !182
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !183
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !3441
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31, !inline_history !3441
  br label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0ELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.f ], [ %i.s, %bb.g ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.h, label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0ELb0EED2Ev.exit, !prof !184

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #31
  br label %_ZNSt17_Optional_payloadIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0ELb0EED2Ev.exit

_ZNSt17_Optional_payloadIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE17_M_initialize_mapEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = udiv i64 %1, 12                          ; 2 uses
  %i.b = urem i64 %1, 12
  %i.c = tail call i64 @llvm.umax.i64(i64 %i.a, i64 5)
  %.sroa.speculated = add nuw nsw i64 %i.c, 3     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 %.sroa.speculated, ptr %i.d, align 8, !tbaa !635
  %i.e = icmp ugt i64 %1, -4611686018427387941
  br i1 %i.e, label %bb.b, label %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE15_M_allocate_mapEm.exit, !prof !184

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #41
  unreachable

_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE15_M_allocate_mapEm.exit: ; preds = %bb.a
  %i.f = add nuw nsw i64 %i.a, 1                  ; 2 uses
  %i.g = shl nuw nsw i64 %.sroa.speculated, 3
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #38 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !636
  %i.i = load i64, ptr %i.d, align 8, !tbaa !635
  %i.j = sub i64 %i.i, %i.f
  %i.k = lshr i64 %i.j, 1
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.k ; 6 uses
  %.idx = shl nuw nsw i64 %i.f, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE15_M_allocate_mapEm.exit, %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_allocate_nodeEv.exit.i
  %.011.i = phi ptr [ %i.o, %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_allocate_nodeEv.exit.i ], [ %i.l, %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE15_M_allocate_mapEm.exit ] ; 4 uses
  %i.n = invoke noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #38
          to label %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_allocate_nodeEv.exit.i unwind label %bb.c

_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_allocate_nodeEv.exit.i: ; preds = %.lr.ph.i
  store ptr %i.n, ptr %.011.i, align 8, !tbaa !637
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i, i64 8 ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.m
  br i1 %i.p, label %.lr.ph.i, label %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE15_M_create_nodesEPPS3_S7_.exit, !llvm.loop !3442

bb.c:                                             ; preds = %.lr.ph.i
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  %i.s = tail call ptr @__cxa_begin_catch(ptr %i.r) #31 ; 0 uses
  %i.t = icmp ult ptr %i.l, %.011.i
  br i1 %i.t, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.c, %.lr.ph.i.i
  %.06.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %.06.i.i, align 8, !tbaa !637
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef 480) #33
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8 ; 2 uses
  %i.w = icmp ult ptr %i.v, %.011.i
  br i1 %i.w, label %.lr.ph.i.i, label %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i, !llvm.loop !52

_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.c
  invoke void @__cxa_rethrow() #41
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #37
  unreachable

bb.f:                                             ; preds = %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_destroy_nodesEPPS3_S7_.exit.i
  unreachable

.body:                                            ; preds = %bb.d
  %i.aa = extractvalue { ptr, i32 } %i.x, 0
  %i.ab = tail call ptr @__cxa_begin_catch(ptr %i.aa) #31 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8, !tbaa !636
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !635
  %i.ae = shl i64 %i.ad, 3
  tail call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ae) #33
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @__cxa_rethrow() #41
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.af

_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE15_M_create_nodesEPPS3_S7_.exit: ; preds = %_ZNSt11_Deque_baseIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_allocate_nodeEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.l, ptr %i.ah, align 8, !tbaa !638
  %i.ai = load ptr, ptr %i.l, align 8, !tbaa !637 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !639
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 480
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !640
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = getelementptr inbounds i8, ptr %i.m, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !638
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !637 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !639
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 480
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !640
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !641
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.ap, i64 %i.b
  store ptr %i.at, ptr %i.am, align 8, !tbaa !642
  ret void

bb.i:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  tail call void @__clang_call_terminate(ptr %i.av) #37
  unreachable

bb.j:                                             ; preds = %.body
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6FutureINS_23RecordBatchWithMetadataEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow10FutureImplELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

end_hunk_0
begin_hunk_1_@_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev:bb.a
  %.pr = load ptr, ptr %0, align 8, !tbaa !131    ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread, !prof !148

_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit
  %i.d = phi ptr [ %.pr, %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !145, !range !146, !noundef !147
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN5arrow6StatusD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #31
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit, %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEE7DestroyEv.exit.thread, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow8internal14AlignedStorageINS_23RecordBatchWithMetadataEE7destroyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !180  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !183
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !3454
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31, !inline_history !3454
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !184

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #31
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.c, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !180  ; 8 uses
  %.not.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i1.i, label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.t, align 8, !tbaa !182
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 0, ptr %i.x, align 4, !tbaa !183
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !133
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !3455
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31, !inline_history !3455
  br label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i2.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i2.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %i.w, -1
  store i32 %i.af, ptr %i.t, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

bb.l:                                             ; preds = %bb.j
  %i.ag = atomicrmw volatile add ptr %i.t, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i4.i = phi i32 [ %i.w, %bb.k ], [ %i.ag, %bb.l ]
  %i.ah = icmp eq i32 %.0.i.i.i.i4.i, 1
  br i1 %i.ah, label %bb.m, label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit, !prof !184

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.s) #31
  br label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit

_ZN5arrow23RecordBatchWithMetadataD2Ev.exit:      ; preds = %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i3.i, %bb.m
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5StateD2Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3457 ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN5arrow4util5MutexD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !271
  invoke void %i.d(ptr noundef nonnull %i.b)
          to label %_ZN5arrow4util5MutexD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  tail call void @__clang_call_terminate(ptr %i.f) #37
  unreachable

_ZN5arrow4util5MutexD2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5arrow4util5MutexD2Ev.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8, !tbaa !182
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !183
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !29
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31, !inline_history !29
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i = phi i32 [ %i.l, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, !prof !184

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #31
  br label %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit

_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit:   ; preds = %_ZN5arrow4util5MutexD2Ev.exit, %bb.e, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !tbaa !634, !range !146, !noundef !147
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.j, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit

bb.j:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit
  store i8 0, ptr %i.x, align 8, !tbaa !634
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !180 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %i.ac, align 8, !tbaa !182
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !183
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !3456
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31, !inline_history !3456
  br label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.n ], [ %i.ap, %bb.o ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.p, label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit, !prof !184

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #31
  br label %_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit: ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEED2Ev.exit, %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZNSt5dequeIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %i.ar) #31
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !271 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.at, null
  br i1 %.not.i.i1, label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !271
  invoke void %i.av(ptr noundef nonnull %i.at)
          to label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #37
  unreachable

_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEED2Ev.exit: ; preds = %_ZNSt14_Optional_baseIN5arrow6FutureINS0_23RecordBatchWithMetadataEEELb0ELb0EED2Ev.exit, %bb.q
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE7CleanupESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE7CleanupESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow19BackgroundGeneratorINS3_23RecordBatchWithMetadataEE7CleanupEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE7CleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE7CleanupESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS1_23RecordBatchWithMetadataEE7CleanupESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #33
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow19BackgroundGeneratorINS0_23RecordBatchWithMetadataEE7CleanupESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !545  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !94
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #31
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE7CleanupD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.arrow::util::Mutex::Guard", align 8 ; 8 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !591
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  invoke void @_ZN5arrow4util5Mutex4LockEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::util::Mutex::Guard") align 8 %1, ptr noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !591    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !461  ; 3 uses
  %.not.i.i.i.not = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 50
  store i8 1, ptr %i.f, align 2, !tbaa !633
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !180  ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  %i.j = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i.i = icmp eq i8 %i.j, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.i, align 4, !tbaa !69
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.i, align 4, !tbaa !69
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit

bb.f:                                             ; preds = %bb.d
  %i.m = atomicrmw volatile add ptr %i.i, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit

_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit: ; preds = %bb.f, %bb.e, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !647  ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5arrow4util5Mutex5GuardD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit
  %i.p = load ptr, ptr %1, align 8, !tbaa !271
  invoke void %i.p(ptr noundef nonnull %i.o)
          to label %_ZN5arrow4util5Mutex5GuardD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          catch ptr null
  %i.r = extractvalue { ptr, i32 } %i.q, 0
  call void @__clang_call_terminate(ptr %i.r) #37
  unreachable

_ZN5arrow4util5Mutex5GuardD2Ev.exit:              ; preds = %_ZN5arrow6FutureINS_8internal5EmptyEEaSERKS3_.exit, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZN5arrow10FutureImpl4WaitEv(ptr noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %bb.i unwind label %bb.u

end_hunk_1
begin_hunk_2_@_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE10WorkerTaskESt10shared_ptrINS2_5StateEE:bb.a
  br label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit34, %bb.a
  %.010 = phi i8 [ 1, %bb.a ], [ %.111, %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit34 ]
  %i.l = trunc nuw i8 %.010 to i1
  %.pre58 = load ptr, ptr %0, align 8, !tbaa !589 ; 4 uses
  br i1 %i.l, label %bb.c, label %split

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  %i.m = getelementptr inbounds nuw i8, ptr %.pre58, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !3533)
  %i.n = getelementptr inbounds nuw i8, ptr %.pre58, i64 24 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !271, !noalias !3533 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.pre58, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !585, !noalias !3533
  call void %i.q(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.622") align 8 %1, ptr noundef nonnull %i.o), !inline_history !3526
  %i.r = load ptr, ptr %1, align 8, !tbaa !131, !alias.scope !3533
  %i.s = icmp eq ptr %i.r, null
  %i.t = load ptr, ptr %i.d, align 8, !alias.scope !3533
  %.not.i.i.i.i = icmp eq ptr %i.t, null
  %or.cond.i = select i1 %i.s, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond.i, label %bb.e, label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEE4NextEv.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !271, !noalias !3533 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !271, !noalias !3533
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEE4NextEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !271, !noalias !3533
  invoke void %i.v(ptr noundef nonnull %i.u)
          to label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEE4NextEv.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #37
  unreachable

_ZN5arrow23RecordBatchWithMetadataD2Ev.exit.i:    ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %1, i8 0, i64 40, i1 false), !alias.scope !3533
  br label %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEE4NextEv.exit

_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEE4NextEv.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  %i.y = load ptr, ptr %0, align 8, !tbaa !589
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 176
  invoke void @_ZN5arrow4util5Mutex4LockEv(ptr dead_on_unwind nonnull writable sret(%"class.arrow::util::Mutex::Guard") align 8 %3, ptr noundef nonnull align 8 dereferenceable(16) %i.z)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEE4NextEv.exit
  %i.aa = load ptr, ptr %0, align 8, !tbaa !589   ; 10 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 50
  %i.ac = load i8, ptr %i.ab, align 2, !tbaa !633, !range !146, !noundef !147
  %i.ad = trunc nuw i8 %i.ac to i1                ; 2 uses
  br i1 %i.ad, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 49
  store i8 1, ptr %i.ae, align 1, !tbaa !632
  br label %bb.am

bb.j:                                             ; preds = %_ZN5arrow8IteratorINS_23RecordBatchWithMetadataEE4NextEv.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5arrow4util5Mutex5GuardD2Ev.exit

bb.k:                                             ; preds = %bb.h
  %i.ag = load ptr, ptr %1, align 8, !tbaa !131
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !378
  %.not.i.i.i18 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i18, label %bb.m, label %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 49
  store i8 1, ptr %i.aj, align 1, !tbaa !632
  br label %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit

bb.n:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 49
  store i8 1, ptr %i.ak, align 1, !tbaa !632
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 104 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aa, i64 72 ; 2 uses
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !645
  %i.ao = load ptr, ptr %i.am, align 8, !tbaa !645
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i
  call void @_ZNSt5dequeIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %i.aq) #31
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !645
  %i.as = load ptr, ptr %i.am, align 8, !tbaa !645
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit.loopexit, label %bb.o, !llvm.loop !61

bb.p:                                             ; preds = %bb.aj
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %i.i, align 8, !tbaa !647 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZN5arrow4util5Mutex5GuardD2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = load ptr, ptr %3, align 8, !tbaa !271
  invoke void %i.aw(ptr noundef nonnull %i.av)
          to label %_ZN5arrow4util5Mutex5GuardD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  call void @__clang_call_terminate(ptr %i.ay) #37
  unreachable

_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit.loopexit: ; preds = %bb.o
  %.pre = load ptr, ptr %0, align 8, !tbaa !589
  br label %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit

_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit: ; preds = %bb.m, %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit.loopexit, %bb.n, %bb.l
  %i.az = phi ptr [ %.pre, %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit.loopexit ], [ %i.aa, %bb.n ], [ %i.aa, %bb.m ], [ %i.aa, %bb.l ] ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 152
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !634, !range !146, !noundef !147
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZNRSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5valueEv.exit, label %bb.af

_ZNRSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5valueEv.exit: ; preds = %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 136 ; 2 uses
  %i.be = load <2 x ptr>, ptr %i.bd, align 8, !tbaa !271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i8 0, i64 16, i1 false)
  %i.bf = load ptr, ptr %i.h, align 8, !tbaa !180 ; 8 uses
  store <2 x ptr> %i.be, ptr %2, align 16, !tbaa !271
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6FutureINS_23RecordBatchWithMetadataEEaSEOS2_.exit, label %bb.s

bb.s:                                             ; preds = %_ZNRSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5valueEv.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.bg, align 8, !tbaa !182
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !183
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !133
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #31, !inline_history !54
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !133
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #31, !inline_history !54
  br label %_ZN5arrow6FutureINS_23RecordBatchWithMetadataEEaSEOS2_.exit

bb.u:                                             ; preds = %bb.s
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i.i.i = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bj, %bb.v ], [ %i.bt, %bb.w ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.x, label %_ZN5arrow6FutureINS_23RecordBatchWithMetadataEEaSEOS2_.exit, !prof !184

bb.x:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #31
  br label %_ZN5arrow6FutureINS_23RecordBatchWithMetadataEEaSEOS2_.exit

_ZN5arrow6FutureINS_23RecordBatchWithMetadataEEaSEOS2_.exit: ; preds = %_ZNRSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5valueEv.exit, %bb.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.x
  %i.bv = load ptr, ptr %0, align 8, !tbaa !589   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 152 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !634, !range !146, !noundef !147
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.y, label %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit

bb.y:                                             ; preds = %_ZN5arrow6FutureINS_23RecordBatchWithMetadataEEaSEOS2_.exit
  store i8 0, ptr %i.bw, align 8, !tbaa !634
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !180 ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 4 uses
  %i.cc = load atomic i64, ptr %i.cb acquire, align 8 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 4294967297
  %i.ce = trunc i64 %i.cc to i32                  ; 2 uses
  br i1 %i.cd, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %i.cb, align 8, !tbaa !182
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i32 0, ptr %i.cf, align 4, !tbaa !183
  %i.cg = load ptr, ptr %i.ca, align 8, !tbaa !133
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #31, !inline_history !3527
  %i.cj = load ptr, ptr %i.ca, align 8, !tbaa !133
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #31, !inline_history !3527
  br label %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit

bb.ab:                                            ; preds = %bb.z
  %i.cm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !94
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.cm, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = add nsw i32 %i.ce, -1
  store i32 %i.cn, ptr %i.cb, align 8, !tbaa !69
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.co = atomicrmw volatile add ptr %i.cb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ce, %bb.ac ], [ %i.co, %bb.ad ]
  %i.cp = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.cp, label %bb.ae, label %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit, !prof !184

bb.ae:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ca) #31
  br label %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit

bb.af:                                            ; preds = %_ZN5arrow19BackgroundGeneratorINS_23RecordBatchWithMetadataEE5State10ClearQueueEv.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.az, i64 104 ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !642 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.az, i64 120
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !650
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -40
  %.not.i.i.i20 = icmp eq ptr %i.cr, %i.cu
  br i1 %.not.i.i.i20, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr null, ptr %i.cr, align 8, !tbaa !131
  %i.cv = load ptr, ptr %1, align 8, !tbaa !131
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit.i.i.i.i.i, label %bb.ah, !prof !134

_ZN5arrow23RecordBatchWithMetadataD2Ev.exit.i.i.i.i.i: ; preds = %bb.ag
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cy = load <2 x ptr>, ptr %i.d, align 8, !tbaa !271, !noalias !3534
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.da = load <2 x ptr>, ptr %i.f, align 8, !tbaa !271, !noalias !3534
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store <2 x ptr> %i.cy, ptr %i.cx, align 8, !tbaa !271
  store <2 x ptr> %i.da, ptr %i.cz, align 8, !tbaa !271
  br label %_ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.cr, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %._ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i_crit_edge unwind label %bb.ai

._ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i_crit_edge: ; preds = %bb.ah
  %.pre56 = load ptr, ptr %i.cq, align 8, !tbaa !642
  br label %_ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  call void @__clang_call_terminate(ptr %i.dc) #37
  unreachable

_ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i: ; preds = %._ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i_crit_edge, %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit.i.i.i.i.i
  %i.dd = phi ptr [ %.pre56, %._ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i_crit_edge ], [ %i.cr, %_ZN5arrow23RecordBatchWithMetadataD2Ev.exit.i.i.i.i.i ]
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  store ptr %i.de, ptr %i.cq, align 8, !tbaa !642
  br label %_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit

bb.aj:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  invoke void @_ZNSt5dequeIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESaIS3_EE16_M_push_back_auxIJS3_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.df, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit unwind label %bb.p

_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit: ; preds = %_ZSt12construct_atIN5arrow6ResultINS0_23RecordBatchWithMetadataEEEJS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit.i.i.i, %bb.aj
  %i.dg = load ptr, ptr %0, align 8, !tbaa !589   ; 8 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 104
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 72
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 128
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !638 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !638
  %i.dn = ptrtoint ptr %i.dk to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = lshr exact i64 %i.dp, 3
  %i.dr = icmp ne ptr %i.dk, null
  %.neg.i.i.i = sext i1 %i.dr to i64
  %i.ds = add nsw i64 %i.dq, %.neg.i.i.i
  %i.dt = mul i64 %i.ds, 12
  %i.du = load ptr, ptr %i.dh, align 8, !tbaa !645
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 112
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !639
  %i.dx = ptrtoint ptr %i.du to i64
  %i.dy = ptrtoint ptr %i.dw to i64
  %i.dz = sub i64 %i.dx, %i.dy
  %i.ea = sdiv exact i64 %i.dz, 40
  %i.eb = add i64 %i.dt, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 88
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !640
  %i.ee = load ptr, ptr %i.di, align 8, !tbaa !645
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = ptrtoint ptr %i.ee to i64
  %i.eh = sub i64 %i.ef, %i.eg
  %i.ei = sdiv exact i64 %i.eh, 40
  %i.ej = add i64 %i.eb, %i.ei
  %i.ek = trunc i64 %i.ej to i32
  %i.el = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !629
  %.not = icmp sgt i32 %i.em, %i.ek
  br i1 %.not, label %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit
  %i.en = getelementptr inbounds nuw i8, ptr %i.dg, i64 48
  store i8 0, ptr %i.en, align 8, !tbaa !631
  br label %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit

_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit: ; preds = %bb.ae, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.aa, %bb.y, %_ZN5arrow6FutureINS_23RecordBatchWithMetadataEEaSEOS2_.exit, %_ZNSt5queueIN5arrow6ResultINS0_23RecordBatchWithMetadataEEESt5dequeIS3_SaIS3_EEE4pushEOS3_.exit, %bb.ak
  %i.eo = load ptr, ptr %0, align 8, !tbaa !589   ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 48
  %i.eq = load i8, ptr %i.ep, align 8, !tbaa !631, !range !146, !noundef !147
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 49
  %i.et = load i8, ptr %i.es, align 1, !tbaa !632, !range !146, !noundef !147
  %i.eu = xor i8 %i.et, 1
  br label %bb.am

bb.am:                                            ; preds = %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit, %bb.al, %bb.i
  %.111 = phi i8 [ 1, %bb.i ], [ 0, %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit ], [ %i.eu, %bb.al ]
  %.0 = phi i32 [ 3, %bb.i ], [ 0, %_ZNSt8optionalIN5arrow6FutureINS0_23RecordBatchWithMetadataEEEE5resetEv.exit ], [ 0, %bb.al ]
  %i.ev = load ptr, ptr %i.i, align 8, !tbaa !647 ; 2 uses
  %.not.i.i22 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i22, label %_ZN5arrow4util5Mutex5GuardD2Ev.exit23, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ew = load ptr, ptr %3, align 8, !tbaa !271
  invoke void %i.ew(ptr noundef nonnull %i.ev)
          to label %_ZN5arrow4util5Mutex5GuardD2Ev.exit23 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #37
  unreachable

_ZN5arrow4util5Mutex5GuardD2Ev.exit23:            ; preds = %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br i1 %i.ad, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %_ZN5arrow4util5Mutex5GuardD2Ev.exit23
  %i.ez = load ptr, ptr %2, align 16, !tbaa !461
  %.not.i.i24.not = icmp eq ptr %i.ez, null
  br i1 %.not.i.i24.not, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEED2Ev.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  store ptr null, ptr %4, align 8, !tbaa !131
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(40) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit.i unwind label %bb.ay

_ZN5arrow6StatusC2ERKS0_.exit.i:                  ; preds = %bb.aq
  %i.fa = load ptr, ptr %4, align 8, !tbaa !131
  %i.fb = icmp eq ptr %i.fa, null
  br i1 %i.fb, label %bb.ar, label %_ZN5arrow6ResultINS_23RecordBatchWithMetadataEEC2ERKS2_.exit, !prof !134

bb.ar:                                            ; preds = %_ZN5arrow6StatusC2ERKS0_.exit.i
  %i.fc = load ptr, ptr %i.e, align 8, !tbaa !180 ; 2 uses
  %i.fd = load <2 x ptr>, ptr %i.d, align 8, !tbaa !271
  store <2 x ptr> %i.fd, ptr %i.j, align 8, !tbaa !271
  %.not.i.i.i.i.i.i.i25 = icmp eq ptr %i.fc, null
end_hunk_2
