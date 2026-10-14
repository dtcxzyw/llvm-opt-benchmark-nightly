Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/embedded-data?download=true
inline.NumInlined: 415
inline.NumDeleted: 276
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal24OffHeapInstructionStream13TryLookupCodeEPNS0_7IsolateEm:bb.a
  %i.ac = load i8, ptr %i.ab, align 1, !range !9, !noundef !10
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %.thread, label %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit19

.thread:                                          ; preds = %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit, %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit.thread
  %i.ae = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobCodeEv() #12, !noalias !30
  %i.af = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobCodeSizeEv() #12, !noalias !30
  %i.ag = tail call noundef ptr @_ZN2v88internal7Isolate23CurrentEmbeddedBlobDataEv() #12, !noalias !30
  %i.ah = tail call noundef i32 @_ZN2v88internal7Isolate27CurrentEmbeddedBlobDataSizeEv() #12, !noalias !30 ; 0 uses
  %i.ai = ptrtoint ptr %i.ae to i64               ; 3 uses
  %.not.i.i8 = icmp uge i64 %1, %i.ai
  %i.aj = zext i32 %i.af to i64
  %i.ak = add i64 %i.aj, %i.ai
  %i.al = icmp ult i64 %1, %i.ak
  %i.am = and i1 %.not.i.i8, %i.al
  br i1 %i.am, label %bb.d, label %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit19

bb.d:                                             ; preds = %.thread
  %i.an = sub nuw i64 %1, %i.ai
  %i.ao = trunc i64 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 25716
  br label %_ZSt9__advanceIPKN2v88internal12EmbeddedData18BuiltinLookupEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i10

_ZSt9__advanceIPKN2v88internal12EmbeddedData18BuiltinLookupEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i10: ; preds = %_ZSt9__advanceIPKN2v88internal12EmbeddedData18BuiltinLookupEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i10, %bb.d
  %.05.i.i.i11 = phi i64 [ %.1.i.i.i17, %_ZSt9__advanceIPKN2v88internal12EmbeddedData18BuiltinLookupEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i10 ], [ 2141, %bb.d ] ; 2 uses
  %.0114.i.i.i12 = phi ptr [ %.112.i.i.i16, %_ZSt9__advanceIPKN2v88internal12EmbeddedData18BuiltinLookupEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i10 ], [ %i.ap, %bb.d ] ; 2 uses
  %i.aq = lshr i64 %.05.i.i.i11, 1                ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0114.i.i.i12, i64 %i.aq ; 2 uses
  %.val13.i.i.i15 = load i32, ptr %i.ar, align 4
  %i.as = icmp ugt i32 %.val13.i.i.i15, %i.ao     ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = xor i64 %i.aq, -1
  %i.av = add nsw i64 %.05.i.i.i11, %i.au
  %.112.i.i.i16 = select i1 %i.as, ptr %.0114.i.i.i12, ptr %i.at ; 2 uses
  %.1.i.i.i17 = select i1 %i.as, i64 %i.aq, i64 %i.av ; 2 uses
  %i.aw = icmp sgt i64 %.1.i.i.i17, 0
  br i1 %i.aw, label %_ZSt9__advanceIPKN2v88internal12EmbeddedData18BuiltinLookupEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i10, label %"_ZSt11upper_boundIPKN2v88internal12EmbeddedData18BuiltinLookupEntryEjZNKS2_13TryLookupCodeEmE3$_0ET_S7_S7_RKT0_T1_.exit.i18", !llvm.loop !0

"_ZSt11upper_boundIPKN2v88internal12EmbeddedData18BuiltinLookupEntryEjZNKS2_13TryLookupCodeEmE3$_0ET_S7_S7_RKT0_T1_.exit.i18": ; preds = %_ZSt9__advanceIPKN2v88internal12EmbeddedData18BuiltinLookupEntryElEvRT_T0_St26random_access_iterator_tag.exit.i.i.i10
  %i.ax = getelementptr inbounds nuw i8, ptr %.112.i.i.i16, i64 4
  %i.ay = load i32, ptr %i.ax, align 4
  br label %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit19

_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit19: ; preds = %"_ZSt11upper_boundIPKN2v88internal12EmbeddedData18BuiltinLookupEntryEjZNKS2_13TryLookupCodeEmE3$_0ET_S7_S7_RKT0_T1_.exit.i18", %.thread, %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit.thread, %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit, %bb.a
  %.07 = phi i32 [ -1, %bb.a ], [ -1, %.thread ], [ -1, %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit.thread ], [ %i.w, %_ZNK2v88internal12EmbeddedData13TryLookupCodeEm.exit ], [ %i.ay, %"_ZSt11upper_boundIPKN2v88internal12EmbeddedData18BuiltinLookupEntryEjZNKS2_13TryLookupCodeEmE3$_0ET_S7_S7_RKT0_T1_.exit.i18" ]
  ret i32 %.07
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal24OffHeapInstructionStream37CreateOffHeapOffHeapInstructionStreamEPNS0_7IsolateEPPhPjS5_S6_(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #2 align 2 {
bb.a:
  %5 = alloca %"class.v8::internal::EmbeddedData", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN2v88internal12EmbeddedData14NewFromIsolateEPNS0_7IsolateE(ptr dead_on_unwind nonnull writable sret(%"class.v8::internal::EmbeddedData") align 8 %5, ptr noundef %0)
  %i.a = call noundef ptr @_ZN2v88internal24GetPlatformPageAllocatorEv() #12 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i64 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #12 ; 2 uses
  %i.f = call noundef ptr @_ZN2v88internal17GetRandomMmapAddrEv() #12
  %i.g = and i64 %i.e, 4294967295                 ; 3 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub nsw i64 0, %i.g                      ; 2 uses
  %i.j = and i64 %i.h, %i.i
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = trunc i64 %i.e to i32                    ; 2 uses
  %i.o = add i32 %i.n, -1                         ; 2 uses
  %i.p = add i32 %i.o, %i.m
  %i.q = sub i32 0, %i.n                          ; 2 uses
  %i.r = and i32 %i.p, %i.q
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = call noundef ptr @_ZN2v88internal13AllocatePagesEPNS_13PageAllocatorEmmNS1_10PermissionENS1_14AllocationHintE(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef %i.g, i32 noundef 2, ptr %i.k, i8 0) #12 ; 5 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.u = call noundef ptr @_ZN2v88internal17GetRandomMmapAddrEv() #12
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, %i.i
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.o, %i.z
  %i.ab = and i32 %i.aa, %i.q
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = call noundef ptr @_ZN2v88internal13AllocatePagesEPNS_13PageAllocatorEmmNS1_10PermissionENS1_14AllocationHintE(ptr noundef nonnull %i.a, i64 noundef %i.ac, i64 noundef %i.g, i32 noundef 2, ptr %i.x, i8 0) #12 ; 4 uses
  %.not40 = icmp eq ptr %i.ad, null
  br i1 %.not40, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #13
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ae = load ptr, ptr %5, align 8
  %i.af = load i32, ptr %i.l, align 8
  %i.ag = zext i32 %i.af to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr align 1 %i.ae, i64 %i.ag, i1 false)
  %i.ah = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1580), align 4, !range !9, !noundef !10
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.l, align 8
  %i.ak = zext i32 %i.aj to i64
  call void @_ZN2v88internal21FlushInstructionCacheEPvm(ptr noundef nonnull %i.t, i64 noundef %i.ak) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.al = call noundef zeroext i1 @_ZN2v88internal14SetPermissionsEPNS_13PageAllocatorEPvmNS1_10PermissionE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.t, i64 noundef %i.s, i32 noundef 4) #12
  br i1 %i.al, label %bb.i, label %bb.h, !prof !12

bb.h:                                             ; preds = %bb.g
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #13
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = load i32, ptr %i.y, align 8
  %i.ap = zext i32 %i.ao to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr align 1 %i.an, i64 %i.ap, i1 false)
  %i.aq = call noundef zeroext i1 @_ZN2v88internal14SetPermissionsEPNS_13PageAllocatorEPvmNS1_10PermissionE(ptr noundef nonnull %i.a, ptr noundef nonnull %i.ad, i64 noundef %i.ac, i32 noundef 1) #12
  br i1 %i.aq, label %bb.k, label %bb.j, !prof !12

bb.j:                                             ; preds = %bb.i
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #13
  unreachable

bb.k:                                             ; preds = %bb.i
  store ptr %i.t, ptr %1, align 8
  %i.ar = load i32, ptr %i.l, align 8
  store i32 %i.ar, ptr %2, align 4
  store ptr %i.ad, ptr %3, align 8
  %i.as = load i32, ptr %i.y, align 8
  store i32 %i.as, ptr %4, align 4
  %i.at = load ptr, ptr %5, align 8               ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.at) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  store ptr null, ptr %5, align 8
  %i.av = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %_ZN2v88internal12EmbeddedData7DisposeEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.av) #14
  br label %_ZN2v88internal12EmbeddedData7DisposeEv.exit

_ZN2v88internal12EmbeddedData7DisposeEv.exit:     ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12EmbeddedData14NewFromIsolateEPNS0_7IsolateE(ptr dead_on_unwind noalias writable sret(%"class.v8::internal::EmbeddedData") align 8 %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::RelocIterator", align 8 ; 6 uses
  %3 = alloca %"class.v8::internal::RelocIterator", align 8 ; 6 uses
  %4 = alloca %"class.v8::internal::RelocIterator", align 8 ; 5 uses
  %5 = alloca %"class.v8::internal::BuiltinsSorter", align 8 ; 5 uses
  %6 = alloca %"class.std::vector.527", align 8   ; 9 uses
  %7 = alloca %"class.std::vector.464", align 8   ; 6 uses
  %8 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(25692) ptr @_Znwm(i64 noundef 25692) #15 ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.a
  %.06.i.i.i.i.i.i.i.i.i.idx = phi i64 [ 12, %bb.a ], [ %.06.i.i.i.i.i.i.i.i.i.add.4, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.06.i.i.i.i.i.i.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i.i.i.i.i.i.i.i.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i.ptr, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i.i.i.i.i.i.i.i.idx
  %.06.i.i.i.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i.ptr.1, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i.i.i.i.i.i.i.i.idx
  %.06.i.i.i.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i.ptr.2, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i.i.i.i.i.i.i.i.idx
  %.06.i.i.i.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i.ptr.3, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.06.i.i.i.i.i.i.i.i.i.idx
  %.06.i.i.i.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.06.i.i.i.i.i.i.i.i.i.ptr.4, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  %.06.i.i.i.i.i.i.i.i.i.add.4 = add nuw nsw i64 %.06.i.i.i.i.i.i.i.i.i.idx, 60 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.4 = icmp eq i64 %.06.i.i.i.i.i.i.i.i.i.add.4, 25692
  br i1 %.not.i.i.i.i.i.i.i.i.i.4, label %_ZNSt6vectorIN2v88internal12EmbeddedData17LayoutDescriptionESaIS3_EEC2EmRKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !31

_ZNSt6vectorIN2v88internal12EmbeddedData17LayoutDescriptionESaIS3_EEC2EmRKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.f = tail call noalias noundef nonnull dereferenceable(17128) ptr @_Znwm(i64 noundef 17128) #15 ; 10 uses
  store i64 0, ptr %i.f, align 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body.3, %_ZNSt6vectorIN2v88internal12EmbeddedData17LayoutDescriptionESaIS3_EEC2EmRKS4_.exit
  %index = phi i64 [ 0, %_ZNSt6vectorIN2v88internal12EmbeddedData17LayoutDescriptionESaIS3_EEC2EmRKS4_.exit ], [ %index.next.3, %vector.body.3 ] ; 6 uses
  %9 = shl nuw nsw i64 %index, 3
  %10 = getelementptr inbounds nuw i8, ptr %i.f, i64 %9 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %12 = load <2 x i64>, ptr %i.f, align 4
  %broadcast.splat = shufflevector <2 x i64> %12, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %13 = getelementptr inbounds nuw i8, ptr %10, i64 24
  store <2 x i64> %broadcast.splat, ptr %11, align 4
  store <2 x i64> %broadcast.splat, ptr %13, align 4
  %index.next.a = shl i64 %index, 3
  %14 = getelementptr inbounds nuw i8, ptr %i.f, i64 %index.next.a ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %14, i64 40
  %16 = load <2 x i64>, ptr %i.f, align 4         ; 3 uses
  %broadcast.splat.1 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %14, i64 56
  store <2 x i64> %broadcast.splat.1, ptr %15, align 4
  store <2 x i64> %broadcast.splat.1, ptr %i.g, align 4
  %index.next.1 = shl i64 %index, 3
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %index.next.1 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %broadcast.splat.2 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  store <2 x i64> %broadcast.splat.2, ptr %17, align 4
  store <2 x i64> %broadcast.splat.2, ptr %i.i, align 4
  %i.j = icmp eq i64 %index, 2128
  br i1 %i.j, label %_ZNSt6vectorIN2v88internal12EmbeddedData18BuiltinLookupEntryESaIS3_EEC2EmRKS4_.exit, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body
  %index.next.2 = shl i64 %index, 3
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %index.next.2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %broadcast.splat.3 = shufflevector <2 x i64> %16, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store <2 x i64> %broadcast.splat.3, ptr %i.l, align 4
  store <2 x i64> %broadcast.splat.3, ptr %i.m, align 4
  %index.next.3 = add nuw nsw i64 %index, 16
  br label %vector.body

_ZNSt6vectorIN2v88internal12EmbeddedData18BuiltinLookupEntryESaIS3_EEC2EmRKS4_.exit: ; preds = %vector.body
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 58992 ; 6 uses
  %i.o = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 640), align 128, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.b, label %bb.m

bb.b:                                             ; preds = %_ZNSt6vectorIN2v88internal12EmbeddedData18BuiltinLookupEntryESaIS3_EEC2EmRKS4_.exit
  %i.q = tail call noundef ptr @_ZN2v88internal17BuiltinsCallGraph3GetEv() #12
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  %i.s = load i8, ptr %i.r, align 8, !range !9, !noundef !10
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  call void @_ZN2v88internal14BuiltinsSorterC1Ev(ptr noundef nonnull align 8 dereferenceable(320) %5) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  br label %bb.d

_ZNSt6vectorIN2v88internal7BuiltinESaIS2_EEaSEOS4_.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1736), align 8
  call void @_ZN2v88internal14BuiltinsSorter12SortBuiltinsEPKcRKSt6vectorIjSaIjEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.464") align 8 %7, ptr noundef nonnull align 8 dereferenceable(320) %5, ptr noundef %i.w, ptr noundef nonnull align 8 dereferenceable(24) %6) #12
  %i.x = load ptr, ptr %7, align 8                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.x to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = icmp eq i64 %i.ae, 8564
  br i1 %i.af, label %bb.k, label %bb.j, !prof !12

bb.d:                                             ; preds = %bb.c, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %.0136139 = phi i32 [ 0, %bb.c ], [ %i.bj, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ] ; 2 uses
  %i.ag = call i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i32 noundef %.0136139) #12
  %i.ah = add i64 %i.ag, 55
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, -64
  %i.al = add i32 %i.ak, 64                       ; 2 uses
  %i.am = load ptr, ptr %i.u, align 8             ; 3 uses
  %i.an = load ptr, ptr %i.v, align 8
  %.not.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.al, ptr %i.am, align 4
  %i.ao = load ptr, ptr %i.u, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store ptr %i.ap, ptr %i.u, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.f:                                             ; preds = %bb.d
  %i.aq = load ptr, ptr %6, align 8               ; 4 uses
  %i.ar = ptrtoint ptr %i.am to i64
  %i.as = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 5 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775804
  br i1 %i.au, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #13
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.av = ashr exact i64 %i.at, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 2305843009213693951)
  %i.az = select i1 %i.ax, i64 2305843009213693951, i64 %i.ay ; 3 uses
  %.not.i.i.i64 = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i64)
  %i.ba = shl nuw nsw i64 %i.az, 2
  %i.bb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #15 ; 4 uses
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.at ; 2 uses
  store i32 %i.al, ptr %i.bc, align 4
  %i.bd = icmp sgt i64 %i.at, 0
  br i1 %i.bd, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bb, ptr align 4 %i.aq, i64 %i.at, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %.not.i17.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  %i.bf = load ptr, ptr %i.v, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.as
  call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.bh) #14
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.bb, ptr %6, align 8
  store ptr %i.be, ptr %i.u, align 8
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bi, ptr %i.v, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.bj = add nuw nsw i32 %.0136139, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bj, 2141
  br i1 %exitcond.not, label %_ZNSt6vectorIN2v88internal7BuiltinESaIS2_EEaSEOS4_.exit, label %bb.d, !llvm.loop !32

bb.j:                                             ; preds = %_ZNSt6vectorIN2v88internal7BuiltinESaIS2_EEaSEOS4_.exit
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5) #13
  unreachable

bb.k:                                             ; preds = %_ZNSt6vectorIN2v88internal7BuiltinESaIS2_EEaSEOS4_.exit
  %i.bk = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i65, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = load ptr, ptr %i.v, align 8
  %i.bm = ptrtoint ptr %i.bl to i64
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = sub i64 %i.bm, %i.bn
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bo) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @_ZN2v88internal14BuiltinsSorterD1Ev(ptr noundef nonnull align 8 dead_on_return(320) dereferenceable(320) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.bp = ptrtoint ptr %i.ab to i64
  br label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit, %bb.b, %_ZNSt6vectorIN2v88internal12EmbeddedData18BuiltinLookupEntryESaIS3_EEC2EmRKS4_.exit
  %.sroa.9.0 = phi i1 [ false, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ true, %bb.b ], [ true, %_ZNSt6vectorIN2v88internal12EmbeddedData18BuiltinLookupEntryESaIS3_EEC2EmRKS4_.exit ]
  %.sroa.12.0 = phi i64 [ %i.bp, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ 0, %bb.b ], [ 0, %_ZNSt6vectorIN2v88internal12EmbeddedData18BuiltinLookupEntryESaIS3_EEC2EmRKS4_.exit ]
  %.sroa.0100.0 = phi ptr [ %i.x, %_ZNSt6vectorIjSaIjEED2Ev.exit ], [ null, %bb.b ], [ null, %_ZNSt6vectorIN2v88internal12EmbeddedData18BuiltinLookupEntryESaIS3_EEC2EmRKS4_.exit ] ; 4 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.s
  br i1 %.1, label %bb.t, label %bb.u, !prof !11

bb.o:                                             ; preds = %bb.m, %bb.s
  %indvars.iv = phi i64 [ 0, %bb.m ], [ %indvars.iv.next, %bb.s ] ; 4 uses
  %.0143 = phi i1 [ false, %bb.m ], [ %.1, %bb.s ]
  %.057142 = phi i32 [ 0, %bb.m ], [ %i.ch, %bb.s ] ; 2 uses
  %.058141 = phi i32 [ 0, %bb.m ], [ %i.cn, %bb.s ] ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.sroa.9.0, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0100.0, i64 %indvars.iv
  %i.bs = load i32, ptr %i.br, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.060 = phi i32 [ %i.bs, %bb.p ], [ %i.bq, %bb.o ] ; 4 uses
  %i.bt = call i64 @_ZN2v88internal8Builtins4codeENS0_7BuiltinE(ptr noundef nonnull align 8 dereferenceable(20) %i.n, i32 noundef %.060) #12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store i64 %i.bt, ptr %8, align 8
  %i.bu = call noundef zeroext i1 @_ZN2v88internal4Code20IsIsolateIndependentEPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr @stderr, align 8
  %i.bw = call noundef ptr @_ZN2v88internal8Builtins4nameENS0_7BuiltinE(i32 noundef %.060) #12
  %i.bx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bv, ptr noundef nonnull @.str.6, ptr noundef %i.bw) #16 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.1 = phi i1 [ true, %bb.r ], [ %.0143, %bb.q ] ; 2 uses
  %i.by = add i64 %i.bt, 55
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = load i32, ptr %i.bz, align 4            ; 2 uses
  %i.cb = sext i32 %.060 to i64
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.a, i64 %i.cb ; 3 uses
  store i32 %.057142, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 %i.ca, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i32 %.058141, ptr %i.ce, align 4
  %i.cf = and i32 %i.ca, -64
  %i.cg = add i32 %.057142, 64
  %i.ch = add i32 %i.cg, %i.cf                    ; 5 uses
  %i.ci = add i64 %i.bt, 59
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load i32, ptr %i.cj, align 4
  %i.cl = add i32 %i.ck, 3
  %i.cm = and i32 %i.cl, -4
  %i.cn = add i32 %i.cm, %.058141                 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  store i32 %i.ch, ptr %i.co, align 4
end_hunk_0
