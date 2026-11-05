Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/forward_iterator?download=true
inline.NumInlined: 1910
inline.NumDeleted: 970
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7rocksdb10JobContextD2Ev:bb.a
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ef) #26
  br label %_ZNSt6vectorIN7rocksdb10JobContext17CandidateFileInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN7rocksdb10JobContext17CandidateFileInfoESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN7rocksdb10JobContext17CandidateFileInfoES2_EvT_S4_RSaIT0_E.exit.i, %bb.p
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15ForwardIterator17DeferredSVCleanupEPv(ptr noundef %0) #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !490
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !491
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i8, ptr %i.d, align 8, !tbaa !492, !range !297, !noundef !298
  %i.f = trunc nuw i8 %i.e to i1
  tail call void @_ZN7rocksdb15ForwardIterator9SVCleanupEPNS_6DBImplEPNS_12SuperVersionEb(ptr noundef %i.a, ptr noundef %i.c, i1 noundef zeroext %i.f)
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 24) #26
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15ForwardIterator9SVCleanupEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(2960) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !116 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN7rocksdb22PinnedIteratorsManager6PinPtrEPvPFvS1_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 166
  %i.e = load i8, ptr %i.d, align 2, !tbaa !635, !range !297, !noundef !298
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !103
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1321
  %i.j = load i8, ptr %i.i, align 1, !tbaa !636, !range !297, !noundef !298
  %i.k = trunc nuw i8 %i.j to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i1 [ true, %bb.b ], [ %i.k, %bb.c ]  ; 2 uses
  %i.m = zext i1 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !132  ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load i8, ptr %i.p, align 8, !tbaa !403, !range !297, !noundef !298
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !103
  store ptr %i.u, ptr %i.s, align 16, !tbaa !490
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.a, align 16, !tbaa !116
  store ptr %i.w, ptr %i.v, align 8, !tbaa !491
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i8 %i.m, ptr %i.x, align 16, !tbaa !492
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !132  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !404 ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !405
  %.not.i.i = icmp eq ptr %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.s, ptr %i.ab, align 8, !tbaa !407
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_ZN7rocksdb15ForwardIterator17DeferredSVCleanupEPv, ptr %i.ae, align 8, !tbaa !408
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.af, ptr %i.aa, align 8, !tbaa !404
  br label %_ZN7rocksdb22PinnedIteratorsManager6PinPtrEPvPFvS1_E.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !409 ; 5 uses
  %i.ah = ptrtoint ptr %i.ab to i64
  %i.ai = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.aj = sub i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775792
  br i1 %i.ak, label %bb.i, label %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #30
  unreachable

_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.h
  %i.al = ashr exact i64 %i.aj, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 576460752303423487)
  %i.ap = select i1 %i.an, i64 576460752303423487, i64 %i.ao ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 4
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #29 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aj ; 2 uses
  store ptr %i.s, ptr %i.as, align 8, !tbaa !407
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @_ZN7rocksdb15ForwardIterator17DeferredSVCleanupEPv, ptr %i.at, align 8, !tbaa !408
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.ag, %i.ab
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %i.ar, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %i.ag, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !637
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.ab
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 16
  %.not.i24.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i24.i.i.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i
  %i.ax = load ptr, ptr %i.ac, align 8, !tbaa !405
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = sub i64 %i.ay, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.az) #26
  br label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i
  store ptr %i.ar, ptr %i.z, align 8, !tbaa !409
  store ptr %i.aw, ptr %i.aa, align 8, !tbaa !404
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.ba, ptr %i.ac, align 8, !tbaa !405
  br label %_ZN7rocksdb22PinnedIteratorsManager6PinPtrEPvPFvS1_E.exit

bb.k:                                             ; preds = %bb.e, %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !103
  tail call void @_ZN7rocksdb15ForwardIterator9SVCleanupEPNS_6DBImplEPNS_12SuperVersionEb(ptr noundef %i.bc, ptr noundef %i.b, i1 noundef zeroext %i.l)
  br label %_ZN7rocksdb22PinnedIteratorsManager6PinPtrEPvPFvS1_E.exit

_ZN7rocksdb22PinnedIteratorsManager6PinPtrEPvPFvS1_E.exit: ; preds = %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, %bb.g, %bb.k, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(2960) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load i8, ptr %i.d, align 8, !tbaa !403, !range !297, !noundef !298
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7rocksdb22PinnedIteratorsManager11PinIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull %1, i1 noundef zeroext %2)
  br label %bb.h

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  br i1 %2, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %1) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1) #28
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK7rocksdb15ForwardIterator5ValidEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(2960) %0) unnamed_addr #12 align 2 {
bb.a:
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 400
  %2 = load i8, ptr %1, align 16, !tbaa !395, !range !297, !noundef !298
  %3 = trunc nuw i8 %2 to i1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 441
  %i.b = load i8, ptr %i.a, align 1, !range !297
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  %4 = select i1 %3, i1 %i.d, i1 false
  ret i1 %4
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15ForwardIterator11SeekToFirstEv(ptr noundef nonnull align 16 dereferenceable(2960) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::Slice", align 8    ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !116 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7rocksdb15ForwardIterator16RebuildIteratorsEb(ptr noundef nonnull align 16 dereferenceable(2960) %0, i1 noundef zeroext true)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.e = load i64, ptr %i.d, align 8, !tbaa !493
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !105
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 2840
  %i.i = load atomic i64, ptr %i.h seq_cst, align 8
  %.not = icmp eq i64 %i.e, %i.i
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN7rocksdb15ForwardIterator14RenewIteratorsEv(ptr noundef nonnull align 16 dereferenceable(2960) %0)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.k = load i8, ptr %i.j, align 8, !tbaa !494
  %i.l = icmp eq i8 %i.k, 7
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN7rocksdb15ForwardIterator24ResetIncompleteIteratorsEv(ptr noundef nonnull align 16 dereferenceable(2960) %0)
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr @.str, ptr %1, align 8, !tbaa !128
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !129
  call void @_ZN7rocksdb15ForwardIterator12SeekInternalERKNS_5SliceEbb(ptr noundef nonnull align 16 dereferenceable(2960) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i1 noundef zeroext true, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb15ForwardIterator14RenewIteratorsEv(ptr noundef nonnull align 16 dereferenceable(2960) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.rocksdb::ReadRangeDelAggregator", align 8 ; 24 uses
  %2 = alloca %"class.std::unique_ptr.686", align 8 ; 4 uses
  %3 = alloca %"class.rocksdb::Status", align 8   ; 5 uses
  %4 = alloca %"class.std::vector", align 8       ; 19 uses
  %5 = alloca %"struct.rocksdb::TableCacheOpenOptions", align 1 ; 5 uses
  %6 = alloca %"class.rocksdb::Status", align 8   ; 9 uses
  %7 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %8 = alloca %"class.rocksdb::Slice", align 8    ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.e = tail call noundef ptr @_ZN7rocksdb16ColumnFamilyData25GetReferencedSuperVersionEPNS_6DBImplE(ptr noundef nonnull align 8 dereferenceable(3088) %i.b, ptr noundef %i.d) ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !294  ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !403, !range !297, !noundef !298
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !404  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !405
  %.not.i.i.i114 = icmp eq ptr %i.o, %i.q
  br i1 %.not.i.i.i114, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr %i.o, align 8, !tbaa !407
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_ZN7rocksdb22PinnedIteratorsManager28ReleaseArenaInternalIteratorEPv, ptr %i.r, align 8, !tbaa !408
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.s, ptr %i.n, align 8, !tbaa !404
  br label %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !409  ; 5 uses
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.w = sub i64 %i.u, %i.v                       ; 3 uses
  %i.x = icmp eq i64 %i.w, 9223372036854775792
  br i1 %i.x, label %bb.g, label %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.44) #30
  unreachable

_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.y = ashr exact i64 %i.w, 4                   ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.y, i64 1)
  %i.z = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.y ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.z, i64 576460752303423487)
  %i.ac = select i1 %i.aa, i64 576460752303423487, i64 %i.ab ; 3 uses
  %.not.i.i.i.i.i115 = icmp ne i64 %i.ac, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i115)
  %i.ad = shl nuw nsw i64 %i.ac, 4
  %i.ae = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ad) #29 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.w ; 2 uses
  store ptr %i.g, ptr %i.af, align 8, !tbaa !407
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store ptr @_ZN7rocksdb22PinnedIteratorsManager28ReleaseArenaInternalIteratorEPv, ptr %i.ag, align 8, !tbaa !408
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.t, %i.o
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ae, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i.i ], [ %i.t, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i, i64 16, i1 false), !alias.scope !652
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ah, %i.o
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ae, %_ZNKSt6vectorISt4pairIPvPFvS1_EESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ai, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 16
  %.not.i24.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i24.i.i.i.i, label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i.i
  %i.ak = load ptr, ptr %i.p, align 8, !tbaa !405
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.am) #26
  br label %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i

_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i: ; preds = %bb.h, %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit23.i.i.i.i
  store ptr %i.ae, ptr %i.m, align 8, !tbaa !409
  store ptr %i.aj, ptr %i.n, align 8, !tbaa !404
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ac
  store ptr %i.an, ptr %i.p, align 8, !tbaa !405
  br label %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

bb.i:                                             ; preds = %bb.c, %bb.b
  %i.ao = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %i.g) #28, !inline_history !411
  br label %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit

_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit: ; preds = %bb.i, %bb.e, %_ZNSt6vectorISt4pairIPvPFvS1_EESaIS4_EE17_M_realloc_insertIJRS1_RS3_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i, %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  %i.ar = load ptr, ptr %i.aq, align 16, !tbaa !387 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 4 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !387 ; 2 uses
  %i.au = icmp eq ptr %i.ar, %i.at
  br i1 %i.au, label %_ZNSt6vectorIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESaIS4_EE5clearEv.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 664
  br label %bb.m

._crit_edge:                                      ; preds = %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit62
  %.pre = load ptr, ptr %i.aq, align 16, !tbaa !187 ; 2 uses
  %.pre226 = load ptr, ptr %i.as, align 8, !tbaa !377
  %i.aw = icmp eq ptr %.pre226, %.pre
  br i1 %i.aw, label %_ZNSt6vectorIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESaIS4_EE5clearEv.exit, label %_ZSt8_DestroyIPPN7rocksdb20InternalIteratorBaseINS0_5SliceEEES4_EvT_S6_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPPN7rocksdb20InternalIteratorBaseINS0_5SliceEEES4_EvT_S6_RSaIT0_E.exit.i.i: ; preds = %._crit_edge
  store ptr %.pre, ptr %i.as, align 8, !tbaa !377
  br label %_ZNSt6vectorIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESaIS4_EE5clearEv.exit

_ZNSt6vectorIPN7rocksdb20InternalIteratorBaseINS0_5SliceEEESaIS4_EE5clearEv.exit: ; preds = %_ZN7rocksdb15ForwardIterator14DeleteIteratorEPNS_20InternalIteratorBaseINS_5SliceEEEb.exit, %._crit_edge, %_ZSt8_DestroyIPPN7rocksdb20InternalIteratorBaseINS0_5SliceEEES4_EvT_S6_RSaIT0_E.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 816
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !244 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !293 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !109
  %i.bg = load ptr, ptr %i.ba, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = tail call noundef ptr %i.bi(ptr noundef nonnull align 8 dereferenceable(7560) %i.ba, ptr noundef nonnull align 8 dereferenceable(192) %i.bb, ptr %i.ay, ptr noundef nonnull %i.bc, ptr noundef %i.bf, i1 noundef zeroext false)
end_hunk_0
