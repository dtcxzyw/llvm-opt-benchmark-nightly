Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/version_set?download=true
inline.NumInlined: 15221
inline.NumDeleted: 6435
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN7rocksdb7Version27GetCreationTimeOfOldestFileEPm:bb.a
  %.12250 = phi i64 [ %spec.select, %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread33 ], [ %.02152, %bb.b ]
  %.sroa.026.049 = phi ptr [ %i.bg, %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread33 ], [ %i.i, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %.sroa.026.049, align 8, !tbaa !347 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  %i.o = load i64, ptr %i.n, align 8, !tbaa !700  ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %bb.c, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread33

bb.c:                                             ; preds = %.lr.ph
  %i.p = load atomic ptr, ptr %i.m acquire, align 8 ; 5 uses
  %.not10.not.i = icmp eq ptr %i.p, null
  br i1 %.not10.not.i, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.336") align 8 %2, ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !701
  %i.t = load ptr, ptr %2, align 8, !tbaa !666
  %.not.i.not.i = icmp eq ptr %i.t, null
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !265  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 4 uses
  %i.w = load atomic i64, ptr %i.v acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.v, align 8, !tbaa !267
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !268
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #41, !inline_history !20
  %i.ad = load ptr, ptr %i.u, align 8, !tbaa !153
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #41, !inline_history !20
  br label %.critedge.i

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !157
  %.not.i.i.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.v, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.v, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %.critedge.i, !prof !270

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #41
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %.not.i.not.i, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread, label %bb.k

bb.k:                                             ; preds = %.critedge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !153
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.336") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !701
  %i.an = load ptr, ptr %3, align 8, !tbaa !666
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 216
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !702 ; 2 uses
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !265 ; 8 uses
  %.not.i.i11.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i11.i, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.as = load atomic i64, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 4294967297
  %i.au = trunc i64 %i.as to i32                  ; 2 uses
  br i1 %i.at, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %i.ar, align 8, !tbaa !267
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.av, align 4, !tbaa !268
  %i.aw = load ptr, ptr %i.aq, align 8, !tbaa !153
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41, !inline_history !20
  %i.az = load ptr, ptr %i.aq, align 8, !tbaa !153
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41, !inline_history !20
  br label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit

bb.n:                                             ; preds = %bb.l
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !157
  %.not.i.i.i12.i = icmp eq i8 %i.bc, 0
  br i1 %.not.i.i.i12.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = add nsw i32 %i.au, -1
  store i32 %i.bd, ptr %i.ar, align 8, !tbaa !269
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13.i

bb.p:                                             ; preds = %bb.n
  %i.be = atomicrmw volatile add ptr %i.ar, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13.i: ; preds = %bb.p, %bb.o
  %.0.i.i.i.i14.i = phi i32 [ %i.au, %bb.o ], [ %i.be, %bb.p ]
  %i.bf = icmp eq i32 %.0.i.i.i.i14.i, 1
  br i1 %i.bf, label %bb.q, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit, !prof !270

bb.q:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aq) #41
  br label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit

_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit: ; preds = %bb.k, %bb.m, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i13.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread33

_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread33: ; preds = %.lr.ph, %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit
  %.1.i36 = phi i64 [ %i.ap, %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit ], [ %i.o, %.lr.ph ]
  %spec.select = call i64 @llvm.umin.i64(i64 %.1.i36, i64 %.12250) ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.026.049, i64 8 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.k
  br i1 %i.bh, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread33
  %.pre = load i32, ptr %i.a, align 4, !tbaa !727
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.bi = phi i32 [ %i.f, %bb.b ], [ %.pre, %._crit_edge.loopexit ] ; 2 uses
  %.122.lcssa = phi i64 [ %.02152, %bb.b ], [ %spec.select, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = sext i32 %i.bi to i64
  %.not25 = icmp slt i64 %indvars.iv.next, %i.bj
  br i1 %.not25, label %bb.b, label %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread, !llvm.loop !1947

_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit.thread: ; preds = %._crit_edge, %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit, %.critedge.i, %bb.c, %bb.a
  %storemerge = phi i64 [ 0, %_ZN7rocksdb12FileMetaData22TryGetFileCreationTimeEv.exit ], [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %.critedge.i ], [ %.122.lcssa, %._crit_edge ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !533
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN7rocksdb7Version21TEST_GetLevelIteratorERKNS_11ReadOptionsEPNS_20MergeIteratorBuilderEib(ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %"class.std::unique_ptr.472", align 8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !737  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !153
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 16 dereferenceable(2288) %i.c, i64 noundef 392, i64 noundef 0, ptr noundef null) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store ptr null, ptr %i.a, align 8, !tbaa !739
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !361 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2704
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !543
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4384
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.n = sext i32 %3 to i64                       ; 3 uses
  %i.o = icmp ult i32 %3, 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.n
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = getelementptr [16 x i8], ptr %i.t, i64 %i.n
  %i.v = getelementptr i8, ptr %i.u, i64 -128
  %.0.i.i = select i1 %i.o, ptr %i.r, ptr %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 2744
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !740
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 584
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !742
  %i.ab = getelementptr inbounds nuw [968 x i8], ptr %i.aa, i64 %i.n
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1836
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !743, !range !560, !noundef !561
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = icmp sgt i32 %3, 0
  %or.cond4.i = and i1 %i.af, %i.ae
  br i1 %or.cond4.i, label %6, label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

6:                                                ; preds = %bb.a
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %8 = load i32, ptr %7, align 4, !tbaa !628
  %9 = add nsw i32 %8, -1
  %10 = icmp eq i32 %3, %9
  br label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

_ZN7rocksdb7Version15IsFilterSkippedEib.exit:     ; preds = %bb.a, %6
  %11 = phi i1 [ %10, %6 ], [ false, %bb.a ]
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 2 uses
  %13 = load i8, ptr %12, align 2, !tbaa !744, !range !560, !noundef !561
  %14 = trunc nuw i8 %13 to i1
  %. = select i1 %14, ptr null, ptr %i.a
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %16 = load ptr, ptr %15, align 16, !tbaa !745
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %18 = load ptr, ptr %17, align 8, !tbaa !746
  call fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorC2EPNS_10TableCacheERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorEPKNS_15LevelFilesBriefERKNS_16MutableCFOptionsEPNS_13HistogramImplENS_17TableReaderCallerEbiPNS_18RangeDelAggregatorEPKSt6vectorINS_28AtomicCompactionUnitBoundaryESaISP_EEbPPPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISV_EEmPNS_10StatisticsEPNS_11SystemClockEb(ptr noundef nonnull align 8 dereferenceable(392) %i.g, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull %.0.i.i, ptr noundef nonnull align 8 dereferenceable(736) %i.w, ptr noundef %i.ab, i8 noundef signext 3, i1 noundef zeroext %11, i32 noundef %3, ptr noundef null, ptr noundef null, i1 noundef zeroext %4, ptr noundef %., i64 noundef 72057594037927935, ptr noundef %16, ptr noundef %18, i1 noundef zeroext false)
  %19 = load i8, ptr %12, align 2, !tbaa !744, !range !560, !noundef !561
  %20 = trunc nuw i8 %19 to i1
  br i1 %20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  call void @_ZN7rocksdb20MergeIteratorBuilder11AddIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull %i.g)
  br label %bb.g

bb.c:                                             ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store ptr null, ptr %5, align 8, !tbaa !749
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !739
  invoke void @_ZN7rocksdb20MergeIteratorBuilder28AddPointAndTombstoneIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS6_EEPPS9_(ptr noundef nonnull align 8 dereferenceable(57) %2, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %i.ag)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr %5, align 8, !tbaa !750   ; 4 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !640 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.aj, %i.ai
  br i1 %.not8.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i ], [ %i.aj, %bb.e ] ; 2 uses
  %i.ak = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !640 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 48) #42
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, %i.ai
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.e
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !626 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !153
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  call void %i.ao(ptr noundef nonnull align 8 dereferenceable(200) %i.al) #41, !inline_history !22
  br label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i, %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ah, i64 noundef 72) #42
  br label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.d, %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  resume { ptr, i32 } %i.ap

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret ptr %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN7rocksdb7Version15IsFilterSkippedEib(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(5369) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !361
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1836
  %i.d = load i8, ptr %i.c, align 4, !tbaa !743, !range !560, !noundef !561
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = icmp sgt i32 %1, 0
  %or.cond = or i1 %i.f, %2
  %or.cond4 = and i1 %or.cond, %i.e
  br i1 %or.cond4, label %3, label %8

3:                                                ; preds = %bb.a
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %5 = load i32, ptr %4, align 4, !tbaa !628
  %6 = add nsw i32 %5, -1
  %7 = icmp eq i32 %1, %6
  br label %8

8:                                                ; preds = %3, %bb.a
  %9 = phi i1 [ %7, %3 ], [ false, %bb.a ]
  ret i1 %9
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorC2EPNS_10TableCacheERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorEPKNS_15LevelFilesBriefERKNS_16MutableCFOptionsEPNS_13HistogramImplENS_17TableReaderCallerEbiPNS_18RangeDelAggregatorEPKSt6vectorINS_28AtomicCompactionUnitBoundaryESaISP_EEbPPPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISV_EEmPNS_10StatisticsEPNS_11SystemClockEb(ptr noundef nonnull align 8 dereferenceable(392) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(736) %6, ptr noundef %7, i8 noundef signext range(i8 3, 11) %8, i1 noundef zeroext %9, i32 noundef %10, ptr noundef %11, ptr noundef %12, i1 noundef zeroext %13, ptr nofree noundef writeonly captures(address_is_null) %14, i64 noundef %15, ptr noundef %16, ptr noundef %17, i1 noundef zeroext %18) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %9 to i8
  %i.b = zext i1 %13 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN7rocksdb9CleanableC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.c)
  store ptr getelementptr inbounds nuw inrange(-16, 216) (i8, ptr @_ZTVN7rocksdb12_GLOBAL__N_113LevelIteratorE, i64 16), ptr %0, align 8, !tbaa !153
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !778
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.e, align 8, !tbaa !779
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.f, align 8, !tbaa !1948
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %4, ptr %i.g, align 8, !tbaa !1949
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.i, ptr %i.j, align 8, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %5, ptr %i.k, align 8, !tbaa !780
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i8 0, i64 16, i1 false)
  %i.m = invoke noundef i64 @_ZN7rocksdb23PackFileNumberAndPathIdEmm(i64 noundef 0, i64 noundef 0)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.m, ptr %i.n, align 8, !tbaa !508
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %i.o, align 8, !tbaa !531
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 72057594037927935, ptr %i.p, align 8, !tbaa !532
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.q, align 8, !tbaa !781
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %6, ptr %i.r, align 8, !tbaa !1950
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !782
  store ptr %i.u, ptr %i.s, align 8, !tbaa !783
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr %7, ptr %i.v, align 8, !tbaa !784
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 %8, ptr %i.w, align 8, !tbaa !785
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !780
  %i.z = load i64, ptr %i.y, align 8, !tbaa !528
  store i64 %i.z, ptr %i.x, align 8, !tbaa !786
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %11, ptr %i.aa, align 8, !tbaa !787
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr null, ptr %i.ab, align 8, !tbaa !788
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr @.str, ptr %i.ac, align 8, !tbaa !143
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i64 0, ptr %i.ad, align 8, !tbaa !144
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 0, ptr %i.ae, align 8, !tbaa !789
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 209
  store i8 1, ptr %i.af, align 1, !tbaa !790
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 0, ptr %i.ag, align 8, !tbaa !791
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr null, ptr %i.ah, align 8, !tbaa !792
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 232
  store ptr %12, ptr %i.ai, align 8, !tbaa !793
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  store ptr null, ptr %i.aj, align 8, !tbaa !794
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.al = icmp ne ptr %14, null                   ; 2 uses
  %i.am = zext i1 %i.al to i8
  store i8 %i.am, ptr %i.ak, align 8, !tbaa !795
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @.str, ptr %i.an, align 8, !tbaa !143
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %i.ao, align 8, !tbaa !144
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.not = icmp eq i64 %15, 72057594037927935
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.aq = load ptr, ptr %2, align 8, !tbaa !1951  ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !153
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.av = phi i64 [ %i.au, %bb.d ], [ 72057594037927935, %bb.c ], [ %15, %bb.b ]
  store i64 %i.av, ptr %i.ap, align 8, !tbaa !796
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %10, ptr %i.aw, align 8, !tbaa !797
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i8 %i.a, ptr %i.ax, align 4, !tbaa !798
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 285
  store i8 %i.b, ptr %i.ay, align 1, !tbaa !799
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 286
  store <4 x i8> <i8 1, i8 0, i8 0, i8 0>, ptr %i.az, align 2, !tbaa !559
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.ba, align 8, !tbaa !800
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %16, ptr %i.bb, align 8, !tbaa !801
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %17, ptr %i.bc, align 8, !tbaa !802
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.sroa.0.0.insert.insert.i = select i1 %18, i24 65793, i24 0
  store i24 %.sroa.0.0.insert.insert.i, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.be, align 8, !tbaa !1952
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.bg, ptr %i.bf, align 8, !tbaa !803
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 1, ptr %i.bh, align 8, !tbaa !804
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.bj, align 8, !tbaa !646
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false)
  br i1 %i.al, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  store ptr %i.aj, ptr %14, align 8, !tbaa !739
  br label %bb.h

bb.g:                                             ; preds = %bb.a, %bb.d
  %i.bl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN7rocksdb9CleanableD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.c) #41
  resume { ptr, i32 } %i.bl

bb.h:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN7rocksdb20MergeIteratorBuilder11AddIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef) local_unnamed_addr #13

declare void @_ZN7rocksdb20MergeIteratorBuilder28AddPointAndTombstoneIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS6_EEPPS9_(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !750    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !640  ; 2 uses
  %.not8.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not8.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %.lr.ph.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %.09.i.i.i.i, align 8, !tbaa !640 ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i, i64 noundef 48) #42
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !21

_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.b
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !626  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit, label %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i

_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !153
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(200) %i.e) #41, !inline_history !1953
  br label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit

_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i, %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 72) #42
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i64 @_ZNK7rocksdb18VersionStorageInfo22GetEstimatedActiveKeysEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(4288) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.b = load i64, ptr %i.a, align 16, !tbaa !805 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4192
  %i.e = load i64, ptr %i.d, align 16, !tbaa !806 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4200
end_hunk_0
begin_hunk_1_@_ZN7rocksdb7Version20AddIteratorsForLevelERKNS_11ReadOptionsERKNS_11FileOptionsEPNS_20MergeIteratorBuilderEibmPKNS_13MultiScanArgsE:bb.a
  call void @_ZdlPvm(ptr noundef %i.iz, i64 noundef %i.je) #42
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit85.jt0.i.i

_ZN7rocksdb11InternalKeyD2Ev.exit85.jt1.i.i:      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.jt1.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.jt1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41, !noalias !1965
  br label %.loopexit40.i

_ZN7rocksdb11InternalKeyD2Ev.exit85.jt0.i.i:      ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i83.jt0.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41, !noalias !1965
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.092.0119.i.i, i64 96 ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.gb
  br i1 %i.jg, label %.loopexit40.i, label %bb.z

bb.aq:                                            ; preds = %bb.ao, %bb.ae
  %.pn.i.i = phi { ptr, i32 } [ %i.in, %bb.ao ], [ %i.hh, %bb.ae ] ; 2 uses
  %i.jh = load ptr, ptr %13, align 8, !tbaa !156, !noalias !1965 ; 2 uses
  %i.ji = icmp eq ptr %i.jh, %i.gm
  br i1 %i.ji, label %_ZN7rocksdb11InternalKeyD2Ev.exit88.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i.i: ; preds = %bb.aq
  %i.jj = load i64, ptr %i.gm, align 8, !tbaa !157, !noalias !1965
  %i.jk = add i64 %i.jj, 1
  call void @_ZdlPvm(ptr noundef %i.jh, i64 noundef %i.jk) #42
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit88.i.i

_ZN7rocksdb11InternalKeyD2Ev.exit88.i.i:          ; preds = %bb.aq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i.i, %bb.ad
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.hg, %bb.ad ], [ %.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i86.i.i ], [ %.pn.i.i, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41, !noalias !1965
  br label %bb.ar

bb.ar:                                            ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit88.i.i, %bb.aa
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %.pn.pn.i.i, %_ZN7rocksdb11InternalKeyD2Ev.exit88.i.i ], [ %i.gw, %bb.aa ]
  %i.jl = load ptr, ptr %11, align 8, !tbaa !156, !noalias !1965 ; 2 uses
  %i.jm = icmp eq ptr %i.jl, %i.gn
  br i1 %i.jm, label %_ZN7rocksdb11InternalKeyD2Ev.exit91.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i.i: ; preds = %bb.ar
  %i.jn = load i64, ptr %i.gn, align 8, !tbaa !157, !noalias !1965
  %i.jo = add i64 %i.jn, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jo) #42
  br label %_ZN7rocksdb11InternalKeyD2Ev.exit91.i.i

_ZN7rocksdb11InternalKeyD2Ev.exit91.i.i:          ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41, !noalias !1965
  br label %.body.i

.loopexit40.i:                                    ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit85.jt0.i.i, %.thread101.i.i, %.noexc27.i, %.thread101.i.i.us, %.noexc27.i.us.us, %.thread101.i.us.i, %.noexc23.us.i, %.thread101.i.us.us.i, %.noexc23.us.us.us.i, %_ZN7rocksdb11InternalKeyD2Ev.exit85.jt1.i.i, %bb.y, %.lr.ph128.i.i, %bb.m
  %.pr = load ptr, ptr %16, align 8, !tbaa !814, !noalias !1965 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15), !noalias !1965
  %.not.i.i.i32.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i32.i, label %_ZN7rocksdb12_GLOBAL__N_128GetMultiScanOverlappingFilesERKNS_21InternalKeyComparatorERKNS_21UserComparatorWrapperERKNS_15LevelFilesBriefEiRKNS_13MultiScanArgsEm.exit, label %bb.as

bb.as:                                            ; preds = %.loopexit40.i
  %i.jp = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !1966, !noalias !1965
  %i.jr = ptrtoint ptr %i.jq to i64
  %i.js = ptrtoint ptr %.pr to i64
  %i.jt = sub i64 %i.jr, %i.js
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.jt) #42
  br label %_ZN7rocksdb12_GLOBAL__N_128GetMultiScanOverlappingFilesERKNS_21InternalKeyComparatorERKNS_21UserComparatorWrapperERKNS_15LevelFilesBriefEiRKNS_13MultiScanArgsEm.exit

bb.at:                                            ; preds = %bb.h, %bb.g
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.au:                                            ; preds = %bb.l, %bb.k
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit34.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.p, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i.us.us, %bb.o, %.lr.ph124.split.i.i.us.us, %.lr.ph124.split.us.i.us.us.us.i, %bb.q, %bb.r, %bb.u, %bb.t, %bb.s, %.lr.ph124.split.us.i.us.i, %.lr.ph124.split.i.i, %bb.v, %_ZTWN7rocksdb10perf_levelE.exit.i.i.i, %bb.w, %bb.x, %bb.z
  %lpad.loopexit.split-lp263 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZN7rocksdb11InternalKeyD2Ev.exit91.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %.pn.pn.pn.i.i, %_ZN7rocksdb11InternalKeyD2Ev.exit91.i.i ], [ %lpad.loopexit.split-lp263, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.jw = load ptr, ptr %16, align 8, !tbaa !814, !noalias !1965 ; 3 uses
  %.not.i.i.i33.i = icmp eq ptr %i.jw, null
  br i1 %.not.i.i.i33.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit34.i, label %bb.av

bb.av:                                            ; preds = %.body.i
  %i.jx = load ptr, ptr %i.bf, align 8, !tbaa !1966, !noalias !1965
  %i.jy = ptrtoint ptr %i.jx to i64
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = sub i64 %i.jy, %i.jz
  call void @_ZdlPvm(ptr noundef nonnull %i.jw, i64 noundef %i.ka) #42
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit34.i

_ZNSt6vectorIcSaIcEED2Ev.exit34.i:                ; preds = %bb.av, %.body.i, %bb.au
  %.pn.i = phi { ptr, i32 } [ %i.jv, %bb.au ], [ %eh.lpad-body.i, %.body.i ], [ %eh.lpad-body.i, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41, !noalias !1965
  br label %bb.aw

bb.aw:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit34.i, %bb.at
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %_ZNSt6vectorIcSaIcEED2Ev.exit34.i ], [ %i.ju, %bb.at ] ; 2 uses
  %i.kb = load ptr, ptr %18, align 8, !tbaa !284, !alias.scope !1965 ; 3 uses
  %.not.i.i.i35.i = icmp eq ptr %i.kb, null
  br i1 %.not.i.i.i35.i, label %common.resume, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kc = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !285, !alias.scope !1965
  %i.ke = ptrtoint ptr %i.kd to i64
  %i.kf = ptrtoint ptr %i.kb to i64
  %i.kg = sub i64 %i.ke, %i.kf
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef %i.kg) #42
  br label %common.resume

common.resume:                                    ; preds = %bb.aw, %bb.ax, %bb.ch
  %common.resume.op = phi { ptr, i32 } [ %.pn98.pn.pn, %bb.ch ], [ %.pn.pn.i, %bb.ax ], [ %.pn.pn.i, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

.thread:                                          ; preds = %.lr.ph.i.i, %.critedge.i.i, %_ZNK7rocksdb13MultiScanArgs20HasBoundedScanRangesEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZN7rocksdb12_GLOBAL__N_128GetMultiScanOverlappingFilesERKNS_21InternalKeyComparatorERKNS_21UserComparatorWrapperERKNS_15LevelFilesBriefEiRKNS_13MultiScanArgsEm.exit: ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i, %.loopexit40.i, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41, !noalias !1965
  %.pre = load ptr, ptr %18, align 8, !tbaa !826  ; 4 uses
  %.pre158 = load ptr, ptr %i.ao, align 8, !tbaa !826 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.kh = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ki = icmp eq ptr %.pre, %.pre158
  br i1 %i.ki, label %bb.br, label %bb.ay

bb.ay:                                            ; preds = %_ZN7rocksdb12_GLOBAL__N_128GetMultiScanOverlappingFilesERKNS_21InternalKeyComparatorERKNS_21UserComparatorWrapperERKNS_15LevelFilesBriefEiRKNS_13MultiScanArgsEm.exit
  br i1 %i.x, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay
  %i.kj = invoke noundef ptr @_ZN7rocksdb6Random14GetTLSInstanceEv()
          to label %bb.ba unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.ba:                                            ; preds = %bb.az
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !828
  %i.kl = zext i32 %i.kk to i64
  %i.km = mul nuw nsw i64 %i.kl, 16807            ; 2 uses
  %i.kn = lshr i64 %i.km, 31
  %i.ko = and i64 %i.km, 2147483647
  %i.kp = add nuw nsw i64 %i.kn, %i.ko
  %i.kq = trunc nuw i64 %i.kp to i32              ; 3 uses
  %i.kr = icmp slt i32 %i.kq, 0
  %i.ks = add i32 %i.kq, -2147483647
  %spec.select.i.i105 = select i1 %i.kr, i32 %i.ks, i32 %i.kq ; 2 uses
  store i32 %spec.select.i.i105, ptr %i.kj, align 4, !tbaa !828
  %i.kt = and i32 %spec.select.i.i105, 1023
  %i.ku = icmp eq i32 %i.kt, 307
  %i.kv = load ptr, ptr %18, align 8, !tbaa !826  ; 2 uses
  %i.kw = load ptr, ptr %i.kh, align 8, !tbaa !826 ; 2 uses
  %i.kx = icmp eq ptr %i.kv, %i.kw
  br i1 %i.kx, label %thread-pre-split, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ba
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 5336
  %i.la = getelementptr i8, ptr %i.j, i64 8       ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph, %bb.be
  %.sroa.0113.0134 = phi ptr [ %i.kv, %.lr.ph ], [ %i.lk, %bb.be ] ; 2 uses
  %i.lb = load i64, ptr %.sroa.0113.0134, align 8, !tbaa !533 ; 2 uses
  %i.lc = load ptr, ptr %i.s, align 16, !tbaa !361
  %i.ld = load i64, ptr %i.kz, align 8, !tbaa !829
  %.val103 = load ptr, ptr %i.la, align 8, !tbaa !530
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_124AddTableIteratorForLevelEPNS_16ColumnFamilyDataERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_16MutableCFOptionsEPNS_20MergeIteratorBuilderEPNS_5ArenaERKNS_15LevelFilesBriefEimbmbm(ptr noundef %i.lc, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(736) %i.ky, ptr noundef nonnull %3, ptr noundef %i.r, ptr %.val103, i32 noundef 0, i64 noundef %i.lb, i1 noundef zeroext false, i64 noundef %i.ld, i1 noundef zeroext %5, i64 noundef %6)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bc:                                            ; preds = %bb.bb
  br i1 %i.ku, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.le = load ptr, ptr %i.la, align 8, !tbaa !530
  %i.lf = getelementptr inbounds nuw [88 x i8], ptr %i.le, i64 %i.lb
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 48
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !535
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 112
  %i.lj = atomicrmw add ptr %i.li, i64 1024 monotonic, align 8 ; 0 uses
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.0113.0134, i64 8 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.kw
  br i1 %i.ll, label %thread-pre-split, label %bb.bb

bb.bf:                                            ; preds = %bb.ay
  %i.lm = ptrtoint ptr %.pre158 to i64
  %i.ln = ptrtoint ptr %.pre to i64
  %i.lo = sub i64 %i.lm, %i.ln
  %i.lp = icmp eq i64 %i.lo, 8
  br i1 %i.lp, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.lq = load ptr, ptr %i.s, align 16, !tbaa !361 ; 2 uses
  %i.lr = load i64, ptr %.pre, align 8, !tbaa !533
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lq, i64 1836
  %i.lt = load i8, ptr %i.ls, align 4, !tbaa !743, !range !560, !noundef !561
  %i.lu = trunc nuw i8 %i.lt to i1
  %i.lv = icmp sgt i32 %4, 0
  %or.cond4.i = and i1 %i.lv, %i.lu
  br i1 %or.cond4.i, label %21, label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

21:                                               ; preds = %bb.bg
  %22 = load i32, ptr %i.d, align 4, !tbaa !628
  %23 = add nsw i32 %22, -1
  %24 = icmp eq i32 %4, %23
  br label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

_ZN7rocksdb7Version15IsFilterSkippedEib.exit:     ; preds = %21, %bb.bg
  %25 = phi i1 [ %24, %21 ], [ false, %bb.bg ]
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %27 = getelementptr i8, ptr %.0.i.i, i64 8
  %.val102 = load ptr, ptr %27, align 8, !tbaa !530
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_124AddTableIteratorForLevelEPNS_16ColumnFamilyDataERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_16MutableCFOptionsEPNS_20MergeIteratorBuilderEPNS_5ArenaERKNS_15LevelFilesBriefEimbmbm(ptr noundef nonnull %i.lq, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(736) %26, ptr noundef nonnull %3, ptr noundef %i.r, ptr %.val102, i32 noundef %4, i64 noundef %i.lr, i1 noundef zeroext %25, i64 noundef 0, i1 noundef zeroext %5, i64 noundef %6)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %bb.bf
  %i.lw = load ptr, ptr %i.r, align 16, !tbaa !153
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 24
  %i.ly = load ptr, ptr %i.lx, align 8
  %i.lz = invoke noundef ptr %i.ly(ptr noundef nonnull align 16 dereferenceable(2288) %i.r, i64 noundef 392, i64 noundef 0, ptr noundef null)
          to label %bb.bi unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store ptr null, ptr %i.b, align 8, !tbaa !739
  %i.ma = load ptr, ptr %i.s, align 16, !tbaa !361 ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 2704
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !543
  %i.md = getelementptr inbounds nuw i8, ptr %i.ma, i64 64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 2744
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !740
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 584
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !742
  %i.mi = getelementptr inbounds nuw [968 x i8], ptr %i.mh, i64 %i.f
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ma, i64 1836
  %i.mk = load i8, ptr %i.mj, align 4, !tbaa !743, !range !560, !noundef !561
  %i.ml = trunc nuw i8 %i.mk to i1
  %i.mm = icmp sgt i32 %4, 0
  %or.cond4.i106 = and i1 %i.mm, %i.ml
  br i1 %or.cond4.i106, label %28, label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit107

28:                                               ; preds = %bb.bi
  %29 = load i32, ptr %i.d, align 4, !tbaa !628
  %30 = add nsw i32 %29, -1
  %31 = icmp eq i32 %4, %30
  br label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit107

_ZN7rocksdb7Version15IsFilterSkippedEib.exit107:  ; preds = %28, %bb.bi
  %32 = phi i1 [ %31, %28 ], [ false, %bb.bi ]
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %34 = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 2 uses
  %35 = load i8, ptr %34, align 2, !tbaa !744, !range !560, !noundef !561
  %36 = trunc nuw i8 %35 to i1
  %. = select i1 %36, ptr null, ptr %i.b
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %38 = load ptr, ptr %37, align 16, !tbaa !745
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %40 = load ptr, ptr %39, align 8, !tbaa !746
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorC2EPNS_10TableCacheERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorEPKNS_15LevelFilesBriefERKNS_16MutableCFOptionsEPNS_13HistogramImplENS_17TableReaderCallerEbiPNS_18RangeDelAggregatorEPKSt6vectorINS_28AtomicCompactionUnitBoundaryESaISP_EEbPPPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISV_EEmPNS_10StatisticsEPNS_11SystemClockEb(ptr noundef nonnull align 8 dereferenceable(392) %i.lz, ptr noundef %i.mc, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.md, ptr noundef nonnull %.0.i.i, ptr noundef nonnull align 8 dereferenceable(736) %33, ptr noundef nonnull %i.mi, i8 noundef signext 3, i1 noundef zeroext %32, i32 noundef %4, ptr noundef null, ptr noundef null, i1 noundef zeroext %5, ptr noundef %., i64 noundef %6, ptr noundef %38, ptr noundef %40, i1 noundef zeroext false)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit107
  %i.mn = load i8, ptr %34, align 2, !tbaa !744, !range !560, !noundef !561
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  invoke void @_ZN7rocksdb20MergeIteratorBuilder11AddIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull %i.lz)
          to label %bb.bp unwind label %bb.bl

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %bb.az, %_ZN7rocksdb7Version15IsFilterSkippedEib.exit, %bb.bh
  %lpad.loopexit.split-lp249 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk, %_ZN7rocksdb7Version15IsFilterSkippedEib.exit107
  %i.mp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #41
  store ptr null, ptr %19, align 8, !tbaa !749
  %i.mq = load ptr, ptr %i.b, align 8, !tbaa !739
  invoke void @_ZN7rocksdb20MergeIteratorBuilder28AddPointAndTombstoneIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS6_EEPPS9_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull %i.lz, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %i.mq)
          to label %bb.bn unwind label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  call void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bk, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %thread-pre-split

bb.bq:                                            ; preds = %bb.bo, %bb.bl
  %.pn = phi { ptr, i32 } [ %i.mp, %bb.bl ], [ %i.mr, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %.loopexit.split-lp

thread-pre-split:                                 ; preds = %bb.be, %bb.ba, %bb.bp, %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  %.pr116 = load ptr, ptr %18, align 8, !tbaa !284
  br label %bb.br

bb.br:                                            ; preds = %thread-pre-split, %_ZN7rocksdb12_GLOBAL__N_128GetMultiScanOverlappingFilesERKNS_21InternalKeyComparatorERKNS_21UserComparatorWrapperERKNS_15LevelFilesBriefEiRKNS_13MultiScanArgsEm.exit
  %i.ms = phi ptr [ %.pr116, %thread-pre-split ], [ %.pre, %_ZN7rocksdb12_GLOBAL__N_128GetMultiScanOverlappingFilesERKNS_21InternalKeyComparatorERKNS_21UserComparatorWrapperERKNS_15LevelFilesBriefEiRKNS_13MultiScanArgsEm.exit ] ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.mt = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !285
  %i.mv = ptrtoint ptr %i.mu to i64
  %i.mw = ptrtoint ptr %i.ms to i64
  %i.mx = sub i64 %i.mv, %i.mw
  call void @_ZdlPvm(ptr noundef nonnull %i.ms, i64 noundef %i.mx) #42
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %.thread, %bb.br, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bq
  %.pn98.pn = phi { ptr, i32 } [ %.pn, %bb.bq ], [ %lpad.loopexit.split-lp249, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.my = load ptr, ptr %18, align 8, !tbaa !284  ; 3 uses
  %.not.i.i.i107 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i107, label %_ZNSt6vectorImSaImEED2Ev.exit108, label %bb.bt

bb.bt:                                            ; preds = %.loopexit.split-lp
  %i.mz = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !285
  %i.nb = ptrtoint ptr %i.na to i64
  %i.nc = ptrtoint ptr %i.my to i64
  %i.nd = sub i64 %i.nb, %i.nc
  call void @_ZdlPvm(ptr noundef nonnull %i.my, i64 noundef %i.nd) #42
  br label %_ZNSt6vectorImSaImEED2Ev.exit108

_ZNSt6vectorImSaImEED2Ev.exit108:                 ; preds = %.loopexit.split-lp, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  br label %bb.ch

bb.bu:                                            ; preds = %bb.c
  %i.ne = icmp eq i32 %4, 0
  br i1 %i.ne, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.nf = tail call noundef ptr @_ZN7rocksdb6Random14GetTLSInstanceEv() ; 2 uses
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !828
  %i.nh = zext i32 %i.ng to i64
  %i.ni = mul nuw nsw i64 %i.nh, 16807            ; 2 uses
  %i.nj = lshr i64 %i.ni, 31
  %i.nk = and i64 %i.ni, 2147483647
  %i.nl = add nuw nsw i64 %i.nj, %i.nk
  %i.nm = trunc nuw i64 %i.nl to i32              ; 3 uses
  %i.nn = icmp slt i32 %i.nm, 0
  %i.no = add i32 %i.nm, -2147483647
  %spec.select.i.i109 = select i1 %i.nn, i32 %i.no, i32 %i.nm ; 2 uses
  store i32 %spec.select.i.i109, ptr %i.nf, align 4, !tbaa !828
  %i.np = and i32 %spec.select.i.i109, 1023
  %i.nq = icmp eq i32 %i.np, 307
  %i.nr = load i64, ptr %i.j, align 8, !tbaa !528
  %.not137 = icmp eq i64 %i.nr, 0
  br i1 %.not137, label %.loopexit, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.bv
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.nt = getelementptr inbounds nuw i8, ptr %0, i64 5336
  %i.nu = getelementptr i8, ptr %i.j, i64 8       ; 2 uses
  br label %bb.bw

bb.bw:                                            ; preds = %.lr.ph136, %bb.by
  %.0135 = phi i64 [ 0, %.lr.ph136 ], [ %i.od, %bb.by ] ; 3 uses
  %i.nv = load ptr, ptr %i.s, align 16, !tbaa !361
  %i.nw = load i64, ptr %i.nt, align 8, !tbaa !829
  %.val = load ptr, ptr %i.nu, align 8, !tbaa !530
  tail call fastcc void @_ZN7rocksdb12_GLOBAL__N_124AddTableIteratorForLevelEPNS_16ColumnFamilyDataERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_16MutableCFOptionsEPNS_20MergeIteratorBuilderEPNS_5ArenaERKNS_15LevelFilesBriefEimbmbm(ptr noundef %i.nv, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(736) %i.ns, ptr noundef nonnull %3, ptr noundef %i.r, ptr %.val, i32 noundef 0, i64 noundef %.0135, i1 noundef zeroext false, i64 noundef %i.nw, i1 noundef zeroext %5, i64 noundef %6)
  br i1 %i.nq, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.nx = load ptr, ptr %i.nu, align 8, !tbaa !530
  %i.ny = getelementptr inbounds nuw [88 x i8], ptr %i.nx, i64 %.0135
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 48
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !535
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 112
  %i.oc = atomicrmw add ptr %i.ob, i64 1024 monotonic, align 8 ; 0 uses
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %i.od = add nuw i64 %.0135, 1                   ; 2 uses
  %i.oe = load i64, ptr %.0.i.i, align 8, !tbaa !528
  %i.of = icmp ult i64 %i.od, %i.oe
  br i1 %i.of, label %bb.bw, label %.loopexit, !llvm.loop !1964

bb.bz:                                            ; preds = %bb.bu
  %i.og = load ptr, ptr %i.r, align 16, !tbaa !153
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8
  %i.oj = tail call noundef ptr %i.oi(ptr noundef nonnull align 16 dereferenceable(2288) %i.r, i64 noundef 392, i64 noundef 0, ptr noundef null) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store ptr null, ptr %i.c, align 8, !tbaa !739
  %i.ok = load ptr, ptr %i.s, align 16, !tbaa !361 ; 4 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 2704
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !543
  %i.on = getelementptr inbounds nuw i8, ptr %i.ok, i64 64
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.op = getelementptr inbounds nuw i8, ptr %i.ok, i64 2744
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !740
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 584
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !742
  %i.ot = getelementptr inbounds nuw [968 x i8], ptr %i.os, i64 %i.f
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ok, i64 1836
  %i.ov = load i8, ptr %i.ou, align 4, !tbaa !743, !range !560, !noundef !561
  %i.ow = trunc nuw i8 %i.ov to i1
  %i.ox = icmp sgt i32 %4, 0
  %or.cond4.i110 = and i1 %i.ox, %i.ow
  br i1 %or.cond4.i110, label %41, label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit112

41:                                               ; preds = %bb.bz
  %42 = load i32, ptr %i.d, align 4, !tbaa !628
  %43 = add nsw i32 %42, -1
  %44 = icmp eq i32 %4, %43
  br label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit112

_ZN7rocksdb7Version15IsFilterSkippedEib.exit112:  ; preds = %bb.bz, %41
  %45 = phi i1 [ %44, %41 ], [ false, %bb.bz ]
  %46 = getelementptr inbounds nuw i8, ptr %1, i64 74 ; 2 uses
  %47 = load i8, ptr %46, align 2, !tbaa !744, !range !560, !noundef !561
  %48 = trunc nuw i8 %47 to i1
  %.1 = select i1 %48, ptr null, ptr %i.c
  %49 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %50 = load ptr, ptr %49, align 16, !tbaa !745
  %51 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %52 = load ptr, ptr %51, align 8, !tbaa !746
  call fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorC2EPNS_10TableCacheERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorEPKNS_15LevelFilesBriefERKNS_16MutableCFOptionsEPNS_13HistogramImplENS_17TableReaderCallerEbiPNS_18RangeDelAggregatorEPKSt6vectorINS_28AtomicCompactionUnitBoundaryESaISP_EEbPPPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISV_EEmPNS_10StatisticsEPNS_11SystemClockEb(ptr noundef nonnull align 8 dereferenceable(392) %i.oj, ptr noundef %i.om, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull %.0.i.i, ptr noundef nonnull align 8 dereferenceable(736) %i.oo, ptr noundef nonnull %i.ot, i8 noundef signext 3, i1 noundef zeroext %45, i32 noundef %4, ptr noundef null, ptr noundef null, i1 noundef zeroext %5, ptr noundef %.1, i64 noundef %6, ptr noundef %50, ptr noundef %52, i1 noundef zeroext false)
  %53 = load i8, ptr %46, align 2, !tbaa !744, !range !560, !noundef !561
  %54 = trunc nuw i8 %53 to i1
  br i1 %54, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit112
  call void @_ZN7rocksdb20MergeIteratorBuilder11AddIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull %i.oj)
  br label %bb.cf

bb.cb:                                            ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  store ptr null, ptr %20, align 8, !tbaa !749
  %i.oy = load ptr, ptr %i.c, align 8, !tbaa !739
  invoke void @_ZN7rocksdb20MergeIteratorBuilder28AddPointAndTombstoneIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS6_EEPPS9_(ptr noundef nonnull align 8 dereferenceable(57) %3, ptr noundef nonnull %i.oj, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %i.oy)
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.oz = load ptr, ptr %20, align 8, !tbaa !750  ; 4 uses
  %.not.i = icmp eq ptr %i.oz, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 32 ; 3 uses
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !640 ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.pb, %i.pa
  br i1 %.not8.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cd, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.pc, %.lr.ph.i.i.i.i.i ], [ %i.pb, %bb.cd ] ; 2 uses
  %i.pc = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !640 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 48) #42
  %.not.i.i.i.i.i111 = icmp eq ptr %i.pc, %i.pa
  br i1 %.not.i.i.i.i.i111, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.cd
  %i.pd = load ptr, ptr %i.oz, align 8, !tbaa !626 ; 3 uses
  %.not.i.i.i.i112 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i112, label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !153
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(200) %i.pd) #41, !inline_history !22
  br label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i, %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.oz, i64 noundef 72) #42
  br label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cc, %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.ph = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %bb.ch

bb.cf:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %.loopexit

.loopexit:                                        ; preds = %bb.by, %bb.bv, %bb.cf, %_ZNSt6vectorImSaImEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  br label %bb.cg

bb.cg:                                            ; preds = %bb.b, %bb.a, %.loopexit
  ret void

bb.ch:                                            ; preds = %bb.ce, %_ZNSt6vectorImSaImEED2Ev.exit108
  %.pn98.pn.pn = phi { ptr, i32 } [ %.pn98.pn, %_ZNSt6vectorImSaImEED2Ev.exit108 ], [ %i.ph, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_124AddTableIteratorForLevelEPNS_16ColumnFamilyDataERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_16MutableCFOptionsEPNS_20MergeIteratorBuilderEPNS_5ArenaERKNS_15LevelFilesBriefEimbmbm(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(736) %3, ptr noundef %4, ptr noundef %5, ptr nofree readonly captures(none) %.8.val, i32 noundef %6, i64 noundef %7, i1 noundef zeroext %8, i64 noundef %9, i1 noundef zeroext %10, i64 noundef %11) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %12 = alloca %"class.std::unique_ptr.472", align 8 ; 8 uses
  %13 = alloca %"struct.rocksdb::TableCacheOpenOptions", align 1 ; 5 uses
  store i64 %11, ptr %i.a, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  store ptr null, ptr %12, align 8, !tbaa !749
  %i.b = getelementptr inbounds nuw [88 x i8], ptr %.8.val, i64 %7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2704
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !543
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !535
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !740
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 584
  %i.k = sext i32 %6 to i64
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !742
  %i.m = getelementptr inbounds nuw [968 x i8], ptr %i.l, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %13, i8 0, i64 3, i1 false)
  %i.n = invoke noundef ptr @_ZN7rocksdb10TableCache11NewIteratorERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPNS_18RangeDelAggregatorERKNS_16MutableCFOptionsEPPNS_11TableReaderEPNS_13HistogramImplENS_17TableReaderCallerEPNS_5ArenaEbimPKNS_11InternalKeyESS_bPKmPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISW_EEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_21TableCacheOpenOptionsE(ptr noundef nonnull align 8 dereferenceable(152) %i.d, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(216) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(417) %i.g, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(736) %3, ptr noundef null, ptr noundef %i.m, i8 noundef signext 3, ptr noundef %5, i1 noundef zeroext %8, i32 noundef %6, i64 noundef %9, ptr noundef null, ptr noundef null, i1 noundef zeroext %10, ptr noundef nonnull %i.a, ptr noundef nonnull %12, i1 noundef zeroext true, ptr noundef null, ptr noundef nonnull align 1 dereferenceable(3) %13)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.p = load i8, ptr %i.o, align 2, !tbaa !744, !range !560, !noundef !561
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN7rocksdb20MergeIteratorBuilder11AddIteratorEPNS_20InternalIteratorBaseINS_5SliceEEE(ptr noundef nonnull align 8 dereferenceable(57) %4, ptr noundef %i.n)
          to label %bb.g unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %bb.i

bb.e:                                             ; preds = %bb.f, %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  invoke void @_ZN7rocksdb20MergeIteratorBuilder28AddPointAndTombstoneIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEOSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteIS6_EEPPS9_(ptr noundef nonnull align 8 dereferenceable(57) %4, ptr noundef %i.n, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef null)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.t = load ptr, ptr %12, align 8, !tbaa !750   ; 4 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !640  ; 2 uses
  %.not8.i.i.i.i.i = icmp eq ptr %i.v, %i.u
  br i1 %.not8.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.v, %bb.h ] ; 2 uses
  %i.w = load ptr, ptr %.09.i.i.i.i.i, align 8, !tbaa !640 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i.i.i.i, i64 noundef 48) #42
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.u
  br i1 %.not.i.i.i.i.i, label %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.h
  %i.x = load ptr, ptr %i.t, align 8, !tbaa !626  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i, label %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !153
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(200) %i.x) #41, !inline_history !22
  br label %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb32FragmentedRangeTombstoneIteratorEEclEPS1_.exit.i.i.i.i, %_ZNSt7__cxx1110_List_baseIN7rocksdb17ParsedInternalKeyESaIS2_EED2Ev.exit.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 72) #42
  br label %_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.g, %_ZNKSt14default_deleteIN7rocksdb25TruncatedRangeDelIteratorEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  ret void

bb.i:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.r, %bb.d ]
  call void @_ZNSt10unique_ptrIN7rocksdb25TruncatedRangeDelIteratorESt14default_deleteIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb7Version24OverlapWithLevelIteratorERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_5SliceES9_iPb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 16 dereferenceable(5369) %1, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i32 noundef %6, ptr nofree noundef captures(none) %7) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %9 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %10 = alloca %"class.rocksdb::InternalKeyComparator", align 8 ; 9 uses
  %11 = alloca %"class.rocksdb::Arena", align 16  ; 8 uses
  %12 = alloca %"class.rocksdb::ReadRangeDelAggregator", align 8 ; 26 uses
  %13 = alloca %"struct.rocksdb::TableCacheOpenOptions", align 1 ; 5 uses
  %14 = alloca %"class.rocksdb::Status", align 8  ; 11 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !361
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7rocksdb21InternalKeyComparatorE, i64 16), ptr %10, align 8, !tbaa !153
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load i64, ptr %i.d, align 8, !tbaa !830  ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !830
  %.cast = inttoptr i64 %i.e to ptr               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  call void @_ZN7rocksdb5ArenaC1EmPNS_12AllocTrackerEm(ptr noundef nonnull align 16 dereferenceable(2288) %11, i64 noundef 4096, ptr noundef null, i64 noundef 0)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  store ptr null, ptr %i.f, align 8, !tbaa !601
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.g = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %10, ptr %i.g, align 8, !tbaa !1976
  %i.h = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  store i32 0, ptr %i.h, align 8, !tbaa !660
  %i.i = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !657
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 40
  store ptr %i.h, ptr %i.j, align 8, !tbaa !658
end_hunk_1
begin_hunk_2_@_ZN7rocksdb7Version24OverlapWithLevelIteratorERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_5SliceES9_iPb:bb.a
  %i.ai = phi ptr [ %i.w, %.lr.ph ], [ %i.cm, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread ]
  %.03997 = phi i64 [ 0, %.lr.ph ], [ %i.cl, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread ] ; 2 uses
  %i.aj = phi i8 [ 0, %.lr.ph ], [ %i.ck, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread ] ; 6 uses
  %i.ak = phi ptr [ null, %.lr.ph ], [ %i.cj, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread ] ; 12 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !530
  %i.an = getelementptr inbounds nuw [88 x i8], ptr %i.am, i64 %.03997 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !143
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 80
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !144
  %i.as = add i64 %i.ar, -8
  store ptr %i.ap, ptr %9, align 8
  store i64 %i.as, ptr %i.y, align 8
  %i.at = load ptr, ptr %.cast, align 8, !tbaa !153
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 232
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(48) %.cast, ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %9, i1 noundef zeroext true)
          to label %bb.g unwind label %.loopexit89, !inline_history !1968

bb.g:                                             ; preds = %bb.f
  %i.ax = icmp sgt i32 %i.aw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %i.ax, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !143
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !144
  %i.bc = add i64 %i.bb, -8
  store ptr %i.az, ptr %8, align 8
  store i64 %i.bc, ptr %i.z, align 8
  %i.bd = load ptr, ptr %.cast, align 8, !tbaa !153
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 232
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = invoke noundef i32 %i.bf(ptr noundef nonnull align 8 dereferenceable(48) %.cast, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %8, i1 noundef zeroext true)
          to label %bb.i unwind label %.loopexit89, !inline_history !1969

bb.i:                                             ; preds = %bb.h
  %i.bh = icmp slt i32 %i.bg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br i1 %i.bh, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = load ptr, ptr %i.a, align 16, !tbaa !361 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2704
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !543
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !535
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 2744
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !740
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 584
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !742
  %i.bs = load i64, ptr %i.ab, align 8, !tbaa !829
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %13, i8 0, i64 3, i1 false)
  %i.bt = invoke noundef ptr @_ZN7rocksdb10TableCache11NewIteratorERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPNS_18RangeDelAggregatorERKNS_16MutableCFOptionsEPPNS_11TableReaderEPNS_13HistogramImplENS_17TableReaderCallerEPNS_5ArenaEbimPKNS_11InternalKeyESS_bPKmPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISW_EEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_21TableCacheOpenOptionsE(ptr noundef nonnull align 8 dereferenceable(152) %i.bk, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.bl, ptr noundef nonnull align 8 dereferenceable(417) %i.bn, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(736) %i.aa, ptr noundef null, ptr noundef %i.br, i8 noundef signext 3, ptr noundef nonnull %11, i1 noundef zeroext false, i32 noundef 0, i64 noundef %i.bs, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull align 1 dereferenceable(3) %13)
          to label %bb.k unwind label %bb.o       ; 7 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_119OverlapWithIteratorEPKNS_10ComparatorERKNS_5SliceES6_PNS_20InternalIteratorBaseIS4_EEPb(ptr dead_on_unwind noalias writable align 8 %14, ptr noundef nonnull %.cast, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.bt, ptr noundef nonnull %7)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %.pre112 = load ptr, ptr %i.ah, align 8, !tbaa !536 ; 3 uses
  br i1 %.not.i, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = load i8, ptr %14, align 8, !tbaa !602   ; 2 uses
  %i.bv = load <4 x i8>, ptr %i.ac, align 1, !tbaa !157
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !157
  store <4 x i8> %i.bv, ptr %i.ad, align 1, !tbaa !157
  store i8 0, ptr %i.ae, align 4, !tbaa !562
  %i.bw = load i8, ptr %i.af, align 1, !tbaa !157
  store i8 %i.bw, ptr %i.ag, align 1, !tbaa !563
  store i8 0, ptr %i.af, align 1, !tbaa !563
  store ptr null, ptr %i.ah, align 8, !tbaa !536
  %.not.i.i.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.ak) #42
  %.pre111 = load ptr, ptr %i.ah, align 8, !tbaa !536
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.bx = phi ptr [ %.pre112, %bb.l ], [ %.pre111, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.by = phi ptr [ %i.ak, %bb.l ], [ %.pre112, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %i.bz = phi i8 [ %i.aj, %bb.l ], [ %i.bu, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.bx) #42
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.m, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  %i.ca = phi i8 [ %i.bz, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ %i.bz, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %i.bu, %bb.m ] ; 3 uses
  %i.cb = phi ptr [ %i.by, %_ZN7rocksdb6StatusaSEOS0_.exit ], [ %i.by, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ %.pre112, %bb.m ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  %i.cc = icmp eq i8 %i.ca, 0
  br i1 %i.cc, label %bb.n, label %bb.q

bb.n:                                             ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.cd = load i8, ptr %7, align 1, !tbaa !559, !range !560, !noundef !561
  %i.ce = icmp eq i8 %i.cd, 0
  br label %bb.q

bb.o:                                             ; preds = %bb.j
  %i.cf = landingpad { ptr, i32 }
          cleanup
  store i8 %i.aj, ptr %0, align 8
  store ptr %i.ak, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  br label %.body

bb.p:                                             ; preds = %bb.k
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i8 %i.aj, ptr %0, align 8
  store ptr %i.ak, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  %.not.i66 = icmp eq ptr %i.bt, null
  br i1 %.not.i66, label %.body, label %bb.s

bb.q:                                             ; preds = %bb.n, %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %.0 = phi i1 [ false, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ], [ %i.ce, %bb.n ]
  %.not.i65 = icmp eq ptr %i.bt, null
  br i1 %.not.i65, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ch = load ptr, ptr %i.bt, align 8, !tbaa !153
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bt) #41, !inline_history !1970
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit: ; preds = %bb.r, %bb.q
  br i1 %.0, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread, label %.loopexit

_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread: ; preds = %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit, %bb.i, %bb.g
  %i.cj = phi ptr [ %i.cb, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit ], [ %i.ak, %bb.i ], [ %i.ak, %bb.g ] ; 2 uses
  %i.ck = phi i8 [ %i.ca, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit ], [ %i.aj, %bb.i ], [ %i.aj, %bb.g ] ; 2 uses
  %i.cl = add nuw i64 %.03997, 1                  ; 2 uses
  %i.cm = load ptr, ptr %i.v, align 8             ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !528
  %i.co = icmp ult i64 %i.cl, %i.cn
  br i1 %i.co, label %bb.f, label %.loopexit, !llvm.loop !1971

bb.s:                                             ; preds = %bb.p
  %i.cp = load ptr, ptr %i.bt, align 8, !tbaa !153
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.bt) #41, !inline_history !1970
  br label %.body

bb.t:                                             ; preds = %bb.e
  %i.cr = sext i32 %6 to i64                      ; 5 uses
  %i.cs = icmp ult i32 %6, 8                      ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.cx = load ptr, ptr %i.cw, align 16
  %i.cy = getelementptr [16 x i8], ptr %i.cx, i64 %i.cr
  %i.cz = getelementptr i8, ptr %i.cy, i64 -128
  %.0.i.i = select i1 %i.cs, ptr %i.cv, ptr %i.cz
  %i.da = load i64, ptr %.0.i.i, align 8, !tbaa !528
  %.not = icmp eq i64 %i.da, 0
  br i1 %.not, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = invoke noundef ptr @_ZN7rocksdb5Arena15AllocateAlignedEmmPNS_6LoggerE(ptr noundef nonnull align 16 dereferenceable(2288) %11, i64 noundef 392, i64 noundef 0, ptr noundef null)
          to label %bb.v unwind label %.loopexit.split-lp ; 6 uses

bb.v:                                             ; preds = %bb.u
  %i.dc = load ptr, ptr %i.a, align 16, !tbaa !361 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 2704
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !543
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dg = load ptr, ptr %i.ct, align 8
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %i.dg, i64 %i.cr
  %i.di = load ptr, ptr %i.cw, align 16
  %i.dj = getelementptr [16 x i8], ptr %i.di, i64 %i.cr
  %i.dk = getelementptr i8, ptr %i.dj, i64 -128
  %.0.i.i68 = select i1 %i.cs, ptr %i.dh, ptr %i.dk
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dc, i64 2744
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !740
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 584
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !742
  %i.dp = getelementptr inbounds nuw [968 x i8], ptr %i.do, i64 %i.cr
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dc, i64 1836
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !743, !range !560, !noundef !561
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = icmp sgt i32 %6, 0
  %or.cond4.i = and i1 %i.dt, %i.ds
  br i1 %or.cond4.i, label %16, label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

16:                                               ; preds = %bb.v
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %18 = load i32, ptr %17, align 4, !tbaa !628
  %19 = add nsw i32 %18, -1
  %20 = icmp eq i32 %6, %19
  br label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

_ZN7rocksdb7Version15IsFilterSkippedEib.exit:     ; preds = %16, %bb.v
  %21 = phi i1 [ %20, %16 ], [ false, %bb.v ]
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 4600
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %24 = load ptr, ptr %23, align 16, !tbaa !745
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %26 = load ptr, ptr %25, align 8, !tbaa !746
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_113LevelIteratorC2EPNS_10TableCacheERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorEPKNS_15LevelFilesBriefERKNS_16MutableCFOptionsEPNS_13HistogramImplENS_17TableReaderCallerEbiPNS_18RangeDelAggregatorEPKSt6vectorINS_28AtomicCompactionUnitBoundaryESaISP_EEbPPPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISV_EEmPNS_10StatisticsEPNS_11SystemClockEb(ptr noundef nonnull align 8 dereferenceable(392) %i.db, ptr noundef %i.de, ptr noundef nonnull align 8 dereferenceable(192) %2, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull %.0.i.i68, ptr noundef nonnull align 8 dereferenceable(736) %22, ptr noundef nonnull %i.dp, i8 noundef signext 3, i1 noundef zeroext %21, i32 noundef %6, ptr noundef nonnull %12, ptr noundef null, i1 noundef zeroext false, ptr noundef null, i64 noundef 72057594037927935, ptr noundef %24, ptr noundef %26, i1 noundef zeroext false)
          to label %bb.w unwind label %.loopexit.split-lp

bb.w:                                             ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  invoke fastcc void @_ZN7rocksdb12_GLOBAL__N_119OverlapWithIteratorEPKNS_10ComparatorERKNS_5SliceES6_PNS_20InternalIteratorBaseIS4_EEPb(ptr dead_on_unwind noalias writable align 8 %15, ptr noundef %.cast, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.db, ptr noundef nonnull %7)
          to label %bb.x unwind label %.body.thread129

bb.x:                                             ; preds = %bb.w
  %.not.i69 = icmp eq ptr %0, %15
  br i1 %.not.i69, label %_ZN7rocksdb6StatusaSEOS0_.exit72, label %_ZN7rocksdb6StatusaSEOS0_.exit72.thread

_ZN7rocksdb6StatusaSEOS0_.exit72.thread:          ; preds = %bb.x
  %i.du = load <4 x i8>, ptr %15, align 8, !tbaa !157
  %i.dv = load i8, ptr %15, align 8, !tbaa !602
  store <4 x i8> %i.du, ptr %0, align 8, !tbaa !157
  store <4 x i8> zeroinitializer, ptr %15, align 8, !tbaa !157
  %i.dw = getelementptr inbounds nuw i8, ptr %15, i64 4 ; 2 uses
  %i.dx = load i8, ptr %i.dw, align 4, !tbaa !559, !range !560, !noundef !561
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.dx, ptr %i.dy, align 4, !tbaa !562
  store i8 0, ptr %i.dw, align 4, !tbaa !562
  %i.dz = getelementptr inbounds nuw i8, ptr %15, i64 5
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !157
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !563
  %i.ec = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !536 ; 2 uses
  store ptr %i.ed, ptr %i.f, align 8, !tbaa !536
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit77

_ZN7rocksdb6StatusaSEOS0_.exit72:                 ; preds = %bb.x
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !536 ; 2 uses
  %.not.i.i73 = icmp eq ptr %.pre, null
  br i1 %.not.i.i73, label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit77, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit72
  call void @_ZdaPv(ptr noundef nonnull %.pre) #42
  br label %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit77

_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit77: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit72.thread, %_ZN7rocksdb6StatusaSEOS0_.exit72, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74
  %i.ee = phi i8 [ %i.dv, %_ZN7rocksdb6StatusaSEOS0_.exit72.thread ], [ 0, %_ZN7rocksdb6StatusaSEOS0_.exit72 ], [ 0, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74 ]
  %i.ef = phi ptr [ %i.ed, %_ZN7rocksdb6StatusaSEOS0_.exit72.thread ], [ null, %_ZN7rocksdb6StatusaSEOS0_.exit72 ], [ null, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i74 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  %i.eg = load ptr, ptr %i.db, align 8, !tbaa !153
  %i.eh = load ptr, ptr %i.eg, align 8
  call void %i.eh(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.db) #41, !inline_history !1970
  br label %bb.y

.loopexit89:                                      ; preds = %bb.h, %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i8 %i.aj, ptr %0, align 8
  store ptr %i.ak, ptr %i.f, align 8
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit, %bb.z, %bb.u
  %i.ei = phi ptr [ null, %_ZN7rocksdb7Version15IsFilterSkippedEib.exit ], [ %i.er, %bb.z ], [ null, %bb.u ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body.thread129:                                  ; preds = %bb.w
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  %i.ek = load ptr, ptr %i.db, align 8, !tbaa !153
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.db) #41, !inline_history !1970
  call void @_ZN7rocksdb22ReadRangeDelAggregatorD2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(720) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  br label %_ZN7rocksdb6StatusD2Ev.exit82

.loopexit:                                        ; preds = %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread, %.preheader
  %i.em = phi ptr [ null, %.preheader ], [ %i.cj, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread ], [ %i.cb, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit ] ; 2 uses
  %i.en = phi i8 [ 0, %.preheader ], [ %i.ck, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit.thread ], [ %i.ca, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit ] ; 2 uses
  store i8 %i.en, ptr %0, align 8
  store ptr %i.em, ptr %i.f, align 8
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit77
  %i.eo = phi ptr [ %i.em, %.loopexit ], [ %i.ef, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit77 ]
  %i.ep = phi i8 [ %i.en, %.loopexit ], [ %i.ee, %_ZNSt10unique_ptrIN7rocksdb20InternalIteratorBaseINS0_5SliceEEENS0_9DestroyerIS3_EEED2Ev.exit77 ]
  %i.eq = icmp eq i8 %i.ep, 0
  br i1 %i.eq, label %.thread, label %bb.ac

.thread:                                          ; preds = %bb.t, %bb.y
  %i.er = phi ptr [ %i.eo, %bb.y ], [ null, %bb.t ]
  %i.es = load i8, ptr %7, align 1, !tbaa !559, !range !560, !noundef !561
  %i.et = icmp eq i8 %i.es, 0
  br i1 %i.et, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %.thread
  %i.eu = invoke noundef zeroext i1 @_ZN7rocksdb22ReadRangeDelAggregator17IsRangeOverlappedERKNS_5SliceES3_(ptr noundef nonnull align 8 dereferenceable(720) %12, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %bb.aa unwind label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %7, align 1, !tbaa !559
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.thread, %bb.y
  call void @_ZN7rocksdb18RangeDelAggregator9StripeRepD2Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656) %i.m) #41
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN7rocksdb18RangeDelAggregatorE, i64 16), ptr %12, align 8, !tbaa !153
  %i.ev = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ew = load ptr, ptr %i.i, align 8, !tbaa !657
  invoke void @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE8_M_eraseEPSt13_Rb_tree_nodeImE(ptr noundef nonnull align 8 dereferenceable(48) %i.ev, ptr noundef %i.ew)
          to label %_ZN7rocksdb22ReadRangeDelAggregatorD2Ev.exit unwind label %bb.ad, !inline_history !846

bb.ad:                                            ; preds = %bb.ac
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #45, !inline_history !846
  unreachable

_ZN7rocksdb22ReadRangeDelAggregatorD2Ev.exit:     ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  ret void

.body:                                            ; preds = %bb.s, %bb.p, %bb.o, %.loopexit.split-lp, %.loopexit89
  %i.ez = phi ptr [ %i.ak, %bb.s ], [ %i.ei, %.loopexit.split-lp ], [ %i.ak, %bb.o ], [ %i.ak, %bb.p ], [ %i.ak, %.loopexit89 ] ; 2 uses
  %.pn60 = phi { ptr, i32 } [ %i.cg, %bb.s ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.cf, %bb.o ], [ %i.cg, %bb.p ], [ %lpad.loopexit, %.loopexit89 ] ; 2 uses
  call void @_ZN7rocksdb22ReadRangeDelAggregatorD2Ev(ptr noundef nonnull align 8 dead_on_return(720) dereferenceable(720) %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %.not.i.i80 = icmp eq ptr %i.ez, null
  br i1 %.not.i.i80, label %_ZN7rocksdb6StatusD2Ev.exit82, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81: ; preds = %.body
  call void @_ZdaPv(ptr noundef nonnull %i.ez) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit82

_ZN7rocksdb6StatusD2Ev.exit82:                    ; preds = %.body.thread129, %.body.thread, %.body, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81
  %.pn60.pn128 = phi { ptr, i32 } [ %.pn.i.i, %.body.thread ], [ %.pn60, %.body ], [ %.pn60, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i81 ], [ %i.ej, %.body.thread129 ]
  call void @_ZN7rocksdb5ArenaD1Ev(ptr noundef nonnull align 16 dead_on_return(2288) dereferenceable(2288) %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  resume { ptr, i32 } %.pn60.pn128
}

declare void @_ZN7rocksdb5ArenaC1EmPNS_12AllocTrackerEm(ptr noundef nonnull align 16 dereferenceable(2288), i64 noundef, ptr noundef, i64 noundef) unnamed_addr #13

declare noundef ptr @_ZN7rocksdb10TableCache11NewIteratorERKNS_11ReadOptionsERKNS_11FileOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataEPNS_18RangeDelAggregatorERKNS_16MutableCFOptionsEPPNS_11TableReaderEPNS_13HistogramImplENS_17TableReaderCallerEPNS_5ArenaEbimPKNS_11InternalKeyESS_bPKmPSt10unique_ptrINS_25TruncatedRangeDelIteratorESt14default_deleteISW_EEbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_21TableCacheOpenOptionsE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(417), ptr noundef, ptr noundef nonnull align 8 dereferenceable(736), ptr noundef, ptr noundef, i8 noundef signext, ptr noundef, i1 noundef zeroext, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef nonnull align 1 dereferenceable(3)) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_119OverlapWithIteratorEPKNS_10ComparatorERKNS_5SliceES6_PNS_20InternalIteratorBaseIS4_EEPb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 7 uses
  %7 = alloca %"class.rocksdb::InternalKey", align 8 ; 11 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %9 = alloca %"class.rocksdb::Status", align 8   ; 6 uses
  %10 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 10 uses
  %11 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.a = load i8, ptr @_ZN7rocksdb17kValueTypeForSeekE, align 1, !tbaa !538
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.b, ptr %7, align 8, !tbaa !518
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.c, align 8, !tbaa !519
  store i8 0, ptr %i.b, align 8, !tbaa !157
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !539
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 72057594037927935, ptr %i.d, align 8, !tbaa !541
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 %i.a, ptr %i.e, align 8, !tbaa !542
  invoke void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(25) %6)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.g = load ptr, ptr %7, align 8, !tbaa !156    ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.b
  br i1 %i.h, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.b, align 8, !tbaa !157
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.j) #42
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN7rocksdb11InternalKeyD2Ev.exit40
  %common.resume.op = phi { ptr, i32 } [ %.pn22, %_ZN7rocksdb11InternalKeyD2Ev.exit40 ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.k = load ptr, ptr %7, align 8, !tbaa !156
  %i.l = load i64, ptr %i.c, align 8, !tbaa !519
  store ptr %i.k, ptr %8, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.m, align 8
  %i.n = load ptr, ptr %4, align 8, !tbaa !153
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(16) %8)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.q = load ptr, ptr %4, align 8, !tbaa !153
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %9, ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = load i8, ptr %9, align 8, !tbaa !554
  %i.u = icmp eq i8 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !536  ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.w) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.e, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br i1 %i.u, label %bb.i, label %.invoke

bb.f:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.s

bb.g:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.s

bb.h:                                             ; preds = %.invoke, %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  store i8 0, ptr %5, align 1, !tbaa !559
  %i.aa = load ptr, ptr %4, align 8, !tbaa !153
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = invoke noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(40) %4)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  br i1 %i.ad, label %bb.k, label %.invoke
end_hunk_2
begin_hunk_3_@_ZN7rocksdb10VersionSet21ProcessManifestWritesERSt5dequeINS0_14ManifestWriterESaIS2_EEPNS_17InstrumentedMutexEPNS_11FSDirectoryEbPKNS_19ColumnFamilyOptionsERKNS_11ReadOptionsERKNS_12WriteOptionsE:bb.a
  %i.ut = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i502, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i504 = icmp eq ptr %i.us, %i.ub
  br i1 %.not.i.i.i.i.i.i504, label %_ZNSt6vectorISt8optionalImESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i505, label %.lr.ph.i.i.i.i.i.i501, !llvm.loop !2303

_ZNSt6vectorISt8optionalImESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i505: ; preds = %.lr.ph.i.i.i.i.i.i501, %.noexc510
  %.0.lcssa.i.i.i.i.i.i506 = phi ptr [ %i.uq, %.noexc510 ], [ %i.ut, %.lr.ph.i.i.i.i.i.i501 ]
  %i.uu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i506, i64 16
  %.not.i23.i.i.i507 = icmp eq ptr %i.uf, null
  br i1 %.not.i23.i.i.i507, label %_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i508, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorISt8optionalImESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i505
  %i.uv = load ptr, ptr %i.ef, align 8, !tbaa !2394
  %i.uw = ptrtoint ptr %i.uv to i64
  %i.ux = sub i64 %i.uw, %i.uh
  call void @_ZdlPvm(ptr noundef nonnull %i.uf, i64 noundef %i.ux) #42
  br label %_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i508

_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i508: ; preds = %bb.bv, %_ZNSt6vectorISt8optionalImESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i505
  store ptr %i.uq, ptr %i.j, align 8, !tbaa !2395
  store ptr %i.uu, ptr %i.ee, align 8, !tbaa !2393
  %i.uy = getelementptr inbounds nuw [16 x i8], ptr %i.uq, i64 %i.uo
  store ptr %i.uy, ptr %i.ef, align 8, !tbaa !2394
  br label %_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backERKS2_.exit.thread

_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backERKS2_.exit.thread: ; preds = %_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i508, %bb.bt, %bb.br
  %i.uz = load ptr, ptr %i.ec, align 8, !tbaa !536 ; 2 uses
  %.not.i.i511 = icmp eq ptr %i.uz, null
  br i1 %.not.i.i511, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backERKS2_.exit.thread
  call void @_ZdaPv(ptr noundef nonnull %i.uz) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backERKS2_.exit.thread, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  %i.va = add nuw i64 %.sroa.51159.01434, 1       ; 2 uses
  %.not1252 = icmp eq i64 %i.va, %i.qb
  br i1 %.not1252, label %.critedge.thread, label %bb.aw

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i513: ; preds = %.loopexit.split-lp1326.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @_ZdaPv(ptr noundef nonnull %i.sh) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit514

.critedge.thread:                                 ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %.prol.loopexit, %.lr.ph1447.new, %_ZNK7rocksdb10VersionSet14ManifestWriter13IsAllWalEditsEv.exit.thread, %.loopexit1320, %bb.r, %bb.t, %bb.s
  %.3 = phi i64 [ %.01208, %bb.r ], [ %.01208, %bb.t ], [ %.01208, %.loopexit1320 ], [ %.01208, %bb.s ], [ %.01208, %.prol.loopexit ], [ %.01208, %_ZNK7rocksdb10VersionSet14ManifestWriter13IsAllWalEditsEv.exit.thread ], [ %.01208, %.lr.ph1447.new ], [ %.6, %_ZN7rocksdb6StatusD2Ev.exit ] ; 3 uses
  %.4339 = phi i64 [ %.0335, %bb.r ], [ %.0335, %bb.t ], [ %.0335, %.loopexit1320 ], [ %.0335, %bb.s ], [ %.0335, %.prol.loopexit ], [ %.0335, %_ZNK7rocksdb10VersionSet14ManifestWriter13IsAllWalEditsEv.exit.thread ], [ %.0335, %.lr.ph1447.new ], [ %.2337, %_ZN7rocksdb6StatusD2Ev.exit ]
  %i.vb = getelementptr inbounds nuw i8, ptr %.sroa.01179.0, i64 8 ; 2 uses
  %i.vc = icmp eq ptr %i.vb, %.sroa.121184.0
  br i1 %i.vc, label %bb.bw, label %_ZNSt15_Deque_iteratorIPN7rocksdb10VersionSet14ManifestWriterERKS3_PS4_EppEv.exit

bb.bw:                                            ; preds = %.critedge.thread
  %i.vd = getelementptr inbounds nuw i8, ptr %.sroa.15.0, i64 8 ; 2 uses
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !1206 ; 2 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb10VersionSet14ManifestWriterERKS3_PS4_EppEv.exit

_ZNSt15_Deque_iteratorIPN7rocksdb10VersionSet14ManifestWriterERKS3_PS4_EppEv.exit: ; preds = %.critedge.thread, %bb.bw
  %.sroa.01179.1 = phi ptr [ %i.ve, %bb.bw ], [ %i.vb, %.critedge.thread ] ; 3 uses
  %.sroa.121184.1 = phi ptr [ %i.vf, %bb.bw ], [ %.sroa.121184.0, %.critedge.thread ]
  %.sroa.15.1 = phi ptr [ %i.vd, %bb.bw ], [ %.sroa.15.0, %.critedge.thread ]
  %i.vg = load ptr, ptr %i.eg, align 8, !tbaa !1335, !noalias !2416
  %i.vh = icmp eq ptr %.sroa.01179.1, %i.vg
  %or.cond23 = or i1 %i.vh, %i.ac
  br i1 %or.cond23, label %.thread1225, label %bb.bx

bb.bx:                                            ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb10VersionSet14ManifestWriterERKS3_PS4_EppEv.exit
  %i.vi = load ptr, ptr %.sroa.01179.1, align 8, !tbaa !1337 ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 112
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !2392, !nonnull !561, !align !1326
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 72
  %i.vm = load ptr, ptr %i.vl, align 8
  %i.vn = load ptr, ptr %i.vm, align 8, !tbaa !1163 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 317
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !1327, !range !560, !noundef !561
  %i.vq = trunc nuw i8 %i.vp to i1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vn, i64 316
  %i.vs = load i8, ptr %i.vr, align 4, !range !560
  %i.vt = trunc nuw i8 %i.vs to i1
  %i.vu = select i1 %i.vq, i1 true, i1 %i.vt
  br i1 %i.vu, label %.thread1225, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vn, i64 357
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !1230, !range !560, !noundef !561
  %i.vx = trunc nuw i8 %i.vw to i1
  br i1 %i.vx, label %.thread1225, label %bb.q

.thread1225:                                      ; preds = %bb.by, %bb.bx, %_ZNSt15_Deque_iteratorIPN7rocksdb10VersionSet14ManifestWriterERKS3_PS4_EppEv.exit
  %i.vy = load i64, ptr %21, align 8, !tbaa !2384
  %i.vz = load ptr, ptr %i.ds, align 8, !tbaa !2398
  %i.wa = load ptr, ptr %i.m, align 8, !tbaa !2399 ; 2 uses
  %i.wb = ptrtoint ptr %i.vz to i64
  %i.wc = ptrtoint ptr %i.wa to i64
  %i.wd = sub i64 %i.wb, %i.wc
  %i.we = lshr exact i64 %i.wd, 3
  %i.wf = add i64 %i.we, %i.vy
  %i.wg = trunc i64 %i.wf to i32
  %.not3721452 = icmp sgt i32 %i.wg, 0
  br i1 %.not3721452, label %.lr.ph1454, label %_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backEOS2_.exit

.lr.ph1454:                                       ; preds = %.thread1225
  %.pre1642 = load ptr, ptr %22, align 8, !tbaa !1342
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1454, %_ZN7rocksdb6StatusD2Ev.exit519
  %indvars.iv1625 = phi i64 [ 0, %.lr.ph1454 ], [ %indvars.iv.next1626, %_ZN7rocksdb6StatusD2Ev.exit519 ] ; 5 uses
  %i.wh = phi ptr [ %i.wa, %.lr.ph1454 ], [ %i.xo, %_ZN7rocksdb6StatusD2Ev.exit519 ]
  %i.wi = getelementptr inbounds nuw [8 x i8], ptr %.pre1642, i64 %indvars.iv1625
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !1344
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !2402
  %i.wl = icmp samesign ult i64 %indvars.iv1625, 8
  %i.wm = load ptr, ptr %i.k, align 8
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wm, i64 %indvars.iv1625
  %i.wo = getelementptr [8 x i8], ptr %i.wh, i64 %indvars.iv1625
  %i.wp = getelementptr i8, ptr %i.wo, i64 -64
  %.0.i515 = select i1 %i.wl, ptr %i.wn, ptr %i.wp
  %i.wq = load ptr, ptr %.0.i515, align 8, !tbaa !2400
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wq, i64 64
  invoke void @_ZNK7rocksdb14VersionBuilder6SaveToEPNS_18VersionStorageInfoE(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %i.wk, ptr noundef nonnull %i.wr)
          to label %bb.ca unwind label %.loopexit.split-lp1315.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ca:                                            ; preds = %bb.bz
  %i.ws = load i8, ptr %0, align 8, !tbaa !554
  %i.wt = icmp eq i8 %i.ws, 0
  br i1 %i.wt, label %.critedge454, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.wu = load i64, ptr %21, align 8, !tbaa !2384, !noalias !2417
  %i.wv = load ptr, ptr %i.ds, align 8, !tbaa !2398, !noalias !2417
  %i.ww = load ptr, ptr %i.m, align 8, !tbaa !2399, !noalias !2417
  %i.wx = ptrtoint ptr %i.wv to i64
  %i.wy = ptrtoint ptr %i.ww to i64
  %i.wz = sub i64 %i.wx, %i.wy
  %i.xa = ashr exact i64 %i.wz, 3
  %i.xb = add i64 %i.xa, %i.wu                    ; 2 uses
  %.not12541455 = icmp eq i64 %i.xb, 0
  br i1 %.not12541455, label %.critedge448.thread, label %.lr.ph1458

.lr.ph1458:                                       ; preds = %bb.cb, %bb.cd
  %.sroa.51143.01456 = phi i64 [ %i.xk, %bb.cd ], [ 0, %bb.cb ] ; 4 uses
  %i.xc = icmp ult i64 %.sroa.51143.01456, 8
  %i.xd = load ptr, ptr %i.k, align 8
  %i.xe = getelementptr inbounds nuw [8 x i8], ptr %i.xd, i64 %.sroa.51143.01456
  %i.xf = load ptr, ptr %i.m, align 8
  %i.xg = getelementptr [8 x i8], ptr %i.xf, i64 %.sroa.51143.01456
  %i.xh = getelementptr i8, ptr %i.xg, i64 -64
  %.0.i.i516 = select i1 %i.xc, ptr %i.xe, ptr %i.xh
  %i.xi = load ptr, ptr %.0.i.i516, align 8, !tbaa !2400 ; 3 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph1458
  call void @_ZN7rocksdb7VersionD1Ev(ptr noundef nonnull align 16 dead_on_return(5369) dereferenceable(5369) %i.xi) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.xi, i64 noundef 5376) #42
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %.lr.ph1458
  %i.xk = add nuw i64 %.sroa.51143.01456, 1       ; 2 uses
  %.not1254 = icmp eq i64 %i.xk, %i.xb
  br i1 %.not1254, label %.critedge448.thread, label %.lr.ph1458

.critedge454:                                     ; preds = %bb.ca
  %i.xl = load ptr, ptr %i.ec, align 8, !tbaa !536 ; 2 uses
  %.not.i.i517 = icmp eq ptr %i.xl, null
  br i1 %.not.i.i517, label %_ZN7rocksdb6StatusD2Ev.exit519, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i518

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i518: ; preds = %.critedge454
  call void @_ZdaPv(ptr noundef nonnull %i.xl) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit519

_ZN7rocksdb6StatusD2Ev.exit519:                   ; preds = %.critedge454, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i518
  %indvars.iv.next1626 = add nuw nsw i64 %indvars.iv1625, 1 ; 2 uses
  %i.xm = load i64, ptr %21, align 8, !tbaa !2384
  %i.xn = load ptr, ptr %i.ds, align 8, !tbaa !2398
  %i.xo = load ptr, ptr %i.m, align 8, !tbaa !2399 ; 2 uses
  %i.xp = ptrtoint ptr %i.xn to i64
  %i.xq = ptrtoint ptr %i.xo to i64
  %i.xr = sub i64 %i.xp, %i.xq
  %i.xs = lshr exact i64 %i.xr, 3
  %i.xt = add i64 %i.xs, %i.xm
  %i.xu = shl i64 %i.xt, 32
  %i.xv = ashr exact i64 %i.xu, 32
  %.not372 = icmp slt i64 %indvars.iv.next1626, %i.xv
  br i1 %.not372, label %bb.bz, label %_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backEOS2_.exit, !llvm.loop !2336

_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backEOS2_.exit: ; preds = %_ZN7rocksdb6StatusD2Ev.exit519, %.thread1225, %bb.k, %bb.m, %_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %.5 = phi i64 [ %i.u, %bb.k ], [ %i.u, %_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.u, %bb.m ], [ %.3, %.thread1225 ], [ %.3, %_ZN7rocksdb6StatusD2Ev.exit519 ]
  %.1 = phi i32 [ 1, %bb.k ], [ 1, %_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ 1, %bb.m ], [ %.sroa.speculated1201, %.thread1225 ], [ %.sroa.speculated1201, %_ZN7rocksdb6StatusD2Ev.exit519 ]
  %.0239 = phi ptr [ %i.d, %bb.k ], [ %i.d, %_ZNSt6vectorISt8optionalImESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.d, %bb.m ], [ %i.eh, %.thread1225 ], [ %i.eh, %_ZN7rocksdb6StatusD2Ev.exit519 ]
  %i.xw = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !1229 ; 2 uses
  %i.xy = load i64, ptr %19, align 8, !tbaa !1267, !noalias !2418
  %i.xz = getelementptr inbounds nuw i8, ptr %19, i64 88 ; 7 uses
  %i.ya = load ptr, ptr %i.xz, align 8, !tbaa !1277, !noalias !2418
  %i.yb = load ptr, ptr %i.g, align 8, !tbaa !1270, !noalias !2418 ; 2 uses
  %i.yc = ptrtoint ptr %i.ya to i64
  %i.yd = ptrtoint ptr %i.yb to i64
  %i.ye = sub i64 %i.yc, %i.yd
  %i.yf = ashr exact i64 %i.ye, 3
  %i.yg = add i64 %i.yf, %i.xy                    ; 2 uses
  %.not1255.not1459 = icmp eq i64 %i.yg, 0
  br i1 %.not1255.not1459, label %._crit_edge1463.loopexit, label %.lr.ph1462

.lr.ph1462:                                       ; preds = %_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backEOS2_.exit
  %i.yh = load ptr, ptr %i.e, align 8
  br label %bb.ce

63:                                               ; preds = %_ZNK7rocksdb11VersionEdit21IsForegroundOperationEv.exit
  %64 = add nuw i64 %.sroa.51137.01460, 1         ; 2 uses
  %.not1259 = icmp eq i64 %64, %i.yg
  br i1 %.not1259, label %._crit_edge1463.loopexit, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph1462, %63
  %.sroa.51137.01460 = phi i64 [ 0, %.lr.ph1462 ], [ %64, %63 ] ; 4 uses
  %i.yi = icmp ult i64 %.sroa.51137.01460, 8
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yh, i64 %.sroa.51137.01460
  %i.yk = getelementptr [8 x i8], ptr %i.yb, i64 %.sroa.51137.01460
  %i.yl = getelementptr i8, ptr %i.yk, i64 -64
  %.0.i.i523 = select i1 %i.yi, ptr %i.yj, ptr %i.yl
  %i.ym = load ptr, ptr %.0.i.i523, align 8, !tbaa !1163 ; 3 uses
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 318
  %i.yo = load i8, ptr %i.yn, align 2, !tbaa !2419, !range !560, !noundef !561
  %i.yp = trunc nuw i8 %i.yo to i1
  br i1 %i.yp, label %.thread1232, label %_ZNK7rocksdb11VersionEdit21IsForegroundOperationEv.exit

_ZNK7rocksdb11VersionEdit21IsForegroundOperationEv.exit: ; preds = %bb.ce
  %65 = getelementptr inbounds nuw i8, ptr %i.ym, i64 317
  %66 = load i8, ptr %65, align 1, !tbaa !1327, !range !560, !noundef !561
  %67 = trunc nuw i8 %66 to i1
  %68 = getelementptr inbounds nuw i8, ptr %i.ym, i64 316
  %69 = load i8, ptr %68, align 4, !range !560
  %70 = trunc nuw i8 %69 to i1
  %71 = select i1 %67, i1 true, i1 %70
  br i1 %71, label %.thread1232, label %63

.thread1232:                                      ; preds = %_ZNK7rocksdb11VersionEdit21IsForegroundOperationEv.exit, %bb.ce
  %72 = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %73 = load i64, ptr %72, align 8, !tbaa !1195   ; 3 uses
  %74 = lshr i64 %73, 2
  %75 = add i64 %74, %73
  %.sroa.speculated1127 = call i64 @llvm.umax.i64(i64 %73, i64 %75)
  br label %._crit_edge1463

._crit_edge1463.loopexit:                         ; preds = %63, %_ZN7rocksdb10autovectorISt8optionalImELm8EE9push_backEOS2_.exit
  %76 = getelementptr inbounds nuw i8, ptr %1, i64 424 ; 2 uses
  %77 = load i64, ptr %76, align 8, !tbaa !1195
  br label %._crit_edge1463

._crit_edge1463:                                  ; preds = %._crit_edge1463.loopexit, %.thread1232
  %78 = phi ptr [ %72, %.thread1232 ], [ %76, %._crit_edge1463.loopexit ]
  %.01211 = phi i64 [ %.sroa.speculated1127, %.thread1232 ], [ %77, %._crit_edge1463.loopexit ]
  br i1 %i.ac, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %._crit_edge1463
  %i.yq = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.yr = load ptr, ptr %i.yq, align 8, !tbaa !1208
  %i.ys = icmp ne ptr %i.yr, null
  %.not377 = icmp ult i64 %i.xx, %.01211
  %or.cond449 = select i1 %i.ys, i1 %.not377, i1 false
  br i1 %or.cond449, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf, %._crit_edge1463
  %i.yt = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.yu = load i64, ptr %i.yt, align 8, !tbaa !1209
  %i.yv = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 %i.yu, ptr %i.yv, align 8, !tbaa !1310
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.0230 = phi i1 [ %5, %bb.cg ], [ true, %bb.cf ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #41
  %i.yw = getelementptr inbounds nuw i8, ptr %26, i64 48 ; 2 uses
  store ptr %i.yw, ptr %26, align 8, !tbaa !1352
  %i.yx = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 3 uses
  store i64 1, ptr %i.yx, align 8, !tbaa !1353
  %i.yy = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 3 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %26, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.yy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.yz, align 8, !tbaa !646
  %i.za = getelementptr inbounds nuw i8, ptr %26, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.za, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #41
  store i32 0, ptr %27, align 8, !tbaa !1173
  %i.zb = getelementptr inbounds nuw i8, ptr %27, i64 8
  %i.zc = getelementptr inbounds nuw i8, ptr %27, i64 24 ; 2 uses
  store ptr %i.zc, ptr %i.zb, align 8, !tbaa !518
  %i.zd = getelementptr inbounds nuw i8, ptr %27, i64 16
  store i64 0, ptr %i.zd, align 8, !tbaa !519
  store i8 0, ptr %i.zc, align 8, !tbaa !157
  %i.ze = getelementptr inbounds nuw i8, ptr %27, i64 40
  %i.zf = getelementptr inbounds nuw i8, ptr %27, i64 56 ; 2 uses
  store ptr %i.zf, ptr %i.ze, align 8, !tbaa !518
  %i.zg = getelementptr inbounds nuw i8, ptr %27, i64 48
  store i64 0, ptr %i.zg, align 8, !tbaa !519
  store i8 0, ptr %i.zf, align 8, !tbaa !157
  %i.zh = getelementptr inbounds nuw i8, ptr %27, i64 72
  %i.zi = getelementptr inbounds nuw i8, ptr %27, i64 104
  %i.zj = getelementptr inbounds nuw i8, ptr %27, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.zj, i8 0, i64 24, i1 false)
  %i.zk = getelementptr inbounds nuw i8, ptr %27, i64 168 ; 3 uses
  store i32 0, ptr %i.zk, align 8, !tbaa !660
  %i.zl = getelementptr inbounds nuw i8, ptr %27, i64 176
  store ptr null, ptr %i.zl, align 8, !tbaa !657
  %i.zm = getelementptr inbounds nuw i8, ptr %27, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.zh, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.zi, i8 0, i64 25, i1 false)
  store ptr %i.zk, ptr %i.zm, align 8, !tbaa !658
  %i.zn = getelementptr inbounds nuw i8, ptr %27, i64 192
  store ptr %i.zk, ptr %i.zn, align 8, !tbaa !659
  %i.zo = getelementptr inbounds nuw i8, ptr %27, i64 200
  %i.zp = getelementptr inbounds nuw i8, ptr %27, i64 320
  %i.zq = getelementptr inbounds nuw i8, ptr %27, i64 336 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(119) %i.zo, i8 0, i64 119, i1 false)
  store ptr %i.zq, ptr %i.zp, align 8, !tbaa !518
  %i.zr = getelementptr inbounds nuw i8, ptr %27, i64 328
  store i64 0, ptr %i.zr, align 8, !tbaa !519
  store i8 0, ptr %i.zq, align 8, !tbaa !157
  %i.zs = getelementptr inbounds nuw i8, ptr %27, i64 352
  store i32 0, ptr %i.zs, align 8, !tbaa !1164
  %i.zt = getelementptr inbounds nuw i8, ptr %27, i64 356
  store i8 0, ptr %i.zt, align 4, !tbaa !1161
  %i.zu = getelementptr inbounds nuw i8, ptr %27, i64 357
  store i8 0, ptr %i.zu, align 1, !tbaa !1230
  %i.zv = getelementptr inbounds nuw i8, ptr %27, i64 360
  %i.zw = getelementptr inbounds nuw i8, ptr %27, i64 376 ; 2 uses
  store ptr %i.zw, ptr %i.zv, align 8, !tbaa !518
  %i.zx = getelementptr inbounds nuw i8, ptr %27, i64 368
  store i64 0, ptr %i.zx, align 8, !tbaa !519
  store i8 0, ptr %i.zw, align 8, !tbaa !157
  %i.zy = getelementptr inbounds nuw i8, ptr %27, i64 392
  store i8 1, ptr %i.zy, align 8, !tbaa !1231
  %i.zz = getelementptr inbounds nuw i8, ptr %27, i64 393
  store i8 0, ptr %i.zz, align 1, !tbaa !1232
  %i.aaa = getelementptr inbounds nuw i8, ptr %27, i64 400
  %i.aab = getelementptr inbounds nuw i8, ptr %27, i64 416 ; 2 uses
  store ptr %i.aab, ptr %i.aaa, align 8, !tbaa !518
  %i.aac = getelementptr inbounds nuw i8, ptr %27, i64 408
  store i64 0, ptr %i.aac, align 8, !tbaa !519
  store i8 0, ptr %i.aab, align 8, !tbaa !157
  %i.aad = getelementptr inbounds nuw i8, ptr %27, i64 432
  %i.aae = getelementptr inbounds nuw i8, ptr %27, i64 3848
  %i.aaf = getelementptr inbounds nuw i8, ptr %27, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aad, i8 0, i64 24, i1 false)
  store ptr %i.aaf, ptr %i.aae, align 8, !tbaa !1233
  %i.aag = getelementptr inbounds nuw i8, ptr %27, i64 3856
  %i.aah = getelementptr inbounds nuw i8, ptr %27, i64 7296
  %i.aai = getelementptr inbounds nuw i8, ptr %27, i64 3904
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aag, i8 0, i64 48, i1 false)
  store ptr %i.aai, ptr %i.aah, align 8, !tbaa !1233
  %i.aaj = getelementptr inbounds nuw i8, ptr %27, i64 7304
  %i.aak = getelementptr inbounds nuw i8, ptr %27, i64 7344
  %i.aal = getelementptr inbounds nuw i8, ptr %27, i64 7424
  %i.aam = getelementptr inbounds nuw i8, ptr %27, i64 7360
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.aaj, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aak, i8 0, i64 16, i1 false)
  store ptr %i.aam, ptr %i.aal, align 8, !tbaa !1175
  %i.aan = getelementptr inbounds nuw i8, ptr %27, i64 7432
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aan, i8 0, i64 24, i1 false)
  br i1 %.0230, label %bb.ci, label %.loopexit1303

bb.ci:                                            ; preds = %bb.ch
  %i.aao = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 2 uses
  %i.aap = atomicrmw add ptr %i.aao, i64 1 seq_cst, align 8
  %i.aaq = getelementptr inbounds nuw i8, ptr %1, i64 256
  store i64 %i.aap, ptr %i.aaq, align 8, !tbaa !1310
  %i.aar = load i64, ptr %19, align 8, !tbaa !1267, !noalias !2420
  %i.aas = load ptr, ptr %i.xz, align 8, !tbaa !1277, !noalias !2420
  %i.aat = load ptr, ptr %i.g, align 8, !tbaa !1270, !noalias !2420 ; 2 uses
  %i.aau = ptrtoint ptr %i.aas to i64
  %i.aav = ptrtoint ptr %i.aat to i64
  %i.aaw = sub i64 %i.aau, %i.aav
  %i.aax = ashr exact i64 %i.aaw, 3
  %i.aay = add i64 %i.aar, -1
  %i.aaz = add i64 %i.aay, %i.aax                 ; 3 uses
  %i.aba = icmp ult i64 %i.aaz, 8
  %i.abb = load ptr, ptr %i.e, align 8
  %i.abc = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.aaz
  %i.abd = getelementptr [8 x i8], ptr %i.aat, i64 %i.aaz
  %i.abe = getelementptr i8, ptr %i.abd, i64 -64
  %.0.i.i.i525 = select i1 %i.aba, ptr %i.abc, ptr %i.abe
  %i.abf = load ptr, ptr %.0.i.i.i525, align 8, !tbaa !1163 ; 2 uses
  %i.abg = load atomic i64, ptr %i.aao seq_cst, align 8
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abf, i64 124
  store i8 1, ptr %i.abh, align 4, !tbaa !1328
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abf, i64 88
  store i64 %i.abg, ptr %i.abi, align 8, !tbaa !1329
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !1079
  %i.abl = invoke noundef i32 @_ZN7rocksdb15ColumnFamilySet18GetMaxColumnFamilyEv(ptr noundef nonnull align 8 dereferenceable(593) %i.abk)
          to label %bb.cj unwind label %.loopexit.split-lp1305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ci
  %.not378 = icmp eq i32 %i.abl, 0
  br i1 %.not378, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.abm = load ptr, ptr %i.v, align 8, !tbaa !2392, !nonnull !561, !align !1326
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 72
  %i.abo = load ptr, ptr %i.abn, align 8
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !1163 ; 2 uses
  %i.abq = load ptr, ptr %i.abj, align 8, !tbaa !1079
  %i.abr = invoke noundef i32 @_ZN7rocksdb15ColumnFamilySet18GetMaxColumnFamilyEv(ptr noundef nonnull align 8 dereferenceable(593) %i.abq)
          to label %bb.cl unwind label %.loopexit.split-lp1305.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cl:                                            ; preds = %bb.ck
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abp, i64 125
  store i8 1, ptr %i.abs, align 1, !tbaa !1333
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abp, i64 96
  store i32 %i.abr, ptr %i.abt, align 8, !tbaa !1334
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.cj
  %i.abu = load ptr, ptr %i.abj, align 8, !tbaa !1079
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 448
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !1354 ; 3 uses
  %.sroa.01123.0.in1467 = getelementptr inbounds nuw i8, ptr %i.abw, i64 2856
  %.sroa.01123.01468 = load ptr, ptr %.sroa.01123.0.in1467, align 8, !tbaa !1355 ; 2 uses
  %.not12571469 = icmp eq ptr %.sroa.01123.01468, %i.abw
  br i1 %.not12571469, label %._crit_edge1473, label %.lr.ph1472

.lr.ph1472:                                       ; preds = %bb.cm
  %i.abx = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 12 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 4 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 4 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 7 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %28, i64 16
  br label %bb.cn

._crit_edge1473:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.cm
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !658 ; 2 uses
  %i.ace = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.acf = icmp eq ptr %i.acd, %i.ace
  br i1 %i.acf, label %.loopexit1303, label %.lr.ph1476

.lr.ph1476:                                       ; preds = %._crit_edge1473
  %i.acg = getelementptr inbounds nuw i8, ptr %27, i64 280 ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %27, i64 288 ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %27, i64 296 ; 3 uses
  %.pre1644 = load ptr, ptr %i.ach, align 8, !tbaa !1346
  %.pre1645 = load ptr, ptr %i.aci, align 8, !tbaa !1284
  br label %bb.cv

bb.cn:                                            ; preds = %.lr.ph1472, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.01123.01470 = phi ptr [ %.sroa.01123.01468, %.lr.ph1472 ], [ %.sroa.01123.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.acj = load i32, ptr %.sroa.01123.01470, align 8, !tbaa !1339
  store i32 %i.acj, ptr %i.a, align 4, !tbaa !269
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #41
  %i.ack = getelementptr inbounds nuw i8, ptr %.sroa.01123.01470, i64 2872
  %i.acl = load i64, ptr %i.ack, align 8, !tbaa !1356
  %i.acm = getelementptr inbounds nuw i8, ptr %.sroa.01123.01470, i64 2968
  store ptr %i.abx, ptr %29, align 8, !tbaa !518
  %i.acn = load ptr, ptr %i.acm, align 8, !tbaa !156 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN7rocksdb10VersionSet21ProcessManifestWritesERSt5dequeINS0_14ManifestWriterESaIS2_EEPNS_17InstrumentedMutexEPNS_11FSDirectoryEbPKNS_19ColumnFamilyOptionsERKNS_11ReadOptionsERKNS_12WriteOptionsE:bb.a
  store ptr %i.bge, ptr %i.bgf, align 8, !tbaa !1366
  br label %_ZN7rocksdb10autovectorIPKNS0_ImLm8EEELm8EE5clearEv.exit.i813

_ZN7rocksdb10autovectorIPKNS0_ImLm8EEELm8EE5clearEv.exit.i813: ; preds = %_ZSt8_DestroyIPPKN7rocksdb10autovectorImLm8EEES4_EvT_S6_RSaIT0_E.exit.i.i.i.i812, %bb.hy
  %.not.i.i.i1.i814 = icmp eq ptr %i.bge, null
  br i1 %.not.i.i.i1.i814, label %_ZN7rocksdb10autovectorIPKNS0_ImLm8EEELm8EED2Ev.exit816, label %bb.hz

bb.hz:                                            ; preds = %_ZN7rocksdb10autovectorIPKNS0_ImLm8EEELm8EE5clearEv.exit.i813
  %i.bgh = getelementptr inbounds nuw i8, ptr %53, i64 96
  %i.bgi = load ptr, ptr %i.bgh, align 8, !tbaa !1367
  %i.bgj = ptrtoint ptr %i.bgi to i64
  %i.bgk = ptrtoint ptr %i.bge to i64
  %i.bgl = sub i64 %i.bgj, %i.bgk
  call void @_ZdlPvm(ptr noundef nonnull %i.bge, i64 noundef %i.bgl) #42
  br label %_ZN7rocksdb10autovectorIPKNS0_ImLm8EEELm8EED2Ev.exit816

bb.ia:                                            ; preds = %.loopexit1279
  br i1 %i.bem, label %bb.ig, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  store i8 0, ptr %i.bek, align 8, !tbaa !554
  %i.bgm = load i8, ptr %i.afe, align 1, !tbaa !1181
  %i.bgn = getelementptr inbounds nuw i8, ptr %1, i64 761
  store i8 %i.bgm, ptr %i.bgn, align 1, !tbaa !1181
  %i.bgo = getelementptr inbounds nuw i8, ptr %30, i64 3
  %i.bgp = load i8, ptr %i.bgo, align 1, !tbaa !1228, !range !560, !noundef !561
  %i.bgq = getelementptr inbounds nuw i8, ptr %1, i64 763
  store i8 %i.bgp, ptr %i.bgq, align 1, !tbaa !1228
  %i.bgr = getelementptr inbounds nuw i8, ptr %30, i64 4
  %i.bgs = load i8, ptr %i.bgr, align 4, !tbaa !562, !range !560, !noundef !561
  %i.bgt = getelementptr inbounds nuw i8, ptr %1, i64 764
  store i8 %i.bgs, ptr %i.bgt, align 4, !tbaa !562
  %i.bgu = getelementptr inbounds nuw i8, ptr %30, i64 5
  %i.bgv = load i8, ptr %i.bgu, align 1, !tbaa !563
  %i.bgw = getelementptr inbounds nuw i8, ptr %1, i64 765
  store i8 %i.bgv, ptr %i.bgw, align 1, !tbaa !563
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.bgx = load ptr, ptr %i.afg, align 8, !tbaa !536 ; 2 uses
  %.not.i.i818 = icmp eq ptr %i.bgx, null
  br i1 %.not.i.i818, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  invoke void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.280") align 8 %10, ptr noundef nonnull %i.bgx)
          to label %.noexc826 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc826:                                        ; preds = %bb.ic
  %.pre.i819 = load ptr, ptr %10, align 8, !tbaa !536
  br label %bb.id

bb.id:                                            ; preds = %.noexc826, %bb.ib
  %i.bgy = phi ptr [ %.pre.i819, %.noexc826 ], [ null, %bb.ib ]
  %i.bgz = getelementptr inbounds nuw i8, ptr %1, i64 768 ; 2 uses
  store ptr null, ptr %10, align 8, !tbaa !536
  %i.bha = load ptr, ptr %i.bgz, align 8, !tbaa !536 ; 2 uses
  store ptr %i.bgy, ptr %i.bgz, align 8, !tbaa !536
  %.not.i.i.i.i.i820 = icmp eq ptr %i.bha, null
  br i1 %.not.i.i.i.i.i820, label %bb.ie, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i821

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i821: ; preds = %bb.id
  call void @_ZdaPv(ptr noundef nonnull %i.bha) #42
  %.pr.i822 = load ptr, ptr %10, align 8, !tbaa !536 ; 2 uses
  %.not.i10.i823 = icmp eq ptr %.pr.i822, null
  br i1 %.not.i10.i823, label %bb.ie, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i824

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i824: ; preds = %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i821
  call void @_ZdaPv(ptr noundef nonnull %.pr.i822) #42
  br label %bb.ie

bb.ie:                                            ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i824, %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit.i821, %bb.id
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.bhb = getelementptr inbounds nuw i8, ptr %1, i64 864
  %i.bhc = load ptr, ptr %i.bhb, align 8, !tbaa !1182 ; 2 uses
  %.not402 = icmp eq ptr %i.bhc, null
  br i1 %.not402, label %bb.ig, label %bb.if

bb.if:                                            ; preds = %bb.ie
  invoke void @_ZN7rocksdb12ErrorHandler22ClearFilesToQuarantineEv(ptr noundef nonnull align 8 dereferenceable(288) %i.bhc)
          to label %bb.ig unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ig:                                            ; preds = %bb.ho, %bb.hk, %bb.ie, %bb.if, %bb.ia, %_ZN7rocksdb10autovectorIPKNS0_ImLm8EEELm8EE5clearEv.exit.i, %bb.hw
  %i.bhd = load i8, ptr %0, align 8, !tbaa !554   ; 2 uses
  %i.bhe = icmp eq i8 %i.bhd, 0
  %or.cond19 = and i1 %.0230, %i.bhe
  br i1 %or.cond19, label %bb.ih, label %bb.io

bb.ih:                                            ; preds = %bb.ig
  %i.bhf = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  %i.bhg = load ptr, ptr %31, align 8, !tbaa !1208
  store ptr null, ptr %31, align 8, !tbaa !1208
  %i.bhh = load ptr, ptr %i.bhf, align 8, !tbaa !1208 ; 3 uses
  store ptr %i.bhg, ptr %i.bhf, align 8, !tbaa !1208
  %.not.i.i.i.i828 = icmp eq ptr %i.bhh, null
  br i1 %.not.i.i.i.i828, label %_ZNSt10unique_ptrIN7rocksdb3log6WriterESt14default_deleteIS2_EEaSEOS5_.exit830, label %_ZNKSt14default_deleteIN7rocksdb3log6WriterEEclEPS2_.exit.i.i.i.i829

_ZNKSt14default_deleteIN7rocksdb3log6WriterEEclEPS2_.exit.i.i.i.i829: ; preds = %bb.ih
  call void @_ZN7rocksdb3log6WriterD1Ev(ptr noundef nonnull align 8 dead_on_return(656) dereferenceable(656) %i.bhh) #41
  call void @_ZdlPvm(ptr noundef nonnull %i.bhh, i64 noundef 656) #42
  br label %_ZNSt10unique_ptrIN7rocksdb3log6WriterESt14default_deleteIS2_EEaSEOS5_.exit830

_ZNSt10unique_ptrIN7rocksdb3log6WriterESt14default_deleteIS2_EEaSEOS5_.exit830: ; preds = %bb.ih, %_ZNKSt14default_deleteIN7rocksdb3log6WriterEEclEPS2_.exit.i.i.i.i829
  %i.bhi = getelementptr inbounds nuw i8, ptr %1, i64 512
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #41
  %i.bhj = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 6 uses
  store ptr %i.bhj, ptr %55, align 8, !tbaa !518
  %i.bhk = getelementptr inbounds nuw i8, ptr %55, i64 8
  store i64 0, ptr %i.bhk, align 8, !tbaa !519
  store i8 0, ptr %i.bhj, align 8, !tbaa !157
  %i.bhl = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bhm = load i64, ptr %i.bhl, align 8, !tbaa !1209
  invoke void @_ZN7rocksdb18DescriptorFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %54, ptr noundef nonnull align 8 dereferenceable(32) %55, i64 noundef %i.bhm)
          to label %bb.ii unwind label %bb.im

bb.ii:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb3log6WriterESt14default_deleteIS2_EEaSEOS5_.exit830
  %i.bhn = getelementptr inbounds nuw i8, ptr %1, i64 520 ; 3 uses
  %i.bho = load ptr, ptr %i.bhn, align 8, !tbaa !1197 ; 6 uses
  %i.bhp = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.bhq = load ptr, ptr %i.bhp, align 8, !tbaa !1198
  %.not.i837 = icmp eq ptr %i.bho, %i.bhq
  br i1 %.not.i837, label %bb.il, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bho, i64 16 ; 3 uses
  store ptr %i.bhr, ptr %i.bho, align 8, !tbaa !518
  %i.bhs = load ptr, ptr %54, align 8, !tbaa !156 ; 2 uses
  %i.bht = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 5 uses
  %i.bhu = icmp eq ptr %i.bhs, %i.bht
  br i1 %i.bhu, label %bb.ik, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i838

bb.ik:                                            ; preds = %bb.ij
  %i.bhv = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.bhw = load i64, ptr %i.bhv, align 8, !tbaa !519 ; 3 uses
  %i.bhx = icmp ult i64 %i.bhw, 16
  call void @llvm.assume(i1 %i.bhx)
  %i.bhy = add nuw nsw i64 %i.bhw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bhr, ptr noundef nonnull align 8 dereferenceable(1) %i.bht, i64 %i.bhy, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i838: ; preds = %bb.ij
  store ptr %i.bhs, ptr %i.bho, align 8, !tbaa !156
  %i.bhz = load i64, ptr %i.bht, align 8, !tbaa !157
  store i64 %i.bhz, ptr %i.bhr, align 8, !tbaa !157
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %54, i64 8
  %.pre1654 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !519
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread: ; preds = %bb.ik, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i838
  %i.bia = phi i64 [ %.pre1654, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i838 ], [ %i.bhw, %bb.ik ]
  %i.bib = getelementptr inbounds nuw i8, ptr %54, i64 8
  %i.bic = getelementptr inbounds nuw i8, ptr %i.bho, i64 8
  store i64 %i.bia, ptr %i.bic, align 8, !tbaa !519
  store ptr %i.bht, ptr %54, align 8, !tbaa !156
  store i64 0, ptr %i.bib, align 8, !tbaa !519
  store i8 0, ptr %i.bht, align 8, !tbaa !157
  %i.bid = load ptr, ptr %i.bhn, align 8, !tbaa !1197
  %i.bie = getelementptr inbounds nuw i8, ptr %i.bid, i64 32
  store ptr %i.bie, ptr %i.bhn, align 8, !tbaa !1197
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843

bb.il:                                            ; preds = %bb.ii
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bhi, ptr %i.bho, ptr noundef nonnull align 8 dereferenceable(32) %54)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit unwind label %bb.in

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit: ; preds = %bb.il
  %.pre1655 = load ptr, ptr %54, align 8, !tbaa !156 ; 2 uses
  %i.bif = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.big = icmp eq ptr %.pre1655, %i.bif
  br i1 %i.big, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit
  %i.bih = load i64, ptr %i.bif, align 8, !tbaa !157
  %i.bii = add i64 %i.bih, 1
  call void @_ZdlPvm(ptr noundef %.pre1655, i64 noundef %i.bii) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJS5_EEERS5_DpOT_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i841
  %i.bij = load ptr, ptr %55, align 8, !tbaa !156 ; 2 uses
  %i.bik = icmp eq ptr %i.bij, %i.bhj
  br i1 %i.bik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843
  %i.bil = load i64, ptr %i.bhj, align 8, !tbaa !157
  %i.bim = add i64 %i.bil, 1
  call void @_ZdlPvm(ptr noundef %i.bij, i64 noundef %i.bim) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit843, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i844
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #41
  %i.bin = getelementptr inbounds nuw i8, ptr %1, i64 416
  store i64 %.1238, ptr %i.bin, align 8, !tbaa !1194
  %i.bio = getelementptr inbounds nuw i8, ptr %1, i64 432
  %i.bip = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.biq = load i32, ptr %i.bip, align 8, !tbaa !1189
  %i.bir = add i32 %i.biq, 100
  %i.bis = zext i32 %i.bir to i64
  %i.bit = mul i64 %.1238, %i.bis
  %i.biu = udiv i64 %i.bit, 100
  %i.biv = load i64, ptr %i.bio, align 8, !tbaa !533
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.biv, i64 %i.biu)
  store i64 %.sroa.speculated.i, ptr %78, align 8, !tbaa !1195
  %.pr1248 = load i8, ptr %0, align 8, !tbaa !554
  br label %bb.io

bb.im:                                            ; preds = %_ZNSt10unique_ptrIN7rocksdb3log6WriterESt14default_deleteIS2_EEaSEOS5_.exit830
  %i.biw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849

bb.in:                                            ; preds = %bb.il
  %i.bix = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.biy = load ptr, ptr %54, align 8, !tbaa !156 ; 2 uses
  %i.biz = getelementptr inbounds nuw i8, ptr %54, i64 16 ; 2 uses
  %i.bja = icmp eq ptr %i.biy, %i.biz
  br i1 %i.bja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i847

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i847: ; preds = %bb.in
  %i.bjb = load i64, ptr %i.biz, align 8, !tbaa !157
  %i.bjc = add i64 %i.bjb, 1
  call void @_ZdlPvm(ptr noundef %i.biy, i64 noundef %i.bjc) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849: ; preds = %bb.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i847, %bb.im
  %.pn403 = phi { ptr, i32 } [ %i.biw, %bb.im ], [ %i.bix, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i847 ], [ %i.bix, %bb.in ]
  %i.bjd = load ptr, ptr %55, align 8, !tbaa !156 ; 2 uses
  %i.bje = icmp eq ptr %i.bjd, %i.bhj
  br i1 %i.bje, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849
  %i.bjf = load i64, ptr %i.bhj, align 8, !tbaa !157
  %i.bjg = add i64 %i.bjf, 1
  call void @_ZdlPvm(ptr noundef %i.bjd, i64 noundef %i.bjg) #42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit852: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit849, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i850
  call void @llvm.lifetime.end.p0(ptr nonnull %55) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #41
  br label %_ZN7rocksdb10autovectorIPKNS0_ImLm8EEELm8EED2Ev.exit816

bb.io:                                            ; preds = %bb.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846
  %i.bjh = phi i8 [ %i.bhd, %bb.ig ], [ %.pr1248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit846 ]
  %i.bji = icmp eq i8 %i.bjh, 0
  br i1 %i.bji, label %bb.ip, label %bb.js

bb.ip:                                            ; preds = %bb.io
  %i.bjj = load ptr, ptr %i.v, align 8, !tbaa !2392, !nonnull !561, !align !1326
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bjj, i64 72
  %i.bjl = load ptr, ptr %i.bjk, align 8
  %i.bjm = load ptr, ptr %i.bjl, align 8, !tbaa !1163 ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjm, i64 317
  %i.bjo = load i8, ptr %i.bjn, align 1, !tbaa !1327, !range !560, !noundef !561
  %i.bjp = trunc nuw i8 %i.bjo to i1
  br i1 %i.bjp, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.bjq = invoke noundef ptr @_ZN7rocksdb10VersionSet18CreateColumnFamilyERKNS_19ColumnFamilyOptionsERKNS_11ReadOptionsEPKNS_11VersionEditEb(ptr noundef nonnull align 8 dereferenceable(874) %1, ptr noundef nonnull align 8 dereferenceable(976) %6, ptr nonnull align 8 poison, ptr noundef nonnull %i.bjm, i1 noundef zeroext false)
          to label %.loopexit1265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ir:                                            ; preds = %bb.ip
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.bjm, i64 316
  %i.bjs = load i8, ptr %i.bjr, align 4, !tbaa !1332, !range !560, !noundef !561
  %i.bjt = trunc nuw i8 %i.bjs to i1
  br i1 %i.bjt, label %bb.is, label %bb.iu

bb.is:                                            ; preds = %bb.ir
  %i.bju = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 2 uses
  %i.bjv = load ptr, ptr %i.bju, align 8, !tbaa !1338
  invoke void @_ZN7rocksdb16ColumnFamilyData10SetDroppedEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.bjv)
          to label %bb.it unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.it:                                            ; preds = %bb.is
  %i.bjw = load ptr, ptr %i.bju, align 8, !tbaa !1338
  %i.bjx = invoke noundef zeroext i1 @_ZN7rocksdb16ColumnFamilyData17UnrefAndTryDeleteEv(ptr noundef nonnull align 8 dereferenceable(3088) %i.bjw)
          to label %.loopexit1265 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.iu:                                            ; preds = %bb.ir
  %i.bjy = load i64, ptr %19, align 8, !tbaa !1267, !noalias !2433
  %i.bjz = load ptr, ptr %i.xz, align 8, !tbaa !1277, !noalias !2433
  %i.bka = load ptr, ptr %i.g, align 8, !tbaa !1270, !noalias !2433
  %i.bkb = ptrtoint ptr %i.bjz to i64
  %i.bkc = ptrtoint ptr %i.bka to i64
  %i.bkd = sub i64 %i.bkb, %i.bkc
  %i.bke = ashr exact i64 %i.bkd, 3
  %i.bkf = add i64 %i.bke, %i.bjy                 ; 2 uses
  %.not1502 = icmp eq i64 %i.bkf, 0
  br i1 %.not1502, label %_ZN7rocksdb10VersionSet22MarkMinLogNumberToKeepEm.exit, label %.lr.ph1506

.lr.ph1506:                                       ; preds = %bb.iu
  %i.bkg = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bkh = getelementptr inbounds nuw i8, ptr %56, i64 16 ; 7 uses
  %i.bki = getelementptr inbounds nuw i8, ptr %56, i64 8
  br label %bb.iv

._crit_edge1507:                                  ; preds = %bb.jl
  %.not423 = icmp eq i64 %.11207, 0
  br i1 %.not423, label %_ZN7rocksdb10VersionSet22MarkMinLogNumberToKeepEm.exit, label %bb.jm

bb.iv:                                            ; preds = %.lr.ph1506, %bb.jl
  %.sroa.51063.01504 = phi i64 [ 0, %.lr.ph1506 ], [ %i.bml, %bb.jl ] ; 4 uses
  %.012061503 = phi i64 [ 0, %.lr.ph1506 ], [ %.11207, %bb.jl ] ; 2 uses
  %i.bkj = icmp ult i64 %.sroa.51063.01504, 8
  %i.bkk = load ptr, ptr %i.e, align 8
  %i.bkl = getelementptr inbounds nuw [8 x i8], ptr %i.bkk, i64 %.sroa.51063.01504
  %i.bkm = load ptr, ptr %i.g, align 8
  %i.bkn = getelementptr [8 x i8], ptr %i.bkm, i64 %.sroa.51063.01504
  %i.bko = getelementptr i8, ptr %i.bkn, i64 -64
  %.0.i.i853 = select i1 %i.bkj, ptr %i.bkl, ptr %i.bko ; 3 uses
  %i.bkp = load ptr, ptr %.0.i.i853, align 8, !tbaa !1163 ; 3 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.bkp, i64 317
  %i.bkr = load i8, ptr %i.bkq, align 1, !tbaa !1327, !range !560, !noundef !561
  %i.bks = trunc nuw i8 %i.bkr to i1
  %i.bkt = getelementptr inbounds nuw i8, ptr %i.bkp, i64 316
  %i.bku = load i8, ptr %i.bkt, align 4, !range !560
  %i.bkv = trunc nuw i8 %i.bku to i1
  %i.bkw = select i1 %i.bks, i1 true, i1 %i.bkv
  br i1 %i.bkw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.bkx = load ptr, ptr %i.bkg, align 8, !tbaa !1079
  %i.bky = getelementptr inbounds nuw i8, ptr %i.bkp, i64 312
  %i.bkz = load i32, ptr %i.bky, align 8, !tbaa !1373
  %i.bla = invoke noundef ptr @_ZNK7rocksdb15ColumnFamilySet15GetColumnFamilyEj(ptr noundef nonnull align 8 dereferenceable(593) %i.bkx, i32 noundef %i.bkz)
          to label %bb.ix unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.ix:                                            ; preds = %bb.iw
  %.not424 = icmp eq ptr %i.bla, null
  br i1 %.not424, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.blb = load ptr, ptr %.0.i.i853, align 8, !tbaa !1163 ; 4 uses
  %i.blc = getelementptr inbounds nuw i8, ptr %i.blb, i64 122
  %i.bld = load i8, ptr %i.blc, align 2, !tbaa !1374, !range !560, !noundef !561
  %i.ble = trunc nuw i8 %i.bld to i1
  br i1 %i.ble, label %bb.iz, label %bb.jb

bb.iz:                                            ; preds = %bb.iy
  %i.blf = getelementptr inbounds nuw i8, ptr %i.blb, i64 72
  %i.blg = load i64, ptr %i.blf, align 8, !tbaa !1375 ; 2 uses
  %i.blh = getelementptr inbounds nuw i8, ptr %i.bla, i64 2872 ; 2 uses
  %i.bli = load i64, ptr %i.blh, align 8, !tbaa !1356
  %i.blj = icmp ugt i64 %i.blg, %i.bli
  br i1 %i.blj, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  store i64 %i.blg, ptr %i.blh, align 8, !tbaa !1356
  br label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz, %bb.iy
  %i.blk = getelementptr inbounds nuw i8, ptr %i.blb, i64 368
  %i.bll = load i64, ptr %i.blk, align 8, !tbaa !519 ; 9 uses
  %.not1263 = icmp eq i64 %i.bll, 0
  br i1 %.not1263, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit864, label %bb.jc

bb.jc:                                            ; preds = %bb.jb
  %i.blm = getelementptr inbounds nuw i8, ptr %i.blb, i64 360
  store ptr %i.bkh, ptr %56, align 8, !tbaa !518
  %i.bln = load ptr, ptr %i.blm, align 8, !tbaa !156 ; 2 uses
  %i.blo = icmp ugt i64 %i.bll, 15
  br i1 %i.blo, label %bb.jd, label %._crit_edge.i.i854

bb.jd:                                            ; preds = %bb.jc
  %i.blp = icmp slt i64 %i.bll, 0
  br i1 %i.blp, label %.noexc.i857, label %bb.je

.noexc.i857:                                      ; preds = %bb.jd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.111) #43
          to label %.noexc858 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc858:                                        ; preds = %.noexc.i857
  unreachable

bb.je:                                            ; preds = %bb.jd
  %i.blq = add nuw i64 %i.bll, 1                  ; 2 uses
  %i.blr = icmp slt i64 %i.blq, 0
  br i1 %i.blr, label %.noexc6.i856, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i855, !prof !270

.noexc6.i856:                                     ; preds = %bb.je
  invoke void @_ZSt17__throw_bad_allocv() #43
          to label %.noexc859 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc859:                                        ; preds = %.noexc6.i856
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i855: ; preds = %bb.je
  %i.bls = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.blq) #44
          to label %.noexc860 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc860:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i855
  store ptr %i.bls, ptr %56, align 8, !tbaa !156
  store i64 %i.bll, ptr %i.bkh, align 8, !tbaa !157
  br label %._crit_edge.i.i854

._crit_edge.i.i854:                               ; preds = %.noexc860, %bb.jc
  %i.blt = phi ptr [ %i.bls, %.noexc860 ], [ %i.bkh, %bb.jc ] ; 3 uses
  %cond = icmp eq i64 %i.bll, 1
  br i1 %cond, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %._crit_edge.i.i854
  %i.blu = load i8, ptr %i.bln, align 1, !tbaa !157
  store i8 %i.blu, ptr %i.blt, align 1, !tbaa !157
end_hunk_4
begin_hunk_5_@_ZN7rocksdb7Version3GetERKNS_11ReadOptionsERKNS_9LookupKeyEPNS_13PinnableSliceEPNS_19PinnableWideColumnsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_6StatusEPNS_12MergeContextEPmPNS_22PinnedIteratorsManagerEPbSP_SM_PNS_12ReadCallbackESP_b:bb.a
bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.091 = phi i64 [ %i.y, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.d ], [ %i.r, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store i8 0, ptr %i.a, align 1, !tbaa !559
  %.not102 = icmp eq ptr %14, null
  %i.z = select i1 %.not102, ptr %i.a, ptr %14
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #41
  %i.aa = getelementptr inbounds nuw i8, ptr %20, i64 8
  store ptr %0, ptr %i.aa, align 8, !tbaa !1522
  %i.ab = getelementptr inbounds nuw i8, ptr %20, i64 16
  store ptr null, ptr %i.ab, align 8, !tbaa !1523
  %i.ac = getelementptr inbounds nuw i8, ptr %20, i64 24
  store i8 0, ptr %i.ac, align 8, !tbaa !1524
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7rocksdb18VersionBlobFetcherE, i64 16), ptr %20, align 8, !tbaa !153
  %i.ad = getelementptr inbounds nuw i8, ptr %20, i64 32
  store ptr %1, ptr %i.ad, align 8, !tbaa !779
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #41
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !725
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !919 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1525
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.al = load ptr, ptr %i.ak, align 16, !tbaa !745
  %i.am = load i8, ptr %6, align 8, !tbaa !554
  %i.an = icmp eq i8 %i.am, 0
  %i.ao = select i1 %i.an, i32 0, i32 4
  %i.ap = select i1 %15, ptr %3, ptr null
  %i.aq = select i1 %15, ptr %4, ptr null
  %i.ar = select i1 %15, ptr %5, ptr null
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !746
  %.not103 = icmp eq ptr %i.ah, null
  %i.au = select i1 %.not103, ptr null, ptr %9
  call void @_ZN7rocksdb10GetContextC1EPKNS_10ComparatorEPKNS_13MergeOperatorEPNS_6LoggerEPNS_10StatisticsENS0_8GetStateERKNS_5SliceEPNS_13PinnableSliceEPNS_19PinnableWideColumnsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPbPNS_12MergeContextEbPmPNS_11SystemClockEST_PNS_22PinnedIteratorsManagerEPNS_12ReadCallbackESQ_mPNS_11BlobFetcherE(ptr noundef nonnull align 8 dereferenceable(512) %21, ptr noundef %i.af, ptr noundef %i.ah, ptr noundef %i.aj, ptr noundef %i.al, i32 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef %i.ar, ptr noundef %10, ptr noundef %7, i1 noundef zeroext %15, ptr noundef %8, ptr noundef %i.at, ptr noundef %12, ptr noundef %i.au, ptr noundef %13, ptr noundef nonnull %i.z, i64 noundef %.091, ptr noundef nonnull %20)
  %i.av = load ptr, ptr %i.ag, align 8, !tbaa !919
  %.not104 = icmp eq ptr %i.av, null
  br i1 %.not104, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i8 1, ptr %i.aw, align 8, !tbaa !1532
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #41
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !727
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  store i32 %i.az, ptr %22, align 8, !tbaa !1536
  %i.bc = getelementptr inbounds nuw i8, ptr %22, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %22, i64 12 ; 10 uses
  store <4 x i32> <i32 -1, i32 -1, i32 -1, i32 0>, ptr %i.bc, align 4, !tbaa !269
  %i.be = getelementptr inbounds nuw i8, ptr %22, i64 20
  store i32 2147483647, ptr %i.be, align 4, !tbaa !1537
  %i.bf = getelementptr inbounds nuw i8, ptr %22, i64 24 ; 3 uses
  store ptr %i.ax, ptr %i.bf, align 8, !tbaa !1538
  %i.bg = getelementptr inbounds nuw i8, ptr %22, i64 33 ; 2 uses
  store i8 0, ptr %i.bg, align 1, !tbaa !1539
  %i.bh = getelementptr inbounds nuw i8, ptr %22, i64 40
  store ptr null, ptr %i.bh, align 8, !tbaa !1540
  %i.bi = getelementptr inbounds nuw i8, ptr %22, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(16) %19, i64 16, i1 false), !tbaa.struct !539
  %i.bj = getelementptr inbounds nuw i8, ptr %22, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %18, i64 16, i1 false), !tbaa.struct !539
  %i.bk = getelementptr inbounds nuw i8, ptr %22, i64 88
  store ptr %i.ba, ptr %i.bk, align 8, !tbaa !1541
  %i.bl = getelementptr inbounds nuw i8, ptr %22, i64 96
  %i.bm = load <2 x ptr>, ptr %i.bb, align 16, !tbaa !511
  %i.bn = shufflevector <2 x ptr> %i.bm, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.bn, ptr %i.bl, align 8, !tbaa !511
  %i.bo = invoke noundef zeroext i1 @_ZN7rocksdb10FilePicker16PrepareNextLevelEv(ptr noundef nonnull align 8 dereferenceable(112) %22)
          to label %.noexc unwind label %bb.an    ; 2 uses

.noexc:                                           ; preds = %bb.i
  %i.bp = xor i1 %i.bo, true
  %i.bq = getelementptr inbounds nuw i8, ptr %22, i64 32
  %i.br = zext i1 %i.bp to i8
  store i8 %i.br, ptr %i.bq, align 8, !tbaa !1542
  br i1 %i.bo, label %.preheader.i, label %_ZN7rocksdb10FilePickerC2ERKNS_5SliceES3_PNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE.exit

.preheader.i:                                     ; preds = %.noexc
  %i.bs = load ptr, ptr %i.bf, align 8, !tbaa !1538
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 136
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !528
  %.not16.i = icmp eq i64 %i.bv, 0
  br i1 %.not16.i, label %_ZN7rocksdb10FilePickerC2ERKNS_5SliceES3_PNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc131
  %i.bw = phi ptr [ %i.cj, %.noexc131 ], [ %i.bu, %.preheader.i ]
  %i.bx = phi i64 [ %i.cg, %.noexc131 ], [ 0, %.preheader.i ]
  %.015.i = phi i32 [ %i.cf, %.noexc131 ], [ 0, %.preheader.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !530
  %i.ca = getelementptr inbounds nuw [88 x i8], ptr %i.bz, i64 %i.bx
  %i.cb = load atomic ptr, ptr %i.ca acquire, align 8 ; 3 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %.noexc131, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !153
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 80
  %i.ce = load ptr, ptr %i.cd, align 8
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(16) %18)
          to label %.noexc131 unwind label %bb.an, !inline_history !2905

.noexc131:                                        ; preds = %bb.j, %.lr.ph.i
  %i.cf = add i32 %.015.i, 1                      ; 2 uses
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = load ptr, ptr %i.bf, align 8, !tbaa !1538
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 136
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !528
  %i.cl = icmp ugt i64 %i.ck, %i.cg
  br i1 %i.cl, label %.lr.ph.i, label %_ZN7rocksdb10FilePickerC2ERKNS_5SliceES3_PNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE.exit, !llvm.loop !2906

_ZN7rocksdb10FilePickerC2ERKNS_5SliceES3_PNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE.exit: ; preds = %.noexc131, %.preheader.i, %.noexc
  %i.cm = invoke noundef ptr @_ZN7rocksdb10FilePicker11GetNextFileEv(ptr noundef nonnull align 8 dereferenceable(112) %22)
          to label %.preheader unwind label %bb.an

.preheader:                                       ; preds = %_ZN7rocksdb10FilePickerC2ERKNS_5SliceES3_PNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %21, i64 480 ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 5336
  %.not.i133 = icmp eq ptr %6, %23
  %i.cs = getelementptr inbounds nuw i8, ptr %6, i64 1 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %6, i64 2
  %i.cu = getelementptr inbounds nuw i8, ptr %23, i64 4 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %23, i64 5 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %6, i64 5 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 18 uses
  %.not.i134 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.da = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i135 = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 7 uses
  %i.db = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 968 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 960 ; 14 uses
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 264 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.cp
  %.079 = phi ptr [ %i.lo, %bb.cp ], [ %i.cm, %.preheader ] ; 3 uses
  %.not105 = icmp eq ptr %.079, null
  br i1 %.not105, label %bb.cq, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.df = load i64, ptr %8, align 8, !tbaa !533
  %.not106 = icmp eq i64 %i.df, 0
  br i1 %.not106, label %bb.m, label %bb.cq

bb.m:                                             ; preds = %bb.l
  %i.dg = load i8, ptr %i.cn, align 8, !tbaa !1550, !range !560, !noundef !561
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.di = getelementptr inbounds nuw i8, ptr %.079, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !535
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 112
  %i.dl = atomicrmw add ptr %i.dk, i64 1024 monotonic, align 8 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dm = invoke noundef zeroext i8 @_ZN7rocksdb12GetPerfLevelEv()
          to label %bb.p unwind label %bb.an

bb.p:                                             ; preds = %bb.o
  %i.dn = icmp ugt i8 %i.dm, 3
  br i1 %i.dn, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.p
  %i.do = load ptr, ptr %i.as, align 8, !tbaa !746
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.dp = invoke noundef ptr @_ZN7rocksdb16get_perf_contextEv()
          to label %bb.r unwind label %bb.an

bb.r:                                             ; preds = %bb.q
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 968
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !1553, !range !560, !noundef !561
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = load ptr, ptr %i.as, align 8, !tbaa !746 ; 4 uses
  br i1 %i.ds, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !153
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 160
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(32) %i.dt)
          to label %bb.t unwind label %bb.an, !inline_history !87

bb.t:                                             ; preds = %bb.r, %.thread, %bb.s
  %i.dy = phi ptr [ %i.do, %.thread ], [ %i.dt, %bb.r ], [ %i.dt, %bb.s ] ; 4 uses
  %i.dz = phi i1 [ false, %.thread ], [ false, %bb.r ], [ true, %bb.s ]
  %.sroa.7.0 = phi i64 [ 0, %.thread ], [ 0, %bb.r ], [ %i.dx, %bb.s ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #41
  %i.ea = load ptr, ptr %i.co, align 8, !tbaa !917
  %i.eb = load ptr, ptr %i.bb, align 16, !tbaa !1554
  %i.ec = getelementptr inbounds nuw i8, ptr %.079, i64 48 ; 3 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !535
  %i.ee = load ptr, ptr %i.cp, align 16, !tbaa !361 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 2744
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !740
  %i.eh = load i32, ptr %i.bd, align 4, !tbaa !1555 ; 4 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 584
  %i.ej = sext i32 %i.eh to i64
  %i.ek = load ptr, ptr %i.ei, align 8, !tbaa !742
  %i.el = getelementptr inbounds nuw [968 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load i8, ptr %i.bg, align 1, !tbaa !1539, !range !560, !noundef !561
  %i.en = trunc nuw i8 %i.em to i1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 1836
  %i.ep = load i8, ptr %i.eo, align 4, !tbaa !743, !range !560, !noundef !561
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = icmp sgt i32 %i.eh, 0
  %or.cond.i = or i1 %i.er, %i.en
  %or.cond4.i = and i1 %or.cond.i, %i.eq
  br i1 %or.cond4.i, label %36, label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

36:                                               ; preds = %bb.t
  %37 = load i32, ptr %i.ay, align 4, !tbaa !628
  %38 = add nsw i32 %37, -1
  %39 = icmp eq i32 %i.eh, %38
  br label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

_ZN7rocksdb7Version15IsFilterSkippedEib.exit:     ; preds = %36, %bb.t
  %40 = phi i1 [ %39, %36 ], [ false, %bb.t ]
  %41 = load i64, ptr %i.cr, align 8, !tbaa !829
  invoke void @_ZN7rocksdb10TableCache3GetERKNS_11ReadOptionsERKNS_21InternalKeyComparatorERKNS_12FileMetaDataERKNS_5SliceEPNS_10GetContextERKNS_16MutableCFOptionsEPNS_13HistogramImplEbim(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %23, ptr noundef nonnull align 8 dereferenceable(152) %i.ea, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, ptr noundef nonnull align 8 dereferenceable(417) %i.ed, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %21, ptr noundef nonnull align 8 dereferenceable(736) %i.cq, ptr noundef %i.el, i1 noundef zeroext %40, i32 noundef %i.eh, i64 noundef %41)
          to label %bb.u unwind label %bb.af

bb.u:                                             ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  %.pre344 = load ptr, ptr %i.cy, align 8, !tbaa !536 ; 2 uses
  br i1 %.not.i133, label %_ZN7rocksdb6StatusaSEOS0_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.es = load <4 x i8>, ptr %23, align 8, !tbaa !157
  store <4 x i8> %i.es, ptr %6, align 8, !tbaa !157
  store <4 x i8> zeroinitializer, ptr %23, align 8, !tbaa !157
  %i.et = load i8, ptr %i.cu, align 4, !tbaa !559, !range !560, !noundef !561
  store i8 %i.et, ptr %i.cv, align 4, !tbaa !562
  store i8 0, ptr %i.cu, align 4, !tbaa !562
  %i.eu = load i8, ptr %i.cw, align 1, !tbaa !157
  store i8 %i.eu, ptr %i.cx, align 1, !tbaa !563
  store i8 0, ptr %i.cw, align 1, !tbaa !563
  store ptr null, ptr %i.cy, align 8, !tbaa !536
  %i.ev = load ptr, ptr %i.cz, align 8, !tbaa !536 ; 2 uses
  store ptr %.pre344, ptr %i.cz, align 8, !tbaa !536
  %.not.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i: ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ev) #42
  %.pre = load ptr, ptr %i.cy, align 8, !tbaa !536
  br label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.u, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i
  %i.ew = phi ptr [ %.pre344, %bb.u ], [ %.pre, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %i.ew, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ew) #42
  br label %_ZN7rocksdb6StatusD2Ev.exit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.v, %_ZN7rocksdb6StatusaSEOS0_.exit, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br i1 %i.dz, label %bb.w, label %bb.ap

bb.w:                                             ; preds = %_ZN7rocksdb6StatusD2Ev.exit
  br i1 %.not.i134, label %_ZTWN7rocksdb10perf_levelE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit

_ZTWN7rocksdb10perf_levelE.exit:                  ; preds = %bb.w, %bb.x
  %i.ex = load i8, ptr %i.da, align 1, !tbaa !146
  %i.ey = icmp ugt i8 %i.ex, 1
  br i1 %i.ey, label %bb.y, label %bb.ap

bb.y:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit
  br i1 %.not.i135, label %_ZTWN7rocksdb12perf_contextE.exit, label %_ZTWN7rocksdb12perf_contextE.exit.thread

_ZTWN7rocksdb12perf_contextE.exit:                ; preds = %bb.y
  %i.ez = load i8, ptr %i.dc, align 8, !tbaa !1553, !range !560, !noundef !561
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not107 = icmp ne ptr %i.fb, null
  %or.cond284.not = select i1 %i.fa, i1 %.not107, i1 false
  br i1 %or.cond284.not, label %_ZTWN7rocksdb12perf_contextE.exit139, label %bb.ap

_ZTWN7rocksdb12perf_contextE.exit.thread:         ; preds = %bb.y
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.fc = load i8, ptr %i.dc, align 8, !tbaa !1553, !range !560, !noundef !561
  %i.fd = trunc nuw i8 %i.fc to i1
  br i1 %i.fd, label %_ZTWN7rocksdb12perf_contextE.exit137.thread, label %bb.ap

_ZTWN7rocksdb12perf_contextE.exit137.thread:      ; preds = %_ZTWN7rocksdb12perf_contextE.exit.thread
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.fe = load ptr, ptr %i.dd, align 8, !tbaa !1556
  %.not107264 = icmp eq ptr %i.fe, null
  br i1 %.not107264, label %bb.ap, label %bb.z

bb.z:                                             ; preds = %_ZTWN7rocksdb12perf_contextE.exit137.thread
  call void @_ZTHN7rocksdb12perf_contextE()
  %.pre345 = load ptr, ptr %i.dd, align 8, !tbaa !1556
  br label %_ZTWN7rocksdb12perf_contextE.exit139

_ZTWN7rocksdb12perf_contextE.exit139:             ; preds = %_ZTWN7rocksdb12perf_contextE.exit, %bb.z
  %i.ff = phi ptr [ %i.fb, %_ZTWN7rocksdb12perf_contextE.exit ], [ %.pre345, %bb.z ] ; 3 uses
  %i.fg = load i32, ptr %i.bd, align 4, !tbaa !1555 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !657 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ff, i64 8 ; 6 uses
  %.not10.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZTWN7rocksdb12perf_contextE.exit139, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.fi, %_ZTWN7rocksdb12perf_contextE.exit139 ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.fj, %_ZTWN7rocksdb12perf_contextE.exit139 ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !269
  %i.fm = icmp ult i32 %i.fl, %i.fg               ; 2 uses
  %.19.i.i.i = select i1 %i.fm, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 4 uses
  %.1.in.v.i.i.i = select i1 %i.fm, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !1114 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb18PerfContextByLevelEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !88

_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb18PerfContextByLevelEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.fn = icmp eq ptr %.19.i.i.i, %i.fj
  br i1 %i.fn, label %_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb18PerfContextByLevelEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.fo = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !269
  %i.fq = icmp ult i32 %i.fg, %i.fp
  %spec.select.i.i = select i1 %i.fq, ptr %i.fj, ptr %.19.i.i.i
  br label %_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit

_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit: ; preds = %bb.aa, %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb18PerfContextByLevelEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZTWN7rocksdb12perf_contextE.exit139
  %.sroa.0.0.i.i = phi ptr [ %i.fj, %_ZTWN7rocksdb12perf_contextE.exit139 ], [ %i.fj, %_ZNSt8_Rb_treeIjSt4pairIKjN7rocksdb18PerfContextByLevelEESt10_Select1stIS4_ESt4lessIjESaIS4_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS4_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %spec.select.i.i, %bb.aa ] ; 2 uses
  br i1 %.not.i135, label %_ZTWN7rocksdb12perf_contextE.exit141, label %_ZTWN7rocksdb12perf_contextE.exit141.thread

_ZTWN7rocksdb12perf_contextE.exit141:             ; preds = %_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  %i.fr = icmp eq ptr %.sroa.0.0.i.i, %i.fj
  br i1 %i.fr, label %_ZTWN7rocksdb12perf_contextE.exit146, label %bb.ab

_ZTWN7rocksdb12perf_contextE.exit141.thread:      ; preds = %_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEE4findERS5_.exit
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.fs = load ptr, ptr %i.dd, align 8, !tbaa !1556
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = icmp eq ptr %.sroa.0.0.i.i, %i.ft
  br i1 %i.fu, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit141.thread, %_ZTWN7rocksdb12perf_contextE.exit141
  %i.fv = load ptr, ptr %i.dy, align 8, !tbaa !153
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 160
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef i64 %i.fx(ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %bb.ac unwind label %bb.an, !inline_history !89

bb.ac:                                            ; preds = %bb.ab
  %i.fz = sub i64 %i.fy, %.sroa.7.0
  br i1 %.not.i135, label %_ZTWN7rocksdb12perf_contextE.exit144, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit144

_ZTWN7rocksdb12perf_contextE.exit144:             ; preds = %bb.ac, %bb.ad
  %i.ga = load ptr, ptr %i.dd, align 8, !tbaa !1556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.gb = load i32, ptr %i.bd, align 4, !tbaa !1555
  store i32 %i.gb, ptr %i.b, align 4, !tbaa !269
  %i.gc = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEEixEOj(ptr noundef nonnull align 8 dereferenceable(48) %i.ga, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit144
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 32 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !1558
  %i.gf = add i64 %i.fz, %i.ge
  store i64 %i.gf, ptr %i.gd, align 8, !tbaa !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.ap

bb.af:                                            ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  %i.gg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #41
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit144
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit141.thread
  call void @_ZTHN7rocksdb12perf_contextE()
  %.pre346 = load ptr, ptr %i.dd, align 8, !tbaa !1556
  %.pre347 = load i32, ptr %i.bd, align 4, !tbaa !1555
  br label %_ZTWN7rocksdb12perf_contextE.exit146

_ZTWN7rocksdb12perf_contextE.exit146:             ; preds = %_ZTWN7rocksdb12perf_contextE.exit141, %bb.ah
  %i.gi = phi i32 [ %.pre347, %bb.ah ], [ %i.fg, %_ZTWN7rocksdb12perf_contextE.exit141 ]
  %i.gj = phi ptr [ %.pre346, %bb.ah ], [ %i.ff, %_ZTWN7rocksdb12perf_contextE.exit141 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 %i.gi, ptr %i.c, align 4, !tbaa !269
  %i.gk = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEEixEOj(ptr noundef nonnull align 8 dereferenceable(48) %i.gj, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ai unwind label %bb.am

bb.ai:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit146
  store <7 x i64> zeroinitializer, ptr %i.gk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.gl = load ptr, ptr %i.dy, align 8, !tbaa !153
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 160
  %i.gn = load ptr, ptr %i.gm, align 8
  %i.go = invoke noundef i64 %i.gn(ptr noundef nonnull align 8 dereferenceable(32) %i.dy)
          to label %bb.aj unwind label %bb.an, !inline_history !89

bb.aj:                                            ; preds = %bb.ai
  %i.gp = sub i64 %i.go, %.sroa.7.0
  br i1 %.not.i135, label %_ZTWN7rocksdb12perf_contextE.exit150, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit150

_ZTWN7rocksdb12perf_contextE.exit150:             ; preds = %bb.aj, %bb.ak
  %i.gq = load ptr, ptr %i.dd, align 8, !tbaa !1556
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.gr = load i32, ptr %i.bd, align 4, !tbaa !1555
  store i32 %i.gr, ptr %i.d, align 4, !tbaa !269
  %i.gs = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNSt3mapIjN7rocksdb18PerfContextByLevelESt4lessIjESaISt4pairIKjS1_EEEixEOj(ptr noundef nonnull align 8 dereferenceable(48) %i.gq, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.al unwind label %bb.ao

bb.al:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit150
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 32 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !1558
  %i.gv = add i64 %i.gp, %i.gu
  store i64 %i.gv, ptr %i.gt, align 8, !tbaa !1558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.ap

bb.am:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit146
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  br label %.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.ar, %bb.ck, %bb.i, %_ZN7rocksdb10FilePickerC2ERKNS_5SliceES3_PNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE.exit, %bb.cr, %.invoke, %bb.j, %bb.o, %bb.q, %bb.ab, %bb.s, %bb.cp, %bb.au, %bb.ai
  %i.gx = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit150
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.ae, %bb.al, %_ZTWN7rocksdb12perf_contextE.exit, %_ZTWN7rocksdb10perf_levelE.exit, %_ZTWN7rocksdb12perf_contextE.exit.thread, %_ZTWN7rocksdb12perf_contextE.exit137.thread
  %i.gz = load i8, ptr %6, align 8, !tbaa !554
  %i.ha = icmp eq i8 %i.gz, 0
  br i1 %i.ha, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hb = load ptr, ptr %i.ak, align 16, !tbaa !745
  %.not109 = icmp eq ptr %i.hb, null
  br i1 %.not109, label %.critedge, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN7rocksdb10GetContext14ReportCountersEv(ptr noundef nonnull align 8 dereferenceable(512) %21)
          to label %.critedge unwind label %bb.an

bb.as:                                            ; preds = %bb.ap
  %i.hc = load i32, ptr %i.de, align 8, !tbaa !1559 ; 2 uses
  switch i32 %i.hc, label %bb.at [
    i32 0, label %.thread267
    i32 4, label %.thread268
  ]

bb.at:                                            ; preds = %bb.as
  %i.hd = load ptr, ptr %i.ak, align 16, !tbaa !745
  %.not112 = icmp eq ptr %i.hd, null
  br i1 %.not112, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN7rocksdb10GetContext14ReportCountersEv(ptr noundef nonnull align 8 dereferenceable(512) %21)
          to label %._crit_edge unwind label %bb.an

._crit_edge:                                      ; preds = %bb.au
  %.pr.pre = load i32, ptr %i.de, align 8, !tbaa !1559
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.at
  %.pr = phi i32 [ %.pr.pre, %._crit_edge ], [ %i.hc, %bb.at ]
  switch i32 %.pr, label %bb.cp [
    i32 0, label %.thread267
    i32 4, label %.thread268
    i32 1, label %bb.aw
    i32 2, label %bb.cf
    i32 3, label %bb.ch
    i32 5, label %bb.ck
    i32 6, label %bb.co
  ]

.thread267:                                       ; preds = %bb.as, %bb.av
  %i.he = load i8, ptr %i.cn, align 8, !tbaa !1550, !range !560, !noundef !561
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %.sink.split, label %bb.cp

.thread268:                                       ; preds = %bb.as, %bb.av
  %i.hg = load i8, ptr %i.cn, align 8, !tbaa !1550, !range !560, !noundef !561
  %i.hh = trunc nuw i8 %i.hg to i1
  br i1 %i.hh, label %.sink.split, label %bb.cp

bb.aw:                                            ; preds = %bb.av
  %i.hi = load i32, ptr %i.bd, align 4, !tbaa !1555
  %i.hj = load ptr, ptr %i.ak, align 16, !tbaa !745 ; 3 uses
  %.not.i156 = icmp eq ptr %i.hj, null            ; 3 uses
  switch i32 %i.hi, label %bb.az [
    i32 0, label %bb.ax
    i32 1, label %bb.ay
  ]

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not.i156, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %.invoke

bb.ay:                                            ; preds = %bb.aw
  br i1 %.not.i156, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %.invoke

bb.az:                                            ; preds = %bb.aw
  br i1 %.not.i156, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, label %.invoke

.invoke:                                          ; preds = %bb.az, %bb.ay, %bb.ax
  %i.hk = phi i32 [ 48, %bb.ay ], [ 47, %bb.ax ], [ 49, %bb.az ]
  %i.hl = load ptr, ptr %i.hj, align 8, !tbaa !153
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 176
  %i.hn = load ptr, ptr %i.hm, align 8
  invoke void %i.hn(ptr noundef nonnull align 8 dereferenceable(33) %i.hj, i32 noundef %i.hk, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit unwind label %bb.an, !inline_history !10

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit: ; preds = %.invoke, %bb.az, %bb.ay, %bb.ax
  br i1 %.not.i134, label %_ZTWN7rocksdb10perf_levelE.exit160, label %bb.ba

bb.ba:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit160

_ZTWN7rocksdb10perf_levelE.exit160:               ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit, %bb.ba
  %i.ho = load i8, ptr %i.da, align 1, !tbaa !146
  %i.hp = icmp ugt i8 %i.ho, 1
  br i1 %i.hp, label %bb.bb, label %bb.bn

bb.bb:                                            ; preds = %_ZTWN7rocksdb10perf_levelE.exit160
  br i1 %.not.i135, label %_ZTWN7rocksdb12perf_contextE.exit162, label %_ZTWN7rocksdb12perf_contextE.exit162.thread

_ZTWN7rocksdb12perf_contextE.exit162:             ; preds = %bb.bb
  %i.hq = load i8, ptr %i.dc, align 8, !tbaa !1553, !range !560, !noundef !561
  %i.hr = trunc nuw i8 %i.hq to i1
  %i.hs = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not113 = icmp ne ptr %i.hs, null
  %or.cond287.not = select i1 %i.hr, i1 %.not113, i1 false
  br i1 %or.cond287.not, label %_ZTWN7rocksdb12perf_contextE.exit166, label %bb.bn

_ZTWN7rocksdb12perf_contextE.exit162.thread:      ; preds = %bb.bb
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.ht = load i8, ptr %i.dc, align 8, !tbaa !1553, !range !560, !noundef !561
  %i.hu = trunc nuw i8 %i.ht to i1
  br i1 %i.hu, label %_ZTWN7rocksdb12perf_contextE.exit164.thread, label %bb.bn

_ZTWN7rocksdb12perf_contextE.exit164.thread:      ; preds = %_ZTWN7rocksdb12perf_contextE.exit162.thread
  call void @_ZTHN7rocksdb12perf_contextE()
  %i.hv = load ptr, ptr %i.dd, align 8, !tbaa !1556
  %.not113270 = icmp eq ptr %i.hv, null
  br i1 %.not113270, label %bb.bn, label %bb.bc

bb.bc:                                            ; preds = %_ZTWN7rocksdb12perf_contextE.exit164.thread
  call void @_ZTHN7rocksdb12perf_contextE()
  %.pre349 = load ptr, ptr %i.dd, align 8, !tbaa !1556
  br label %_ZTWN7rocksdb12perf_contextE.exit166

_ZTWN7rocksdb12perf_contextE.exit166:             ; preds = %_ZTWN7rocksdb12perf_contextE.exit162, %bb.bc
  %i.hw = phi ptr [ %i.hs, %_ZTWN7rocksdb12perf_contextE.exit162 ], [ %.pre349, %bb.bc ] ; 4 uses
  %i.hx = load i32, ptr %i.bd, align 4, !tbaa !1555 ; 4 uses
end_hunk_5
begin_hunk_6_@_ZN7rocksdb7Version8MultiGetERKNS_11ReadOptionsEPNS_15MultiGetContext5RangeEPNS_12ReadCallbackE:bb.a
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !1573
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 160
  store ptr %.0.i, ptr %i.fp, align 8, !tbaa !1010
  %i.fq = add i64 %.sroa.7305.0378, 1
  %umax.i146 = call i64 @llvm.umax.i64(i64 %.lcssa373, i64 %i.fq) ; 3 uses
  %i.fr = add i64 %umax.i146, -1                  ; 2 uses
  %exitcond402.not595 = icmp eq i64 %.sroa.7305.0378, %i.fr
  br i1 %exitcond402.not595, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149, label %.lr.ph597.preheader

.lr.ph597.preheader:                              ; preds = %bb.q
  %i.fs = load i64, ptr %i.cs, align 8, !tbaa !1570
  %i.ft = load i64, ptr %i.cq, align 8, !tbaa !1571
  %i.fu = or i64 %i.ft, %i.fs
  %i.fv = load i64, ptr %i.cr, align 8, !tbaa !1572
  %i.fw = or i64 %i.fu, %i.fv
  br label %.lr.ph597

bb.r:                                             ; preds = %.lr.ph597
  %exitcond402.not = icmp eq i64 %i.fy, %i.fr
  br i1 %exitcond402.not, label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149, label %.lr.ph597, !llvm.loop !91

.lr.ph597:                                        ; preds = %.lr.ph597.preheader, %bb.r
  %i.fx = phi i64 [ %i.fy, %bb.r ], [ %.sroa.7305.0378, %.lr.ph597.preheader ]
  %i.fy = add i64 %i.fx, 1                        ; 4 uses
  %i.fz = shl nuw i64 1, %i.fy
  %i.ga = and i64 %i.fw, %i.fz
  %.not.i148 = icmp eq i64 %i.ga, 0
  br i1 %.not.i148, label %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599, label %bb.r, !llvm.loop !91

._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599: ; preds = %.lr.ph597
  br label %_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149, !llvm.loop !91

_ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149: ; preds = %bb.r, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599, %bb.q
  %.lcssa.i147 = phi i64 [ %umax.i146, %bb.q ], [ %i.fy, %._ZN7rocksdb15MultiGetContext5Range8IteratorppEv.exit149_crit_edge599 ], [ %umax.i146, %bb.r ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not363 = icmp eq i64 %.lcssa.i147, %.lcssa373
  br i1 %.not363, label %._crit_edge381, label %bb.q, !llvm.loop !2955

.loopexit367:                                     ; preds = %bb.p, %scalar.ph636, %middle.block651, %vector.early.exit653, %._crit_edge381..loopexit367_crit_edge
  %i.gb = phi i64 [ %.pre423, %._crit_edge381..loopexit367_crit_edge ], [ %i.es, %vector.early.exit653 ], [ %i.es, %middle.block651 ], [ %i.es, %scalar.ph636 ], [ %i.es, %bb.p ] ; 3 uses
  %i.gc = phi i64 [ %.pre421, %._crit_edge381..loopexit367_crit_edge ], [ %i.ep, %vector.early.exit653 ], [ %i.ep, %middle.block651 ], [ %i.ep, %scalar.ph636 ], [ %i.ep, %bb.p ] ; 3 uses
  %storemerge.lcssa.i.i139 = phi i64 [ %i.bs, %._crit_edge381..loopexit367_crit_edge ], [ %i.fd, %vector.early.exit653 ], [ %.lcssa373, %middle.block651 ], [ %.lcssa373, %bb.p ], [ %storemerge3.i.i141, %scalar.ph636 ] ; 2 uses
  store ptr %i.br, ptr %11, align 8, !tbaa !1021
  %i.gd = icmp eq i64 %storemerge.lcssa.i.i139, %.lcssa373 ; 2 uses
  %i.ge = load i64, ptr %i.aj, align 8            ; 11 uses
  %.sink.i = select i1 %i.gd, i64 %i.ge, i64 %storemerge.lcssa.i.i139
  %.sroa.2.0.copyload.sink.i = select i1 %i.gd, i64 %i.ge, i64 %.lcssa373
  %i.gf = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %.sink.i, ptr %i.gf, align 8, !tbaa !1568
  %i.gg = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %.sroa.2.0.copyload.sink.i, ptr %i.gg, align 8, !tbaa !1569
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.gc, ptr %i.gi, align 8, !tbaa !1571
  %i.gj = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 %i.gb, ptr %i.gk, align 8, !tbaa !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.gl = icmp ult i64 %i.ge, %.lcssa373
  br i1 %i.gl, label %.lr.ph.i.i151, label %.loopexit366

.lr.ph.i.i151:                                    ; preds = %.loopexit367
  %i.gm = getelementptr inbounds nuw i8, ptr %i.br, i64 3848
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !1570, !noalias !2977
  %i.go = or i64 %i.gc, %i.gn
  %i.gp = or i64 %i.go, %i.gb                     ; 2 uses
  %i.gq = sub nuw i64 %.lcssa373, %i.ge           ; 3 uses
  %min.iters.check656 = icmp ult i64 %i.gq, 32
  br i1 %min.iters.check656, label %scalar.ph655.preheader, label %vector.ph657

vector.ph657:                                     ; preds = %.lr.ph.i.i151
  %n.vec658 = and i64 %i.gq, -32                  ; 3 uses
  %i.gr = add i64 %i.ge, %n.vec658
  %broadcast.splatinsert659 = insertelement <32 x i64> poison, i64 %i.gp, i64 0
  %broadcast.splat660 = shufflevector <32 x i64> %broadcast.splatinsert659, <32 x i64> poison, <32 x i32> zeroinitializer
  %broadcast.splatinsert661 = insertelement <32 x i64> poison, i64 %i.ge, i64 0
  %broadcast.splat662 = shufflevector <32 x i64> %broadcast.splatinsert661, <32 x i64> poison, <32 x i32> zeroinitializer
  %induction663 = add nuw <32 x i64> %broadcast.splat662, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 31>
  br label %vector.body664

vector.body664:                                   ; preds = %vector.body.interim669, %vector.ph657
  %index665 = phi i64 [ 0, %vector.ph657 ], [ %index.next667, %vector.body.interim669 ] ; 2 uses
  %vec.ind666 = phi <32 x i64> [ %induction663, %vector.ph657 ], [ %vec.ind.next668, %vector.body.interim669 ] ; 2 uses
  %i.gs = shl nuw <32 x i64> splat (i64 1), %vec.ind666
  %i.gt = and <32 x i64> %i.gs, %broadcast.splat660
  %.fr759 = freeze <32 x i64> %i.gt
  %i.gu = icmp eq <32 x i64> %.fr759, zeroinitializer ; 2 uses
  %i.gv = bitcast <32 x i1> %i.gu to i32
  %.not760 = icmp eq i32 %i.gv, 0
  br i1 %.not760, label %vector.body.interim669, label %vector.early.exit672

vector.body.interim669:                           ; preds = %vector.body664
  %vec.ind.next668 = add nuw <32 x i64> %vec.ind666, splat (i64 32)
  %index.next667 = add nuw i64 %index665, 32      ; 2 uses
  %i.gw = icmp eq i64 %index.next667, %n.vec658
  br i1 %i.gw, label %middle.block670, label %vector.body664, !llvm.loop !2958

middle.block670:                                  ; preds = %vector.body.interim669
  %cmp.n671 = icmp eq i64 %i.gq, %n.vec658
  br i1 %cmp.n671, label %.loopexit366, label %scalar.ph655.preheader

scalar.ph655.preheader:                           ; preds = %.lr.ph.i.i151, %middle.block670
  %storemerge3.i.i152.ph = phi i64 [ %i.ge, %.lr.ph.i.i151 ], [ %i.gr, %middle.block670 ]
  br label %scalar.ph655

vector.early.exit672:                             ; preds = %vector.body664
  %i.gx = call i64 @llvm.experimental.cttz.elts.i64.v32i1(<32 x i1> %i.gu, i1 false)
  %i.gy = add i64 %index665, %i.gx
  %i.gz = add i64 %i.ge, %i.gy
  br label %.loopexit366

scalar.ph655:                                     ; preds = %scalar.ph655.preheader, %bb.s
  %storemerge3.i.i152 = phi i64 [ %i.hc, %bb.s ], [ %storemerge3.i.i152.ph, %scalar.ph655.preheader ] ; 3 uses
  %i.ha = shl nuw i64 1, %storemerge3.i.i152
  %i.hb = and i64 %i.ha, %i.gp
  %.not.i.i153 = icmp eq i64 %i.hb, 0
  br i1 %.not.i.i153, label %.loopexit366, label %bb.s

bb.s:                                             ; preds = %scalar.ph655
  %i.hc = add nuw i64 %storemerge3.i.i152, 1      ; 2 uses
  %exitcond.not.i.i154 = icmp eq i64 %i.hc, %.lcssa373
  br i1 %exitcond.not.i.i154, label %.loopexit366, label %scalar.ph655, !llvm.loop !2959

.loopexit366:                                     ; preds = %bb.s, %scalar.ph655, %middle.block670, %vector.early.exit672, %.loopexit367
  %storemerge.lcssa.i.i150 = phi i64 [ %i.ge, %.loopexit367 ], [ %.lcssa373, %middle.block670 ], [ %i.gz, %vector.early.exit672 ], [ %storemerge3.i.i152, %scalar.ph655 ], [ %.lcssa373, %bb.s ] ; 2 uses
  store ptr %i.br, ptr %12, align 8, !tbaa !1021
  %i.hd = icmp eq i64 %storemerge.lcssa.i.i150, %.lcssa373 ; 2 uses
  %.sink.i158 = select i1 %i.hd, i64 %i.ge, i64 %storemerge.lcssa.i.i150
  %.sroa.2.0.copyload.sink.i159 = select i1 %i.hd, i64 %i.ge, i64 %.lcssa373
  %i.he = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  store i64 %.sink.i158, ptr %i.he, align 8, !tbaa !1568
  %i.hf = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 %.sroa.2.0.copyload.sink.i159, ptr %i.hf, align 8, !tbaa !1569
  %i.hg = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  store i64 %i.gc, ptr %i.hg, align 8, !tbaa !1571
  %i.hh = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.gb, ptr %i.hh, align 8, !tbaa !1572
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !727
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !725
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.hp = load ptr, ptr %i.ho, align 16, !tbaa !1554
  invoke void @_ZN7rocksdb18FilePickerMultiGetC2EPNS_15MultiGetContext5RangeEPNS_10autovectorINS_15LevelFilesBriefELm8EEEjPNS_11FileIndexerEPKNS_10ComparatorEPKNS_21InternalKeyComparatorE(ptr noundef nonnull align 8 dereferenceable(784) %13, ptr noundef nonnull %12, ptr noundef nonnull %i.hi, i32 noundef %i.hk, ptr noundef nonnull %i.hl, ptr noundef %i.hn, ptr noundef %i.hp)
          to label %bb.t unwind label %bb.y

bb.t:                                             ; preds = %.loopexit366
  %i.hq = invoke noundef ptr @_ZN7rocksdb18FilePickerMultiGet18GetNextFileInLevelEv(ptr noundef nonnull align 8 dereferenceable(784) %13)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #41
  store i64 0, ptr %i.m, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #41
  store i64 0, ptr %i.n, align 8, !tbaa !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #41
  store i64 0, ptr %i.o, align 8, !tbaa !533
  %i.hr = getelementptr inbounds nuw i8, ptr %13, i64 736 ; 3 uses
  %i.hs = load i8, ptr %i.hr, align 8, !tbaa !1604, !range !560, !noundef !561
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173, label %.lr.ph387

.lr.ph387:                                        ; preds = %bb.u
  %i.hu = getelementptr inbounds nuw i8, ptr %13, i64 12 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %13, i64 737
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hx = getelementptr inbounds nuw i8, ptr %13, i64 616
  %i.hy = getelementptr inbounds nuw i8, ptr %14, i64 1
  %i.hz = getelementptr inbounds nuw i8, ptr %14, i64 2
  %i.ia = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ib = getelementptr inbounds nuw i8, ptr %14, i64 5
  %i.ic = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph387, %bb.ao
  %.sroa.10.0 = phi i8 [ 0, %.lr.ph387 ], [ %.sroa.10.1527, %bb.ao ]
  %.sroa.25410.0 = phi ptr [ null, %.lr.ph387 ], [ %.sroa.25410.2535, %bb.ao ] ; 2 uses
  %.050385 = phi i32 [ -1, %.lr.ph387 ], [ %.252, %bb.ao ] ; 3 uses
  %.053384 = phi i64 [ 0, %.lr.ph387 ], [ %.4, %bb.ao ] ; 6 uses
  %.056383 = phi ptr [ %i.hq, %.lr.ph387 ], [ %.460, %bb.ao ] ; 2 uses
  %i.ie = phi ptr [ null, %.lr.ph387 ], [ %i.ix, %bb.ao ] ; 3 uses
  %i.if = phi <4 x i8> [ zeroinitializer, %.lr.ph387 ], [ %i.iy, %bb.ao ]
  %.not96 = icmp eq ptr %.056383, null
  br i1 %.not96, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ig = load i32, ptr %i.hu, align 4, !tbaa !1605 ; 3 uses
  %i.ih = load i8, ptr %i.hv, align 1, !tbaa !1606, !range !560, !noundef !561
  %i.ii = trunc nuw i8 %i.ih to i1
  %i.ij = load ptr, ptr %i.hw, align 16, !tbaa !361
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 1836
  %i.il = load i8, ptr %i.ik, align 4, !tbaa !743, !range !560, !noundef !561
  %i.im = trunc nuw i8 %i.il to i1
  %i.in = icmp sgt i32 %i.ig, 0
  %or.cond.i = or i1 %i.in, %i.ii
  %or.cond4.i = and i1 %or.cond.i, %i.im
  br i1 %or.cond4.i, label %20, label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

20:                                               ; preds = %bb.w
  %21 = load i32, ptr %i.hj, align 4, !tbaa !628
  %22 = add nsw i32 %21, -1
  %23 = icmp eq i32 %i.ig, %22
  br label %_ZN7rocksdb7Version15IsFilterSkippedEib.exit

_ZN7rocksdb7Version15IsFilterSkippedEib.exit:     ; preds = %20, %bb.w
  %24 = phi i1 [ %23, %20 ], [ false, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  invoke void @_ZN7rocksdb7Version15MultiGetFromSSTERKNS_11ReadOptionsENS_15MultiGetContext5RangeEibbPNS_14FdWithKeyRangeERSt13unordered_mapImSt6vectorINS0_15BlobReadContextESaISA_EESt4hashImESt8equal_toImESaISt4pairIKmSC_EEEPNS_24BasicTypedCacheInterfaceINS_11TableReaderELNS_14CacheEntryRoleE13EPNS_5CacheEE11TypedHandleERmSV_SV_(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %14, ptr noundef nonnull align 16 dereferenceable(5369) %0, ptr noundef nonnull align 8 dereferenceable(192) %1, ptr noundef nonnull byval(%"class.rocksdb::MultiGetContext::Range") align 8 %i.hx, i32 noundef %i.ig, i1 noundef zeroext %24, i1 noundef zeroext false, ptr noundef nonnull %.056383, ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.x unwind label %bb.z

bb.x:                                             ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  %i.io = load i8, ptr %14, align 8, !tbaa !602   ; 2 uses
  %i.ip = load i8, ptr %i.hy, align 1, !tbaa !1227 ; 2 uses
  %i.iq = load <4 x i8>, ptr %i.hz, align 2, !tbaa !157 ; 2 uses
  store <4 x i8> zeroinitializer, ptr %14, align 8, !tbaa !157
  store i8 0, ptr %i.ia, align 4, !tbaa !562
  store i8 0, ptr %i.ib, align 1, !tbaa !563
  %i.ir = load ptr, ptr %i.ic, align 8, !tbaa !536 ; 3 uses
  store ptr null, ptr %i.ic, align 8, !tbaa !536
  %.not.i.i.i.i.i161 = icmp eq ptr %i.ie, null
  br i1 %.not.i.i.i.i.i161, label %bb.aa, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i162

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i162: ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.ie) #42
  br label %bb.aa

bb.y:                                             ; preds = %.loopexit366, %bb.t
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit.split-lp.loopexit:                      ; preds = %bb.af, %.thread, %bb.ad, %bb.ak, %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.av, %bb.as, %bb.aq
  %.sroa.25410.3554 = phi ptr [ %.sroa.25410.3553, %bb.av ], [ %.sroa.25410.3553, %bb.as ], [ %.sroa.25410.2534, %bb.aq ]
  %lpad.loopexit.split-lp400 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.z:                                             ; preds = %_ZN7rocksdb7Version15IsFilterSkippedEib.exit
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  br label %.loopexit.split-lp

bb.aa:                                            ; preds = %bb.x, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i.i162
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  %i.iu = load i32, ptr %i.hu, align 4, !tbaa !1605
  %i.iv = icmp eq i32 %i.iu, 0
  %i.iw = icmp eq i8 %i.io, 0
  br i1 %i.iw, label %.thread, label %.thread346

.thread:                                          ; preds = %bb.v, %bb.aa
  %.149538 = phi i1 [ %i.iv, %bb.aa ], [ false, %bb.v ]
  %i.ix = phi ptr [ %i.ir, %bb.aa ], [ %i.ie, %bb.v ]
  %.sroa.25410.2535 = phi ptr [ %i.ir, %bb.aa ], [ %.sroa.25410.0, %bb.v ] ; 4 uses
  %.sroa.10.1527 = phi i8 [ %i.ip, %bb.aa ], [ %.sroa.10.0, %bb.v ] ; 3 uses
  %i.iy = phi <4 x i8> [ %i.iq, %bb.aa ], [ %i.if, %bb.v ] ; 3 uses
  %i.iz = invoke noundef ptr @_ZN7rocksdb18FilePickerMultiGet18GetNextFileInLevelEv(ptr noundef nonnull align 8 dereferenceable(784) %13)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.ab:                                            ; preds = %.thread
  %i.ja = load i64, ptr %i.hf, align 8, !tbaa !1569
  %notmask.i.i = shl nsw i64 -1, %i.ja
  %i.jb = load i64, ptr %i.he, align 8, !tbaa !1568
  %i.jc = load ptr, ptr %12, align 8, !tbaa !1021
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 3848
  %i.je = load i64, ptr %i.jd, align 8, !tbaa !1570
  %i.jf = load i64, ptr %i.hg, align 8, !tbaa !1571
  %i.jg = or i64 %i.je, %notmask.i.i
  %i.jh = or i64 %i.jg, %i.jf
  %i.ji = xor i64 %i.jh, -1
  %i.jj = lshr i64 %i.ji, %i.jb
  %i.jk = icmp eq i64 %i.jj, 0
  br i1 %i.jk, label %.thread346, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.not99 = icmp eq ptr %i.iz, null
  br i1 %.not99, label %bb.ad, label %bb.ao

bb.ad:                                            ; preds = %bb.ac
  %i.jl = invoke noundef zeroext i1 @_ZN7rocksdb18FilePickerMultiGet16PrepareNextLevelEv(ptr noundef nonnull align 8 dereferenceable(784) %13)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.ae:                                            ; preds = %bb.ad
  %i.jm = xor i1 %i.jl, true
  %i.jn = zext i1 %i.jm to i8
  store i8 %i.jn, ptr %i.hr, align 8, !tbaa !1604
  br i1 %i.jl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jo = invoke noundef ptr @_ZN7rocksdb18FilePickerMultiGet18GetNextFileInLevelEv(ptr noundef nonnull align 8 dereferenceable(784) %13)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.258 = phi ptr [ null, %bb.ae ], [ %i.jo, %bb.af ] ; 2 uses
  br i1 %.149538, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.not100 = icmp eq i32 %.050385, 0
  %i.jp = load i32, ptr %i.hu, align 4            ; 2 uses
  %.not101 = icmp eq i32 %.050385, %i.jp
  %or.cond = select i1 %.not100, i1 true, i1 %.not101
  br i1 %or.cond, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.jq = load i64, ptr %i.n, align 8, !tbaa !533
  %i.jr = load i64, ptr %i.m, align 8, !tbaa !533
  %i.js = add i64 %i.jr, %i.jq                    ; 2 uses
  %.not102 = icmp eq i64 %i.js, 0
  br i1 %.not102, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jt = load ptr, ptr %i.id, align 16, !tbaa !745 ; 3 uses
  %.not.i167 = icmp eq ptr %i.jt, null
  br i1 %.not.i167, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !153
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 216
  %i.jw = load ptr, ptr %i.jv, align 8
  invoke void %i.jw(ptr noundef nonnull align 8 dereferenceable(33) %i.jt, i32 noundef 53, i64 noundef %i.js)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit unwind label %.loopexit.split-lp.loopexit, !inline_history !92

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit: ; preds = %bb.aj, %bb.ak, %bb.ai
  %i.jx = load i64, ptr %i.o, align 8, !tbaa !533 ; 2 uses
  %.not103 = icmp eq i64 %i.jx, 0
  br i1 %.not103, label %bb.an, label %bb.al

bb.al:                                            ; preds = %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit
  %i.jy = load ptr, ptr %i.id, align 16, !tbaa !745 ; 3 uses
  %.not.i168 = icmp eq ptr %i.jy, null
  br i1 %.not.i168, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit170, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !153
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 216
  %i.kb = load ptr, ptr %i.ka, align 8
  invoke void %i.kb(ptr noundef nonnull align 8 dereferenceable(33) %i.jy, i32 noundef 54, i64 noundef %i.jx)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit170 unwind label %.loopexit.split-lp.loopexit, !inline_history !92

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit170: ; preds = %bb.al, %bb.am
  %i.kc = add i64 %.053384, 1
  br label %bb.an

bb.an:                                            ; preds = %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit170, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit
  %.154 = phi i64 [ %i.kc, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit170 ], [ %.053384, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit ]
  store i64 0, ptr %i.n, align 8, !tbaa !533
  store i64 0, ptr %i.m, align 8, !tbaa !533
  store i64 0, ptr %i.o, align 8, !tbaa !533
  %.pre424 = load i32, ptr %i.hu, align 4, !tbaa !1605
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ah, %bb.an, %bb.ac
  %.460 = phi ptr [ %i.iz, %bb.ac ], [ %.258, %bb.an ], [ %.258, %bb.ah ]
  %.4 = phi i64 [ %.053384, %bb.ac ], [ %.154, %bb.an ], [ %.053384, %bb.ah ] ; 2 uses
  %.252 = phi i32 [ %.050385, %bb.ac ], [ %.pre424, %bb.an ], [ %i.jp, %bb.ah ]
  %i.kd = load i8, ptr %i.hr, align 8, !tbaa !1604, !range !560, !noundef !561
  %i.ke = trunc nuw i8 %i.kd to i1
  br i1 %i.ke, label %.thread346, label %bb.v

.thread346:                                       ; preds = %bb.ao, %bb.ab, %bb.aa
  %.sroa.25410.2534 = phi ptr [ %.sroa.25410.2535, %bb.ao ], [ %.sroa.25410.2535, %bb.ab ], [ %i.ir, %bb.aa ] ; 4 uses
  %.sroa.10.1526 = phi i8 [ %.sroa.10.1527, %bb.ao ], [ %.sroa.10.1527, %bb.ab ], [ %i.ip, %bb.aa ] ; 3 uses
  %.sroa.0407.1524 = phi i8 [ 0, %bb.ao ], [ 0, %bb.ab ], [ %i.io, %bb.aa ] ; 3 uses
  %.053.lcssa.ph = phi i64 [ %.4, %bb.ao ], [ %.053384, %bb.ab ], [ %.053384, %bb.aa ] ; 3 uses
  %i.kf = phi <4 x i8> [ %i.iy, %bb.ao ], [ %i.iy, %bb.ab ], [ %i.iq, %bb.aa ] ; 3 uses
  %.pre425 = load i64, ptr %i.n, align 8, !tbaa !533
  %.pre426 = load i64, ptr %i.m, align 8, !tbaa !533
  %i.kg = add i64 %.pre426, %.pre425              ; 2 uses
  %.not106 = icmp eq i64 %i.kg, 0
  br i1 %.not106, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173, label %bb.ap

bb.ap:                                            ; preds = %.thread346
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ki = load ptr, ptr %i.kh, align 16, !tbaa !745 ; 3 uses
  %.not.i171 = icmp eq ptr %i.ki, null
  br i1 %.not.i171, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !153
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 216
  %i.kl = load ptr, ptr %i.kk, align 8
  invoke void %i.kl(ptr noundef nonnull align 8 dereferenceable(33) %i.ki, i32 noundef 53, i64 noundef %i.kg)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !92

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173: ; preds = %bb.u, %bb.ap, %bb.aq, %.thread346
  %.053.lcssa556 = phi i64 [ %.053.lcssa.ph, %.thread346 ], [ %.053.lcssa.ph, %bb.ap ], [ %.053.lcssa.ph, %bb.aq ], [ 0, %bb.u ] ; 2 uses
  %.sroa.25410.3553 = phi ptr [ %.sroa.25410.2534, %.thread346 ], [ %.sroa.25410.2534, %bb.ap ], [ %.sroa.25410.2534, %bb.aq ], [ null, %bb.u ] ; 9 uses
  %.sroa.10.2549 = phi i8 [ %.sroa.10.1526, %.thread346 ], [ %.sroa.10.1526, %bb.ap ], [ %.sroa.10.1526, %bb.aq ], [ 0, %bb.u ] ; 3 uses
  %.sroa.0407.2548 = phi i8 [ %.sroa.0407.1524, %.thread346 ], [ %.sroa.0407.1524, %bb.ap ], [ %.sroa.0407.1524, %bb.aq ], [ 0, %bb.u ] ; 2 uses
  %i.km = phi <4 x i8> [ %i.kf, %.thread346 ], [ %i.kf, %bb.ap ], [ %i.kf, %bb.aq ], [ zeroinitializer, %bb.u ] ; 3 uses
  %i.kn = load i64, ptr %i.o, align 8, !tbaa !533 ; 2 uses
  %.not107 = icmp eq i64 %i.kn, 0
  br i1 %.not107, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kp = load ptr, ptr %i.ko, align 16, !tbaa !745 ; 3 uses
  %.not.i174 = icmp eq ptr %i.kp, null
  br i1 %.not.i174, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit176, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !153
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 216
  %i.ks = load ptr, ptr %i.kr, align 8
  invoke void %i.ks(ptr noundef nonnull align 8 dereferenceable(33) %i.kp, i32 noundef 54, i64 noundef %i.kn)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit176 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !92

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit176: ; preds = %bb.ar, %bb.as
  %i.kt = add i64 %.053.lcssa556, 1
  br label %bb.at

bb.at:                                            ; preds = %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit176, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173
  %.6 = phi i64 [ %i.kt, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit176 ], [ %.053.lcssa556, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit173 ] ; 2 uses
  %.not108 = icmp eq i64 %.6, 0
  br i1 %.not108, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit179, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.kv = load ptr, ptr %i.ku, align 16, !tbaa !745 ; 3 uses
  %.not.i177 = icmp eq ptr %i.kv, null
  br i1 %.not.i177, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit179, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !153
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 216
  %i.ky = load ptr, ptr %i.kx, align 8
  invoke void %i.ky(ptr noundef nonnull align 8 dereferenceable(33) %i.kv, i32 noundef 55, i64 noundef %.6)
          to label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit179 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !92

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit179: ; preds = %bb.au, %bb.av, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  %i.kz = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !1607
  %i.lb = icmp eq i64 %i.la, 0
end_hunk_6
