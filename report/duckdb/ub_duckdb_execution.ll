inline.NumInlined: 8268
inline.NumDeleted: 4059
begin_hunk_0_@_ZN6duckdb9make_uniqINS_25RadixPartitionedTupleDataEJRNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagEymEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_:bb.a
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !264
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !269
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #40, !inline_history !306
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #40, !inline_history !306
  br label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i7 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit, !prof !58

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #40
  br label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit: ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  ret void

bb.l:                                             ; preds = %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #40
  call void @_ZdlPv(ptr noundef nonnull %i.a) #39
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb25GroupedAggregateHashTable18GetPartitionedDataEv(ptr noundef nonnull align 8 dereferenceable(2912) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !307    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.51, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !54     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable22AcquirePartitionedDataEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.55") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(2912) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86
  %i.c = icmp ugt i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !307
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1192
  tail call void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(784) %i.g)
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  tail call void @_ZN6duckdb20PartitionedTupleData5UnpinEv(ptr noundef nonnull align 8 dereferenceable(152) %i.h)
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363, !nonnull !69, !align !336
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.m = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  tail call void @_ZN6duckdb20PartitionedTupleData11RepartitionERNS_13ClientContextERS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(512) %i.k, ptr noundef nonnull align 8 dereferenceable(152) %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6duckdb25GroupedAggregateHashTable27InitializeUnpartitionedDataEv(ptr noundef nonnull align 8 dereferenceable(2912) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 4 uses
  %i.o = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 408
  tail call void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.o, ptr noundef nonnull align 8 dereferenceable(784) %i.p)
  %i.q = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
  tail call void @_ZN6duckdb20PartitionedTupleData5UnpinEv(ptr noundef nonnull align 8 dereferenceable(152) %i.q)
  %i.r = load i64, ptr %i.n, align 8, !tbaa !307  ; 3 uses
  store i64 %i.r, ptr %0, align 8, !tbaa !307
  store ptr null, ptr %i.n, align 8, !tbaa !307
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  invoke void @_ZN6duckdb25GroupedAggregateHashTable25InitializePartitionedDataEv(ptr noundef nonnull align 8 dereferenceable(2912) %1)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup
  %.not.i = icmp eq i64 %i.r, 0
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i: ; preds = %bb.f
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.s) #40, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i
  resume { ptr, i32 } %i.t

bb.g:                                             ; preds = %bb.e
  ret void
}

declare void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(784)) local_unnamed_addr #1

declare void @_ZN6duckdb20PartitionedTupleData5UnpinEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #1

declare void @_ZN6duckdb20PartitionedTupleData11RepartitionERNS_13ClientContextERS0_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable7AbandonEv(ptr noundef nonnull align 8 dereferenceable(2912) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 8, !tbaa !86
  %i.c = icmp ugt i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !307
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1192
  tail call void @_ZN6duckdb20PartitionedTupleData16FlushAppendStateERNS_31PartitionedTupleDataAppendStateE(ptr noundef nonnull align 8 dereferenceable(152) %i.f, ptr noundef nonnull align 8 dereferenceable(784) %i.g)
  %i.h = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  tail call void @_ZN6duckdb20PartitionedTupleData5UnpinEv(ptr noundef nonnull align 8 dereferenceable(152) %i.h)
  %i.i = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !363, !nonnull !69, !align !336
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.m = tail call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.l)
  tail call void @_ZN6duckdb20PartitionedTupleData11RepartitionERNS_13ClientContextERS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(512) %i.k, ptr noundef nonnull align 8 dereferenceable(152) %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @_ZN6duckdb25GroupedAggregateHashTable27InitializeUnpartitionedDataEv(ptr noundef nonnull align 8 dereferenceable(2912) %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.o = load i64, ptr %i.n, align 8, !tbaa !346  ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZN6duckdb25GroupedAggregateHashTable17ClearPointerTableEv.exit, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !351
  %.idx.i.i.i = shl nuw nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.r, i8 0, i64 %.idx.i.i.i, i1 false), !tbaa !39
  br label %_ZN6duckdb25GroupedAggregateHashTable17ClearPointerTableEv.exit

_ZN6duckdb25GroupedAggregateHashTable17ClearPointerTableEv.exit: ; preds = %bb.e, %.lr.ph.preheader.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 0, ptr %i.s, align 8, !tbaa !345
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.t, ptr %1, align 8, !tbaa !364
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %i.t, align 8, !tbaa !272
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2536
  %2 = load ptr, ptr %i.v, align 8, !tbaa !54
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i64 0, ptr %3, align 8, !tbaa !365
  store i8 0, ptr %2, align 1, !tbaa !272
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !54
  store i64 0, ptr %i.u, align 8, !tbaa !365
  store i8 0, ptr %.pre.i, align 1, !tbaa !272
  %4 = load ptr, ptr %1, align 8, !tbaa !54       ; 2 uses
  %.not21.i = icmp eq ptr %4, %i.t
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6duckdb25GroupedAggregateHashTable17ClearPointerTableEv.exit
  call void @_ZdlPv(ptr noundef %4) #39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6duckdb25GroupedAggregateHashTable17ClearPointerTableEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable17ClearPointerTableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2912) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.b = load i64, ptr %i.a, align 8, !tbaa !346  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZSt6fill_nIPN6duckdb10ht_entry_tEmS1_ET_S3_T0_RKT1_.exit, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !351
  %.idx.i.i = shl nuw nsw i64 %i.b, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %.idx.i.i, i1 false), !tbaa !39
  br label %_ZSt6fill_nIPN6duckdb10ht_entry_tEmS1_ET_S3_T0_RKT1_.exit

_ZSt6fill_nIPN6duckdb10ht_entry_tEmS1_ET_S3_T0_RKT1_.exit: ; preds = %.lr.ph.preheader.i.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable11RepartitionEv(ptr noundef nonnull align 8 dereferenceable(2912) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.55", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @_ZN6duckdb25GroupedAggregateHashTable22AcquirePartitionedDataEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.55") align 8 %1, ptr noundef nonnull align 8 dereferenceable(2912) %0)
  %i.a = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !363, !nonnull !69, !align !336
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb20PartitionedTupleData11RepartitionERNS_13ClientContextERS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(512) %i.c, ptr noundef nonnull align 8 dereferenceable(152) %i.e)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %1, align 8, !tbaa !307    ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i: ; preds = %bb.d
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.f) #40, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %1, align 8, !tbaa !307    ; 3 uses
  %.not.i2 = icmp eq ptr %i.k, null
  br i1 %.not.i2, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i3

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i3: ; preds = %bb.e
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.k) #40, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable21GetAggregateAllocatorEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::shared_ptr.71") align 8 captures(none) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2912) %1) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !271  ; 2 uses
  %i.d = load <2 x ptr>, ptr %i.a, align 8, !tbaa !284
  store <2 x ptr> %i.d, ptr %0, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEC2ERKS2_.exit

_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb25GroupedAggregateHashTableD2Ev(ptr noundef nonnull align 8 dereferenceable(2912) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25GroupedAggregateHashTableE, i64 16), ptr %0, align 8, !tbaa !41
  invoke void @_ZN6duckdb25GroupedAggregateHashTable7DestroyEv(ptr noundef nonnull align 8 dereferenceable(2912) %0)
          to label %bb.b unwind label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  tail call void @_ZN6duckdb25GroupedAggregateHashTable22AggregateHTAppendStateD2Ev(ptr noundef nonnull align 8 dead_on_return(2504) dereferenceable(2504) %i.a) #40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !354  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !355  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271  ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.h, align 8, !tbaa !264
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !269
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40, !inline_history !366
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40, !inline_history !366
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.k, %bb.f ], [ %i.u, %bb.g ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.h, label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i, !prof !58

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40
  br label %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !357

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !354
  br label %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i, %bb.b
  %i.x = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exitthread-pre-split.i ], [ %i.c, %bb.b ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #39
  br label %_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EED2Ev.exit

_ZNSt6vectorIN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10shared_ptrINS0_14ArenaAllocatorELb1EEES3_EvT_S5_RSaIT0_E.exit.i, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !271  ; 8 uses
  %.not.i.i.i1 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i1, label %_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EED2Ev.exit, label %bb.j
end_hunk_0
