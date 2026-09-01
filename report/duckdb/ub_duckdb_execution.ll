Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_execution?download=true
inline.NumInlined: 8268
inline.NumDeleted: 4059
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 105
begin_hunk_0_@_ZN6duckdb13JoinHashTable23SetRepartitionRadixBitsEmmm:bb.a

._crit_edge.loopexit:                             ; preds = %bb.b, %bb.c
  %.014.lcssa.ph = phi i64 [ %i.e, %bb.c ], [ %.01418, %bb.b ]
  %.pre = load i64, ptr %i.c, align 8, !tbaa !851
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.af = phi i64 [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ]
  %.014.lcssa = phi i64 [ 1, %bb.a ], [ %.014.lcssa.ph, %._crit_edge.loopexit ]
  %i.ag = add i64 %i.af, %.014.lcssa
  store i64 %i.ag, ptr %i.c, align 8, !tbaa !851
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #40
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !873, !nonnull !69, !align !336
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i8 1, ptr %i.a, align 1, !tbaa !337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.ak = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !82
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !81
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 24
  %i.as = add nsw i64 %i.ar, -1
  store i64 %i.as, ptr %i.b, align 8, !tbaa !39
  call void @_ZN6duckdb9make_uniqINS_25RadixPartitionedTupleDataEJRNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagERmmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.311") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.at = load ptr, ptr %4, align 8, !tbaa !339
  store ptr null, ptr %4, align 8, !tbaa !339
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !307 ; 3 uses
  store ptr %i.at, ptr %i.au, align 8, !tbaa !307
  %.not.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %._crit_edge
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.av) #40, !inline_history !341
  %.pr = load ptr, ptr %4, align 8, !tbaa !339    ; 3 uses
  %.not.i15 = icmp eq ptr %.pr, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.az = load ptr, ptr %.pr, align 8, !tbaa !41
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(168) %.pr) #40, !inline_history !342
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
  store i64 %1, ptr %i.b, align 8, !tbaa !852
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  call void @_ZN6duckdb11make_bufferINS_21TemplatedValidityDataImEEJRmEEENS_10shared_ptrIT_Lb1EEEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.81") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load <2 x ptr>, ptr %2, align 16, !tbaa !284
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
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
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40, !inline_history !1069
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !41
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #40, !inline_history !1069
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
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #40, !inline_history !875
  %i.af = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(16) %i.w) #40, !inline_history !875
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
  store ptr %i.an, ptr %0, align 8, !tbaa !716
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1088) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.b = load i64, ptr %i.a, align 8, !tbaa !851  ; 2 uses
  %i.c = shl nuw i64 1, %i.b                      ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !716  ; 5 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i: ; preds = %bb.a
  %i.f = add nuw i64 %i.c, 63                     ; 2 uses
  %i.g = lshr i64 %i.f, 6                         ; 4 uses
  %i.h = and i64 %i.c, 63
  %.not.i = icmp ugt i64 %i.b, 5
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = lshr i64 -1, %i.i
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i
  %i.k = icmp eq i64 %i.g, 1
  br i1 %i.k, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %unroll_iter = and i64 %i.g, 288230376151711742
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i
  %1 = load i64, ptr %i.e, align 8, !tbaa !39     ; 3 uses
  %2 = icmp eq i64 %i.g, 1
  br i1 %2, label %bb.d, label %bb.e

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i: ; preds = %.loopexit.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new
  %.02236.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %.2.us.i.1, %.loopexit.us.i.1 ] ; 3 uses
  %.02535.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %i.r, %.loopexit.us.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %niter.next.1, %.loopexit.us.i.1 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.02535.us.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  switch i64 %i.m, label %.lr.ph.us.i [
    i64 -1, label %bb.b
    i64 0, label %.loopexit.us.i
  ]

.lr.ph.us.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i, %.lr.ph.us.i
  %.134.us.i = phi i64 [ %i.p, %.lr.ph.us.i ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ]
  %.12433.us.i = phi i64 [ %i.o, %.lr.ph.us.i ], [ %i.m, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ] ; 2 uses
  %i.n = add i64 %.12433.us.i, -1
  %i.o = and i64 %i.n, %.12433.us.i               ; 2 uses
  %i.p = add i64 %.134.us.i, 1                    ; 2 uses
  %.not29.us.i = icmp eq i64 %i.o, 0
  br i1 %.not29.us.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !1101

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %i.q = add i64 %.02236.us.i, 64
  br label %.loopexit.us.i, !llvm.loop !1102

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i, %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %.2.us.i = phi i64 [ %i.q, %bb.b ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ], [ %i.p, %.lr.ph.us.i ] ; 3 uses
  %i.r = add nuw nsw i64 %.02535.us.i, 2          ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.02535.us.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  switch i64 %i.u, label %.lr.ph.us.i.1 [
    i64 -1, label %bb.c
    i64 0, label %.loopexit.us.i.1
  ]

bb.c:                                             ; preds = %.loopexit.us.i
  %i.v = add i64 %.2.us.i, 64
  br label %.loopexit.us.i.1, !llvm.loop !1102

.lr.ph.us.i.1:                                    ; preds = %.loopexit.us.i, %.lr.ph.us.i.1
  %.134.us.i.1 = phi i64 [ %i.y, %.lr.ph.us.i.1 ], [ %.2.us.i, %.loopexit.us.i ]
  %.12433.us.i.1 = phi i64 [ %i.x, %.lr.ph.us.i.1 ], [ %i.u, %.loopexit.us.i ] ; 2 uses
  %i.w = add i64 %.12433.us.i.1, -1
  %i.x = and i64 %i.w, %.12433.us.i.1             ; 2 uses
  %i.y = add i64 %.134.us.i.1, 1                  ; 2 uses
  %.not29.us.i.1 = icmp eq i64 %i.x, 0
  br i1 %.not29.us.i.1, label %.loopexit.us.i.1, label %.lr.ph.us.i.1, !llvm.loop !1101

.loopexit.us.i.1:                                 ; preds = %.lr.ph.us.i.1, %bb.c, %.loopexit.us.i
  %.2.us.i.1 = phi i64 [ %i.v, %bb.c ], [ %.2.us.i, %.loopexit.us.i ], [ %i.y, %.lr.ph.us.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader
  %i.z = and i64 %1, %i.j
  br label %bb.f

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader
  %i.aa = icmp eq i64 %1, -1
  br i1 %i.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %bb.f, !llvm.loop !1102

bb.f:                                             ; preds = %bb.e, %bb.d
  %.023.i = phi i64 [ %i.z, %bb.d ], [ %1, %bb.e ] ; 2 uses
  %.not2932.i = icmp eq i64 %.023.i, 0
  br i1 %.not2932.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.134.i = phi i64 [ %i.ad, %.lr.ph.i ], [ 0, %bb.f ]
  %.12433.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.023.i, %bb.f ] ; 2 uses
  %i.ab = add i64 %.12433.i, -1
  %i.ac = and i64 %i.ab, %.12433.i                ; 2 uses
  %i.ad = add i64 %.134.i, 1                      ; 2 uses
  %.not29.i = icmp eq i64 %i.ac, 0
  br i1 %.not29.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.i, !llvm.loop !1101

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa: ; preds = %.loopexit.us.i.1
  %i.ae = and i64 %i.f, 64
  %lcmp.mod.not = icmp eq i64 %i.ae, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %.02236.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ] ; 3 uses
  %.02535.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %i.r, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod15 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod15)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.02535.us.i.epil.init
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.ag, label %.lr.ph.us.i.epil [
    i64 -1, label %bb.g
    i64 0, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  ]

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader
  %i.ah = add i64 %.02236.us.i.epil.init, 64
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, !llvm.loop !1102

.lr.ph.us.i.epil:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %.lr.ph.us.i.epil
  %.134.us.i.epil = phi i64 [ %i.ak, %.lr.ph.us.i.epil ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ]
  %.12433.us.i.epil = phi i64 [ %i.aj, %.lr.ph.us.i.epil ], [ %i.ag, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ] ; 2 uses
  %i.ai = add i64 %.12433.us.i.epil, -1
  %i.aj = and i64 %i.ai, %.12433.us.i.epil        ; 2 uses
  %i.ak = add i64 %.134.us.i.epil, 1              ; 2 uses
  %.not29.us.i.epil = icmp eq i64 %i.aj, 0
  br i1 %.not29.us.i.epil, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.us.i.epil, !llvm.loop !1101

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit: ; preds = %.lr.ph.i, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.g, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %bb.f, %bb.e, %bb.a
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.ak, %.lr.ph.us.i.epil ], [ 64, %bb.e ], [ 0, %bb.f ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ], [ %i.ah, %bb.g ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ], [ %i.ad, %.lr.ph.i ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK6duckdb13JoinHashTable22FinishedPartitionCountEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1088) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.b = load i64, ptr %i.a, align 8, !tbaa !851  ; 3 uses
  %i.c = shl nuw i64 1, %i.b                      ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !716  ; 5 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i: ; preds = %bb.a
  %i.f = add nuw i64 %i.c, 63                     ; 2 uses
  %i.g = lshr i64 %i.f, 6                         ; 4 uses
  %i.h = and i64 %i.c, 63
  %.not.i = icmp ugt i64 %i.b, 5
  %i.i = sub nuw nsw i64 64, %i.h
  %i.j = lshr i64 -1, %i.i
  br i1 %.not.i, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i
  %i.k = icmp eq i64 %i.g, 1
  br i1 %i.k, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %unroll_iter = and i64 %i.g, 288230376151711742
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i
  %1 = load i64, ptr %i.e, align 8, !tbaa !39     ; 3 uses
  %2 = icmp eq i64 %i.g, 1
  br i1 %2, label %bb.d, label %bb.e

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i: ; preds = %.loopexit.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new
  %.02236.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %.2.us.i.1, %.loopexit.us.i.1 ] ; 3 uses
  %.02535.us.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %i.r, %.loopexit.us.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader.new ], [ %niter.next.1, %.loopexit.us.i.1 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.02535.us.i
  %i.m = load i64, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  switch i64 %i.m, label %.lr.ph.us.i [
    i64 -1, label %bb.b
    i64 0, label %.loopexit.us.i
  ]

.lr.ph.us.i:                                      ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i, %.lr.ph.us.i
  %.134.us.i = phi i64 [ %i.p, %.lr.ph.us.i ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ]
  %.12433.us.i = phi i64 [ %i.o, %.lr.ph.us.i ], [ %i.m, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ] ; 2 uses
  %i.n = add i64 %.12433.us.i, -1
  %i.o = and i64 %i.n, %.12433.us.i               ; 2 uses
  %i.p = add i64 %.134.us.i, 1                    ; 2 uses
  %.not29.us.i = icmp eq i64 %i.o, 0
  br i1 %.not29.us.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !1101

bb.b:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %i.q = add i64 %.02236.us.i, 64
  br label %.loopexit.us.i, !llvm.loop !1102

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i, %bb.b, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i
  %.2.us.i = phi i64 [ %i.q, %bb.b ], [ %.02236.us.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i ], [ %i.p, %.lr.ph.us.i ] ; 3 uses
  %i.r = add nuw nsw i64 %.02535.us.i, 2          ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.02535.us.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  switch i64 %i.u, label %.lr.ph.us.i.1 [
    i64 -1, label %bb.c
    i64 0, label %.loopexit.us.i.1
  ]

bb.c:                                             ; preds = %.loopexit.us.i
  %i.v = add i64 %.2.us.i, 64
  br label %.loopexit.us.i.1, !llvm.loop !1102

.lr.ph.us.i.1:                                    ; preds = %.loopexit.us.i, %.lr.ph.us.i.1
  %.134.us.i.1 = phi i64 [ %i.y, %.lr.ph.us.i.1 ], [ %.2.us.i, %.loopexit.us.i ]
  %.12433.us.i.1 = phi i64 [ %i.x, %.lr.ph.us.i.1 ], [ %i.u, %.loopexit.us.i ] ; 2 uses
  %i.w = add i64 %.12433.us.i.1, -1
  %i.x = and i64 %i.w, %.12433.us.i.1             ; 2 uses
  %i.y = add i64 %.134.us.i.1, 1                  ; 2 uses
  %.not29.us.i.1 = icmp eq i64 %i.x, 0
  br i1 %.not29.us.i.1, label %.loopexit.us.i.1, label %.lr.ph.us.i.1, !llvm.loop !1101

.loopexit.us.i.1:                                 ; preds = %.lr.ph.us.i.1, %bb.c, %.loopexit.us.i
  %.2.us.i.1 = phi i64 [ %i.v, %bb.c ], [ %.2.us.i, %.loopexit.us.i ], [ %i.y, %.lr.ph.us.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i

bb.d:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader
  %i.z = and i64 %1, %i.j
  br label %bb.f

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader
  %i.aa = icmp eq i64 %1, -1
  br i1 %i.aa, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %bb.f, !llvm.loop !1102

bb.f:                                             ; preds = %bb.e, %bb.d
  %.023.i = phi i64 [ %i.z, %bb.d ], [ %1, %bb.e ] ; 2 uses
  %.not2932.i = icmp eq i64 %.023.i, 0
  br i1 %.not2932.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.134.i = phi i64 [ %i.ad, %.lr.ph.i ], [ 0, %bb.f ]
  %.12433.i = phi i64 [ %i.ac, %.lr.ph.i ], [ %.023.i, %bb.f ] ; 2 uses
  %i.ab = add i64 %.12433.i, -1
  %i.ac = and i64 %i.ab, %.12433.i                ; 2 uses
  %i.ad = add i64 %.134.i, 1                      ; 2 uses
  %.not29.i = icmp eq i64 %i.ac, 0
  br i1 %.not29.i, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.i, !llvm.loop !1101

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa: ; preds = %.loopexit.us.i.1
  %i.ae = and i64 %i.f, 64
  %lcmp.mod.not = icmp eq i64 %i.ae, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader
  %.02236.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ] ; 3 uses
  %.02535.us.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.preheader ], [ %i.r, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod35 = trunc i64 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.02535.us.i.epil.init
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.ag, label %.lr.ph.us.i.epil [
    i64 -1, label %bb.g
    i64 0, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  ]

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader
  %i.ah = add i64 %.02236.us.i.epil.init, 64
  br label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, !llvm.loop !1102

.lr.ph.us.i.epil:                                 ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %.lr.ph.us.i.epil
  %.134.us.i.epil = phi i64 [ %i.ak, %.lr.ph.us.i.epil ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ]
  %.12433.us.i.epil = phi i64 [ %i.aj, %.lr.ph.us.i.epil ], [ %i.ag, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ] ; 2 uses
  %i.ai = add i64 %.12433.us.i.epil, -1
  %i.aj = and i64 %i.ai, %.12433.us.i.epil        ; 2 uses
  %i.ak = add i64 %.134.us.i.epil, 1              ; 2 uses
  %.not29.us.i.epil = icmp eq i64 %i.aj, 0
  br i1 %.not29.us.i.epil, label %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, label %.lr.ph.us.i.epil, !llvm.loop !1101

_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit: ; preds = %.lr.ph.i, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa, %.lr.ph.us.i.epil, %bb.g, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader, %bb.f, %bb.e, %bb.a
  %.0.i = phi i64 [ %i.c, %bb.a ], [ %i.ak, %.lr.ph.us.i.epil ], [ 64, %bb.e ], [ 0, %bb.f ], [ %.2.us.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit.loopexit.unr-lcssa ], [ %i.ah, %bb.g ], [ %.02236.us.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.epil.preheader ], [ %i.ad, %.lr.ph.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !716 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit
  %i.an = add nuw i64 %i.c, 63                    ; 2 uses
  %i.ao = lshr i64 %i.an, 6                       ; 4 uses
  %i.ap = and i64 %i.c, 63
  %.not.i.i1 = icmp ugt i64 %i.b, 5
  %i.aq = sub nuw nsw i64 64, %i.ap
  %i.ar = lshr i64 -1, %i.aq
  br i1 %.not.i.i1, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i
  %i.as = icmp eq i64 %i.ao, 1
  br i1 %i.as, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader
  %unroll_iter40 = and i64 %i.ao, 288230376151711742
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i
  %3 = load i64, ptr %i.am, align 8, !tbaa !39    ; 3 uses
  %4 = icmp eq i64 %i.ao, 1
  br i1 %4, label %bb.j, label %bb.k

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i: ; preds = %.loopexit.us.i.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new
  %.02236.us.i.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new ], [ %.2.us.i.i.1, %.loopexit.us.i.i.1 ] ; 3 uses
  %.02535.us.i.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new ], [ %i.az, %.loopexit.us.i.i.1 ] ; 3 uses
  %niter41 = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new ], [ %niter41.next.1, %.loopexit.us.i.i.1 ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.02535.us.i.i
  %i.au = load i64, ptr %i.at, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.au, label %.lr.ph.us.i.i [
    i64 -1, label %bb.h
    i64 0, label %.loopexit.us.i.i
  ]

.lr.ph.us.i.i:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i, %.lr.ph.us.i.i
  %.134.us.i.i = phi i64 [ %i.ax, %.lr.ph.us.i.i ], [ %.02236.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i ]
  %.12433.us.i.i = phi i64 [ %i.aw, %.lr.ph.us.i.i ], [ %i.au, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i ] ; 2 uses
  %i.av = add i64 %.12433.us.i.i, -1
  %i.aw = and i64 %i.av, %.12433.us.i.i           ; 2 uses
  %i.ax = add i64 %.134.us.i.i, 1                 ; 2 uses
  %.not29.us.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not29.us.i.i, label %.loopexit.us.i.i, label %.lr.ph.us.i.i, !llvm.loop !1101

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i
  %i.ay = add i64 %.02236.us.i.i, 64
  br label %.loopexit.us.i.i, !llvm.loop !1102

.loopexit.us.i.i:                                 ; preds = %.lr.ph.us.i.i, %bb.h, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i
  %.2.us.i.i = phi i64 [ %i.ay, %bb.h ], [ %.02236.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i ], [ %i.ax, %.lr.ph.us.i.i ] ; 3 uses
  %i.az = add nuw nsw i64 %.02535.us.i.i, 2       ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.02535.us.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.bc, label %.lr.ph.us.i.i.1 [
    i64 -1, label %bb.i
    i64 0, label %.loopexit.us.i.i.1
  ]

bb.i:                                             ; preds = %.loopexit.us.i.i
  %i.bd = add i64 %.2.us.i.i, 64
  br label %.loopexit.us.i.i.1, !llvm.loop !1102

.lr.ph.us.i.i.1:                                  ; preds = %.loopexit.us.i.i, %.lr.ph.us.i.i.1
  %.134.us.i.i.1 = phi i64 [ %i.bg, %.lr.ph.us.i.i.1 ], [ %.2.us.i.i, %.loopexit.us.i.i ]
  %.12433.us.i.i.1 = phi i64 [ %i.bf, %.lr.ph.us.i.i.1 ], [ %i.bc, %.loopexit.us.i.i ] ; 2 uses
  %i.be = add i64 %.12433.us.i.i.1, -1
  %i.bf = and i64 %i.be, %.12433.us.i.i.1         ; 2 uses
  %i.bg = add i64 %.134.us.i.i.1, 1               ; 2 uses
  %.not29.us.i.i.1 = icmp eq i64 %i.bf, 0
  br i1 %.not29.us.i.i.1, label %.loopexit.us.i.i.1, label %.lr.ph.us.i.i.1, !llvm.loop !1101

.loopexit.us.i.i.1:                               ; preds = %.lr.ph.us.i.i.1, %bb.i, %.loopexit.us.i.i
  %.2.us.i.i.1 = phi i64 [ %i.bd, %bb.i ], [ %.2.us.i.i, %.loopexit.us.i.i ], [ %i.bg, %.lr.ph.us.i.i.1 ] ; 3 uses
  %niter41.next.1 = add i64 %niter41, 2           ; 2 uses
  %niter41.ncmp.1 = icmp eq i64 %niter41.next.1, %unroll_iter40
  br i1 %niter41.ncmp.1, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader.i
  %i.bh = and i64 %3, %i.ar
  br label %bb.l

bb.k:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.preheader.i
  %i.bi = icmp eq i64 %3, -1
  br i1 %i.bi, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit, label %bb.l, !llvm.loop !1102

bb.l:                                             ; preds = %bb.k, %bb.j
  %.023.i.i = phi i64 [ %i.bh, %bb.j ], [ %3, %bb.k ] ; 2 uses
  %.not2932.i.i = icmp eq i64 %.023.i.i, 0
  br i1 %.not2932.i.i, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.l, %.lr.ph.i.i
  %.134.i.i = phi i64 [ %i.bl, %.lr.ph.i.i ], [ 0, %bb.l ]
  %.12433.i.i = phi i64 [ %i.bk, %.lr.ph.i.i ], [ %.023.i.i, %bb.l ] ; 2 uses
  %i.bj = add i64 %.12433.i.i, -1
  %i.bk = and i64 %i.bj, %.12433.i.i              ; 2 uses
  %i.bl = add i64 %.134.i.i, 1                    ; 2 uses
  %.not29.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not29.i.i, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit, label %.lr.ph.i.i, !llvm.loop !1101

_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit.loopexit.unr-lcssa: ; preds = %.loopexit.us.i.i.1
  %i.bm = and i64 %i.an, 64
  %lcmp.mod37.not = icmp eq i64 %i.bm, 0
  br i1 %lcmp.mod37.not, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader: ; preds = %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader
  %.02236.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader ], [ %.2.us.i.i.1, %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit.loopexit.unr-lcssa ] ; 3 uses
  %.02535.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader ], [ %i.az, %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod39 = trunc i64 %i.ao to i1
  tail call void @llvm.assume(i1 %lcmp.mod39)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.02535.us.i.i.epil.init
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.bo, label %.lr.ph.us.i.i.epil [
    i64 -1, label %bb.m
    i64 0, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit
  ]

bb.m:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader
  %i.bp = add i64 %.02236.us.i.i.epil.init, 64
  br label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit, !llvm.loop !1102

.lr.ph.us.i.i.epil:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader, %.lr.ph.us.i.i.epil
  %.134.us.i.i.epil = phi i64 [ %i.bs, %.lr.ph.us.i.i.epil ], [ %.02236.us.i.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader ]
  %.12433.us.i.i.epil = phi i64 [ %i.br, %.lr.ph.us.i.i.epil ], [ %i.bo, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader ] ; 2 uses
  %i.bq = add i64 %.12433.us.i.i.epil, -1
  %i.br = and i64 %i.bq, %.12433.us.i.i.epil      ; 2 uses
  %i.bs = add i64 %.134.us.i.i.epil, 1            ; 2 uses
  %.not29.us.i.i.epil = icmp eq i64 %i.br, 0
  br i1 %.not29.us.i.i.epil, label %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit, label %.lr.ph.us.i.i.epil, !llvm.loop !1101

_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit: ; preds = %.lr.ph.i.i, %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit.loopexit.unr-lcssa, %.lr.ph.us.i.i.epil, %bb.m, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit, %bb.k, %bb.l
  %.0.i.i = phi i64 [ %i.c, %_ZNK6duckdb21TemplatedValidityMaskImE10CountValidEm.exit ], [ %i.bs, %.lr.ph.us.i.i.epil ], [ 64, %bb.k ], [ 0, %bb.l ], [ %.2.us.i.i.1, %_ZNK6duckdb13JoinHashTable21CurrentPartitionCountEv.exit.loopexit.unr-lcssa ], [ %i.bp, %bb.m ], [ %.02236.us.i.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader ], [ %i.bl, %.lr.ph.i.i ]
  %i.bt = sub i64 %.0.i, %.0.i.i
  ret i64 %i.bt
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable11RepartitionERS0_(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr noundef nonnull align 8 dereferenceable(1088) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::unique_ptr.311", align 8 ; 9 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !873, !nonnull !69, !align !336
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i8 1, ptr %i.a, align 1, !tbaa !337
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.g = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_15TupleDataLayoutELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !82
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = sdiv exact i64 %i.m, 24
  %i.o = add nsw i64 %i.n, -1
  store i64 %i.o, ptr %i.b, align 8, !tbaa !39
  call void @_ZN6duckdb9make_uniqINS_25RadixPartitionedTupleDataEJRNS_13BufferManagerERNS_10shared_ptrINS_15TupleDataLayoutELb1EEENS_9MemoryTagERmmEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.311") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 848 ; 3 uses
  %i.q = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !874, !nonnull !69, !align !336
  %i.s = invoke noundef nonnull align 8 dereferenceable(168) ptr @_ZNK6duckdb10unique_ptrINS_25RadixPartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb20PartitionedTupleData11RepartitionERNS_13ClientContextERS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.q, ptr noundef nonnull align 8 dereferenceable(512) %i.r, ptr noundef nonnull align 8 dereferenceable(152) %i.s)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %2, align 8, !tbaa !339
  store ptr null, ptr %2, align 8, !tbaa !339
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !307  ; 3 uses
  store ptr %i.t, ptr %i.p, align 8, !tbaa !307
  %.not.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %i.u) #40, !inline_history !341
  br label %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb20PartitionedTupleDataEEclEPS1_.exit.i.i.i.i.i, %bb.d
  invoke void @_ZN6duckdb13JoinHashTable5MergeERS0_(ptr noundef nonnull align 8 dereferenceable(1088) %1, ptr noundef nonnull align 8 dereferenceable(1088) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit
  %i.y = load ptr, ptr %2, align 8, !tbaa !339    ; 3 uses
  %.not.i4 = icmp eq ptr %i.y, null
  br i1 %.not.i4, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(168) %i.y) #40, !inline_history !342
  br label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.e, %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  ret void

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb20PartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit, %bb.c, %bb.b, %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %2, align 8, !tbaa !339   ; 3 uses
  %.not.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i6

_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i6: ; preds = %bb.f
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(168) %i.ad) #40, !inline_history !342
  br label %_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN6duckdb25RadixPartitionedTupleDataESt14default_deleteIS1_EED2Ev.exit7: ; preds = %bb.f, %_ZNKSt14default_deleteIN6duckdb25RadixPartitionedTupleDataEEclEPS1_.exit.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #40
  resume { ptr, i32 } %i.ac
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(168) ptr @_ZNK6duckdb10unique_ptrINS_25RadixPartitionedTupleDataESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.2", align 1  ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !339    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_25RadixPartitionedTupleDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !58

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

_ZN6duckdb10unique_ptrINS_25RadixPartitionedTupleDataESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13JoinHashTable5ResetEv(ptr noundef nonnull align 8 dereferenceable(1088) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  tail call void @_ZN6duckdb19TupleDataCollection5ResetEv(ptr noundef nonnull align 8 dereferenceable(192) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call void @_ZN6duckdb13AllocatedData5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.f = load i64, ptr %i.e, align 8, !tbaa !851  ; 2 uses
  %i.g = shl nuw i64 1, %i.f                      ; 2 uses
  %i.h = add nuw i64 %i.g, 63
  %i.i = lshr i64 %i.h, 6                         ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !716  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %bb.b, label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.l = load i64, ptr %i.k, align 8, !tbaa !852
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 noundef %i.l)
  %.pre.pre = load ptr, ptr %i.d, align 8, !tbaa !716
  br label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i

_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i: ; preds = %bb.b, %bb.a
  %.pre = phi ptr [ %.pre.pre, %bb.b ], [ %i.j, %bb.a ] ; 2 uses
  %i.m = add nsw i64 %i.i, -1                     ; 2 uses
  %i.n = tail call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.i) ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i
  %i.o = shl nuw nsw i64 %i.n, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre, i8 0, i64 %i.o, i1 false), !tbaa !39
  br label %_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE13SetAllInvalidEm.exit: ; preds = %.lr.ph.i.i, %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i
  %i.p = and i64 %i.g, 63
  %i.q = icmp ugt i64 %i.f, 5
  %i.r = shl nsw i64 -1, %i.p
  %i.s = select i1 %i.q, i64 0, i64 %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.m
  store i64 %i.s, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 465
  store i8 0, ptr %i.u, align 1, !tbaa !841
  ret void
}

declare void @_ZN6duckdb13AllocatedData5ResetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb13JoinHashTable23PrepareExternalFinalizeEm(ptr noundef nonnull align 8 dereferenceable(1088) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.704, align 8            ; 11 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 465 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !841, !range !66, !noundef !69
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.f = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  tail call void @_ZN6duckdb19TupleDataCollection5ResetEv(ptr noundef nonnull align 8 dereferenceable(192) %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 864
  tail call void @_ZN6duckdb13AllocatedData5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.j = load i64, ptr %i.i, align 8, !tbaa !851  ; 2 uses
  %i.k = shl nuw i64 1, %i.j                      ; 2 uses
  %i.l = add nuw i64 %i.k, 63
  %i.m = lshr i64 %i.l, 6                         ; 2 uses
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !716  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %bb.c, label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1048
  %i.p = load i64, ptr %i.o, align 8, !tbaa !852
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef %i.p)
  %.pre.pre.i = load ptr, ptr %i.h, align 8, !tbaa !716
  br label %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i.i

_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.c ], [ %i.n, %bb.b ] ; 2 uses
  %i.q = add nsw i64 %i.m, -1                     ; 2 uses
  %i.r = tail call noundef i64 @llvm.umin.i64(i64 %i.q, i64 %i.m) ; 2 uses
  %.not.i.i = icmp eq i64 %i.r, 0
  br i1 %.not.i.i, label %_ZN6duckdb13JoinHashTable5ResetEv.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i.i
  %i.s = shl nuw nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre.i, i8 0, i64 %i.s, i1 false), !tbaa !39
  br label %_ZN6duckdb13JoinHashTable5ResetEv.exit

_ZN6duckdb13JoinHashTable5ResetEv.exit:           ; preds = %_ZN6duckdb21TemplatedValidityMaskImE14EnsureWritableEv.exit.i.i.i, %.lr.ph.i.i.i
  %i.t = and i64 %i.k, 63
  %i.u = icmp ugt i64 %i.j, 5
  %i.v = shl nsw i64 -1, %i.t
  %i.w = select i1 %i.u, i64 0, i64 %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.pre.i, i64 %i.q
  store i64 %i.w, ptr %i.x, align 8, !tbaa !39
  store i8 0, ptr %i.b, align 1, !tbaa !841
  br label %bb.d

bb.d:                                             ; preds = %_ZN6duckdb13JoinHashTable5ResetEv.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.z = load i64, ptr %i.y, align 8, !tbaa !851  ; 4 uses
  %i.aa = shl nuw i64 1, %i.z                     ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !716 ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i: ; preds = %bb.d
  %i.ad = add nuw i64 %i.aa, 63                   ; 2 uses
  %i.ae = lshr i64 %i.ad, 6                       ; 4 uses
  %i.af = and i64 %i.aa, 63
  %.not.i.i50 = icmp ugt i64 %i.z, 5
  %i.ag = sub nuw nsw i64 64, %i.af
  %i.ah = lshr i64 -1, %i.ag
  br i1 %.not.i.i50, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i
  %i.ai = icmp eq i64 %i.ae, 1
  br i1 %i.ai, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader
  %unroll_iter = and i64 %i.ae, 288230376151711742
  br label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.lr.ph.i.i
  %3 = load i64, ptr %i.ac, align 8, !tbaa !39    ; 3 uses
  %4 = icmp eq i64 %i.ae, 1
  br i1 %4, label %bb.g, label %bb.h

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i: ; preds = %.loopexit.us.i.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new
  %.02236.us.i.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new ], [ %.2.us.i.i.1, %.loopexit.us.i.i.1 ] ; 3 uses
  %.02535.us.i.i = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new ], [ %i.ap, %.loopexit.us.i.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader.new ], [ %niter.next.1, %.loopexit.us.i.i.1 ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.02535.us.i.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.ak, label %.lr.ph.us.i.i [
    i64 -1, label %bb.e
    i64 0, label %.loopexit.us.i.i
  ]

.lr.ph.us.i.i:                                    ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i, %.lr.ph.us.i.i
  %.134.us.i.i = phi i64 [ %i.an, %.lr.ph.us.i.i ], [ %.02236.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i ]
  %.12433.us.i.i = phi i64 [ %i.am, %.lr.ph.us.i.i ], [ %i.ak, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i ] ; 2 uses
  %i.al = add i64 %.12433.us.i.i, -1
  %i.am = and i64 %i.al, %.12433.us.i.i           ; 2 uses
  %i.an = add i64 %.134.us.i.i, 1                 ; 2 uses
  %.not29.us.i.i = icmp eq i64 %i.am, 0
  br i1 %.not29.us.i.i, label %.loopexit.us.i.i, label %.lr.ph.us.i.i, !llvm.loop !1101

bb.e:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i
  %i.ao = add i64 %.02236.us.i.i, 64
  br label %.loopexit.us.i.i, !llvm.loop !1102

.loopexit.us.i.i:                                 ; preds = %.lr.ph.us.i.i, %bb.e, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i
  %.2.us.i.i = phi i64 [ %i.ao, %bb.e ], [ %.02236.us.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i ], [ %i.an, %.lr.ph.us.i.i ] ; 3 uses
  %i.ap = add nuw nsw i64 %.02535.us.i.i, 2       ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.02535.us.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.as, label %.lr.ph.us.i.i.1 [
    i64 -1, label %bb.f
    i64 0, label %.loopexit.us.i.i.1
  ]

bb.f:                                             ; preds = %.loopexit.us.i.i
  %i.at = add i64 %.2.us.i.i, 64
  br label %.loopexit.us.i.i.1, !llvm.loop !1102

.lr.ph.us.i.i.1:                                  ; preds = %.loopexit.us.i.i, %.lr.ph.us.i.i.1
  %.134.us.i.i.1 = phi i64 [ %i.aw, %.lr.ph.us.i.i.1 ], [ %.2.us.i.i, %.loopexit.us.i.i ]
  %.12433.us.i.i.1 = phi i64 [ %i.av, %.lr.ph.us.i.i.1 ], [ %i.as, %.loopexit.us.i.i ] ; 2 uses
  %i.au = add i64 %.12433.us.i.i.1, -1
  %i.av = and i64 %i.au, %.12433.us.i.i.1         ; 2 uses
  %i.aw = add i64 %.134.us.i.i.1, 1               ; 2 uses
  %.not29.us.i.i.1 = icmp eq i64 %i.av, 0
  br i1 %.not29.us.i.i.1, label %.loopexit.us.i.i.1, label %.lr.ph.us.i.i.1, !llvm.loop !1101

.loopexit.us.i.i.1:                               ; preds = %.lr.ph.us.i.i.1, %bb.f, %.loopexit.us.i.i
  %.2.us.i.i.1 = phi i64 [ %i.at, %bb.f ], [ %.2.us.i.i, %.loopexit.us.i.i ], [ %i.aw, %.lr.ph.us.i.i.1 ] ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.loopexit.unr-lcssa, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i

bb.g:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.preheader
  %i.ax = and i64 %3, %i.ah
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.i.i.preheader
  %i.ay = icmp eq i64 %3, -1
  br i1 %i.ay, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit, label %bb.i, !llvm.loop !1102

bb.i:                                             ; preds = %bb.h, %bb.g
  %.023.i.i = phi i64 [ %i.ax, %bb.g ], [ %3, %bb.h ] ; 2 uses
  %.not2932.i.i = icmp eq i64 %.023.i.i, 0
  br i1 %.not2932.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.thread83, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i, %.lr.ph.i.i
  %.134.i.i = phi i64 [ %i.bb, %.lr.ph.i.i ], [ 0, %bb.i ]
  %.12433.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.023.i.i, %bb.i ] ; 2 uses
  %i.az = add i64 %.12433.i.i, -1
  %i.ba = and i64 %i.az, %.12433.i.i              ; 2 uses
  %i.bb = add i64 %.134.i.i, 1                    ; 2 uses
  %.not29.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not29.i.i, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit, label %.lr.ph.i.i, !llvm.loop !1101

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.loopexit.unr-lcssa: ; preds = %.loopexit.us.i.i.1
  %i.bc = and i64 %i.ad, 64
  %lcmp.mod.not = icmp eq i64 %i.bc, 0
  br i1 %lcmp.mod.not, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.loopexit.unr-lcssa, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader
  %.02236.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader ], [ %.2.us.i.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.loopexit.unr-lcssa ] ; 3 uses
  %.02535.us.i.i.epil.init = phi i64 [ 0, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.preheader ], [ %i.ap, %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.loopexit.unr-lcssa ]
  %lcmp.mod142 = trunc i64 %i.ae to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.02535.us.i.i.epil.init
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !39 ; 2 uses
  switch i64 %i.be, label %.lr.ph.us.i.i.epil [
    i64 -1, label %bb.j
    i64 0, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit
  ]

bb.j:                                             ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader
  %i.bf = add i64 %.02236.us.i.i.epil.init, 64
  br label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit, !llvm.loop !1102

.lr.ph.us.i.i.epil:                               ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader, %.lr.ph.us.i.i.epil
  %.134.us.i.i.epil = phi i64 [ %i.bi, %.lr.ph.us.i.i.epil ], [ %.02236.us.i.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader ]
  %.12433.us.i.i.epil = phi i64 [ %i.bh, %.lr.ph.us.i.i.epil ], [ %i.be, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader ] ; 2 uses
  %i.bg = add i64 %.12433.us.i.i.epil, -1
  %i.bh = and i64 %i.bg, %.12433.us.i.i.epil      ; 2 uses
  %i.bi = add i64 %.134.us.i.i.epil, 1            ; 2 uses
  %.not29.us.i.i.epil = icmp eq i64 %i.bh, 0
  br i1 %.not29.us.i.i.epil, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit, label %.lr.ph.us.i.i.epil, !llvm.loop !1101

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit: ; preds = %.lr.ph.i.i, %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.loopexit.unr-lcssa, %.lr.ph.us.i.i.epil, %bb.j, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader, %bb.h
  %.0.i.i = phi i64 [ %i.bi, %.lr.ph.us.i.i.epil ], [ 64, %bb.h ], [ %.2.us.i.i.1, %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.loopexit.unr-lcssa ], [ %i.bf, %bb.j ], [ %.02236.us.i.i.epil.init, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.us.i.i.epil.preheader ], [ %i.bb, %.lr.ph.i.i ]
  %i.bj = icmp eq i64 %.0.i.i, %i.aa
  br i1 %i.bj, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.thread83

_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.thread83: ; preds = %bb.i, %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.bl = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_20PartitionedTupleDataESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bk)
  %i.bm = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb20PartitionedTupleData13GetPartitionsEv(ptr noundef nonnull align 8 dereferenceable(152) %i.bl) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 -1, ptr %i.a, align 8, !tbaa !39
  %i.bn = icmp ugt i64 %i.z, 59
  br i1 %i.bn, label %.noexc, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

.noexc:                                           ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.thread83
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.55) #37
  unreachable

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE13CheckAllValidEm.exit.thread83
  %i.bo = shl nuw nsw i64 8, %i.z
  %i.bp = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bo) #38 ; 3 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.aa
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 1008 ; 2 uses
  br label %bb.r

bb.k:                                             ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr %i.bm, ptr %2, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %.sroa.3.0..sroa_idx, align 8
  %i.bs = icmp eq ptr %.sroa.070.1, %.sroa.13.1
  br i1 %i.bs, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.bt = ptrtoint ptr %.sroa.13.1 to i64         ; 2 uses
  %i.bu = ptrtoint ptr %.sroa.070.1 to i64
  %i.bv = sub i64 %i.bt, %i.bu
  %i.bw = ashr exact i64 %i.bv, 3                 ; 2 uses
  %i.bx = add nsw i64 %i.bw, 1
  %i.by = sdiv i64 %i.bx, 2                       ; 4 uses
  %i.bz = icmp sgt i64 %i.bw, 0
  br i1 %i.bz, label %.lr.ph.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.l, %select.unfold.i.i.i.i
  %.010.i.i.i.i = phi i64 [ %i.ce, %select.unfold.i.i.i.i ], [ %i.by, %bb.l ] ; 4 uses
  %i.ca = shl nuw nsw i64 %.010.i.i.i.i, 3
  %i.cb = call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.ca, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #42 ; 2 uses
  %.not.i.i.i.i52 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i.i52, label %select.unfold.i.i.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i

select.unfold.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i
  %i.cc = icmp eq i64 %.010.i.i.i.i, 1
  %i.cd = add nuw nsw i64 %.010.i.i.i.i, 1
  %i.ce = lshr i64 %i.cd, 1
  br i1 %i.cc, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1103

_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i: ; preds = %select.unfold.i.i.i.i, %.lr.ph.i.i.i.i, %bb.l
  %.sroa.5.0.i.i = phi i64 [ 0, %bb.l ], [ %.010.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %select.unfold.i.i.i.i ] ; 2 uses
  %.sroa.10.0.i.i = phi ptr [ null, %bb.l ], [ %i.cb, %.lr.ph.i.i.i.i ], [ null, %select.unfold.i.i.i.i ] ; 7 uses
  %i.cf = icmp eq i64 %i.by, %.sroa.5.0.i.i
  br i1 %i.cf, label %bb.m, label %bb.o, !prof !55

bb.m:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i
  %i.cg = getelementptr inbounds [8 x i8], ptr %.sroa.070.1, i64 %i.by ; 4 uses
  invoke fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEEvT_SD_T0_T1_"(ptr %.sroa.070.1, ptr %i.cg, ptr noundef %.sroa.10.0.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %.noexc.i.i unwind label %bb.n

.noexc.i.i:                                       ; preds = %bb.m
  invoke fastcc void @"_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_NS0_5__ops15_Iter_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEEvT_SD_T0_T1_"(ptr %i.cg, ptr %.sroa.13.1, ptr noundef %.sroa.10.0.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %.noexc8.i.i unwind label %bb.n

.noexc8.i.i:                                      ; preds = %.noexc.i.i
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.bt, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  invoke fastcc void @"_ZSt16__merge_adaptiveIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElS2_NS0_5__ops15_Iter_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEEvT_SD_SD_T0_SE_T1_T2_"(ptr %.sroa.070.1, ptr %i.cg, ptr %.sroa.13.1, i64 noundef %i.by, i64 noundef %i.cj, ptr noundef %.sroa.10.0.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %.lr.ph unwind label %bb.n

bb.n:                                             ; preds = %bb.q, %bb.p, %.noexc8.i.i, %.noexc.i.i, %bb.m
  %i.ck = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef %.sroa.10.0.i.i) #40
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

bb.o:                                             ; preds = %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEmEC2ES6_l.exit.i.i
  %i.cl = icmp eq ptr %.sroa.10.0.i.i, null
  br i1 %i.cl, label %bb.p, label %bb.q, !prof !58

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZSt21__inplace_stable_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEEvT_SD_T0_"(ptr %.sroa.070.1, ptr %.sroa.13.1, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %.lr.ph unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  invoke fastcc void @"_ZSt29__stable_sort_adaptive_resizeIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEES2_lNS0_5__ops15_Iter_comp_iterIZN6duckdb13JoinHashTable23PrepareExternalFinalizeEmE3$_0EEEvT_SD_T0_T1_T2_"(ptr %.sroa.070.1, ptr %.sroa.13.1, ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %.sroa.5.0.i.i, ptr noundef nonnull byval(%"struct.__gnu_cxx::__ops::_Iter_comp_iter") align 8 %2)
          to label %.lr.ph unwind label %bb.n

bb.r:                                             ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i, %bb.ad
  %storemerge103 = phi i64 [ 0, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %i.ea, %bb.ad ] ; 7 uses
  %.sroa.070.0102 = phi ptr [ %i.bp, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.070.1, %bb.ad ] ; 7 uses
  %.sroa.13.0101 = phi ptr [ %i.bp, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.13.1, %bb.ad ] ; 5 uses
  %.sroa.21.0100 = phi ptr [ %i.bq, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i ], [ %.sroa.21.1, %bb.ad ] ; 3 uses
  %i.cm = lshr i64 %storemerge103, 6
  %i.cn = and i64 %storemerge103, 63
  %i.co = load ptr, ptr %i.ab, align 8, !tbaa !716
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cm
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !39
  %i.cr = shl nuw i64 1, %i.cn
  %i.cs = and i64 %i.cq, %i.cr
  %.not90 = icmp eq i64 %i.cs, 0
  br i1 %.not90, label %bb.s, label %bb.ad

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

.loopexit.split-lp:                               ; preds = %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit61

bb.s:                                             ; preds = %bb.r
  %.not.i = icmp eq ptr %.sroa.13.0101, %.sroa.21.0100
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i64 %storemerge103, ptr %.sroa.13.0101, align 8, !tbaa !39
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ct = ptrtoint ptr %.sroa.13.0101 to i64
  %i.cu = ptrtoint ptr %.sroa.070.0102 to i64
  %i.cv = sub i64 %i.ct, %i.cu                    ; 5 uses
  %i.cw = icmp eq i64 %i.cv, 9223372036854775800
  br i1 %i.cw, label %bb.v, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #37
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.cx = ashr exact i64 %i.cv, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cx, i64 1)
  %i.cy = add nsw i64 %.sroa.speculated.i.i.i, %i.cx ; 2 uses
  %i.cz = icmp ult i64 %i.cy, %i.cx
  %i.da = tail call i64 @llvm.umin.i64(i64 %i.cy, i64 1152921504606846975)
  %i.db = select i1 %i.cz, i64 1152921504606846975, i64 %i.da ; 3 uses
  %.not.i.i.i53 = icmp ne i64 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i.i.i53)
  %i.dc = shl nuw nsw i64 %i.db, 3
  %i.dd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dc) #38
          to label %.noexc55 unwind label %.loopexit ; 4 uses

.noexc55:                                         ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 %i.cv ; 2 uses
  store i64 %storemerge103, ptr %i.de, align 8, !tbaa !39
  %i.df = icmp sgt i64 %i.cv, 0
  br i1 %i.df, label %bb.w, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

bb.w:                                             ; preds = %.noexc55
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dd, ptr align 8 %.sroa.070.0102, i64 %i.cv, i1 false)
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.w, %.noexc55
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.070.0102) #39
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %i.db
  br label %bb.x

bb.x:                                             ; preds = %bb.t, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i
  %.sroa.21.3 = phi ptr [ %i.dg, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.21.0100, %bb.t ]
  %.pn = phi ptr [ %i.de, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.13.0101, %bb.t ]
  %.sroa.070.6 = phi ptr [ %i.dd, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.070.0102, %bb.t ] ; 2 uses
  %.sroa.13.3 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.dh = load ptr, ptr %i.bm, align 8, !tbaa !486
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %storemerge103
  %i.dj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.di)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %bb.x
  %i.dk = invoke noundef i64 @_ZNK6duckdb19TupleDataCollection11SizeInBytesEv(ptr noundef nonnull align 8 dereferenceable(192) %i.dj)
          to label %bb.z unwind label %bb.ae

bb.z:                                             ; preds = %bb.y
  %i.dl = load ptr, ptr %i.bm, align 8, !tbaa !486
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %storemerge103
  %i.dn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_19TupleDataCollectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm)
          to label %bb.aa unwind label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.do = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb19TupleDataCollection5CountEv(ptr noundef nonnull align 8 dereferenceable(192) %i.dn)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !39
  %i.dq = uitofp i64 %i.dp to double
  %i.dr = load double, ptr %i.br, align 8, !tbaa !850
  %i.ds = fmul double %i.dr, %i.dq
end_hunk_0
