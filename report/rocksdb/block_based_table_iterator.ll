Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/block_based_table_iterator?download=true
inline.NumInlined: 1909
inline.NumDeleted: 886
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7rocksdb9BlockIterINS_5SliceEE10SeekToLastEv:bb.a
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %0)
  tail call void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %0)
  ret void
}

; Function Attrs: uwtable
define void @_ZN7rocksdb23BlockBasedTableIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(1112) %0) unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1034
  %i.b = load i8, ptr %i.a, align 2, !tbaa !145, !range !44, !noundef !45
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN7rocksdb23BlockBasedTableIterator23MaterializeCurrentBlockEv(ptr noundef nonnull align 8 dereferenceable(1112) %0)
  br i1 %i.d, label %bb.c, label %_ZN7rocksdb23BlockBasedTableIterator15CheckOutOfBoundEv.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 256
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(632) %i.e), !inline_history !315
  tail call void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %i.e)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.j = load i32, ptr %i.i, align 4, !tbaa !151
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load i32, ptr %i.k, align 8, !tbaa !152
  %i.m = icmp ult i32 %i.l, %i.j
  br i1 %i.m, label %_ZN7rocksdb23BlockBasedTableIterator14FindKeyForwardEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7rocksdb23BlockBasedTableIterator16FindBlockForwardEv(ptr noundef nonnull align 8 dereferenceable(1112) %0)
  br label %_ZN7rocksdb23BlockBasedTableIterator14FindKeyForwardEv.exit

_ZN7rocksdb23BlockBasedTableIterator14FindKeyForwardEv.exit: ; preds = %bb.c, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !108, !nonnull !45, !align !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !132
  %.not.i = icmp eq ptr %i.q, null
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1033
  %i.s = load i8, ptr %i.r, align 1
  %.not1.i = icmp eq i8 %i.s, 1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not1.i
  br i1 %or.cond.i, label %_ZN7rocksdb23BlockBasedTableIterator15CheckOutOfBoundEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb23BlockBasedTableIterator14FindKeyForwardEv.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef zeroext i1 %i.v(ptr noundef nonnull align 8 dereferenceable(1112) %0), !inline_history !163
  br i1 %i.w, label %bb.f, label %_ZN7rocksdb23BlockBasedTableIterator15CheckOutOfBoundEv.exit

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !108, !nonnull !45, !align !109
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !132
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ab = load ptr, ptr %0, align 8, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call { ptr, i64 } %i.ad(ptr noundef nonnull align 8 dereferenceable(1112) %0), !inline_history !163 ; 2 uses
  %i.af = extractvalue { ptr, i64 } %i.ae, 0
  store ptr %i.af, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = extractvalue { ptr, i64 } %i.ae, 1
  store i64 %i.ah, ptr %i.ag, align 8
  %.not.i.i.i = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i.i, label %_ZTWN7rocksdb10perf_levelE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i:              ; preds = %bb.g, %bb.f
  %i.ai = tail call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %i.ak = icmp ugt i8 %i.aj, 1
  br i1 %i.ak, label %bb.h, label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.i

bb.h:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %.not.i4.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i4.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i:            ; preds = %bb.i, %bb.h
  %i.al = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !17
  %i.an = add i64 %i.am, 1
  store i64 %i.an, ptr %i.al, align 8, !tbaa !17
  br label %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.i

_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %i.ao = load ptr, ptr %i.x, align 8, !tbaa !19  ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 232
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef i32 %i.ar(ptr noundef nonnull align 8 dereferenceable(48) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i1 noundef zeroext false, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true), !inline_history !164
  %i.at = icmp slt i32 %i.as, 1
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1049
  %i.av = zext i1 %i.at to i8
  store i8 %i.av, ptr %i.au, align 1, !tbaa !144
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZN7rocksdb23BlockBasedTableIterator15CheckOutOfBoundEv.exit

_ZN7rocksdb23BlockBasedTableIterator15CheckOutOfBoundEv.exit: ; preds = %_ZNK7rocksdb21UserComparatorWrapper23CompareWithoutTimestampERKNS_5SliceEbS3_b.exit.i, %bb.e, %_ZN7rocksdb23BlockBasedTableIterator14FindKeyForwardEv.exit, %bb.b
  ret void
}

; Function Attrs: uwtable
define noundef zeroext i1 @_ZN7rocksdb23BlockBasedTableIterator23MaterializeCurrentBlockEv(ptr noundef nonnull align 8 dereferenceable(1112) initializes((1034, 1035)) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %2 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %3 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  %4 = alloca %"struct.rocksdb::IndexValue", align 8 ; 5 uses
  %5 = alloca %"class.rocksdb::Status", align 8   ; 7 uses
  %6 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1034
  store i8 0, ptr %i.a, align 2, !tbaa !145
  tail call void @_ZN7rocksdb23BlockBasedTableIterator13InitDataBlockEv(ptr noundef nonnull align 8 dereferenceable(1112) %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.d = load i8, ptr %i.c, align 8, !tbaa !25, !noalias !316 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !316
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !48, !noalias !316 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !316
  %i.g = icmp eq i8 %i.d, 0
  br i1 %i.g, label %bb.c, label %bb.m

bb.b:                                             ; preds = %bb.a
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %3, ptr noundef nonnull %i.f), !noalias !316
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !48, !noalias !316 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !316
  %i.h = icmp eq i8 %i.d, 0                       ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.b
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  br i1 %i.h, label %bb.c, label %bb.m

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.b
  br i1 %i.h, label %bb.c, label %bb.m

bb.c:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %.thread, %_ZN7rocksdb6StatusD2Ev.exit
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 224
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(632) %i.b), !inline_history !162
  call void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 992
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !186  ; 3 uses
  %.not.i.i9 = icmp eq ptr %i.m, null
  br i1 %.not.i.i9, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit.thread, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit

_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit: ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !187
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !187  ; 3 uses
  %.not35 = icmp eq ptr %i.p, %i.q
  br i1 %.not35, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %.sroa.020.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !48
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !167
  br label %bb.e

_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit.thread: ; preds = %bb.c, %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !153  ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !22
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"struct.rocksdb::IndexValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(40) %i.t)
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.020.0.copyload22 = load ptr, ptr %i.x, align 8, !tbaa !48
  %.sroa.8.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.8.0.copyload24 = load i64, ptr %.sroa.8.0..sroa_idx23, align 8, !tbaa !167
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.e

bb.e:                                             ; preds = %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit.thread, %bb.d
  %.sroa.020.0 = phi ptr [ %.sroa.020.0.copyload, %bb.d ], [ %.sroa.020.0.copyload22, %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit.thread ] ; 2 uses
  %.sroa.8.0 = phi i64 [ %.sroa.8.0.copyload, %bb.d ], [ %.sroa.8.0.copyload24, %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit.thread ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.z = load i32, ptr %i.y, align 4, !tbaa !151
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !152
  %i.ac = icmp ult i32 %i.ab, %i.z
  br i1 %i.ac, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !158, !nonnull !45, !align !109
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.sroa.0.0.copyload.i = load ptr, ptr %i.af, align 8, !tbaa !48 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !167 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.ah = add i64 %.sroa.2.0.copyload.i, -8
  store ptr %.sroa.0.0.copyload.i, ptr %1, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.aj = add i64 %.sroa.8.0, -8
  store ptr %.sroa.020.0, ptr %2, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.aj, ptr %i.ak, align 8
  %.not.i.i.i10 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null
  br i1 %.not.i.i.i10, label %_ZTWN7rocksdb10perf_levelE.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZTHN7rocksdb10perf_levelE()
  br label %_ZTWN7rocksdb10perf_levelE.exit.i.i

_ZTWN7rocksdb10perf_levelE.exit.i.i:              ; preds = %bb.g, %bb.f
  %i.al = call noundef align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE)
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = icmp ugt i8 %i.am, 1
  br i1 %i.an, label %bb.h, label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

bb.h:                                             ; preds = %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %.not.i3.i.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null
  br i1 %.not.i3.i.i, label %_ZTWN7rocksdb12perf_contextE.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZTHN7rocksdb12perf_contextE()
  br label %_ZTWN7rocksdb12perf_contextE.exit.i.i

_ZTWN7rocksdb12perf_contextE.exit.i.i:            ; preds = %bb.i, %bb.h
  %i.ao = call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !17
  %i.aq = add i64 %i.ap, 1
  store i64 %i.aq, ptr %i.ao, align 8, !tbaa !17
  br label %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i

_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i: ; preds = %_ZTWN7rocksdb12perf_contextE.exit.i.i, %_ZTWN7rocksdb10perf_levelE.exit.i.i
  %i.ar = load ptr, ptr %i.ag, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2), !inline_history !319
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -8
  %.0.copyload.i.i = load i64, ptr %i.az, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.020.0, i64 %.sroa.8.0
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %.0.copyload.i18.i = load i64, ptr %i.bb, align 1
  %or.cond.not = icmp eq i64 %.0.copyload.i.i, %.0.copyload.i18.i
  br i1 %or.cond.not, label %bb.m, label %.critedge

.critedge:                                        ; preds = %bb.j, %_ZNK7rocksdb21UserComparatorWrapper7CompareERKNS_5SliceES3_.exit.i, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr @.str.2, ptr %6, align 8, !tbaa !9
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 51, ptr %i.bc, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr @.str.1, ptr %7, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bd, align 8, !tbaa !14
  call void @_ZN7rocksdb6StatusC2ENS0_4CodeENS0_7SubCodeERKNS_5SliceES5_NS0_8SeverityE(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 noundef zeroext 2, i8 noundef zeroext 0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, i8 noundef zeroext 0)
  invoke void @_ZN7rocksdb9BlockIterINS_5SliceEE10InvalidateERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(720) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %.critedge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 736
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 744
  store i64 0, ptr %i.bf, align 8, !tbaa !128
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !129
  store i8 0, ptr %i.bg, align 1, !tbaa !42
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !205 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !206
  %.not.i.i.i11 = icmp eq ptr %i.bk, %i.bi
  br i1 %.not.i.i.i11, label %bb.k, label %_ZSt8_DestroyIPN7rocksdb13DataBlockIter15CachedPrevEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN7rocksdb13DataBlockIter15CachedPrevEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i: ; preds = %.noexc
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !206
  br label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN7rocksdb13DataBlockIter15CachedPrevEntryES2_EvT_S4_RSaIT0_E.exit.i.i.i, %.noexc
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 792
  store i32 -1, ptr %i.bl, align 8, !tbaa !207
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 2 uses
  %.not.i.i12 = icmp eq ptr %i.bn, null
  br i1 %.not.i.i12, label %_ZN7rocksdb6StatusD2Ev.exit14, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13: ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit14

_ZN7rocksdb6StatusD2Ev.exit14:                    ; preds = %bb.k, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !48 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i15, label %_ZN7rocksdb6StatusD2Ev.exit17, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i16

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i16: ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit17

_ZN7rocksdb6StatusD2Ev.exit17:                    ; preds = %bb.l, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  resume { ptr, i32 } %i.bo

bb.m:                                             ; preds = %bb.j, %_ZN7rocksdb6StatusD2Ev.exit14, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %.thread, %_ZN7rocksdb6StatusD2Ev.exit
  %.1 = phi i1 [ false, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ], [ false, %_ZN7rocksdb6StatusD2Ev.exit ], [ false, %.thread ], [ false, %_ZN7rocksdb6StatusD2Ev.exit14 ], [ true, %bb.j ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb9BlockIterINS_5SliceEE4NextEv(ptr noundef nonnull align 8 dereferenceable(632) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %0)
  tail call void @_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv(ptr noundef nonnull align 8 dereferenceable(632) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN7rocksdb23BlockBasedTableIterator16NextAndGetResultEPNS_13IterateResultE(ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN7rocksdb23BlockBasedTableIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(1112) %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(1112) %0) ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call { ptr, i64 } %i.g(ptr noundef nonnull align 8 dereferenceable(1112) %0) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0
  %i.j = extractvalue { ptr, i64 } %i.h, 1
  store ptr %i.i, ptr %1, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !167
  %i.k = load ptr, ptr %0, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef signext i8 %i.m(ptr noundef nonnull align 8 dereferenceable(1112) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 %i.n, ptr %i.o, align 8, !tbaa !320
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1034
  %i.q = load i8, ptr %i.p, align 2, !tbaa !145, !range !44, !noundef !45
  %i.r = xor i8 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 17
  store i8 %i.r, ptr %i.s, align 1, !tbaa !323
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23BlockBasedTableIterator4PrevEv(ptr noundef nonnull align 8 dereferenceable(1112) %0) unnamed_addr #3 align 2 {
end_hunk_0
begin_hunk_1_@_ZN7rocksdb23BlockBasedTableIterator32BlockCacheLookupForReadAheadSizeEbRmS1_:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.ax, i8 0, i64 25, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !329
  %i.dz = getelementptr inbounds nuw i8, ptr %i.do, i64 72
  %i.ea = load i64, ptr %i.bc, align 8, !tbaa !48
  store i64 %i.ea, ptr %i.dz, align 8, !tbaa !48
  store ptr null, ptr %i.bc, align 8, !tbaa !48
  %i.eb = load ptr, ptr %i.dn, align 8, !tbaa !327
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80
  store ptr %i.ec, ptr %i.dn, align 8, !tbaa !327
  br label %_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit

bb.y:                                             ; preds = %.thread
  invoke void @_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_push_back_auxIJS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %i.dm, ptr noundef nonnull align 8 dereferenceable(80) %8)
          to label %_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit unwind label %bb.u

_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit: ; preds = %bb.y, %bb.x
  %i.ed = invoke noundef zeroext i1 @_ZN7rocksdb23BlockBasedTableIterator30IsNextBlockOutOfReadaheadBoundEv(ptr noundef nonnull align 8 dereferenceable(1112) %0)
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE12emplace_backIJS2_EEERS2_DpOT_.exit
  br i1 %i.ed, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.au, align 1, !tbaa !215
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.ee = load ptr, ptr %i.i, align 8, !tbaa !153 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !22
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 64
  %i.eh = load ptr, ptr %i.eg, align 8
  invoke void %i.eh(ptr noundef nonnull align 8 dereferenceable(40) %i.ee)
          to label %bb.ac unwind label %bb.u

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.bi, align 2, !tbaa !149
  br label %bb.ad

bb.ad:                                            ; preds = %bb.q, %bb.ac, %bb.aa
  %i.ei = phi i8 [ %i.dk, %bb.aa ], [ %i.dk, %bb.ac ], [ %i.bk, %bb.q ] ; 2 uses
  %i.ej = phi i64 [ %i.dl, %bb.aa ], [ %i.dl, %bb.ac ], [ %i.bm, %bb.q ] ; 2 uses
  %i.ek = phi i1 [ false, %bb.aa ], [ true, %bb.ac ], [ false, %bb.q ]
  %i.el = load ptr, ptr %i.bj, align 8, !tbaa !48 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.el, null
  br i1 %.not.i.i34, label %_ZN7rocksdb6StatusD2Ev.exit36, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35: ; preds = %bb.ad
  call void @_ZdaPv(ptr noundef nonnull %i.el) #24
  br label %_ZN7rocksdb6StatusD2Ev.exit36

_ZN7rocksdb6StatusD2Ev.exit36:                    ; preds = %bb.ad, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.em = load ptr, ptr %i.bc, align 8, !tbaa !48 ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.em, null
  br i1 %.not.i.i37, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i38, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %_ZN7rocksdb6StatusD2Ev.exit36
  call void @_ZdaPv(ptr noundef nonnull %i.em) #24
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i38

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i38: ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i, %_ZN7rocksdb6StatusD2Ev.exit36
  %i.en = load ptr, ptr %i.bf, align 8, !tbaa !274 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i, label %bb.af, label %bb.ae, !prof !275

bb.ae:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i38
  %i.eo = load ptr, ptr %i.bg, align 8, !tbaa !276 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !22
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 184
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = invoke noundef zeroext i1 %i.er(ptr noundef nonnull align 8 dereferenceable(80) %i.eo, ptr noundef nonnull %i.en, i1 noundef zeroext false)
          to label %bb.aj unwind label %bb.ai     ; 0 uses

bb.af:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit.i38
  %i.et = load i8, ptr %i.bh, align 8, !tbaa !277, !range !44, !noundef !45
  %i.eu = trunc nuw i8 %i.et to i1
  br i1 %i.eu, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.ev = load ptr, ptr %i.ax, align 8, !tbaa !278 ; 3 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN7rocksdb5BlockD1Ev(ptr noundef nonnull align 8 dead_on_return(104) dereferenceable(104) %i.ev) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef 104) #24
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ae
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  call void @__clang_call_terminate(ptr %i.ey) #26
  unreachable

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %i.ek, label %bb.i, label %.critedge.loopexit

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %bb.u, %bb.t
  %.pn = phi { ptr, i32 } [ %i.db, %bb.t ], [ %i.dc, %bb.u ], [ %i.dc, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN7rocksdb6StatusD2Ev.exit, %bb.s, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZN7rocksdb6StatusD2Ev.exit ], [ %i.da, %bb.s ], [ %i.cz, %bb.r ]
  call void @_ZN7rocksdb23BlockBasedTableIterator15BlockHandleInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.au

.critedge.loopexit:                               ; preds = %bb.j, %bb.i, %bb.aj
  %i.ez = phi i8 [ %i.bk, %bb.j ], [ %i.bk, %bb.i ], [ %i.ei, %bb.aj ] ; 2 uses
  %i.fa = phi i64 [ %i.bl, %bb.j ], [ %i.bl, %bb.i ], [ %i.cu, %bb.aj ]
  %i.fb = phi i64 [ %i.bm, %bb.j ], [ %i.bm, %bb.i ], [ %i.ej, %bb.aj ] ; 2 uses
  store i64 %i.fb, ptr %i.a, align 8
  store i64 %i.fa, ptr %i.b, align 8
  store i8 %i.ez, ptr %i.c, align 1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.thread63
  %i.fc = phi i64 [ %i.fb, %.critedge.loopexit ], [ %i.bm, %.thread63 ] ; 4 uses
  %i.fd = phi i8 [ %i.ez, %.critedge.loopexit ], [ %i.bk, %.thread63 ]
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.al, label %bb.as

bb.al:                                            ; preds = %.critedge
  %i.ff = load ptr, ptr %i.ap, align 8, !tbaa !186 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !187, !noalias !330 ; 5 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 56
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !219, !noalias !330 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 72
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !221, !noalias !330 ; 5 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ff, i64 16
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !221
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3
  %i.ft = icmp ne ptr %i.fl, null
  %.neg.i.i = sext i1 %i.ft to i64
  %i.fu = add nsw i64 %i.fs, %.neg.i.i
  %i.fv = mul nsw i64 %i.fu, 6
  %i.fw = ptrtoint ptr %i.fh to i64
  %i.fx = ptrtoint ptr %i.fj to i64
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = sdiv exact i64 %i.fy, 80                ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ff, i64 32
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !220
  %i.gc = load ptr, ptr %i.fm, align 8, !tbaa !187
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = sdiv exact i64 %i.gf, 80
  %i.gh = load i64, ptr %i.d, align 8, !tbaa !167
  %i.gi = sub i64 %i.fz, %i.gh
  %i.gj = add i64 %i.gi, %i.fv
  %i.gk = add i64 %i.gj, %i.gg                    ; 2 uses
  %i.gl = sub nsw i64 0, %i.gk
  %i.gm = sub nsw i64 %i.fz, %i.gk                ; 5 uses
  %i.gn = icmp sgt i64 %i.gm, -1
  br i1 %i.gn, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.go = icmp samesign ult i64 %i.gm, 6
  br i1 %i.go, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.gp = getelementptr inbounds [80 x i8], ptr %i.fh, i64 %i.gl
  br label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit

bb.ao:                                            ; preds = %bb.am
  %i.gq = udiv i64 %i.gm, 6
  br label %bb.aq

bb.ap:                                            ; preds = %bb.al
  %i.gr = xor i64 %i.gm, -1
  %i.gs = udiv i64 %i.gr, 6
  %i.gt = xor i64 %i.gs, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gu = phi i64 [ %i.gq, %bb.ao ], [ %i.gt, %bb.ap ] ; 2 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.gu
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !227, !noalias !333
  %.idx.i.i.i.i = mul i64 %i.gu, -480
  %i.gx = getelementptr i8, ptr %i.gw, i64 %.idx.i.i.i.i
  %i.gy = getelementptr [80 x i8], ptr %i.gx, i64 %i.gm
  br label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit

_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit: ; preds = %bb.an, %bb.aq
  %storemerge.i.i.i.i = phi ptr [ %i.gp, %bb.an ], [ %i.gy, %bb.aq ] ; 2 uses
  %i.gz = icmp eq ptr %i.fh, %storemerge.i.i.i.i
  br i1 %i.gz, label %.critedge4, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit
  %.sroa.048.091 = phi ptr [ %.sroa.10.1, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit ], [ %i.fl, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit ] ; 6 uses
  %.sroa.10.090 = phi ptr [ %.sroa.20.1.a, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit ], [ %i.fj, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit ] ; 6 uses
  %.sroa.20.089 = phi ptr [ %i.hp, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit ], [ %i.fh, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit ] ; 8 uses
  %i.ha = icmp eq ptr %.sroa.20.089, %.sroa.10.090
  br i1 %i.ha, label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit, label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit.thread

_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit: ; preds = %.lr.ph
  %i.hb = getelementptr inbounds i8, ptr %.sroa.048.091, i64 -8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !227 ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 416
  %i.he = load i8, ptr %i.hd, align 8, !tbaa !192, !range !44, !noundef !45
  %i.hf = trunc nuw i8 %i.he to i1
  br i1 %i.hf, label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39.thread, label %.critedge4

_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit.thread: ; preds = %.lr.ph
  %i.hg = getelementptr inbounds i8, ptr %.sroa.20.089, i64 -64
  %i.hh = load i8, ptr %i.hg, align 8, !tbaa !192, !range !44, !noundef !45
  %i.hi = trunc nuw i8 %i.hh to i1
  br i1 %i.hi, label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39, label %.critedge4

_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39: ; preds = %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit.thread
  %i.hj = getelementptr inbounds i8, ptr %.sroa.20.089, i64 -80
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !154
  %.not28 = icmp eq i64 %i.fc, %i.hk
  br i1 %.not28, label %.critedge4, label %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit

_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39.thread: ; preds = %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hc, i64 400
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !154
  %.not2866 = icmp eq i64 %i.fc, %i.hm
  br i1 %.not2866, label %.critedge4, label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39.thread
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hc, i64 480
  br label %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit

_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit: ; preds = %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39, %bb.ar
  %.sroa.20.1.a = phi ptr [ %i.hc, %bb.ar ], [ %.sroa.10.090, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39 ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %i.hb, %bb.ar ], [ %.sroa.048.091, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39 ] ; 2 uses
  %i.ho = phi ptr [ %i.hn, %bb.ar ], [ %.sroa.20.089, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39 ]
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -80 ; 3 uses
  %i.hq = icmp eq ptr %i.hp, %storemerge.i.i.i.i
  br i1 %i.hq, label %.critedge4, label %.lr.ph, !llvm.loop !338

.critedge4:                                       ; preds = %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit.thread, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39.thread, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit
  %.sroa.048.0.lcssa = phi ptr [ %i.fh, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit ], [ %.sroa.20.089, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39.thread ], [ %.sroa.20.089, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit.thread ], [ %.sroa.20.089, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit ], [ %i.hp, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit ], [ %.sroa.20.089, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39 ] ; 3 uses
  %.sroa.10.0.lcssa = phi ptr [ %i.fj, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit ], [ %.sroa.10.090, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39.thread ], [ %.sroa.10.090, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit.thread ], [ %.sroa.10.090, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit ], [ %.sroa.20.1.a, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit ], [ %.sroa.10.090, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39 ]
  %.sroa.20.0.lcssa = phi ptr [ %i.fl, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEplEl.exit ], [ %.sroa.048.091, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39.thread ], [ %.sroa.048.091, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit.thread ], [ %.sroa.048.091, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit ], [ %.sroa.10.1, %_ZNSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEppEi.exit ], [ %.sroa.048.091, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit39 ]
  %i.hr = icmp eq ptr %.sroa.048.0.lcssa, %.sroa.10.0.lcssa
  br i1 %i.hr, label %.critedge4.thread, label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit40

_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit40: ; preds = %.critedge4
  %i.hs = getelementptr inbounds i8, ptr %.sroa.048.0.lcssa, i64 -80
  br label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit41

.critedge4.thread:                                ; preds = %.critedge4
  %i.ht = getelementptr inbounds i8, ptr %.sroa.20.0.lcssa, i64 -8
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !227 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 400
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 480
  br label %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit41

_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit41: ; preds = %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit40, %.critedge4.thread
  %.pn69.in = phi ptr [ %i.hv, %.critedge4.thread ], [ %i.hs, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit40 ]
  %i.hx = phi ptr [ %i.hw, %.critedge4.thread ], [ %.sroa.048.0.lcssa, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit40 ]
  %.pn69 = load i64, ptr %.pn69.in, align 8, !tbaa !154
  %i.hy = add i64 %.pn69, %i.u
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 -72
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !326
  %i.ib = add i64 %i.hy, %i.ia
  br label %bb.as

bb.as:                                            ; preds = %.critedge, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit41
  %storemerge = phi i64 [ %i.ib, %_ZNKSt16reverse_iteratorISt15_Deque_iteratorIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoERS3_PS3_EEdeEv.exit41 ], [ %i.fc, %.critedge ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !167
  store i64 %i.fc, ptr %2, align 8, !tbaa !167
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 816
  store i64 -1, ptr %i.ic, align 8, !tbaa !156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.at

bb.at:                                            ; preds = %bb.e, %bb.as, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.au:                                            ; preds = %bb.ak, %bb.h
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ak ], [ %i.at, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn
}

declare void @_ZN7rocksdb15BlockPrefetcher16PrefetchIfNeededEPKNS_15BlockBasedTable3RepERKNS_11BlockHandleEmbbRKNS_11ReadOptionsERKSt8functionIFvbRmSC_EEb(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #4

declare noundef ptr @_ZNK7rocksdb15BlockBasedTable20NewDataBlockIteratorINS_13DataBlockIterEEEPT_RKNS_11ReadOptionsERKNS_11BlockHandleES4_NS_9BlockTypeEPNS_10GetContextEPNS_23BlockCacheLookupContextEPNS_18FilePrefetchBufferEbbRNS_6StatusEb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(192), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { ptr, i64 } @_ZNK7rocksdb9BlockIterINS_5SliceEE3keyEv(ptr noundef nonnull align 8 dereferenceable(632) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 560
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !tbaa !48
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !167
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.2.0.copyload, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb23BlockBasedTableIterator16FindBlockForwardEv(ptr noundef nonnull align 8 dereferenceable(1112) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::unique_ptr.2", align 8 ; 5 uses
  %2 = alloca %"struct.rocksdb::IndexValue", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1072 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1050 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1048 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1033
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1041 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %bb.aa, %bb.a
  %i.q = load i8, ptr %i.b, align 8, !tbaa !25, !noalias !339 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !339
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !48, !noalias !339 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !339
  %i.s = icmp eq i8 %i.q, 0
  br i1 %i.s, label %bb.d, label %.thread22

bb.c:                                             ; preds = %bb.b
  call void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.2") align 8 %1, ptr noundef nonnull %i.r), !noalias !339
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !48, !noalias !339 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !339
  %i.t = icmp eq i8 %i.q, 0                       ; 2 uses
  %.not.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusD2Ev.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #24
  br i1 %i.t, label %bb.d, label %.thread22

_ZN7rocksdb6StatusD2Ev.exit:                      ; preds = %bb.c
  br i1 %i.t, label %bb.d, label %.thread22

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %.thread, %_ZN7rocksdb6StatusD2Ev.exit
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !37
  %.not24 = icmp eq ptr %i.u, null
  br i1 %.not24, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.v = load i8, ptr %i.e, align 2, !tbaa !149, !range !44, !noundef !45
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !108, !nonnull !45, !align !109
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !132
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.g, align 8, !tbaa !150, !range !44, !noundef !45
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %i.h, align 1, !tbaa !213
  %i.ad = icmp eq i8 %i.ac, 0
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ae = phi i1 [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ %i.ad, %bb.h ] ; 2 uses
  call void @_ZN7rocksdb23BlockBasedTableIterator13ResetDataIterEv(ptr noundef nonnull align 8 dereferenceable(1112) %0)
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !186 ; 5 uses
  %.not.i.i12 = icmp eq ptr %i.af, null
  br i1 %.not.i.i12, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14.thread, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit

_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit: ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !187
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !187
  %.not25 = icmp eq ptr %i.ai, %i.aj
  br i1 %.not25, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14, label %bb.j

bb.j:                                             ; preds = %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit
  call void @_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(80) %i.af) #23
  %.pr.pre = load ptr, ptr %i.i, align 8, !tbaa !186 ; 2 uses
  %.not.i.i13 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i13, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14.thread, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14

_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14: ; preds = %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit, %bb.j
  %.pr34 = phi ptr [ %.pr.pre, %bb.j ], [ %i.af, %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.pr34, i64 48
  %i.al = getelementptr inbounds nuw i8, ptr %.pr34, i64 16
  %i.am = load ptr, ptr %i.ak, align 8, !tbaa !187
  %i.an = load ptr, ptr %i.al, align 8, !tbaa !187
  %.not26 = icmp eq ptr %i.am, %i.an
  br i1 %.not26, label %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14.thread, label %bb.y

_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14.thread: ; preds = %bb.i, %bb.j, %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14
  %i.ao = load i8, ptr %i.e, align 2, !tbaa !149, !range !44, !noundef !45
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14.thread
  %i.aq = load i8, ptr %i.j, align 1, !tbaa !215, !range !44, !noundef !45
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %.split

bb.l:                                             ; preds = %bb.k, %_ZN7rocksdb23BlockBasedTableIterator23DoesContainBlockHandlesEv.exit14.thread
  %i.as = load ptr, ptr %i.k, align 8, !tbaa !153 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(40) %i.as)
  %i.aw = load i8, ptr %i.j, align 1, !tbaa !215, !range !44, !noundef !45
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i8 0, ptr %i.j, align 1, !tbaa !215
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.05 = phi i1 [ true, %bb.m ], [ %i.ae, %bb.l ]
  %i.ay = load ptr, ptr %i.l, align 8, !tbaa !242 ; 6 uses
  %.not8 = icmp eq ptr %i.ay, null
  br i1 %.not8, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 328
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !342, !range !44, !noundef !45
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 112
end_hunk_1
begin_hunk_2_@_ZN7rocksdb23BlockBasedTableIterator7PrepareEPKNS_13MultiScanArgsE:bb.a
  %i.dx = load ptr, ptr %i.dv, align 8, !tbaa !22
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 208
  %i.dz = load ptr, ptr %i.dy, align 8
  invoke void %i.dz(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef %i.dw)
          to label %bb.aa unwind label %bb.o

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.ea = load ptr, ptr %i.a, align 8, !tbaa !349
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  invoke void @_ZN7rocksdb23BlockBasedTableIterator19CollectBlockHandlesERKSt6vectorINS_11ScanOptionsESaIS2_EEPS1_INS_11BlockHandleESaIS7_EEPS1_ISt5tupleIJmmEESaISC_EEPS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EE(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull %9, ptr noundef nonnull %11, ptr noundef nonnull %10)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 4 uses
  %i.ed = load <4 x i8>, ptr %12, align 8, !tbaa !42
  store <4 x i8> %i.ed, ptr %i.ec, align 8, !tbaa !42
  store <4 x i8> zeroinitializer, ptr %12, align 8, !tbaa !42
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 4 ; 2 uses
  %i.ef = load i8, ptr %i.ee, align 4, !tbaa !43, !range !44, !noundef !45
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1060 ; 2 uses
  store i8 %i.ef, ptr %i.eg, align 4, !tbaa !46
  store i8 0, ptr %i.ee, align 4, !tbaa !46
  %i.eh = getelementptr inbounds nuw i8, ptr %12, i64 5 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !42
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 1061 ; 2 uses
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !47
  store i8 0, ptr %i.eh, align 1, !tbaa !47
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 4 uses
  %i.em = load ptr, ptr %i.ek, align 8, !tbaa !48
  store ptr null, ptr %i.ek, align 8, !tbaa !48
  %i.en = load ptr, ptr %i.el, align 8, !tbaa !48 ; 2 uses
  store ptr %i.em, ptr %i.el, align 8, !tbaa !48
  %.not.i.i.i.i.i66 = icmp eq ptr %i.en, null
  br i1 %.not.i.i.i.i.i66, label %_ZN7rocksdb6StatusaSEOS0_.exit68.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit68

_ZN7rocksdb6StatusaSEOS0_.exit68:                 ; preds = %bb.ab
  call void @_ZdaPv(ptr noundef nonnull %i.en) #24
  %.pr141 = load ptr, ptr %i.ek, align 8, !tbaa !48 ; 2 uses
  %.not.i.i69 = icmp eq ptr %.pr141, null
  br i1 %.not.i.i69, label %_ZN7rocksdb6StatusaSEOS0_.exit68.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit68
  call void @_ZdaPv(ptr noundef nonnull %.pr141) #24
  br label %_ZN7rocksdb6StatusaSEOS0_.exit68.thread

_ZN7rocksdb6StatusaSEOS0_.exit68.thread:          ; preds = %bb.ab, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i70, %_ZN7rocksdb6StatusaSEOS0_.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.eo = load i8, ptr %i.ec, align 8, !tbaa !25
  %i.ep = icmp eq i8 %i.eo, 0
  br i1 %i.ep, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit68.thread
  %i.eq = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.er = invoke noundef ptr @_ZNK7rocksdb15BlockBasedTable13GetStatisticsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.eq)
          to label %bb.ad unwind label %bb.af     ; 3 uses

bb.ad:                                            ; preds = %bb.ac
  %.not.i72 = icmp eq ptr %i.er, null
  br i1 %.not.i72, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit74, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 176
  %i.eu = load ptr, ptr %i.et, align 8
  invoke void %i.eu(ptr noundef nonnull align 8 dereferenceable(33) %i.er, i32 noundef 237, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit74 unwind label %bb.af, !inline_history !106

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

bb.ag:                                            ; preds = %bb.aa
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.dg

bb.ah:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit68.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i64 0, ptr %i.b, align 8, !tbaa !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ex = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !512 ; 2 uses
  %i.ez = load ptr, ptr %9, align 8, !tbaa !513   ; 5 uses
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = ashr exact i64 %i.fc, 4                 ; 8 uses
  store i64 %i.fd, ptr %i.c, align 8, !tbaa !167
  %i.fe = load ptr, ptr %i.a, align 8, !tbaa !349 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !514 ; 3 uses
  %.not = icmp eq i64 %i.fg, 0
  br i1 %.not, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 17
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !289, !range !44, !noundef !45
  %i.fj = trunc nuw i8 %i.fi to i1
  %.not32226 = icmp eq ptr %i.ey, %i.ez           ; 2 uses
  br i1 %i.fj, label %.critedge.preheader, label %.preheader

.critedge.preheader:                              ; preds = %bb.ai
  br i1 %.not32226, label %.loopexit, label %.lr.ph229

.preheader:                                       ; preds = %bb.ai
  br i1 %.not32226, label %.loopexit, label %.lr.ph

.critedge:                                        ; preds = %.lr.ph229
  %.not32 = icmp eq i64 %i.fk, 0
  br i1 %.not32, label %.loopexit, label %.lr.ph229, !llvm.loop !515

.lr.ph229:                                        ; preds = %.critedge.preheader, %.critedge
  %.026228 = phi i64 [ %i.fk, %.critedge ], [ %i.fd, %.critedge.preheader ] ; 3 uses
  %.027227 = phi i64 [ %i.fp, %.critedge ], [ 0, %.critedge.preheader ]
  %i.fk = add i64 %.026228, -1                    ; 3 uses
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !326
  %i.fo = add i64 %.027227, 5
  %i.fp = add i64 %i.fo, %i.fn                    ; 2 uses
  %.not33 = icmp ugt i64 %i.fp, %i.fg
  br i1 %.not33, label %bb.aj, label %.critedge, !llvm.loop !515

bb.aj:                                            ; preds = %.lr.ph229
  store i64 %.026228, ptr %i.b, align 8, !tbaa !167
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.al
  %.025167 = phi i64 [ %i.fw, %bb.al ], [ 0, %.preheader ] ; 4 uses
  %.128166 = phi i64 [ %i.fu, %bb.al ], [ 0, %.preheader ]
  %i.fq = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %.025167
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !326
  %i.ft = add i64 %.128166, 5
  %i.fu = add i64 %i.ft, %i.fs                    ; 2 uses
  %i.fv = icmp ugt i64 %i.fu, %i.fg
  br i1 %i.fv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  store i64 %.025167, ptr %i.c, align 8, !tbaa !167
  br label %.loopexit

bb.al:                                            ; preds = %.lr.ph
  %i.fw = add nuw i64 %.025167, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.fw, %i.fd
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !516

.loopexit:                                        ; preds = %bb.al, %.critedge, %.critedge.preheader, %.preheader, %bb.aj, %bb.ak, %bb.ah
  %i.fx = phi i64 [ %i.fd, %.critedge.preheader ], [ %i.fd, %bb.ah ], [ 0, %.preheader ], [ %i.fd, %bb.aj ], [ %.025167, %bb.ak ], [ %i.fd, %.critedge ], [ %i.fd, %bb.al ] ; 2 uses
  %i.fy = phi i64 [ 0, %.critedge.preheader ], [ 0, %bb.ah ], [ 0, %.preheader ], [ %.026228, %bb.aj ], [ 0, %bb.ak ], [ 0, %.critedge ], [ 0, %bb.al ] ; 2 uses
  %i.fz = icmp ult i64 %i.fy, %i.fx
  br i1 %i.fz, label %bb.am, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit

bb.am:                                            ; preds = %.loopexit
  %.idx160 = shl nsw i64 %i.fy, 4                 ; 3 uses
  %i.ga = getelementptr inbounds i8, ptr %i.ez, i64 %.idx160
  %.idx = shl nsw i64 %i.fx, 4                    ; 2 uses
  %gepdiff = sub nsw i64 %.idx, %.idx160          ; 4 uses
  %i.gb = icmp ugt i64 %gepdiff, 9223372036854775792
  br i1 %i.gb, label %bb.an, label %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #27
          to label %.noexc123 unwind label %.thread

.noexc123:                                        ; preds = %bb.an
  unreachable

_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.am
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %gepdiff) #25
          to label %.noexc124 unwind label %.thread ; 3 uses

.noexc124:                                        ; preds = %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i
  %i.gd = icmp eq i64 %.idx160, %.idx
  br i1 %i.gd, label %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %.noexc124
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gc, ptr align 8 %i.ga, i64 %gepdiff, i1 false)
  br label %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %.noexc124, %.lr.ph.i.i.i.i.preheader.i.i
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %gepdiff
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit

.thread:                                          ; preds = %bb.an, %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE11_M_allocateEm.exit.i.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit: ; preds = %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i, %.loopexit
  %.sroa.0126.0.a = phi ptr [ null, %.loopexit ], [ %i.ge, %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 3 uses
  %.sroa.18.0 = phi ptr [ null, %.loopexit ], [ %i.gc, %_ZNSt12_Vector_baseIN7rocksdb11BlockHandleESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !517)
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.gh = invoke noalias noundef nonnull dereferenceable(256) ptr @_Znwm(i64 noundef 256) #25
          to label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit unwind label %bb.de ; 26 uses

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit: ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i32 1, ptr %i.gi, align 8, !tbaa !303, !noalias !517
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 12
  store i32 1, ptr %i.gj, align 4, !tbaa !305, !noalias !517
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN7rocksdb5IOJobESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.gh, align 8, !tbaa !22, !noalias !517
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.gl, i8 0, i64 144, i1 false), !noalias !517
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gh, i64 100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.gm, i8 0, i64 44, i1 false), !noalias !517
  store i32 4, ptr %i.gn, align 4, !tbaa !520, !noalias !517
  %i.go = getelementptr inbounds nuw i8, ptr %i.gh, i64 104
  store i64 -1, ptr %i.go, align 8, !tbaa !521, !noalias !517
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 128
  store i8 1, ptr %i.gp, align 8, !tbaa !522, !noalias !517
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gh, i64 129
  store i8 1, ptr %i.gq, align 1, !tbaa !523, !noalias !517
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 132
  store i8 1, ptr %i.gr, align 4, !tbaa !524, !noalias !517
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 136
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gh, i64 176
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.gt, i8 0, i64 32, i1 false), !noalias !517
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gh, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(39) %i.gs, i8 0, i64 39, i1 false), !noalias !517
  store i8 1, ptr %i.gu, align 8, !tbaa !131, !noalias !517
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gh, i64 216
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gh, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 0, i64 16, i1 false), !noalias !517
  store i8 -1, ptr %i.gw, align 8, !tbaa !525, !noalias !517
  store ptr %i.gh, ptr %i.gg, align 8, !tbaa !302, !alias.scope !517
  store ptr %i.gk, ptr %13, align 8, !tbaa !526, !alias.scope !517
  %i.gx = load ptr, ptr %i.e, align 8, !tbaa !49
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gh, i64 40
  store ptr %i.gx, ptr %i.gy, align 8, !tbaa !528
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gh, i64 32
  store ptr %.sroa.18.0, ptr %i.gk, align 8, !tbaa !513
  store ptr %.sroa.0126.0.a, ptr %i.gz, align 8, !tbaa !512
  store ptr %.sroa.0126.0.a, ptr %i.ha, align 8, !tbaa !531
  %i.hb = load ptr, ptr %i.a, align 8, !tbaa !349
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !532
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gh, i64 48
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !533
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !108, !nonnull !45, !align !109 ; 4 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gh, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.hg, ptr noundef nonnull align 8 dereferenceable(192) %i.hf, i64 119, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gh, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hf, i64 136 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.not.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not.i.i.not.i.i.i, label %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hf, i64 120
  %i.hm = invoke noundef zeroext i1 %i.hk(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hl, i32 noundef 2)
          to label %bb.ap unwind label %bb.aq     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.hn = load <2 x ptr>, ptr %i.hj, align 8, !tbaa !181
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.gh, i64 192
  %i.ho = load <2 x ptr>, ptr %.phi.trans.insert, align 8, !tbaa !181
  br label %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.hp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hq = load ptr, ptr %i.hi, align 16, !tbaa !185 ; 2 uses
  %.not.i.i.i.i78 = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i.i78, label %.thread154, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hr = invoke noundef zeroext i1 %i.hq(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %.thread154 unwind label %bb.as ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.hs = landingpad { ptr, i32 }
          catch ptr null
  %i.ht = extractvalue { ptr, i32 } %i.hs, 0
  call void @__clang_call_terminate(ptr %i.ht) #26
  unreachable

_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i: ; preds = %bb.ap, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit
  %i.hu = phi <2 x ptr> [ splat (ptr null), %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit ], [ %i.ho, %bb.ap ] ; 2 uses
  %i.hv = phi <2 x ptr> [ splat (ptr null), %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EEaSEOS3_.exit ], [ %i.hn, %bb.ap ]
  %.sroa.0.i.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %2, align 16, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.hh, i64 16, i1 false), !tbaa.struct !180
  store <2 x i64> %.sroa.0.i.i.i.i.sroa.0.0.copyload, ptr %i.hh, align 8, !tbaa !42
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gh, i64 192
  store <2 x ptr> %i.hu, ptr %i.hi, align 16, !tbaa !181
  store <2 x ptr> %i.hv, ptr %i.hw, align 8, !tbaa !181
  %i.hx = extractelement <2 x ptr> %i.hu, i64 0   ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i79, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i
  %i.hy = invoke noundef zeroext i1 %i.hx(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 3)
          to label %bb.av unwind label %bb.au     ; 0 uses

bb.au:                                            ; preds = %bb.at
  %i.hz = landingpad { ptr, i32 }
          catch ptr null
  %i.ia = extractvalue { ptr, i32 } %i.hz, 0
  call void @__clang_call_terminate(ptr %i.ia) #26
  unreachable

bb.av:                                            ; preds = %bb.at, %_ZNSt8functionIFbRKN7rocksdb15TablePropertiesEEEC2ERKS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gh, i64 208
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hf, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ib, ptr noundef nonnull align 8 dereferenceable(40) %i.ic, i64 40, i1 false)
  %i.id = load ptr, ptr %i.a, align 8, !tbaa !349 ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !534, !range !44, !noundef !45
  %i.ig = load ptr, ptr %13, align 8, !tbaa !535  ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 115
  store i8 %i.if, ptr %i.ih, align 1, !tbaa !537
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 232
  store i8 1, ptr %i.ii, align 8, !tbaa !538
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ij = getelementptr inbounds nuw i8, ptr %i.id, i64 24
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !539 ; 3 uses
  store ptr %i.ik, ptr %15, align 8, !tbaa !539
  %i.il = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !302 ; 3 uses
  store ptr %i.in, ptr %i.il, align 8, !tbaa !302
  %.not.i.i.i80 = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i80, label %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 8 ; 3 uses
  %i.ip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !42
  %.not.i.i.i.i81 = icmp eq i8 %i.ip, 0
  br i1 %.not.i.i.i.i81, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.iq = load i32, ptr %i.io, align 4, !tbaa !307
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.io, align 4, !tbaa !307
  br label %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.is = atomicrmw volatile add ptr %i.io, i32 1 acq_rel, align 4 ; 0 uses
  %.pre174 = load ptr, ptr %15, align 8, !tbaa !539
  br label %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit

_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit: ; preds = %bb.av, %bb.ax, %bb.ay
  %i.it = phi ptr [ %i.ik, %bb.av ], [ %i.ik, %bb.ax ], [ %.pre174, %bb.ay ] ; 2 uses
  %.not162 = icmp eq ptr %i.it, null
  br i1 %.not162, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit
  %i.iu = invoke noundef ptr @_ZN7rocksdb15NewIODispatcherEv()
          to label %bb.ba unwind label %bb.bb

bb.ba:                                            ; preds = %bb.az
  invoke void @_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %i.iu)
          to label %._crit_edge unwind label %bb.bb

._crit_edge:                                      ; preds = %bb.ba
  %.pre175 = load ptr, ptr %15, align 8, !tbaa !539
  br label %bb.bc

bb.bb:                                            ; preds = %bb.bk, %bb.bg, %bb.bi, %bb.be, %bb.ba, %bb.az
  %i.iv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.bc:                                            ; preds = %._crit_edge, %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit
  %i.iw = phi ptr [ %.pre175, %._crit_edge ], [ %i.it, %_ZNSt10shared_ptrIN7rocksdb12IODispatcherEEC2ERKS2_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !22
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8
  invoke void %i.iz(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %16, ptr noundef nonnull align 8 dereferenceable(8) %i.iw, ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull %14)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.ja = load <4 x i8>, ptr %16, align 8, !tbaa !42
  store <4 x i8> %i.ja, ptr %i.ec, align 8, !tbaa !42
  store <4 x i8> zeroinitializer, ptr %16, align 8, !tbaa !42
  %i.jb = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 4, !tbaa !43, !range !44, !noundef !45
  store i8 %i.jc, ptr %i.eg, align 4, !tbaa !46
  store i8 0, ptr %i.jb, align 4, !tbaa !46
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 5 ; 2 uses
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !42
  store i8 %i.je, ptr %i.ej, align 1, !tbaa !47
  store i8 0, ptr %i.jd, align 1, !tbaa !47
  %i.jf = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !48
  store ptr null, ptr %i.jf, align 8, !tbaa !48
  %i.jh = load ptr, ptr %i.el, align 8, !tbaa !48 ; 2 uses
  store ptr %i.jg, ptr %i.el, align 8, !tbaa !48
  %.not.i.i.i.i.i83 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i.i83, label %_ZN7rocksdb6StatusaSEOS0_.exit85.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit85

_ZN7rocksdb6StatusaSEOS0_.exit85:                 ; preds = %bb.bd
  call void @_ZdaPv(ptr noundef nonnull %i.jh) #24
  %.pr143 = load ptr, ptr %i.jf, align 8, !tbaa !48 ; 2 uses
  %.not.i.i86 = icmp eq ptr %.pr143, null
  br i1 %.not.i.i86, label %_ZN7rocksdb6StatusaSEOS0_.exit85.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i87

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i87: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit85
  call void @_ZdaPv(ptr noundef nonnull %.pr143) #24
  br label %_ZN7rocksdb6StatusaSEOS0_.exit85.thread

_ZN7rocksdb6StatusaSEOS0_.exit85.thread:          ; preds = %bb.bd, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i87, %_ZN7rocksdb6StatusaSEOS0_.exit85
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ji = load i8, ptr %i.ec, align 8, !tbaa !25
  %i.jj = icmp eq i8 %i.ji, 0
  %i.jk = load ptr, ptr %i.e, align 8, !tbaa !49  ; 2 uses
  br i1 %i.jj, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit85.thread
  %i.jl = invoke noundef ptr @_ZNK7rocksdb15BlockBasedTable13GetStatisticsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.jk)
          to label %bb.bf unwind label %bb.bb     ; 3 uses

bb.bf:                                            ; preds = %bb.be
  %.not.i89 = icmp eq ptr %i.jl, null
  br i1 %.not.i89, label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit91, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !22
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 176
  %i.jo = load ptr, ptr %i.jn, align 8
  invoke void %i.jo(ptr noundef nonnull align 8 dereferenceable(33) %i.jl, i32 noundef 237, i64 noundef 1)
          to label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit91 unwind label %bb.bb, !inline_history !106

bb.bh:                                            ; preds = %bb.bc
  %i.jp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
end_hunk_2
begin_hunk_3_@_ZN7rocksdb23BlockBasedTableIterator7PrepareEPKNS_13MultiScanArgsE:bb.a
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !551 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.nw, %i.ny
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.oe, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.nw, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit ] ; 3 uses
  %i.nz = load ptr, ptr %.05.i.i.i, align 8, !tbaa !129 ; 2 uses
  %i.oa = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ob = icmp eq ptr %i.nz, %i.oa
  br i1 %i.ob, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.oc = load i64, ptr %i.oa, align 8, !tbaa !42
  %i.od = add i64 %i.oc, 1
  call void @_ZdlPvm(ptr noundef %i.nz, i64 noundef %i.od) #24
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.oe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.oe, %i.ny
  br i1 %.not.i.i.i111, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !552

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %10, align 8, !tbaa !550
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit
  %i.of = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.nw, %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.of, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.og = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !553
  %i.oi = ptrtoint ptr %i.oh to i64
  %i.oj = ptrtoint ptr %i.of to i64
  %i.ok = sub i64 %i.oi, %i.oj
  call void @_ZdlPvm(ptr noundef nonnull %i.of, i64 noundef %i.ok) #24
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.ol = load ptr, ptr %9, align 8, !tbaa !513   ; 3 uses
  %.not.i.i.i112 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i.i112, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit113, label %bb.cn

bb.cn:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.om = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !531
  %i.oo = ptrtoint ptr %i.on to i64
  %i.op = ptrtoint ptr %i.ol to i64
  %i.oq = sub i64 %i.oo, %i.op
  call void @_ZdlPvm(ptr noundef nonnull %i.ol, i64 noundef %i.oq) #24
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit113

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit113: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit50

_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit50: ; preds = %.invoke, %bb.x, %bb.l, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit113
  %i.or = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !506 ; 4 uses
  %.not.i114 = icmp eq ptr %i.os, null
  br i1 %.not.i114, label %.thread12.i, label %bb.co

bb.co:                                            ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit50
  %i.ot = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ou = load i8, ptr %i.ot, align 8, !tbaa !507, !range !44, !noundef !45
  %i.ov = trunc nuw i8 %i.ou to i1
  %i.ow = load ptr, ptr %3, align 8, !tbaa !501   ; 3 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !22
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 152
  %i.oz = load ptr, ptr %i.oy, align 8            ; 2 uses
  br i1 %i.ov, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.pa = invoke noundef i64 %i.oz(ptr noundef nonnull align 8 dereferenceable(32) %i.ow)
          to label %bb.cq unwind label %bb.db

bb.cq:                                            ; preds = %bb.cp
  %i.pb = load i64, ptr %i.bd, align 8, !tbaa !511
  %i.pc = sub i64 %i.pa, %i.pb
  br label %bb.ct

bb.cr:                                            ; preds = %bb.co
  %i.pd = invoke noundef i64 %i.oz(ptr noundef nonnull align 8 dereferenceable(32) %i.ow)
          to label %bb.cs unwind label %bb.db

bb.cs:                                            ; preds = %bb.cr
  %i.pe = load i64, ptr %i.bd, align 8, !tbaa !511
  %i.pf = sub i64 %i.pd, %i.pe
  %i.pg = load i64, ptr %i.os, align 8, !tbaa !167
  %i.ph = add i64 %i.pg, %i.pf
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cq
  %i.pi = phi i64 [ %i.ph, %bb.cs ], [ %i.pc, %bb.cq ] ; 3 uses
  store i64 %i.pi, ptr %i.os, align 8, !tbaa !167
  %i.pj = getelementptr inbounds nuw i8, ptr %3, i64 34
  %i.pk = load i8, ptr %i.pj, align 2, !tbaa !510, !range !44, !noundef !45
  %i.pl = trunc nuw i8 %i.pk to i1
  br i1 %i.pl, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.pm = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.pn = load i64, ptr %i.pm, align 8, !tbaa !554
  %i.po = sub i64 %i.pi, %i.pn                    ; 2 uses
  store i64 %i.po, ptr %i.os, align 8, !tbaa !167
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.pp = phi i64 [ %i.po, %bb.cu ], [ %i.pi, %bb.ct ]
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !509, !range !44, !noundef !45
  %i.ps = trunc nuw i8 %i.pr to i1
  br i1 %i.ps, label %bb.cx, label %_ZN7rocksdb9StopWatchD2Ev.exit

.thread12.i:                                      ; preds = %_ZN7rocksdb10RecordTickEPNS_10StatisticsEjm.exit50
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.pu = load i8, ptr %i.pt, align 1, !tbaa !509, !range !44, !noundef !45
  %i.pv = trunc nuw i8 %i.pu to i1
  br i1 %i.pv, label %.thread15.i, label %_ZN7rocksdb9StopWatchD2Ev.exit

.thread15.i:                                      ; preds = %.thread12.i
  %i.pw = load ptr, ptr %3, align 8, !tbaa !501   ; 2 uses
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !22
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 152
  %i.pz = load ptr, ptr %i.py, align 8
  %i.qa = invoke noundef i64 %i.pz(ptr noundef nonnull align 8 dereferenceable(32) %i.pw)
          to label %bb.cw unwind label %bb.db

bb.cw:                                            ; preds = %.thread15.i
  %i.qb = load i64, ptr %i.bd, align 8, !tbaa !511
  %i.qc = sub i64 %i.qa, %i.qb
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.qd = phi i64 [ %i.qc, %bb.cw ], [ %i.pp, %bb.cv ] ; 2 uses
  %i.qe = load i32, ptr %i.z, align 8, !tbaa !504 ; 2 uses
  %.not7.i = icmp eq i32 %i.qe, 80
  br i1 %.not7.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qf = load ptr, ptr %i.y, align 8, !tbaa !503 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !22
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 200
  %i.qi = load ptr, ptr %i.qh, align 8
  invoke void %i.qi(ptr noundef nonnull align 8 dereferenceable(33) %i.qf, i32 noundef %i.qe, i64 noundef %i.qd)
          to label %bb.cz unwind label %bb.db

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %i.qj = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !505 ; 2 uses
  %.not8.i = icmp eq i32 %i.qk, 80
  br i1 %.not8.i, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.ql = load ptr, ptr %i.y, align 8, !tbaa !503 ; 2 uses
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !22
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 200
  %i.qo = load ptr, ptr %i.qn, align 8
  invoke void %i.qo(ptr noundef nonnull align 8 dereferenceable(33) %i.ql, i32 noundef %i.qk, i64 noundef %i.qd)
          to label %_ZN7rocksdb9StopWatchD2Ev.exit unwind label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cy, %.thread15.i, %bb.cr, %bb.cp
  %i.qp = landingpad { ptr, i32 }
          catch ptr null
  %i.qq = extractvalue { ptr, i32 } %i.qp, 0
  call void @__clang_call_terminate(ptr %i.qq) #26
  unreachable

_ZN7rocksdb9StopWatchD2Ev.exit:                   ; preds = %bb.cv, %.thread12.i, %bb.cz, %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.dc:                                            ; preds = %bb.bl, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit
  %i.qr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.bh, %bb.bb
  %.pn34 = phi { ptr, i32 } [ %i.qr, %bb.dc ], [ %i.iv, %bb.bb ], [ %i.jp, %bb.bh ]
  call void @_ZNSt12__shared_ptrIN7rocksdb12IODispatcherELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZNSt12__shared_ptrIN7rocksdb7ReadSetELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.thread154

.thread154:                                       ; preds = %bb.dd, %bb.aq, %bb.ar
  %.pn34.pn = phi { ptr, i32 } [ %.pn34, %bb.dd ], [ %i.hp, %bb.aq ], [ %i.hp, %bb.ar ]
  call void @_ZNSt12__shared_ptrIN7rocksdb5IOJobELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116

bb.de:                                            ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EE6assignIN9__gnu_cxx17__normal_iteratorIPS1_S3_EEvEEvT_S9_.exit
  %i.qs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %.not.i.i.i115 = icmp eq ptr %.sroa.18.0, null
  br i1 %.not.i.i.i115, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qt = ptrtoint ptr %.sroa.0126.0.a to i64
  %i.qu = ptrtoint ptr %.sroa.18.0 to i64
  %i.qv = sub i64 %i.qt, %i.qu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.18.0, i64 noundef %i.qv) #24
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116: ; preds = %.thread154, %.thread, %bb.de, %bb.df
  %.pn34.pn.pn.pn153 = phi { ptr, i32 } [ %i.gf, %.thread ], [ %i.qs, %bb.de ], [ %i.qs, %bb.df ], [ %.pn34.pn, %.thread154 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116, %bb.ag, %bb.af
  %.pn34.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn34.pn.pn.pn153, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit116 ], [ %i.ev, %bb.af ], [ %i.ew, %bb.ag ]
  %i.qw = load ptr, ptr %11, align 8, !tbaa !345  ; 3 uses
  %.not.i.i.i117 = icmp eq ptr %i.qw, null
  br i1 %.not.i.i.i117, label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit118, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qx = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !549
  %i.qz = ptrtoint ptr %i.qy to i64
  %i.ra = ptrtoint ptr %i.qw to i64
  %i.rb = sub i64 %i.qz, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qw, i64 noundef %i.rb) #24
  br label %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit118

_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit118:  ; preds = %bb.dg, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.rc = load ptr, ptr %9, align 8, !tbaa !513   ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.rc, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit120, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit118
  %i.rd = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !531
  %i.rf = ptrtoint ptr %i.re to i64
  %i.rg = ptrtoint ptr %i.rc to i64
  %i.rh = sub i64 %i.rf, %i.rg
  call void @_ZdlPvm(ptr noundef nonnull %i.rc, i64 noundef %i.rh) #24
  br label %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit120

_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit120: ; preds = %_ZNSt6vectorISt5tupleIJmmEESaIS1_EED2Ev.exit118, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit120, %bb.y, %bb.o, %bb.n, %bb.m
  %.pn40 = phi { ptr, i32 } [ %i.ch, %bb.o ], [ %i.cg, %bb.n ], [ %i.du, %bb.y ], [ %.pn34.pn.pn.pn.pn, %_ZNSt6vectorIN7rocksdb11BlockHandleESaIS1_EED2Ev.exit120 ], [ %i.cf, %bb.m ]
  call void @_ZN7rocksdb9StopWatchD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %.pn40
}

; Function Attrs: uwtable
define void @_ZN7rocksdb23BlockBasedTableIterator19CollectBlockHandlesERKSt6vectorINS_11ScanOptionsESaIS2_EEPS1_INS_11BlockHandleESaIS7_EEPS1_ISt5tupleIJmmEESaISC_EEPS1_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EE(ptr dead_on_unwind noalias writable sret(%"class.rocksdb::Status") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1112) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr nofree noundef captures(none) %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 8 uses
  %7 = alloca %"struct.rocksdb::ParsedInternalKey", align 8 ; 7 uses
  %8 = alloca %"class.rocksdb::InternalKey", align 8 ; 17 uses
  %9 = alloca %"class.rocksdb::InternalKey", align 8 ; 13 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.rocksdb::InternalKey", align 8 ; 13 uses
  %12 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %13 = alloca %"class.rocksdb::Status", align 8  ; 8 uses
  %14 = alloca %"class.rocksdb::Slice", align 8   ; 8 uses
  %15 = alloca %"struct.rocksdb::IndexValue", align 16 ; 6 uses
  %16 = alloca %"struct.rocksdb::IndexValue", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %19 = alloca %"class.rocksdb::Status", align 8  ; 6 uses
  %20 = alloca %"struct.rocksdb::IndexValue", align 16 ; 9 uses
  %21 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %23 = alloca %"class.rocksdb::Slice", align 8   ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !555    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !555  ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.m = load i8, ptr @_ZN7rocksdb17kValueTypeForSeekE, align 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.not.i.i96 = icmp eq ptr @_ZTHN7rocksdb10perf_levelE, null ; 2 uses
  %i.y = tail call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZN7rocksdb10perf_levelE) ; 2 uses
  %.not.i4.i = icmp eq ptr @_ZTHN7rocksdb12perf_contextE, null ; 2 uses
  %i.z = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZN7rocksdb12perf_contextE) ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %20, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.c

bb.b:                                             ; preds = %_ZN7rocksdb11InternalKeyD2Ev.exit154
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0160.0254, i64 96 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.e
  br i1 %i.ar, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0160.0254 = phi ptr [ %i.c, %.lr.ph ], [ %i.aq, %bb.b ] ; 5 uses
  %i.as = load ptr, ptr %3, align 8, !tbaa !556
  %i.at = load ptr, ptr %i.g, align 8, !tbaa !556
  %i.au = icmp ne ptr %i.as, %i.at
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.h, ptr %8, align 8, !tbaa !127
  store i64 0, ptr %i.i, align 8, !tbaa !128
  store i8 0, ptr %i.h, align 8, !tbaa !42
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !557 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.r, ptr %9, align 8, !tbaa !127
  store i64 0, ptr %i.s, align 8, !tbaa !128
  store i8 0, ptr %i.r, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %7, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0160.0254, i64 16, i1 false), !tbaa.struct !329
  store i64 72057594037927935, ptr %i.t, align 8, !tbaa !566
  store i8 %i.m, ptr %i.u, align 8, !tbaa !569
  invoke void @_ZN7rocksdb17AppendInternalKeyEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_17ParsedInternalKeyE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(25) %7)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.ba = load ptr, ptr %9, align 8, !tbaa !129   ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.r
  br i1 %i.bb, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.bc = load i64, ptr %i.r, align 8, !tbaa !42
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #24
  br label %.body

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.be = load ptr, ptr %8, align 8, !tbaa !129   ; 6 uses
  %i.bf = icmp eq ptr %i.be, %i.h
  %i.bg = load ptr, ptr %9, align 8, !tbaa !129   ; 5 uses
  %i.bh = icmp eq ptr %i.bg, %i.r                 ; 2 uses
  br i1 %i.bf, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  br i1 %i.bh, label %bb.g, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.f
  br i1 %i.bh, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.bi = load i64, ptr %i.s, align 8, !tbaa !128 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 16
  call void @llvm.assume(i1 %i.bj)
  switch i64 %i.bi, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !42
  store i8 %i.bk, ptr %i.be, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.i:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bg, i64 %i.bi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

end_hunk_3
begin_hunk_4_@_ZNSt5dequeIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EED2Ev:bb.a
  %i.q = load i64, ptr %i.p, align 8, !tbaa !651
  %i.r = shl i64 %i.q, 3
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #24
  br label %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EED2Ev.exit

_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EED2Ev.exit: ; preds = %bb.b, %_ZNSt11_Deque_baseIN7rocksdb23BlockBasedTableIterator15BlockHandleInfoESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i
  ret void

bb.d:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  call void @__clang_call_terminate(ptr %i.t) #26
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb18FilePrefetchBufferD2Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %1 = alloca %"class.std::vector.324", align 8   ; 11 uses
  %2 = alloca %"class.rocksdb::IOStatus", align 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !691
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !692, !noalias !693 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !692, !noalias !696 ; 2 uses
  %i.m = icmp eq ptr %i.h, %i.l
  br i1 %i.m, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !699, !noalias !693
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !700, !noalias !693
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit
  %.pre = load ptr, ptr %1, align 8, !tbaa !701
  %i.r = icmp eq ptr %.pre, %i.aw
  br i1 %i.r, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %bb.l

bb.c:                                             ; preds = %.lr.ph, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit
  %i.s = phi ptr [ null, %.lr.ph ], [ %i.aw, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit ] ; 5 uses
  %.sroa.13155.0175 = phi ptr [ %i.n, %.lr.ph ], [ %.sroa.13155.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.10154.0174 = phi ptr [ %i.o, %.lr.ph ], [ %.sroa.10154.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit ] ; 2 uses
  %.sroa.0150.0173 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.0150.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit ] ; 2 uses
  %i.t = load ptr, ptr %.sroa.0150.0173, align 8, !tbaa !702 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 88
  %i.v = load i8, ptr %i.u, align 8, !tbaa !703, !range !44, !noundef !45
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !715  ; 2 uses
  %.not44 = icmp eq ptr %i.y, null
  br i1 %.not44, label %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !716
  %.not.i = icmp eq ptr %i.s, %i.z
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.y, ptr %i.s, align 8, !tbaa !181
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !718
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.p, align 8, !tbaa !718
  br label %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %1, align 8, !tbaa !719   ; 4 uses
  %i.ad = ptrtoint ptr %i.s to i64
  %i.ae = ptrtoint ptr %i.ac to i64               ; 2 uses
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775800
  br i1 %i.ag, label %bb.h, label %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #27
          to label %.noexc unwind label %.loopexit.split-lp166.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.ah = ashr exact i64 %i.af, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = tail call i64 @llvm.umin.i64(i64 %i.ai, i64 1152921504606846975)
  %i.al = select i1 %i.aj, i64 1152921504606846975, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #25
          to label %.noexc45 unwind label %.loopexit.split-lp166.loopexit ; 4 uses

.noexc45:                                         ; preds = %_ZNKSt6vectorIPvSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.af ; 2 uses
  %i.ap = load ptr, ptr %i.x, align 8, !tbaa !181
  store ptr %i.ap, ptr %i.ao, align 8, !tbaa !181
  %i.aq = icmp sgt i64 %i.af, 0
  br i1 %i.aq, label %bb.i, label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.i:                                             ; preds = %.noexc45
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.an, ptr align 8 %i.ac, i64 %i.af, i1 false)
  br label %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.i, %.noexc45
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.as = load ptr, ptr %i.q, align 8, !tbaa !716
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ae
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.au) #24
  br label %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIPvSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.an, ptr %1, align 8, !tbaa !719
  store ptr %i.ar, ptr %i.p, align 8, !tbaa !718
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.al
  store ptr %i.av, ptr %i.q, align 8, !tbaa !716
  br label %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit

_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit: ; preds = %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, %bb.f, %bb.d, %bb.c
  %i.aw = phi ptr [ %i.ar, %_ZNSt6vectorIPvSaIS0_EE17_M_realloc_insertIJRS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.ab, %bb.f ], [ %i.s, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0150.0173, i64 8 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, %.sroa.10154.0174
  br i1 %i.ay, label %bb.k, label %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit

bb.k:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.13155.0175, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !720 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit

_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit: ; preds = %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit, %bb.k
  %.sroa.0150.1 = phi ptr [ %i.ba, %bb.k ], [ %i.ax, %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit ] ; 2 uses
  %.sroa.10154.1 = phi ptr [ %i.bb, %bb.k ], [ %.sroa.10154.0174, %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit ]
  %.sroa.13155.1 = phi ptr [ %i.az, %bb.k ], [ %.sroa.13155.0175, %_ZNSt6vectorIPvSaIS0_EE12emplace_backIJRS0_EEES4_DpOT_.exit ]
  %i.bc = icmp eq ptr %.sroa.0150.1, %i.l
  br i1 %i.bc, label %._crit_edge, label %bb.c

bb.l:                                             ; preds = %._crit_edge
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !721 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !722 ; 8 uses
  %.not.i46 = icmp eq ptr %i.bg, null
  br i1 %.not.i46, label %_ZN7rocksdb9StopWatchC2EPNS_11SystemClockEPNS_10StatisticsEjjPmbb.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 248
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(33) %i.bg, i32 noundef 61)
          to label %.noexc47 unwind label %.loopexit.split-lp166.loopexit.split-lp, !inline_history !508 ; 2 uses

.noexc47:                                         ; preds = %bb.m
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 248
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef zeroext i1 %i.bn(ptr noundef nonnull align 8 dereferenceable(33) %i.bg, i32 noundef 80)
          to label %.noexc48 unwind label %.loopexit.split-lp166.loopexit.split-lp, !inline_history !508 ; 0 uses

.noexc48:                                         ; preds = %.noexc47
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bq = load atomic i8, ptr %i.bp monotonic, align 8
  %i.br = icmp ugt i8 %i.bq, 2                    ; 2 uses
  %brmerge.not = and i1 %i.br, %i.bk
  %i.bs = xor i1 %i.bk, true
  %i.bt = or i1 %i.br, %i.bs
  %spec.select.i.mux = select i1 %i.bt, i32 80, i32 61
  br i1 %brmerge.not, label %.thread21.i, label %_ZN7rocksdb9StopWatchC2EPNS_11SystemClockEPNS_10StatisticsEjjPmbb.exit

.thread21.i:                                      ; preds = %.noexc48
  %i.bu = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 152
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %_ZN7rocksdb9StopWatchC2EPNS_11SystemClockEPNS_10StatisticsEjjPmbb.exit unwind label %.loopexit.split-lp166.loopexit.split-lp, !inline_history !508

_ZN7rocksdb9StopWatchC2EPNS_11SystemClockEPNS_10StatisticsEjjPmbb.exit: ; preds = %.noexc48, %.thread21.i, %bb.l
  %.sroa.8136.1 = phi i32 [ 61, %.thread21.i ], [ %spec.select.i.mux, %.noexc48 ], [ 80, %bb.l ] ; 2 uses
  %.sroa.23.0 = phi i1 [ true, %.thread21.i ], [ false, %.noexc48 ], [ false, %bb.l ]
  %i.by = phi i64 [ %i.bx, %.thread21.i ], [ 0, %.noexc48 ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.bz = load ptr, ptr %i.e, align 8, !tbaa !691 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 496
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void %i.cc(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::IOStatus") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %i.bz, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %_ZN7rocksdb6StatusC2EOS0_.exit unwind label %.loopexit.split-lp166.loopexit.split-lp

_ZN7rocksdb6StatusC2EOS0_.exit:                   ; preds = %_ZN7rocksdb9StopWatchC2EPNS_11SystemClockEPNS_10StatisticsEjjPmbb.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !48 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %.not.i.i50 = icmp eq ptr %i.ce, null
  br i1 %.not.i.i50, label %.thread12.i, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i51

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i51: ; preds = %_ZN7rocksdb6StatusC2EOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #24
  br label %.thread12.i

.thread12.i:                                      ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i51, %_ZN7rocksdb6StatusC2EOS0_.exit
  br i1 %.sroa.23.0, label %.thread15.i, label %_ZN7rocksdb9StopWatchD2Ev.exit

.thread15.i:                                      ; preds = %.thread12.i
  %i.cf = load ptr, ptr %i.be, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 152
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(32) %i.be)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %.thread15.i
  %.not7.i = icmp eq i32 %.sroa.8136.1, 80
  br i1 %.not7.i, label %_ZN7rocksdb9StopWatchD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = sub i64 %i.ci, %i.by
  %i.ck = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 200
  %i.cm = load ptr, ptr %i.cl, align 8
  invoke void %i.cm(ptr noundef nonnull align 8 dereferenceable(33) %i.bg, i32 noundef %.sroa.8136.1, i64 noundef %i.cj)
          to label %_ZN7rocksdb9StopWatchD2Ev.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread15.i
  %i.cn = landingpad { ptr, i32 }
          catch ptr null
  %i.co = extractvalue { ptr, i32 } %i.cn, 0
  call void @__clang_call_terminate(ptr %i.co) #26
  unreachable

_ZN7rocksdb9StopWatchD2Ev.exit:                   ; preds = %bb.b, %.thread12.i, %bb.o, %bb.n, %._crit_edge
  %i.cp = load ptr, ptr %i.g, align 8, !tbaa !692, !noalias !723 ; 2 uses
  %i.cq = load ptr, ptr %i.k, align 8, !tbaa !692, !noalias !726 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %._crit_edge180, label %.lr.ph179.preheader

.lr.ph179.preheader:                              ; preds = %_ZN7rocksdb9StopWatchD2Ev.exit
  %i.cs = load ptr, ptr %i.j, align 8, !tbaa !699, !noalias !723
  %i.ct = load ptr, ptr %i.i, align 8, !tbaa !700, !noalias !723
  br label %.lr.ph179

._crit_edge180:                                   ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58, %_ZN7rocksdb9StopWatchD2Ev.exit
  %i.cu = load ptr, ptr %1, align 8, !tbaa !719   ; 3 uses
  %.not.i.i.i54 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %._crit_edge180
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !716
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.cu to i64
  %i.cz = sub i64 %i.cx, %i.cy
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cz) #24
  br label %_ZNSt6vectorIPvSaIS0_EED2Ev.exit

_ZNSt6vectorIPvSaIS0_EED2Ev.exit:                 ; preds = %._crit_edge180, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.y

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58
  %.sroa.0119.0178 = phi ptr [ %.sroa.0119.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58 ], [ %i.cs, %.lr.ph179.preheader ] ; 2 uses
  %.sroa.10123.0177 = phi ptr [ %.sroa.10123.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58 ], [ %i.ct, %.lr.ph179.preheader ] ; 2 uses
  %.sroa.13124.0176 = phi ptr [ %.sroa.13124.1.a, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58 ], [ %i.cp, %.lr.ph179.preheader ] ; 3 uses
  %i.da = load ptr, ptr %.sroa.13124.0176, align 8, !tbaa !702 ; 6 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 96 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !715 ; 2 uses
  %.not43 = icmp eq ptr %i.dc, null
  br i1 %.not43, label %bb.w, label %bb.r

bb.r:                                             ; preds = %.lr.ph179
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 104 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 120 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !185
  %.not.i.i.not.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.not.i.i, label %bb.v, label %_ZNKSt8functionIFvPvEEclES0_.exit.i

_ZNKSt8functionIFvPvEEclES0_.exit.i:              ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.dc, ptr %i.d, align 8, !tbaa !181
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 128
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !729
  invoke void %i.dh(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc57 unwind label %.loopexit165, !inline_history !730

.noexc57:                                         ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr null, ptr %i.db, align 8, !tbaa !715
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !185 ; 2 uses
  %.not.i.i56 = icmp eq ptr %i.di, null
  br i1 %.not.i.i56, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.noexc57
  %i.dj = invoke noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(32) %i.dd, ptr noundef nonnull align 8 dereferenceable(32) %i.dd, i32 noundef 3)
          to label %bb.t unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.de, i8 0, i64 16, i1 false)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  %i.dl = extractvalue { ptr, i32 } %i.dk, 0
  call void @__clang_call_terminate(ptr %i.dl) #26
  unreachable

bb.v:                                             ; preds = %bb.t, %.noexc57, %bb.r
  %i.dm = getelementptr inbounds nuw i8, ptr %i.da, i64 88
  store i8 0, ptr %i.dm, align 8, !tbaa !703
  %i.dn = load ptr, ptr %.sroa.13124.0176, align 8, !tbaa !702 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 56
  store i64 0, ptr %i.do, align 8, !tbaa !731
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 136
  store i64 0, ptr %i.dp, align 8, !tbaa !732
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 80
  store i64 0, ptr %i.dq, align 8, !tbaa !733
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph179
  %i.dr = phi ptr [ %i.dn, %bb.v ], [ %i.da, %.lr.ph179 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 88
  store i8 0, ptr %i.ds, align 8, !tbaa !703
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.13124.0176, i64 8 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %.sroa.10123.0177
  br i1 %i.du, label %bb.x, label %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58

bb.x:                                             ; preds = %bb.w
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.0119.0178, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !720 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58

_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit58: ; preds = %bb.w, %bb.x
  %.sroa.13124.1.a = phi ptr [ %i.dw, %bb.x ], [ %i.dt, %bb.w ] ; 2 uses
  %.sroa.10123.1 = phi ptr [ %i.dx, %bb.x ], [ %.sroa.10123.0177, %bb.w ]
  %.sroa.0119.1 = phi ptr [ %i.dv, %bb.x ], [ %.sroa.0119.0178, %bb.w ]
  %i.dy = icmp eq ptr %.sroa.13124.1.a, %i.cq
  br i1 %i.dy, label %._crit_edge180, label %.lr.ph179

bb.y:                                             ; preds = %_ZNSt6vectorIPvSaIS0_EED2Ev.exit, %bb.a
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !692, !noalias !734 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !692, !noalias !737 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.eg = icmp eq ptr %i.ea, %i.ee
  br i1 %i.eg, label %._crit_edge187, label %.lr.ph186

.lr.ph186:                                        ; preds = %bb.y
  %i.eh = load ptr, ptr %i.ec, align 8, !tbaa !699, !noalias !734
  %i.ei = load ptr, ptr %i.eb, align 8, !tbaa !700, !noalias !734
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 216
  br label %bb.aa

._crit_edge187:                                   ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61, %bb.y
  %.0.lcssa = phi i64 [ 0, %bb.y ], [ %.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61 ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !722 ; 3 uses
  %.not.i59 = icmp eq ptr %i.em, null
  br i1 %.not.i59, label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit, label %bb.z

bb.z:                                             ; preds = %._crit_edge187
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !22
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 216
  %i.ep = load ptr, ptr %i.eo, align 8
  invoke void %i.ep(ptr noundef nonnull align 8 dereferenceable(33) %i.em, i32 noundef 60, i64 noundef %.0.lcssa)
          to label %._ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit_crit_edge unwind label %.loopexit.split-lp166.loopexit.split-lp, !inline_history !540

._ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit_crit_edge: ; preds = %bb.z
  %.pre200 = load ptr, ptr %i.dz, align 8, !tbaa !692, !noalias !740
  %.pre201 = load ptr, ptr %i.ed, align 8, !tbaa !692, !noalias !743
  br label %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit

bb.aa:                                            ; preds = %.lr.ph186, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61
  %.0184 = phi i64 [ 0, %.lr.ph186 ], [ %.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61 ] ; 4 uses
  %.sroa.0109.0183 = phi ptr [ %i.ea, %.lr.ph186 ], [ %.sroa.0109.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61 ] ; 2 uses
  %.sroa.10113.0182 = phi ptr [ %i.ei, %.lr.ph186 ], [ %.sroa.10113.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61 ] ; 2 uses
  %.sroa.13114.0181 = phi ptr [ %i.eh, %.lr.ph186 ], [ %.sroa.13114.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61 ] ; 2 uses
  %i.eq = load ptr, ptr %.sroa.0109.0183, align 8, !tbaa !702 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 56
  %i.es = load i64, ptr %i.er, align 8, !tbaa !731 ; 4 uses
  %.not156 = icmp eq i64 %i.es, 0
  br i1 %.not156, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.et = load i64, ptr %i.ej, align 8, !tbaa !746 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !747 ; 4 uses
  %.not41 = icmp ult i64 %i.et, %i.ev
  %i.ew = load i64, ptr %i.ek, align 8, !tbaa !748
  %i.ex = add i64 %i.ew, %i.et                    ; 3 uses
  br i1 %.not41, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ey = add i64 %i.ev, %i.es
  %i.ez = icmp ult i64 %i.ex, %i.ey
  br i1 %i.ez, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %.neg = add i64 %i.es, %.0184
  %i.fa = add i64 %.neg, %i.ev
  %i.fb = sub i64 %i.fa, %i.ex
  br label %bb.af

bb.ae:                                            ; preds = %bb.ab
  %.not42 = icmp ugt i64 %i.ex, %i.ev
  %i.fc = select i1 %.not42, i64 0, i64 %i.es
  %spec.select = add i64 %i.fc, %.0184
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.ad, %bb.aa
  %.1 = phi i64 [ %i.fb, %bb.ad ], [ %.0184, %bb.ac ], [ %spec.select, %bb.ae ], [ %.0184, %bb.aa ] ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0109.0183, i64 8 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %.sroa.10113.0182
  br i1 %i.fe, label %bb.ag, label %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61

bb.ag:                                            ; preds = %bb.af
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.13114.0181, i64 8 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !720 ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 512
  br label %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61

_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit61: ; preds = %bb.af, %bb.ag
  %.sroa.13114.1 = phi ptr [ %i.ff, %bb.ag ], [ %.sroa.13114.0181, %bb.af ]
  %.sroa.10113.1 = phi ptr [ %i.fh, %bb.ag ], [ %.sroa.10113.0182, %bb.af ]
  %.sroa.0109.1 = phi ptr [ %i.fg, %bb.ag ], [ %i.fd, %bb.af ] ; 2 uses
  %i.fi = icmp eq ptr %.sroa.0109.1, %i.ee
  br i1 %i.fi, label %._crit_edge187, label %bb.aa

_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit: ; preds = %._ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit_crit_edge, %._crit_edge187
  %i.fj = phi ptr [ %.pre201, %._ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit_crit_edge ], [ %i.ee, %._crit_edge187 ] ; 2 uses
  %i.fk = phi ptr [ %.pre200, %._ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit_crit_edge ], [ %i.ea, %._crit_edge187 ] ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fj
  br i1 %i.fl, label %._crit_edge192, label %.lr.ph191.preheader

.lr.ph191.preheader:                              ; preds = %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit
  %i.fm = load ptr, ptr %i.ec, align 8, !tbaa !699, !noalias !740
  %i.fn = load ptr, ptr %i.eb, align 8, !tbaa !700, !noalias !740
  br label %.lr.ph191

._crit_edge192:                                   ; preds = %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit65, %_ZN7rocksdb17RecordInHistogramEPNS_10StatisticsEjm.exit
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !692, !noalias !749 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !692, !noalias !752 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.fv = icmp eq ptr %i.fq, %i.ft
  br i1 %i.fv, label %._crit_edge198, label %.lr.ph197.preheader

.lr.ph197.preheader:                              ; preds = %._crit_edge192
  %i.fw = load ptr, ptr %i.fr, align 8, !tbaa !699, !noalias !749
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !700, !noalias !749
  br label %.lr.ph197

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit65
  %.sroa.099.0190 = phi ptr [ %.sroa.099.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit65 ], [ %i.fk, %.lr.ph191.preheader ] ; 3 uses
  %.sroa.10103.0189 = phi ptr [ %.sroa.10103.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit65 ], [ %i.fn, %.lr.ph191.preheader ] ; 2 uses
  %.sroa.13104.0188 = phi ptr [ %.sroa.13104.1, %_ZNSt15_Deque_iteratorIPN7rocksdb10BufferInfoERS2_PS2_EppEv.exit65 ], [ %i.fm, %.lr.ph191.preheader ] ; 2 uses
  %i.fz = load ptr, ptr %.sroa.099.0190, align 8, !tbaa !702 ; 9 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph191
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fz, i64 120
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !185 ; 2 uses
  %.not.i.i62 = icmp eq ptr %i.gc, null
  br i1 %.not.i.i62, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 104 ; 2 uses
  %i.ge = invoke noundef zeroext i1 %i.gc(ptr noundef nonnull align 8 dereferenceable(32) %i.gd, ptr noundef nonnull align 8 dereferenceable(32) %i.gd, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i unwind label %bb.aj ; 0 uses

bb.aj:                                            ; preds = %bb.ai
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #26
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.ai, %bb.ah
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 8 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fz, i64 40 ; 2 uses
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !181 ; 2 uses
  %.not.i.i.i63 = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i63, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.gj, ptr %i.c, align 8, !tbaa !181
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !185
  %.not.i.i.i.i.i = icmp eq ptr %i.gl, null
  br i1 %.not.i.i.i.i.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt25__throw_bad_function_callv() #27
          to label %.noexc.i.i.i unwind label %.loopexit.split-lp161

.noexc.i.i.i:                                     ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !729
  invoke void %i.gn(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZNKSt8functionIFvPvEEclES0_.exit.i.i.i unwind label %.loopexit160, !inline_history !755

_ZNKSt8functionIFvPvEEclES0_.exit.i.i.i:          ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.an

bb.an:                                            ; preds = %_ZNKSt8functionIFvPvEEclES0_.exit.i.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  store ptr null, ptr %i.gi, align 8, !tbaa !181
  %i.go = getelementptr inbounds nuw i8, ptr %i.fz, i64 24
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !185 ; 2 uses
  %.not.i.i.i.i.i.i64 = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i.i.i.i64, label %_ZN7rocksdb10BufferInfoD2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.gq = invoke noundef zeroext i1 %i.gp(ptr noundef nonnull align 8 dereferenceable(40) %i.gh, ptr noundef nonnull align 8 dereferenceable(40) %i.gh, i32 noundef 3)
          to label %_ZN7rocksdb10BufferInfoD2Ev.exit unwind label %bb.ap ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #26
  unreachable

.loopexit160:                                     ; preds = %bb.am
end_hunk_4
begin_hunk_5_@_ZN7rocksdb9BlockIterINS_5SliceEE9UpdateKeyEv:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 183
  %i.i = load i8, ptr %i.h, align 1, !tbaa !789, !range !44, !noundef !45
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.l = load i64, ptr %i.k, align 8
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !tbaa !762 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %.sroa.0.0.i, ptr %i.m, align 8, !tbaa !48
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %i.l, ptr %.sroa.44.0..sroa_idx, align 8, !tbaa !167
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !763
  %.not.i = icmp ne ptr %.sroa.0.0.i, %i.n
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ne ptr %.sroa.0.0.i, %i.p
  %i.r = select i1 %.not.i, i1 %i.q, i1 false
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 617
  %i.t = zext i1 %i.r to i8
  store i8 %i.t, ptr %i.s, align 1, !tbaa !790
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.v = load i64, ptr %i.u, align 8, !tbaa !791  ; 2 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !762  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !764
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !48
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %i.aa, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !167
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !763
  %.not.i7 = icmp ne ptr %i.y, %i.ac
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = icmp ne ptr %i.y, %i.ae
  %i.ag = select i1 %.not.i7, i1 %i.af, i1 false
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 617
  %i.ai = zext i1 %i.ag to i8
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !790
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load i64, ptr %i.aj, align 8            ; 6 uses
  %i.al = add i64 %i.ak, -8                       ; 2 uses
  %.sroa.0.0.in.i9 = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0.0.i10 = load ptr, ptr %.sroa.0.0.in.i9, align 8, !tbaa !762 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10, i64 %i.ak
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8
  %.0.copyload.i.i.i = load i64, ptr %i.an, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !765
  %i.aq = icmp ugt i64 %i.ak, %i.ap
  br i1 %i.aq, label %bb.g, label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN7rocksdb7IterKey13EnlargeBufferEm(ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 noundef %i.ak)
  br label %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit

_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit: ; preds = %bb.f, %bb.g
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !763
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %.sroa.0.0.i10, i64 %i.al, i1 false)
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !763
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.al
  %i.au = shl i64 %i.v, 8
  %i.av = and i64 %.0.copyload.i.i.i, 255
  %i.aw = or disjoint i64 %i.av, %i.au
  store i64 %i.aw, ptr %i.at, align 1
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !763 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !762
  store i64 %i.ak, ptr %i.b, align 8, !tbaa !764
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 391
  store i8 0, ptr %i.az, align 1, !tbaa !789
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr %i.ax, ptr %i.ba, align 8, !tbaa !48
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %i.ak, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !167
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 617
  store i8 0, ptr %i.bb, align 1, !tbaa !790
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN7rocksdb7IterKey14SetInternalKeyERKNS_5SliceEmNS_9ValueTypeEPS2_.exit, %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !792
  %.not = icmp eq i8 %i.bd, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !762
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !764
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bj = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.bf, i64 noundef %i.bh, i64 noundef 0)
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14
  %i.bn = tail call noundef i64 @_ZN7rocksdb6Hash64EPKcmm(ptr noundef %i.bk, i64 noundef %i.bm, i64 noundef -3275615069716884213)
  %i.bo = xor i64 %i.bn, %i.bj                    ; 4 uses
  %i.bp = load i8, ptr %i.bc, align 8, !tbaa !792
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !793
  %i.bs = zext i8 %i.bp to i32                    ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !773
  %i.bv = mul nsw i32 %i.bu, %i.bs
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds i8, ptr %i.br, i64 %i.bw ; 4 uses
  %i.by = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.bs)
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %.split.i.i, label %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread

.split.i.i:                                       ; preds = %bb.i
  %i.ca = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bs, i1 true)
  switch i32 %i.ca, label %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread [
    i32 0, label %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit
    i32 1, label %.split31
    i32 2, label %.split30
    i32 3, label %.split
  ]

.split31:                                         ; preds = %.split.i.i
  %.0.copyload.i.i.i19 = load i16, ptr %i.bx, align 1
  %i.cb = trunc i64 %i.bo to i16
  %i.cc = icmp eq i16 %.0.copyload.i.i.i19, %i.cb
  br i1 %i.cc, label %bb.j, label %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread

.split30:                                         ; preds = %.split.i.i
  %.0.copyload.i6.i.i = load i32, ptr %i.bx, align 1
  %i.cd = trunc i64 %i.bo to i32
  %i.ce = icmp eq i32 %.0.copyload.i6.i.i, %i.cd
  br i1 %i.ce, label %bb.j, label %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread

.split:                                           ; preds = %.split.i.i
  %.0.copyload.i7.i.i = load i64, ptr %i.bx, align 1
  %i.cf = icmp eq i64 %.0.copyload.i7.i.i, %i.bo
  br i1 %i.cf, label %bb.j, label %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread

_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit: ; preds = %.split.i.i
  %i.cg = load i8, ptr %i.bx, align 1, !tbaa !42
  %i.ch = trunc i64 %i.bo to i8
  %i.ci = icmp eq i8 %i.cg, %i.ch
  br i1 %i.ci, label %bb.j, label %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread

_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread: ; preds = %.split.i.i, %bb.i, %.split31, %.split30, %.split, %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit
  tail call void @_ZN7rocksdb9BlockIterINS_5SliceEE28PerKVChecksumCorruptionErrorEv(ptr noundef nonnull align 8 dereferenceable(632) %0)
  br label %bb.j

bb.j:                                             ; preds = %.split31, %.split30, %.split, %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit, %_ZNK7rocksdb16ProtectionInfoKVImE6VerifyEhPKc.exit.thread, %bb.a, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb9BlockIterINS_5SliceEE28PerKVChecksumCorruptionErrorEv(ptr noundef nonnull align 8 dereferenceable(632) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 10 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !127
  %i.b = call noalias noundef nonnull dereferenceable(67) ptr @_Znwm(i64 noundef 67) #25 ; 3 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !129
  store i64 66, ptr %i.a, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(66) %i.b, ptr noundef nonnull align 1 dereferenceable(66) @.str.16, i64 66, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i64 66, ptr %i.c, align 8, !tbaa !128
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 66
  store i8 0, ptr %i.d, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !152  ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %i.g = icmp ult i32 %i.f, 10
  br i1 %i.g, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr %i.h, ptr %4, align 8, !tbaa !127, !alias.scope !794
  br label %bb.i

.lr.ph.i.i:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %bb.f
  %.030.i.i = phi i32 [ %i.o, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ] ; 5 uses
  %.02329.i.i = phi i32 [ %i.p, %bb.f ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ] ; 4 uses
  %i.i = icmp ult i32 %.030.i.i, 100
  br i1 %i.i, label %bb.a, label %bb.b

bb.a:                                             ; preds = %.lr.ph.i.i
  %i.j = add i32 %.02329.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = icmp ult i32 %.030.i.i, 1000
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.02329.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ult i32 %.030.i.i, 10000
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = add i32 %.02329.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i

bb.f:                                             ; preds = %bb.d
  %i.o = udiv i32 %.030.i.i, 10000
  %i.p = add i32 %.02329.i.i, 4                   ; 2 uses
  %i.q = icmp ult i32 %.030.i.i, 100000
  br i1 %i.q, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !797

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i:    ; preds = %bb.f, %bb.e, %bb.c, %bb.a
  %.022.i.i = phi i32 [ %i.n, %bb.e ], [ %i.j, %bb.a ], [ %i.l, %bb.c ], [ %i.p, %bb.f ] ; 3 uses
  %i.r = zext i32 %.022.i.i to i64                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.s, ptr %4, align 8, !tbaa !127, !alias.scope !794
  %i.t = icmp ugt i32 %.022.i.i, 15
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  %i.u = add nuw nsw i64 %i.r, 1
  %i.v = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #25
          to label %.noexc.i19 unwind label %bb.n ; 2 uses

.noexc.i19:                                       ; preds = %bb.g
  store ptr %i.v, ptr %4, align 8, !tbaa !129, !alias.scope !794
  store i64 %i.r, ptr %i.s, align 8, !tbaa !42, !alias.scope !794
  br label %bb.j

bb.h:                                             ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i
  switch i32 %.022.i.i, label %bb.j [
    i32 0, label %bb.k
    i32 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %.thread.i
  %i.w = phi ptr [ %i.h, %.thread.i ], [ %i.s, %bb.h ] ; 2 uses
  store i8 0, ptr %i.w, align 1, !tbaa !42, !alias.scope !794
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %.noexc.i19
  %i.x = phi ptr [ %i.v, %.noexc.i19 ], [ %i.s, %bb.h ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.x, i8 0, i64 %i.r, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.y = phi i64 [ 0, %bb.h ], [ %i.r, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %i.z = phi ptr [ %i.s, %bb.h ], [ %i.x, %bb.j ], [ %i.w, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.y, ptr %i.aa, align 8, !tbaa !128, !alias.scope !794
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.y
  store i8 0, ptr %i.ab, align 1, !tbaa !42
  %i.ac = load ptr, ptr %4, align 8, !tbaa !129, !alias.scope !794 ; 4 uses
  %i.ad = icmp ugt i32 %i.f, 99
  br i1 %i.ad, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i18

.lr.ph.preheader.i.i:                             ; preds = %bb.k
  %i.ae = load i64, ptr %i.aa, align 8, !tbaa !128, !alias.scope !794
  %i.af = trunc i64 %i.ae to i32
  %i.ag = add i32 %i.af, -1
  br label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.lr.ph.i2.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i32 [ %i.aj, %.lr.ph.i2.i ], [ %i.f, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.au, %.lr.ph.i2.i ], [ %i.ag, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.ah = urem i32 %.020.i.i, 100
  %i.ai = shl nuw nsw i32 %i.ah, 1
  %i.aj = udiv i32 %.020.i.i, 100                 ; 2 uses
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ak ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !42, !noalias !794
  %i.ao = zext i32 %.01819.i.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ao
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !42
  %i.aq = load i8, ptr %i.al, align 2, !tbaa !42, !noalias !794
  %i.ar = add i32 %.01819.i.i, -1
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.as
  store i8 %i.aq, ptr %i.at, align 1, !tbaa !42
  %i.au = add i32 %.01819.i.i, -2
  %i.av = icmp ugt i32 %.020.i.i, 9999
  br i1 %i.av, label %.lr.ph.i2.i, label %._crit_edge.i.i18, !llvm.loop !798

._crit_edge.i.i18:                                ; preds = %.lr.ph.i2.i, %bb.k
  %.0.lcssa.i.i = phi i32 [ %i.f, %bb.k ], [ %i.aj, %.lr.ph.i2.i ] ; 3 uses
  %i.aw = icmp samesign ugt i32 %.0.lcssa.i.i, 9
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i18
  %i.ax = shl nuw nsw i32 %.0.lcssa.i.i, 1
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !42, !noalias !794
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !42
  %i.bd = load i8, ptr %i.az, align 2, !tbaa !42, !noalias !794
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.m:                                             ; preds = %._crit_edge.i.i18
  %i.be = trunc nuw nsw i32 %.0.lcssa.i.i to i8
  %i.bf = or disjoint i8 %i.be, 48
  br label %_ZNSt7__cxx119to_stringEj.exit

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          catch ptr null
  %i.bh = extractvalue { ptr, i32 } %i.bg, 0
  call void @__clang_call_terminate(ptr %i.bh) #26
  unreachable

_ZNSt7__cxx119to_stringEj.exit:                   ; preds = %bb.l, %bb.m
  %storemerge.i.i = phi i8 [ %i.bf, %bb.m ], [ %i.bd, %bb.l ]
  store i8 %storemerge.i.i, ptr %i.ac, align 1, !tbaa !42
  %i.bi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.17, i64 noundef 9)
          to label %.noexc20 unwind label %bb.bf  ; 6 uses

.noexc20:                                         ; preds = %_ZNSt7__cxx119to_stringEj.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 14 uses
  store ptr %i.bj, ptr %3, align 8, !tbaa !127, !alias.scope !799
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !129 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16 ; 5 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.o:                                             ; preds = %.noexc20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !128 ; 3 uses
  %i.bp = icmp ult i64 %i.bo, 16
  call void @llvm.assume(i1 %i.bp)
  %i.bq = add nuw nsw i64 %i.bo, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.bl, i64 %i.bq, i1 false)
  br label %bb.p

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc20
  store ptr %i.bk, ptr %3, align 8, !tbaa !129, !alias.scope !799
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !42
  store i64 %i.br, ptr %i.bj, align 8, !tbaa !42, !alias.scope !799
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !128
  br label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.o
  %i.bs = phi i64 [ %i.bo, %bb.o ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store i64 %i.bs, ptr %i.bu, align 8, !tbaa !128, !alias.scope !799
  store ptr %i.bl, ptr %i.bi, align 8, !tbaa !129
  store i64 0, ptr %i.bt, align 8, !tbaa !128
  store i8 0, ptr %i.bl, align 8, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !128, !noalias !802 ; 5 uses
  %i.bw = icmp eq i64 %i.bv, 9223372036854775807
  br i1 %i.bw, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
          to label %.noexc23 unwind label %bb.bg

.noexc23:                                         ; preds = %bb.q
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.p
  %i.bx = add nsw i64 %i.bv, 1                    ; 3 uses
  %i.by = load ptr, ptr %3, align 8, !tbaa !129, !noalias !802 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bj
  br i1 %i.bz, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.ca = icmp ult i64 %i.bv, 16
  call void @llvm.assume(i1 %i.ca)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.cb = load i64, ptr %i.bj, align 8, !tbaa !42, !noalias !802
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.cc = phi i64 [ %i.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.bx, %i.cc
  br i1 %.not.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bv
  store i8 46, ptr %i.cd, align 1, !tbaa !42, !noalias !802
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.s:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bv, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i unwind label %bb.bg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.s, %bb.r
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !128, !noalias !802
  %i.ce = load ptr, ptr %3, align 8, !tbaa !129, !noalias !802
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bx
  store i8 0, ptr %i.cf, align 1, !tbaa !42, !noalias !802
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.cg, ptr %2, align 8, !tbaa !127, !alias.scope !802
  %i.ch = load ptr, ptr %3, align 8, !tbaa !129, !noalias !802 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, %i.bj
  br i1 %i.ci, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.cj = load i64, ptr %i.bu, align 8, !tbaa !128, !noalias !802 ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 16
  call void @llvm.assume(i1 %i.ck)
  %i.cl = add nuw nsw i64 %i.cj, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.cl, i1 false)
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  store ptr %i.ch, ptr %2, align 8, !tbaa !129, !alias.scope !802
  %i.cm = load i64, ptr %i.bj, align 8, !tbaa !42, !noalias !802
  store i64 %i.cm, ptr %i.cg, align 8, !tbaa !42, !alias.scope !802
  %.pre.i22 = load i64, ptr %i.bu, align 8, !tbaa !128, !noalias !802
  br label %bb.u

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21, %bb.t
  %i.cn = phi ptr [ %i.cg, %bb.t ], [ %i.ch, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 3 uses
  %i.co = phi i64 [ %i.cj, %bb.t ], [ %.pre.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21 ] ; 7 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !128, !alias.scope !802
  store ptr %i.bj, ptr %3, align 8, !tbaa !129, !noalias !802
  store i64 0, ptr %i.bu, align 8, !tbaa !128, !noalias !802
  store i8 0, ptr %i.bj, align 8, !tbaa !42, !noalias !802
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !128 ; 5 uses
  %i.cr = sub i64 9223372036854775807, %i.cq
  %i.cs = icmp ult i64 %i.cr, %i.co
  br i1 %i.cs, label %bb.v, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i25

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
          to label %.noexc32 unwind label %bb.bh

.noexc32:                                         ; preds = %bb.v
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i25: ; preds = %bb.u
  %i.ct = add i64 %i.cq, %i.co                    ; 3 uses
  %i.cu = load ptr, ptr %1, align 8, !tbaa !129   ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.a
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i25
  %i.cw = icmp ult i64 %i.cq, 16
  call void @llvm.assume(i1 %i.cw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i25
  %i.cx = load i64, ptr %i.a, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31
  %i.cy = phi i64 [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i26 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i31 ]
  %.not.i.i.i28 = icmp ugt i64 %i.ct, %i.cy
  br i1 %.not.i.i.i28, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27
  %.not8.i.i.i29 = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i.i29, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %cond.i.i.i30 = icmp eq i64 %i.co, 1
  br i1 %cond.i.i.i30, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.da = load i8, ptr %i.cn, align 1, !tbaa !42
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !42
  br label %bb.ab

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cz, ptr align 1 %i.cn, i64 %i.co, i1 false)
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cq, i64 noundef 0, ptr noundef %i.cn, i64 noundef %i.co)
          to label %bb.ab unwind label %bb.bh

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.w, %bb.aa
  store i64 %i.ct, ptr %i.c, align 8, !tbaa !128
  %i.db = load ptr, ptr %1, align 8, !tbaa !129
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ct
  store i8 0, ptr %i.dc, align 1, !tbaa !42
  %i.dd = load ptr, ptr %2, align 8, !tbaa !129   ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.cg
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %bb.ab
  %i.df = load i64, ptr %i.cg, align 8, !tbaa !42
  %i.dg = add i64 %i.df, 1
  call void @_ZdlPvm(ptr noundef %i.dd, i64 noundef %i.dg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34
  %i.dh = load ptr, ptr %3, align 8, !tbaa !129   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.bj
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dj = load i64, ptr %i.bj, align 8, !tbaa !42
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  %i.dl = load ptr, ptr %4, align 8, !tbaa !129   ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dn = icmp eq ptr %i.dl, %i.dm
  br i1 %i.dn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %i.do = load i64, ptr %i.dm, align 8, !tbaa !42
  %i.dp = add i64 %i.do, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !773 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.ds = call i32 @llvm.abs.i32(i32 %i.dr, i1 false) ; 5 uses
  %i.dt = icmp ult i32 %i.ds, 10
  br i1 %i.dt, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44, label %.lr.ph.i.i41

.lr.ph.i.i41:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40, %bb.ah
  %.030.i.i42 = phi i32 [ %i.ea, %bb.ah ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 5 uses
  %.02329.i.i43 = phi i32 [ %i.eb, %bb.ah ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ] ; 4 uses
  %i.du = icmp ult i32 %.030.i.i42, 100
  br i1 %i.du, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.i41
  %i.dv = add i32 %.02329.i.i43, 1
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44

bb.ad:                                            ; preds = %.lr.ph.i.i41
  %i.dw = icmp ult i32 %.030.i.i42, 1000
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dx = add i32 %.02329.i.i43, 2
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44

bb.af:                                            ; preds = %bb.ad
  %i.dy = icmp ult i32 %.030.i.i42, 10000
  br i1 %i.dy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dz = add i32 %.02329.i.i43, 3
  br label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44

bb.ah:                                            ; preds = %bb.af
  %i.ea = udiv i32 %.030.i.i42, 10000
  %i.eb = add i32 %.02329.i.i43, 4                ; 2 uses
  %i.ec = icmp ult i32 %.030.i.i42, 100000
  br i1 %i.ec, label %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44, label %.lr.ph.i.i41, !llvm.loop !797

_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44:  ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40
  %.022.i.i45 = phi i32 [ %i.dz, %bb.ag ], [ %i.dv, %bb.ac ], [ %i.dx, %bb.ae ], [ 1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit40 ], [ %i.eb, %bb.ah ] ; 2 uses
  %.lobit.i = lshr i32 %i.dr, 31                  ; 2 uses
  %i.ed = add i32 %.022.i.i45, %.lobit.i          ; 3 uses
  %i.ee = zext i32 %i.ed to i64                   ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 10 uses
  store ptr %i.ef, ptr %7, align 8, !tbaa !127, !alias.scope !805
  %i.eg = icmp ugt i32 %i.ed, 15
  br i1 %i.eg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44
  %i.eh = add nuw nsw i64 %i.ee, 1
  %i.ei = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eh) #25
          to label %.noexc.i52 unwind label %bb.ap ; 2 uses

.noexc.i52:                                       ; preds = %bb.ai
  store ptr %i.ei, ptr %7, align 8, !tbaa !129, !alias.scope !805
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !42, !alias.scope !805
  br label %bb.al

bb.aj:                                            ; preds = %_ZNSt8__detail14__to_chars_lenIjEEjT_i.exit.i44
  switch i32 %i.ed, label %bb.al [
    i32 0, label %bb.am
    i32 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  store i8 45, ptr %i.ef, align 8, !tbaa !42, !alias.scope !805
  br label %bb.am

bb.al:                                            ; preds = %bb.aj, %.noexc.i52
  %i.ej = phi ptr [ %i.ei, %.noexc.i52 ], [ %i.ef, %bb.aj ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ej, i8 45, i64 %i.ee, i1 false)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.ek = phi ptr [ %i.ef, %bb.aj ], [ %i.ej, %bb.al ], [ %i.ef, %bb.ak ]
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.ee, ptr %i.el, align 8, !tbaa !128, !alias.scope !805
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 %i.ee
  store i8 0, ptr %i.em, align 1, !tbaa !42
  %i.en = zext nneg i32 %.lobit.i to i64
  %i.eo = load ptr, ptr %7, align 8, !tbaa !129, !alias.scope !805
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en ; 4 uses
  %i.eq = icmp ugt i32 %i.ds, 99
  br i1 %i.eq, label %.lr.ph.preheader.i.i49, label %._crit_edge.i.i46

.lr.ph.preheader.i.i49:                           ; preds = %bb.am
  %i.er = add i32 %.022.i.i45, -1
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph.i11.i, %.lr.ph.preheader.i.i49
  %.020.i.i50 = phi i32 [ %i.eu, %.lr.ph.i11.i ], [ %i.ds, %.lr.ph.preheader.i.i49 ] ; 3 uses
  %.01819.i.i51 = phi i32 [ %i.ff, %.lr.ph.i11.i ], [ %i.er, %.lr.ph.preheader.i.i49 ] ; 3 uses
  %i.es = urem i32 %.020.i.i50, 100
  %i.et = shl nuw nsw i32 %i.es, 1
  %i.eu = udiv i32 %.020.i.i50, 100               ; 2 uses
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !42, !noalias !805
  %i.ez = zext i32 %.01819.i.i51 to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ez
  store i8 %i.ey, ptr %i.fa, align 1, !tbaa !42
  %i.fb = load i8, ptr %i.ew, align 2, !tbaa !42, !noalias !805
  %i.fc = add i32 %.01819.i.i51, -1
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.fd
  store i8 %i.fb, ptr %i.fe, align 1, !tbaa !42
  %i.ff = add i32 %.01819.i.i51, -2
  %i.fg = icmp ugt i32 %.020.i.i50, 9999
  br i1 %i.fg, label %.lr.ph.i11.i, label %._crit_edge.i.i46, !llvm.loop !798

._crit_edge.i.i46:                                ; preds = %.lr.ph.i11.i, %bb.am
  %.0.lcssa.i.i47 = phi i32 [ %i.ds, %bb.am ], [ %i.eu, %.lr.ph.i11.i ] ; 3 uses
  %i.fh = icmp samesign ugt i32 %.0.lcssa.i.i47, 9
  br i1 %i.fh, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge.i.i46
  %i.fi = shl nuw nsw i32 %.0.lcssa.i.i47, 1
  %i.fj = zext nneg i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.fj ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !42, !noalias !805
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store i8 %i.fm, ptr %i.fn, align 1, !tbaa !42
  %i.fo = load i8, ptr %i.fk, align 2, !tbaa !42, !noalias !805
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ao:                                            ; preds = %._crit_edge.i.i46
  %i.fp = trunc nuw nsw i32 %.0.lcssa.i.i47 to i8
  %i.fq = or disjoint i8 %i.fp, 48
  br label %_ZNSt7__cxx119to_stringEi.exit

bb.ap:                                            ; preds = %bb.ai
  %i.fr = landingpad { ptr, i32 }
          catch ptr null
  %i.fs = extractvalue { ptr, i32 } %i.fr, 0
  call void @__clang_call_terminate(ptr %i.fs) #26
  unreachable

_ZNSt7__cxx119to_stringEi.exit:                   ; preds = %bb.an, %bb.ao
  %storemerge.i.i48 = phi i8 [ %i.fq, %bb.ao ], [ %i.fo, %bb.an ]
  store i8 %storemerge.i.i48, ptr %i.ep, align 1, !tbaa !42
  %i.ft = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.19, i64 noundef 14)
          to label %.noexc56 unwind label %bb.bi  ; 6 uses

.noexc56:                                         ; preds = %_ZNSt7__cxx119to_stringEi.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 14 uses
  store ptr %i.fu, ptr %6, align 8, !tbaa !127, !alias.scope !808
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !129 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 16 ; 5 uses
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

bb.aq:                                            ; preds = %.noexc56
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !128 ; 3 uses
  %i.ga = icmp ult i64 %i.fz, 16
  call void @llvm.assume(i1 %i.ga)
  %i.gb = add nuw nsw i64 %i.fz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.fu, ptr noundef nonnull align 8 dereferenceable(1) %i.fw, i64 %i.gb, i1 false)
  br label %bb.ar

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %.noexc56
  store ptr %i.fv, ptr %6, align 8, !tbaa !129, !alias.scope !808
  %i.gc = load i64, ptr %i.fw, align 8, !tbaa !42
  store i64 %i.gc, ptr %i.fu, align 8, !tbaa !42, !alias.scope !808
  %.phi.trans.insert.i54 = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %.pre.i55 = load i64, ptr %.phi.trans.insert.i54, align 8, !tbaa !128
  br label %bb.ar

bb.ar:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53, %bb.aq
  %i.gd = phi i64 [ %i.fz, %bb.aq ], [ %.pre.i55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.gf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store i64 %i.gd, ptr %i.gf, align 8, !tbaa !128, !alias.scope !808
  store ptr %i.fw, ptr %i.ft, align 8, !tbaa !129
  store i64 0, ptr %i.ge, align 8, !tbaa !128
  store i8 0, ptr %i.fw, align 8, !tbaa !42
  call void @llvm.experimental.noalias.scope.decl(metadata !811)
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !128, !noalias !811 ; 5 uses
  %i.gh = icmp eq i64 %i.gg, 9223372036854775807
  br i1 %i.gh, label %bb.as, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i58

bb.as:                                            ; preds = %bb.ar
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #27
          to label %.noexc68 unwind label %bb.bj

.noexc68:                                         ; preds = %bb.as
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i58: ; preds = %bb.ar
  %i.gi = add nsw i64 %i.gg, 1                    ; 3 uses
  %i.gj = load ptr, ptr %6, align 8, !tbaa !129, !noalias !811 ; 2 uses
  %i.gk = icmp eq ptr %i.gj, %i.fu
  br i1 %i.gk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i67: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i58
  %i.gl = icmp ult i64 %i.gg, 16
  call void @llvm.assume(i1 %i.gl)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i58
  %i.gm = load i64, ptr %i.fu, align 8, !tbaa !42, !noalias !811
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i67
  %i.gn = phi i64 [ %i.gm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i59 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i67 ]
  %.not.i.i.i61 = icmp ugt i64 %i.gi, %i.gn
  br i1 %.not.i.i.i61, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60
  %i.go = getelementptr inbounds nuw i8, ptr %i.gj, i64 %i.gg
  store i8 46, ptr %i.go, align 1, !tbaa !42, !noalias !811
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i60
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.gg, i64 noundef 0, ptr noundef nonnull @.str.18, i64 noundef 1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64 unwind label %bb.bj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64: ; preds = %bb.au, %bb.at
  store i64 %i.gi, ptr %i.gf, align 8, !tbaa !128, !noalias !811
  %i.gp = load ptr, ptr %6, align 8, !tbaa !129, !noalias !811
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gi
  store i8 0, ptr %i.gq, align 1, !tbaa !42, !noalias !811
  %i.gr = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 8 uses
  store ptr %i.gr, ptr %5, align 8, !tbaa !127, !alias.scope !811
  %i.gs = load ptr, ptr %6, align 8, !tbaa !129, !noalias !811 ; 3 uses
  %i.gt = icmp eq ptr %i.gs, %i.fu
  br i1 %i.gt, label %bb.av, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i64
  %i.gu = load i64, ptr %i.gf, align 8, !tbaa !128, !noalias !811 ; 3 uses
  %i.gv = icmp ult i64 %i.gu, 16
  call void @llvm.assume(i1 %i.gv)
  %i.gw = add nuw nsw i64 %i.gu, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gr, ptr noundef nonnull align 8 dereferenceable(1) %i.fu, i64 %i.gw, i1 false)
end_hunk_5
