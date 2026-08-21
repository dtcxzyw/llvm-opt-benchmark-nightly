Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution?download=true
inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZNK6duckdb10shared_ptrINS_14ArenaAllocatorELb1EEdeEv:bb.a
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

_ZN6duckdb10shared_ptrINS_14ArenaAllocatorELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !280    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EE13AssertNotNullEb.exit, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.36, ptr noundef nonnull align 1 dereferenceable(1) %2)
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

_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb15TupleDataLayout10InitializeENS_6vectorINS_11LogicalTypeELb1ESaIS2_EEENS1_INS_15AggregateObjectELb1ESaIS5_EEENS_21TupleDataValidityTypeENS_23TupleDataNestednessTypeE(ptr noundef nonnull align 8 dereferenceable(217), ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !37
  %i.e = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  store i64 %i.i, ptr %i.b, align 8, !tbaa !39
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZNK6duckdb6vectorImLb1ESaImEE3getILb1EEERKmm.exit, label %bb.b, !prof !55

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.50, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNK6duckdb6vectorImLb1ESaImEE3getILb1EEERKmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable25InitializePartitionedDataEv(ptr noundef nonnull align 8 dereferenceable(2912) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.311", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !307
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.f = tail call noundef i64 @_ZNK6duckdb20PartitionedTupleData14PartitionCountEv(ptr noundef nonnull align 8 dereferenceable(152) %i.e) ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = lshr i64 %i.f, 1
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p
  %i.s = mul i64 %i.r, 285870213051386505
  %i.t = lshr i64 %i.s, 58
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.t
  %i.u = load i64, ptr %2, align 8, !tbaa !39
  br label %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit

_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit: ; preds = %bb.b, %bb.c
  %.0.i.neg.i.i = phi i64 [ %i.u, %bb.c ], [ -1, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.w = load i64, ptr %i.v, align 8, !tbaa !86
  %.not = icmp eq i64 %.0.i.neg.i.i, %i.w
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !335, !nonnull !69, !align !336
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i8 1, ptr %i.a, align 1, !tbaa !337
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.ab = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.z) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !82
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !81
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = sdiv exact i64 %i.ah, 24
  %i.aj = add nsw i64 %i.ai, -1
  store i64 %i.aj, ptr %i.b, align 8, !tbaa !39
  call void @_ZN6duckdb9make_uniqINS_25RadixPartitionedTupleDataEJRNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagERmmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.311") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ak = load ptr, ptr %1, align 8, !tbaa !339
  store ptr null, ptr %1, align 8, !tbaa !339
  %i.al = load ptr, ptr %i.c, align 8, !tbaa !307 ; 3 uses
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !307
  %.not.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.al) #40, !inline_history !341
  %.pr = load ptr, ptr %1, align 8, !tbaa !339    ; 3 uses
  %.not.i1 = icmp eq ptr %.pr, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.ap = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(168) %.pr) #40, !inline_history !342
  br label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit
  %i.as = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  tail call void @_ZN6duckdb20PartitionedTupleData5ResetEv(ptr noundef nonnull align 8 dereferenceable(152) %i.as)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.at = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @_ZNK6duckdb20PartitionedTupleData21InitializeAppendStateERNS_31PartitionedTupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(152) %i.at, ptr noundef nonnull align 8 dereferenceable(784) %i.au, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable27InitializeUnpartitionedDataEv(ptr noundef nonnull align 8 dereferenceable(2912) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.311", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !307
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !335, !nonnull !69, !align !336
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i8 1, ptr %i.a, align 1, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i64 0, ptr %i.b, align 8, !tbaa !343
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %i.i = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !81
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24
  %i.q = add nsw i64 %i.p, -1
  store i64 %i.q, ptr %i.c, align 8, !tbaa !39
  call void @_ZN6duckdb9make_uniqINS_25RadixPartitionedTupleDataEJRNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagEymEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.311") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.r = load ptr, ptr %1, align 8, !tbaa !339
  store ptr null, ptr %1, align 8, !tbaa !339
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !307  ; 3 uses
  store ptr %i.r, ptr %i.d, align 8, !tbaa !307
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.s) #40, !inline_history !341
  %.pr = load ptr, ptr %1, align 8, !tbaa !339    ; 3 uses
  %.not.i1 = icmp eq ptr %.pr, null
  br i1 %.not.i1, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.w = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(168) %.pr) #40, !inline_history !342
  br label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.z = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  tail call void @_ZN6duckdb20PartitionedTupleData5ResetEv(ptr noundef nonnull align 8 dereferenceable(152) %i.z)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.aa = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1192
  call void @_ZNK6duckdb20PartitionedTupleData21InitializeAppendStateERNS_31PartitionedTupleDataAppendStateENS_22TupleDataPinPropertiesE(ptr noundef nonnull align 8 dereferenceable(152) %i.aa, ptr noundef nonnull align 8 dereferenceable(784) %i.ab, i8 noundef zeroext 1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb25GroupedAggregateHashTable6ResizeEm(ptr noundef nonnull align 8 dereferenceable(2912) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %4 = alloca %"class.duckdb::AllocatedData", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !345
  %.not = icmp ne i64 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 5 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ult i64 %1, %i.d
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.l unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %2, align 8, !tbaa !54     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.i) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  br i1 %.0, label %bb.f, label %bb.k

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
end_hunk_0
begin_hunk_1_@_ZN6duckdb6vectorINS_10shared_ptrINS_14ArenaAllocatorELb1EEELb1ESaIS3_EE4backEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  br i1 %.0, label %bb.f, label %common.resume

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.e) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.pn9, %bb.f ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %common.resume.op

_ZN6duckdb6vectorINS_10shared_ptrINS_14ArenaAllocatorELb1EEELb1ESaIS3_EE3getILb1EEERS3_m.exit: ; preds = %bb.a
  %i.k = ptrtoint ptr %i.c to i64
  %i.l = ptrtoint ptr %i.a to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = getelementptr i8, ptr %i.a, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -16
  ret ptr %i.o

bb.g:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15TupleDataLayoutD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.d) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorImSaImEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2
  tail call void @_ZdlPv(ptr noundef nonnull %i.f) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit4

_ZNSt6vectorImSaImEED2Ev.exit4:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorImSaImEED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit6

_ZNSt6vectorImSaImEED2Ev.exit6:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1711 ; 7 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZNSt10unique_ptrISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit, label %_ZNKSt14default_deleteISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit

_ZNKSt14default_deleteISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit6
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !1712 ; 2 uses
  %.not.i2.i = icmp eq ptr %i.l, null
  br i1 %.not.i2.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.noexc1.i

.noexc1.i:                                        ; preds = %_ZNKSt14default_deleteISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit, %.noexc1.i
  %.0.i3.i = phi ptr [ %i.m, %.noexc1.i ], [ %i.l, %_ZNKSt14default_deleteISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit ] ; 3 uses
  %i.m = load ptr, ptr %.0.i3.i, align 8, !tbaa !325 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 16
  tail call void @_ZN6duckdb15TupleDataLayoutD2Ev(ptr noundef nonnull align 8 dead_on_return(217) dereferenceable(217) %i.n) #40, !inline_history !1714
  tail call void @_ZdlPv(ptr noundef nonnull %.0.i3.i) #39, !inline_history !1715
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, label %.noexc1.i, !llvm.loop !1716

_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i: ; preds = %.noexc1.i, %_ZNKSt14default_deleteISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEEEclEPSB_.exit
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !1717
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !1718
  %i.r = shl i64 %i.q, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.o, i8 0, i64 %i.r, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !1717 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i
  tail call void @_ZdlPv(ptr noundef %i.s) #39, !inline_history !1715
  br label %_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit

_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit: ; preds = %_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv.exit.i, %bb.f
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #39, !inline_history !1719
  br label %_ZNSt10unique_ptrISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit

_ZNSt10unique_ptrISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit6, %_ZNSt10_HashtableImSt4pairIKmN6duckdb15TupleDataLayoutEESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEED2Ev.exit
  store ptr null, ptr %i.i, align 8, !tbaa !1711
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !80
  invoke void @_ZNSt12_Destroy_auxILb0EE9__destroyIPN6duckdb15AggregateObjectEEEvT_S5_(ptr noundef %i.w, ptr noundef %i.y)
          to label %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i unwind label %bb.h

_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZNSt10unique_ptrISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !77   ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.z) #39
  br label %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit

bb.h:                                             ; preds = %_ZNSt10unique_ptrISt13unordered_mapImN6duckdb15TupleDataLayoutESt4hashImESt8equal_toImESaISt4pairIKmS2_EEESt14default_deleteISB_EED2Ev.exit
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #41
  unreachable

_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb15AggregateObjectES1_EvT_S3_RSaIT0_E.exit.i, %bb.g
  %i.ac = load ptr, ptr %0, align 8, !tbaa !81    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ac, %i.ae
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i ], [ %i.ac, %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #40
  %i.af = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i8 = icmp eq ptr %i.af, %i.ae
  br i1 %.not.i.i.i8, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !83

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !81
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit
  %i.ag = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ac, %_ZNSt6vectorIN6duckdb15AggregateObjectESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.ag) #39
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13RadixHTConfigC2ERNS_22RadixHTGlobalSinkStateE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 32)) %0, ptr noundef nonnull align 8 dereferenceable(304) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1720
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1690, !nonnull !69, !align !336
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  %i.e = tail call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.g = load i64, ptr %i.f, align 8, !tbaa !871
  store i64 %i.g, ptr %i.a, align 8, !tbaa !1721
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1685 ; 2 uses
  %i.l = icmp ult i64 %i.k, 3
  %..i = select i1 %i.l, i64 262144, i64 32768
  store i64 %..i, ptr %i.h, align 8, !tbaa !1723
  %i.m = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.k) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = lshr i64 %i.m, 1
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 2
  %i.q = or i64 %i.p, %i.o                        ; 2 uses
  %i.r = lshr i64 %i.q, 4
  %i.s = or i64 %i.r, %i.q                        ; 2 uses
  %i.t = lshr i64 %i.s, 8
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 16
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 32
  %i.y = or i64 %i.x, %i.w
  %i.z = mul i64 %i.y, 285870213051386505
  %i.aa = lshr i64 %i.z, 58
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.aa
  %i.ab = load i64, ptr %2, align 8, !tbaa !39
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 4)
  br label %_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit

_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit: ; preds = %bb.a, %bb.b
  %.0.i.neg.i.i.i = phi i64 [ %i.ac, %bb.b ], [ 4, %bb.a ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.0.i.neg.i.i.i, ptr %i.ad, align 8, !tbaa !1684
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = tail call noundef i64 @_ZNK6duckdb13RadixHTConfig20MaximumSinkRadixBitsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !1692
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i64 32768, 262145) i64 @_ZNK6duckdb13RadixHTConfig12SinkCapacityEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1685
  %i.d = icmp ult i64 %i.c, 3
  %. = select i1 %i.d, i64 262144, i64 32768
  ret i64 %.
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, 5) i64 @_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1685
  %i.d = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i, label %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 32
  %i.p = or i64 %i.o, %i.n
  %i.q = mul i64 %i.p, 285870213051386505
  %i.r = lshr i64 %i.q, 58
  %1 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.r
  %i.s = load i64, ptr %1, align 8, !tbaa !39
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 4)
  br label %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit

_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit: ; preds = %bb.a, %bb.b
  %.0.i.neg.i.i = phi i64 [ %i.t, %bb.b ], [ 4, %bb.a ]
  ret i64 %.0.i.neg.i.i
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 0, 9) i64 @_ZNK6duckdb13RadixHTConfig20MaximumSinkRadixBitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.c = load i64, ptr %i.b, align 8, !tbaa !1685 ; 4 uses
  %i.d = icmp ult i64 %i.c, 3
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m                        ; 2 uses
  %i.p = lshr i64 %i.o, 32
  %i.q = or i64 %i.p, %i.o
  %i.r = mul i64 %i.q, 285870213051386505
  %i.s = lshr i64 %i.r, 58
  %1 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.s
  %i.t = load i64, ptr %1, align 8, !tbaa !39
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 4)
  br label %_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !1721 ; 2 uses
  %i.x = icmp ugt i64 %i.w, 63
  %i.y = icmp ugt i64 %i.w, 31
  %. = select i1 %i.y, i64 7, i64 8
  %.0 = select i1 %i.x, i64 6, i64 %.
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !1686
  %i.ab = lshr i64 %i.aa, 1
  %i.ac = udiv i64 %i.ab, %i.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !1687
  %i.af = udiv i64 %i.ac, %i.ae                   ; 2 uses
  %i.ag = lshr i64 %i.af, 2                       ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ag, 0              ; 2 uses
  br i1 %.not.i.i.i, label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = lshr i64 %i.af, 3
  %i.ai = or i64 %i.ah, %i.ag                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 2
  %i.ak = or i64 %i.aj, %i.ai                     ; 2 uses
  %i.al = lshr i64 %i.ak, 4
  %i.am = or i64 %i.al, %i.ak                     ; 2 uses
  %i.an = lshr i64 %i.am, 8
  %i.ao = or i64 %i.an, %i.am                     ; 2 uses
  %i.ap = lshr i64 %i.ao, 16
  %i.aq = or i64 %i.ap, %i.ao                     ; 2 uses
  %i.ar = lshr i64 %i.aq, 32
  %i.as = or i64 %i.ar, %i.aq
  %i.at = mul i64 %i.as, 285870213051386505
  %i.au = lshr i64 %i.at, 58
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.au
  %i.av = load i64, ptr %2, align 8, !tbaa !39
  br label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit.i

_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit.i: ; preds = %bb.e, %bb.d
  %.0.i.neg.i.i = phi i64 [ %i.av, %bb.e ], [ -1, %bb.d ]
  %i.aw = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.c) ; 3 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit.i
  %i.ax = lshr i64 %i.aw, 1
  %i.ay = or i64 %i.ax, %i.aw                     ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = or i64 %i.az, %i.ay                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 4
  %i.bc = or i64 %i.bb, %i.ba                     ; 2 uses
  %i.bd = lshr i64 %i.bc, 8
  %i.be = or i64 %i.bd, %i.bc                     ; 2 uses
  %i.bf = lshr i64 %i.be, 16
  %i.bg = or i64 %i.bf, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 32
  %i.bi = or i64 %i.bh, %i.bg
  %i.bj = mul i64 %i.bi, 285870213051386505
  %i.bk = lshr i64 %i.bj, 58
  %3 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.bk
  %i.bl = load i64, ptr %3, align 8, !tbaa !39
  %i.bm = tail call i64 @llvm.umin.i64(i64 %i.bl, i64 4)
  br label %_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb.exit

_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb.exit: ; preds = %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit.i, %bb.f
  %.0.i.neg.i.i.i.i = phi i64 [ %i.bm, %bb.f ], [ 4, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit.i ]
  %i.bn = tail call noundef i64 @llvm.umax.i64(i64 %.0.i.neg.i.i, i64 %.0.i.neg.i.i.i.i) ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  %or.cond.i = or i1 %.not.i.i.i, %i.bo
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 %.0)
  %i.bq = select i1 %or.cond.i, i64 1, i64 %i.bp
  br label %_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit

_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit: ; preds = %bb.c, %bb.b, %_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb.exit
  %.02 = phi i64 [ %i.bq, %_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb.exit ], [ %i.u, %bb.c ], [ 4, %bb.b ]
  ret i64 %.02
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1692
  %i.c = tail call noundef i64 @_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext true)
  %i.d = tail call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.c)
  %i.e = load i64, ptr %1, align 8, !tbaa !39
  %i.f = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.d) ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8
  %i.i = icmp ugt i64 %i.h, %i.f
  br i1 %i.i, label %_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  %i.l = load atomic i8, ptr %i.k seq_cst, align 8, !range !66, !noundef !69
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  %i.p = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #40, !noalias !1724 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.p) #37, !noalias !1724
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i: ; preds = %bb.c
  %i.q = load atomic i64, ptr %i.g seq_cst, align 8
  %i.r = icmp ugt i64 %i.q, %i.f
  br i1 %i.r, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i
  %i.s = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 152
  %i.u = load atomic i8, ptr %i.t seq_cst, align 8, !range !66, !noundef !69
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store atomic i64 %i.f, ptr %i.g seq_cst, align 8
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i:          ; preds = %bb.f, %bb.e, %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i
  %i.w = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.o) #40 ; 0 uses
  br label %_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit

_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit: ; preds = %bb.a, %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 1, 9) i64 @_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i1 noundef zeroext %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336 ; 3 uses
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = tail call noundef i64 @_ZNK6duckdb20TemporaryMemoryState14GetReservationEv(ptr noundef nonnull align 8 dereferenceable(40) %i.c)
  %.pre = load ptr, ptr %0, align 8, !tbaa !1722
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1686
  %i.g = lshr i64 %i.f, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.c ] ; 2 uses
  %i.i = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.k = load i64, ptr %i.j, align 8, !tbaa !1685 ; 2 uses
  %i.l = udiv i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.n = load i64, ptr %i.m, align 8, !tbaa !1687
  %i.o = udiv i64 %i.l, %i.n                      ; 2 uses
  %i.p = lshr i64 %i.o, 2                         ; 2 uses
  %.not.i.i = icmp eq i64 %i.p, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = lshr i64 %i.o, 3
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  %i.s = lshr i64 %i.r, 2
  %i.t = or i64 %i.s, %i.r                        ; 2 uses
  %i.u = lshr i64 %i.t, 4
  %i.v = or i64 %i.u, %i.t                        ; 2 uses
  %i.w = lshr i64 %i.v, 8
  %i.x = or i64 %i.w, %i.v                        ; 2 uses
  %i.y = lshr i64 %i.x, 16
  %i.z = or i64 %i.y, %i.x                        ; 2 uses
  %i.aa = lshr i64 %i.z, 32
  %i.ab = or i64 %i.aa, %i.z
  %i.ac = mul i64 %i.ab, 285870213051386505
  %i.ad = lshr i64 %i.ac, 58
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.ad
  %i.ae = load i64, ptr %2, align 8, !tbaa !39
  br label %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit

_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit: ; preds = %bb.d, %bb.e
  %.0.i.neg.i = phi i64 [ %i.ae, %bb.e ], [ -1, %bb.d ]
  %i.af = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.k) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i, label %_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit
  %i.ag = lshr i64 %i.af, 1
  %i.ah = or i64 %i.ag, %i.af                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = or i64 %i.ai, %i.ah                     ; 2 uses
  %i.ak = lshr i64 %i.aj, 4
  %i.al = or i64 %i.ak, %i.aj                     ; 2 uses
  %i.am = lshr i64 %i.al, 8
  %i.an = or i64 %i.am, %i.al                     ; 2 uses
  %i.ao = lshr i64 %i.an, 16
  %i.ap = or i64 %i.ao, %i.an                     ; 2 uses
  %i.aq = lshr i64 %i.ap, 32
  %i.ar = or i64 %i.aq, %i.ap
  %i.as = mul i64 %i.ar, 285870213051386505
  %i.at = lshr i64 %i.as, 58
  %3 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.at
  %i.au = load i64, ptr %3, align 8, !tbaa !39
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.au, i64 4)
  br label %_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit

_ZNK6duckdb13RadixHTConfig20InitialSinkRadixBitsEv.exit: ; preds = %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit, %bb.f
  %.0.i.neg.i.i.i = phi i64 [ %i.av, %bb.f ], [ 4, %_ZN6duckdb17RadixPartitioning9RadixBitsImEEmT_.exit ]
  %i.aw = tail call noundef i64 @llvm.umax.i64(i64 %.0.i.neg.i, i64 %.0.i.neg.i.i.i) ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  %or.cond = or i1 %.not.i.i, %i.ax
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 8)
  %.0 = select i1 %or.cond, i64 1, i64 %i.ay
  ret i64 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = icmp ugt i64 %i.b, %1
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load atomic i8, ptr %i.e seq_cst, align 8, !range !66, !noundef !69
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #40, !noalias !1727 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.j) #37, !noalias !1727
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit:  ; preds = %bb.c
  %i.k = load atomic i64, ptr %i.a seq_cst, align 8
  %i.l = icmp ugt i64 %i.k, %1
  br i1 %i.l, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  %i.o = load atomic i8, ptr %i.n seq_cst, align 8, !range !66, !noundef !69
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZNSt11unique_lockISt5mutexED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load atomic i64, ptr %i.a seq_cst, align 8
  %shl.dividend = shl nuw i64 1, %1
  %i.r = lshr i64 %shl.dividend, %i.q
  %i.s = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load atomic i64, ptr %i.t seq_cst, align 8
  %i.v = mul i64 %i.u, %i.r
  %i.w = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  store atomic i64 %i.v, ptr %i.x seq_cst, align 8
  %i.y = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 113
  store atomic i8 1, ptr %i.z seq_cst, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store atomic i64 %1, ptr %i.a seq_cst, align 8
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %bb.h, %bb.e, %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit
  %i.aa = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.i) #40 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb13RadixHTConfig22SetRadixBitsToExternalEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb(ptr noundef nonnull align 8 dereferenceable(40) %0, i1 noundef zeroext true) ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = load atomic i64, ptr %i.b seq_cst, align 8
  %i.d = icmp ugt i64 %i.c, %i.a
  br i1 %i.d, label %_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load atomic i8, ptr %i.f seq_cst, align 8, !range !66, !noundef !69
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.k = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #40, !noalias !1730 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.k) #37, !noalias !1730
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i: ; preds = %bb.c
  %i.l = load atomic i64, ptr %i.b seq_cst, align 8
  %i.m = icmp ugt i64 %i.l, %i.a
  br i1 %i.m, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i
  %i.n = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load atomic i8, ptr %i.o seq_cst, align 8, !range !66, !noundef !69
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load atomic i64, ptr %i.b seq_cst, align 8
  %shl.dividend.i = shl nuw nsw i64 1, %i.a
  %i.s = lshr i64 %shl.dividend.i, %i.r
  %i.t = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.v = load atomic i64, ptr %i.u seq_cst, align 8
  %i.w = mul i64 %i.v, %i.s
  %i.x = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  store atomic i64 %i.w, ptr %i.y seq_cst, align 8
  %i.z = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 113
  store atomic i8 1, ptr %i.aa seq_cst, align 1
  store atomic i64 %i.a, ptr %i.b seq_cst, align 8
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i:          ; preds = %bb.f, %bb.e, %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i
  %i.ab = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #40 ; 0 uses
  br label %_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit

_ZN6duckdb13RadixHTConfig20SetRadixBitsInternalEmb.exit: ; preds = %bb.a, %bb.b, %_ZNSt11unique_lockISt5mutexED2Ev.exit.i
  %i.ac = load ptr, ptr %0, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 113
  %i.ae = load atomic i8, ptr %i.ad seq_cst, align 1, !range !66, !noundef !69
  %i.af = trunc nuw i8 %i.ae to i1
  ret i1 %i.af
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i64 @_ZNK6duckdb13RadixHTConfig12GetRadixBitsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

declare noundef i64 @_ZNK6duckdb20TemporaryMemoryState14GetReservationEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb21RadixHTLocalSinkStateC2ERNS_13ClientContextERKNS_25RadixPartitionedHashTableE(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 56)) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(112) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::Value", align 8     ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb21RadixHTLocalSinkStateE, i64 16), ptr %0, align 8, !tbaa !41
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.c, align 8, !tbaa !1733
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  invoke void @_ZN6duckdb9DataChunkC1Ev(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 0, ptr %i.e, align 8, !tbaa !1734
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 -1, ptr %i.f, align 8, !tbaa !1744
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !1745
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  invoke void @_ZN6duckdb9DataChunk15InitializeEmptyERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %2, align 8, !tbaa !1647, !nonnull !69, !align !336
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.m = invoke noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #40
  invoke void @_ZN6duckdb5Value7TINYINTEa(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %3, i8 noundef signext 42)
end_hunk_1
begin_hunk_2_@_ZN6duckdb16MaybeRepartitionERNS_13ClientContextERNS_22RadixHTGlobalSinkStateERNS_21RadixHTLocalSinkStateEb:bb.a
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  store i32 0, ptr %i.dp, align 4, !tbaa !269, !noalias !1774
  %i.dq = load ptr, ptr %i.dk, align 8, !tbaa !41, !noalias !1774
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !noalias !1774
  call void %i.ds(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #40, !noalias !1774, !inline_history !1777
  %i.dt = load ptr, ptr %i.dk, align 8, !tbaa !41, !noalias !1774
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !noalias !1774
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #40, !noalias !1774, !inline_history !1777
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.dw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272, !noalias !1774
  %.not.i.i.i.i.i72 = icmp eq i8 %i.dw, 0
  br i1 %.not.i.i.i.i.i72, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dx = add nsw i32 %i.do, -1
  store i32 %i.dx, ptr %i.dl, align 8, !tbaa !3, !noalias !1774
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.dy = atomicrmw volatile add ptr %i.dl, i32 -1 acq_rel, align 4, !noalias !1774
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i.i.i = phi i32 [ %i.do, %bb.ah ], [ %i.dy, %bb.ai ]
  %i.dz = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.dz, label %bb.aj, label %bb.al, !prof !58

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dk) #40, !noalias !1774
  br label %bb.al

bb.ak:                                            ; preds = %.noexc73
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #40, !noalias !1774
  call void @_ZdlPv(ptr noundef nonnull %i.dc) #39, !noalias !1774
  br label %.body

bb.al:                                            ; preds = %bb.aj, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.af, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.eb = load ptr, ptr %i.cf, align 8, !tbaa !307 ; 3 uses
  store ptr %i.dc, ptr %i.cf, align 8, !tbaa !307
  %.not.i.i.i.i.i74 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i.i.i74, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.al
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.eb) #40, !inline_history !341
  br label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.al, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i.i.i.i
  %i.ef = load ptr, ptr %i.cl, align 8, !tbaa !271 ; 8 uses
  %.not.i.i.i76 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i76, label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.eg, align 8, !tbaa !264
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !269
  %i.el = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #40, !inline_history !306
  %i.eo = load ptr, ptr %i.ef, align 8, !tbaa !41
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #40, !inline_history !306
  br label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit

bb.ao:                                            ; preds = %bb.am
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i77 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i77, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

bb.aq:                                            ; preds = %bb.ao
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i79 = phi i32 [ %i.ej, %bb.ap ], [ %i.et, %bb.aq ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i79, 1
  br i1 %i.eu, label %bb.ar, label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit, !prof !58

bb.ar:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #40
  br label %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, %bb.an, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i78, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %bb.at

bb.as:                                            ; preds = %_ZNK6duckdb25RadixPartitionedHashTable9GetLayoutEv.exit, %_ZNK6duckdb25RadixPartitionedHashTable12GetLayoutPtrEv.exit
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ak, %bb.as
  %eh.lpad-body = phi { ptr, i32 } [ %i.ev, %bb.as ], [ %i.ea, %bb.ak ]
  call void @_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #40
  br label %common.resume

bb.at:                                            ; preds = %_ZN6duckdb10shared_ptrINS_15TupleDataLayoutELb1EED2Ev.exit, %bb.y
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.ex = load atomic i64, ptr %i.ew seq_cst, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #40
  call void @_ZN6duckdb25GroupedAggregateHashTable22AcquirePartitionedDataEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.55") align 8 %8, ptr noundef nonnull align 8 dereferenceable(2912) %i.c)
  %i.ez = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.fa = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6duckdb20PartitionedTupleData11RepartitionERNS_13ClientContextERS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.ez, ptr noundef nonnull align 8 dereferenceable(512) %0, ptr noundef nonnull align 8 dereferenceable(152) %i.fa)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.fb = load ptr, ptr %8, align 8, !tbaa !307   ; 3 uses
  %.not.i80 = icmp eq ptr %i.fb, null
  br i1 %.not.i80, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit82, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i81

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i81: ; preds = %bb.aw
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !41
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8
  call void %i.fe(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.fb) #40, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit82

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit82: ; preds = %bb.aw, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au, %bb.at
  %i.ff = landingpad { ptr, i32 }
          cleanup
  %i.fg = load ptr, ptr %8, align 8, !tbaa !307   ; 3 uses
  %.not.i83 = icmp eq ptr %i.fg, null
  br i1 %.not.i83, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit85, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i84

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i84: ; preds = %bb.ax
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !41
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.fg) #40, !inline_history !308
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit85

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit85: ; preds = %bb.ax, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #40
  br label %common.resume

bb.ay:                                            ; preds = %bb.x, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit82, %bb.w
  br i1 %3, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fk = load i64, ptr %i.ar, align 8, !tbaa !1685
  %i.fl = icmp ult i64 %i.fk, 3
  br i1 %i.fl, label %bb.bo, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.fm = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.fn = call noundef i64 @_ZNK6duckdb20PartitionedTupleData14PartitionCountEv(ptr noundef nonnull align 8 dereferenceable(152) %i.fm) ; 4 uses
  %.not.i.i.i86 = icmp eq i64 %i.fn, 0
  br i1 %.not.i.i.i86, label %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fo = lshr i64 %i.fn, 1
  %i.fp = or i64 %i.fo, %i.fn                     ; 2 uses
  %i.fq = lshr i64 %i.fp, 2
  %i.fr = or i64 %i.fq, %i.fp                     ; 2 uses
  %i.fs = lshr i64 %i.fr, 4
  %i.ft = or i64 %i.fs, %i.fr                     ; 2 uses
  %i.fu = lshr i64 %i.ft, 8
  %i.fv = or i64 %i.fu, %i.ft                     ; 2 uses
  %i.fw = lshr i64 %i.fv, 16
  %i.fx = or i64 %i.fw, %i.fv                     ; 2 uses
  %i.fy = lshr i64 %i.fx, 32
  %i.fz = or i64 %i.fy, %i.fx
  %i.ga = mul i64 %i.fz, 285870213051386505
  %i.gb = lshr i64 %i.ga, 58
  %9 = getelementptr inbounds nuw [8 x i8], ptr @__const._ZN6duckdb10CountZerosImE7LeadingEm.index64msb, i64 %i.gb
  %i.gc = load i64, ptr %9, align 8, !tbaa !39
  br label %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit

_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit: ; preds = %bb.ba, %bb.bb
  %.0.i.neg.i.i = phi i64 [ %i.gc, %bb.bb ], [ -1, %bb.ba ] ; 2 uses
  %i.gd = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.ge = call noundef i64 @_ZNK6duckdb20PartitionedTupleData5CountEv(ptr noundef nonnull align 8 dereferenceable(152) %i.gd) ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !307
  %.not.i87 = icmp eq ptr %i.gg, null
  br i1 %.not.i87, label %_ZNK6duckdb25GroupedAggregateHashTable20GetMaterializedCountEv.exit, label %bb.bc

bb.bc:                                            ; preds = %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit
  %i.gh = call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.gf)
  %i.gi = call noundef i64 @_ZNK6duckdb20PartitionedTupleData5CountEv(ptr noundef nonnull align 8 dereferenceable(152) %i.gh)
  %i.gj = add i64 %i.gi, %i.ge
  br label %_ZNK6duckdb25GroupedAggregateHashTable20GetMaterializedCountEv.exit

_ZNK6duckdb25GroupedAggregateHashTable20GetMaterializedCountEv.exit: ; preds = %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit, %bb.bc
  %.0.i = phi i64 [ %i.gj, %bb.bc ], [ %i.ge, %_ZN6duckdb17RadixPartitioning21RadixBitsOfPowerOfTwoEm.exit ]
  %i.gk = call noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
  %i.gl = call noundef nonnull align 8 dereferenceable(217) ptr @_ZNK6duckdb20PartitionedTupleData9GetLayoutEv(ptr noundef nonnull align 8 dereferenceable(152) %i.gk)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 120
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !871
  %i.go = mul i64 %i.gn, %.0.i
  %i.gp = udiv i64 %i.go, %i.fn
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !1687
  %i.gs = uitofp i64 %i.gr to double
  %i.gt = fmul nnan double %i.gs, 5.000000e-01
  %i.gu = fptoui double %i.gt to i64
  %i.gv = icmp ugt i64 %i.gp, %i.gu
  br i1 %i.gv, label %bb.bd, label %_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm.exit

bb.bd:                                            ; preds = %_ZNK6duckdb25GroupedAggregateHashTable20GetMaterializedCountEv.exit
  %i.gw = add i64 %.0.i.neg.i.i, 2
  %i.gx = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !1692
  %i.gz = call noundef i64 @_ZNK6duckdb13RadixHTConfig17ExternalRadixBitsEb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i1 noundef zeroext true)
  %i.ha = call noundef i64 @llvm.umin.i64(i64 %i.gy, i64 %i.gz)
  %i.hb = call noundef i64 @llvm.umin.i64(i64 %i.gw, i64 %i.ha) ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.hd = load atomic i64, ptr %i.hc seq_cst, align 8
  %i.he = icmp ugt i64 %i.hd, %i.hb
  br i1 %i.he, label %_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hf = load ptr, ptr %i.a, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 152
  %i.hh = load atomic i8, ptr %i.hg seq_cst, align 8, !range !66, !noundef !69
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hj = load ptr, ptr %i.a, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16 ; 2 uses
  %i.hl = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.hk) #40, !noalias !1778 ; 2 uses
  %.not.i.i.i.i.i.i88 = icmp eq i32 %i.hl, 0
  br i1 %.not.i.i.i.i.i.i88, label %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_ZSt20__throw_system_errori(i32 noundef %i.hl) #37, !noalias !1778
  unreachable

_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i.i: ; preds = %bb.bf
  %i.hm = load atomic i64, ptr %i.hc seq_cst, align 8
  %i.hn = icmp ugt i64 %i.hm, %i.hb
  br i1 %i.hn, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, label %bb.bh

bb.bh:                                            ; preds = %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i.i
  %i.ho = load ptr, ptr %i.a, align 8, !tbaa !1722, !nonnull !69, !align !336
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 152
  %i.hq = load atomic i8, ptr %i.hp seq_cst, align 8, !range !66, !noundef !69
  %i.hr = trunc nuw i8 %i.hq to i1
  br i1 %i.hr, label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store atomic i64 %i.hb, ptr %i.hc seq_cst, align 8
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i

_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i:        ; preds = %bb.bi, %bb.bh, %_ZN6duckdb23StateWithBlockableTasks4LockEv.exit.i.i
  %i.hs = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.hk) #40 ; 0 uses
  br label %_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm.exit

_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm.exit: ; preds = %_ZNSt11unique_lockISt5mutexED2Ev.exit.i.i, %bb.be, %bb.bd, %_ZNK6duckdb25GroupedAggregateHashTable20GetMaterializedCountEv.exit
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.hu = load atomic i64, ptr %i.ht seq_cst, align 8 ; 2 uses
  %i.hv = icmp eq i64 %.0.i.neg.i.i, %i.hu
  br i1 %i.hv, label %bb.bo, label %bb.bj

bb.bj:                                            ; preds = %_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm.exit
  %i.hw = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  store i64 %i.hu, ptr %i.hw, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  call void @_ZN6duckdb25GroupedAggregateHashTable22AcquirePartitionedDataEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.55") align 8 %4, ptr noundef nonnull align 8 dereferenceable(2912) %i.c)
  %i.hx = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.bk unwind label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.hy = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !363, !nonnull !69, !align !336
  %i.ia = invoke noundef nonnull align 8 dereferenceable(152) ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.bl unwind label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  invoke void @_ZN6duckdb20PartitionedTupleData11RepartitionERNS_13ClientContextERS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.hx, ptr noundef nonnull align 8 dereferenceable(512) %i.hz, ptr noundef nonnull align 8 dereferenceable(152) %i.ia)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.ib = load ptr, ptr %4, align 8, !tbaa !307   ; 3 uses
  %.not.i.i89 = icmp eq ptr %i.ib, null
  br i1 %.not.i.i89, label %_ZN6duckdb25GroupedAggregateHashTable11RepartitionEv.exit, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i: ; preds = %bb.bm
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !41
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load ptr, ptr %i.id, align 8
  call void %i.ie(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.ib) #40, !inline_history !1781
  br label %_ZN6duckdb25GroupedAggregateHashTable11RepartitionEv.exit

bb.bn:                                            ; preds = %bb.bl, %bb.bk, %bb.bj
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = load ptr, ptr %4, align 8, !tbaa !307   ; 3 uses
  %.not.i2.i = icmp eq ptr %i.ig, null
  br i1 %.not.i2.i, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4.i, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i3.i

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i3.i: ; preds = %bb.bn
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !41
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 8
  %i.ij = load ptr, ptr %i.ii, align 8
  call void %i.ij(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.ig) #40, !inline_history !1781
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4.i

common.resume:                                    ; preds = %bb.t, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit85, %.body, %_ZNSt11unique_lockISt5mutexED2Ev.exit67, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4.i
  %common.resume.op = phi { ptr, i32 } [ %i.if, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4.i ], [ %i.bs, %bb.t ], [ %i.ff, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit85 ], [ %eh.lpad-body, %.body ], [ %.pn, %_ZNSt11unique_lockISt5mutexED2Ev.exit67 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit4.i: ; preds = %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i3.i, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %common.resume

_ZN6duckdb25GroupedAggregateHashTable11RepartitionEv.exit: ; preds = %bb.bm, %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  br label %bb.bo

bb.bo:                                            ; preds = %_ZN6duckdb25GroupedAggregateHashTable11RepartitionEv.exit, %_ZN6duckdb13RadixHTConfig12SetRadixBitsERKm.exit, %bb.az
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZNK6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1694   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20TemporaryMemoryStateESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !58

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

end_hunk_2
