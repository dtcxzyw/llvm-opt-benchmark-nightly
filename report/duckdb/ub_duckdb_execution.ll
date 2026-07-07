inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZNK6duckdb13JoinHashTable12GetTotalSizeERKNS_6vectorINS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEELb1ESaIS5_EEERmSA_:bb.a
  %.pn = phi { ptr, i32 } [ %i.y, %bb.e ], [ %i.ab, %bb.i ] ; 2 uses
  %i.ac = load ptr, ptr %5, align 8, !tbaa !40    ; 2 uses
  %.not.i.i.i27 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorImSaImEED2Ev.exit28, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdlPv(ptr noundef nonnull %i.ac) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit28

_ZNSt6vectorImSaImEED2Ev.exit28:                  ; preds = %bb.k, %bb.j, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.b ], [ %.pn, %bb.j ], [ %.pn, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  %i.ad = load ptr, ptr %4, align 8, !tbaa !40    ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i29, label %_ZNSt6vectorImSaImEED2Ev.exit30, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit28
  call void @_ZdlPv(ptr noundef nonnull %i.ad) #39
  br label %_ZNSt6vectorImSaImEED2Ev.exit30

_ZNSt6vectorImSaImEED2Ev.exit30:                  ; preds = %bb.l, %_ZNSt6vectorImSaImEED2Ev.exit28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !987    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !58

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

_ZN6duckdb10unique_ptrINS_13JoinHashTableESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZNK6duckdb20PartitionedTupleData17GetSizesAndCountsERNS_6vectorImLb1ESaImEEES4_(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb13JoinHashTable16GetRemainingSizeEv(ptr noundef nonnull align 8 dereferenceable(1088) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.b = load i64, ptr %i.a, align 8, !tbaa !852
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.d = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  %i.e = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb20PartitionedTupleData13GetPartitionsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.d) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1056
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  %i.g = uitofp i64 %.114 to double
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.i = load double, ptr %i.h, align 8, !tbaa !851
  %i.j = fmul double %i.i, %i.g
  %i.k = fptoui double %i.j to i64
  %i.l = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.k)
  %i.m = tail call noundef i64 @llvm.umax.i64(i64 %i.l, i64 16384)
  %i.n = shl i64 %i.m, 3
  %i.o = add i64 %i.n, %.1
  ret i64 %i.o

bb.c:                                             ; preds = %bb.a, %bb.e
  %.017 = phi i64 [ 0, %bb.a ], [ %i.ah, %bb.e ]  ; 5 uses
  %.01216 = phi i64 [ 0, %bb.a ], [ %.1, %bb.e ]  ; 2 uses
  %.01315 = phi i64 [ 0, %bb.a ], [ %.114, %bb.e ] ; 2 uses
  %i.p = lshr i64 %.017, 6
  %i.q = and i64 %.017, 63
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !717
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = shl nuw i64 1, %i.q
  %i.v = and i64 %i.t, %i.u
  %.not = icmp eq i64 %i.v, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %i.e, align 8, !tbaa !487
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.017
  %i.y = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.z = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.y)
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !39
  %i.ab = add i64 %i.aa, %.01315
  %i.ac = load ptr, ptr %i.e, align 8, !tbaa !487
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.017
  %i.ae = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.af = tail call noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.ae)
  %i.ag = add i64 %i.af, %.01216
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.114 = phi i64 [ %.01315, %bb.c ], [ %i.ab, %bb.d ] ; 2 uses
  %.1 = phi i64 [ %.01216, %bb.c ], [ %i.ag, %bb.d ] ; 2 uses
  %i.ah = add nuw i64 %.017, 1                    ; 2 uses
  %.0.highbits = lshr i64 %i.ah, %i.b
  %i.ai = icmp eq i64 %.0.highbits, 0
  br i1 %i.ai, label %bb.c, label %bb.b, !llvm.loop !1100
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable11UnpartitionEv(ptr noundef nonnull align 8 dereferenceable(1088) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.duckdb::unique_ptr.320", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #40
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZN6duckdb20PartitionedTupleData16GetUnpartitionedEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.320") align 8 %1, ptr noundef nonnull align 8 dereferenceable(152) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !376
  store ptr null, ptr %1, align 8, !tbaa !376
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !376  ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !376
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.a
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %i.e) #40
  call void @_ZdlPv(ptr noundef nonnull %i.e) #39
  %.pr = load ptr, ptr %1, align 8, !tbaa !376    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  call void @_ZN6duckdb19TupleDataCollectionD1Ev(ptr noundef nonnull align 8 dead_on_return(192) dereferenceable(192) %.pr) #40
  call void @_ZdlPv(ptr noundef nonnull %.pr) #39
  br label %_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb19TupleDataCollectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZN6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb19TupleDataCollectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable23SetRepartitionRadixBitsEmmm(ptr noundef nonnull align 8 dereferenceable(1088) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.duckdb::unique_ptr.311", align 8 ; 6 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1016 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !852  ; 2 uses
  %i.e = sub i64 12, %i.d                         ; 3 uses
  %i.f = icmp ugt i64 %i.e, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %5 = insertelement <2 x i64> poison, i64 %2, i64 0
  %6 = insertelement <2 x i64> %5, i64 %3, i64 1
  %7 = uitofp <2 x i64> %6 to <2 x double>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.h = uitofp i64 %1 to double
  %i.i = fmul nnan double %i.h, 2.500000e-01
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.01418 = phi i64 [ 1, %.lr.ph ], [ %i.w, %bb.c ] ; 3 uses
  %i.j = shl nuw i64 1, %.01418
  %i.k = uitofp i64 %i.j to double
  %8 = insertelement <2 x double> poison, double %i.k, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fdiv <2 x double> %7, %9                  ; 2 uses
  %11 = extractelement <2 x double> %10, i64 1
  %i.l = fptoui double %11 to i64
  %i.m = uitofp i64 %i.l to double
  %i.n = load double, ptr %i.g, align 8, !tbaa !851
  %i.o = fmul double %i.n, %i.m
  %i.p = fptoui double %i.o to i64
  %i.q = tail call noundef i64 @_ZN6duckdb14NextPowerOfTwoEm(i64 noundef %i.p)
  %i.r = tail call noundef i64 @llvm.umax.i64(i64 %i.q, i64 16384)
  %i.s = shl i64 %i.r, 3
  %i.t = uitofp i64 %i.s to double
  %12 = extractelement <2 x double> %10, i64 0
  %i.u = fadd double %12, %i.t
  %i.v = fcmp ugt double %i.u, %i.i
  br i1 %i.v, label %bb.c, label %._crit_edge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.w = add nuw i64 %.01418, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.e
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.b, !llvm.loop !1101

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.c
  %.014.lcssa.ph = phi i64 [ %i.e, %bb.c ], [ %.01418, %bb.b ]
  %.pre = load i64, ptr %i.c, align 8, !tbaa !852
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.x = phi i64 [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ 1, %bb.a ], [ %.014.lcssa.ph, %._crit_edge.loopexit ]
  %i.y = add i64 %i.x, %.014.lcssa
  store i64 %i.y, ptr %i.c, align 8, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !874, !nonnull !69, !align !336
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i8 1, ptr %i.a, align 1, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.ac = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !82
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = sdiv exact i64 %i.ai, 24
  %i.ak = add nsw i64 %i.aj, -1
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !39
  call void @_ZN6duckdb9make_uniqINS_25RadixPartitionedTupleDataEJRNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagERmmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.311") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.al = load ptr, ptr %4, align 8, !tbaa !339
  store ptr null, ptr %4, align 8, !tbaa !339
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !307 ; 3 uses
  store ptr %i.al, ptr %i.am, align 8, !tbaa !307
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8
  call void %i.aq(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.an) #40, !inline_history !341
  %.pr = load ptr, ptr %4, align 8, !tbaa !339    ; 3 uses
  %.not.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.ar = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(168) %.pr) #40, !inline_history !342
  br label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge, %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #40
  call void @_ZN6duckdb13JoinHashTable24InitializePartitionMasksEv(ptr noundef nonnull align 8 dereferenceable(1088) %0)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %2 = alloca %"class.duckdb::shared_ptr.81", align 16 ; 6 uses
  store i64 %1, ptr %i.a, align 8, !tbaa !39
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.b, align 8, !tbaa !853
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.81") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x ptr>, ptr %2, align 16, !tbaa !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !271  ; 8 uses
  store <2 x ptr> %i.f, ptr %i.c, align 8, !tbaa !284
  %.not.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.i = load atomic i64, ptr %i.h acquire, align 8 ; 2 uses
  %i.j = icmp eq i64 %i.i, 4294967297
  %i.k = trunc i64 %i.i to i32                    ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.h, align 8, !tbaa !264
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.l, align 4, !tbaa !269
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40, !inline_history !1070
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40, !inline_history !1070
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.k, -1
  store i32 %i.t, ptr %i.h, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.h, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.k, %bb.e ], [ %i.u, %bb.f ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, !prof !58

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !271  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.y = load atomic i64, ptr %i.x acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.x, align 8, !tbaa !264
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !269
  %i.ac = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #40, !inline_history !876
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #40, !inline_history !876
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !272
  %.not.i.i.i.i1 = icmp eq i8 %i.ai, 0
  br i1 %.not.i.i.i.i1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = add nsw i32 %i.aa, -1
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.ak = atomicrmw volatile add ptr %i.x, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.aa, %bb.k ], [ %i.ak, %bb.l ]
  %i.al = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.al, label %bb.m, label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit, !prof !58

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #40
  br label %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEaSEOS3_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  %i.am = call noundef ptr @_ZNK6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c)
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !59
  store ptr %i.an, ptr %0, align 8, !tbaa !717
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1088) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.b = load i64, ptr %i.a, align 8, !tbaa !852  ; 2 uses
  %i.c = shl nuw i64 1, %i.b                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !717  ; 5 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i

end_hunk_0
