inline.NumInlined: 753
inline.NumDeleted: 356
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN2v88internal21PagedSpaceForNewSpaceC2EPNS0_4HeapEmmm:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  ret void
}

declare void @_ZN2v88internal8FreeList25CreateFreeListForNewSpaceEv(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8) local_unnamed_addr #2

declare void @_ZN2v88internal14PagedSpaceBaseC2EPNS0_4HeapENS0_15AllocationSpaceENS0_13ExecutabilityESt10unique_ptrINS0_8FreeListESt14default_deleteIS7_EENS0_19CompactionSpaceKindE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull ptr @_ZN2v88internal21PagedSpaceForNewSpace14InitializePageEPNS0_19MutablePageMetadataE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull returned initializes((24, 40), (312, 320), (336, 4432)) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = and i64 %i.b, -262144
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub i64 %i.f, %i.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = or i64 %i.l, 16                          ; 2 uses
  store i64 %i.m, ptr %i.k, align 8
  store i64 %i.m, ptr %i.d, align 262144
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4096) %i.n, i8 0, i64 4096, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 240
  store atomic i64 0, ptr %i.o monotonic, align 8
  tail call void @_ZN2v88internal12PageMetadata26AllocateFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448) %1) #20
  tail call void @_ZN2v88internal12PageMetadata28InitializeFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448) %1) #20
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  tail call void @_ZN2v88internal11MemoryChunk25InitializationMemoryFenceEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #20
  ret ptr %1
}

declare void @_ZN2v88internal12PageMetadata26AllocateFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448)) local_unnamed_addr #2

declare void @_ZN2v88internal12PageMetadata28InitializeFreeListCategoriesEv(ptr noundef nonnull align 8 dereferenceable(4448)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal21PagedSpaceForNewSpace4GrowEm(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((168, 176)) %0, i64 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal21PagedSpaceForNewSpace31GrowToMaximumCapacityForTestingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) initializes((168, 176)) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal21PagedSpaceForNewSpace14StartShrinkingEm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0, i64 noundef %1) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ule i64 %1, %i.b                    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %1, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal21PagedSpaceForNewSpace15FinishShrinkingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i64, ptr %i.f, align 8
  %i.h = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.b)
  store i64 %i.h, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZN2v88internal21PagedSpaceForNewSpace7AddPageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, 262144
  store i64 %i.c, ptr %i.a, align 8
  %i.d = tail call noundef i64 @_ZN2v88internal14PagedSpaceBase7AddPageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #20
  ret i64 %i.d
}

declare noundef i64 @_ZN2v88internal14PagedSpaceBase7AddPageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21PagedSpaceForNewSpace10RemovePageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -262144
  store i64 %i.c, ptr %i.a, align 8
  tail call void @_ZN2v88internal14PagedSpaceBase10RemovePageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #20
  ret void
}

declare void @_ZN2v88internal14PagedSpaceBase10RemovePageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21PagedSpaceForNewSpace19RemovePageFromSpaceEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = add i64 %i.b, -262144
  store i64 %i.c, ptr %i.a, align 8
  tail call void @_ZN2v88internal14PagedSpaceBase23RemovePageFromSpaceImplEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %1) #20
  ret void
}

declare void @_ZN2v88internal14PagedSpaceBase23RemovePageFromSpaceImplEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal21PagedSpaceForNewSpace22ShouldReleaseEmptyPageEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp ugt i64 %i.b, %i.d
  ret i1 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal21PagedSpaceForNewSpace34AllocatePageUpToCapacityForTestingEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.d = load i64, ptr %i.a, align 8
  %i.e = load i64, ptr %i.b, align 8
  %i.f = icmp ult i64 %i.d, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 536
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 @_ZN2v88internal14PagedSpaceBase9TryExpandEPNS0_9LocalHeapENS0_16AllocationOriginE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.i, i32 noundef 1) #20
  br i1 %i.j, label %bb.b, label %bb.d, !llvm.loop !30

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN2v88internal21PagedSpaceForNewSpace12AllocatePageEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 @_ZN2v88internal14PagedSpaceBase9TryExpandEPNS0_9LocalHeapENS0_16AllocationOriginE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef %i.d, i32 noundef 1) #20
  ret i1 %i.e
}

declare noundef zeroext i1 @_ZN2v88internal14PagedSpaceBase9TryExpandEPNS0_9LocalHeapENS0_16AllocationOriginE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZNK2v88internal21PagedSpaceForNewSpace20IsPromotionCandidateEPKNS0_19MutablePageMetadataE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 236), align 4
  %i.g = shl nsw i32 %i.f, 18
  %i.h = sdiv i32 %i.g, 100
  %i.i = sext i32 %i.h to i64
  %i.j = icmp ule i64 %i.e, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define hidden noundef i64 @_ZNK2v88internal21PagedSpaceForNewSpace20AllocatedSinceLastGCEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sub i64 %i.b, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal14PagedSpaceBase4SizeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i64 @_ZNK2v88internal21PagedSpaceForNewSpace9AvailableEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK2v88internal14PagedSpaceBase9AvailableEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  ret i64 %i.a
}

declare noundef i64 @_ZNK2v88internal14PagedSpaceBase9AvailableEv(ptr noundef nonnull align 8 dereferenceable(152)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13PagedNewSpaceC2EPNS0_4HeapEmmm(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  %6 = alloca %"class.std::unique_ptr", align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store ptr null, ptr %6, align 8
  call void @_ZN2v88internal19SpaceWithLinearAreaC2EPNS0_4HeapENS0_15AllocationSpaceESt10unique_ptrINS0_8FreeListESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull %6) #20
  %i.a = load ptr, ptr %6, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN2v88internal8NewSpaceC2EPNS0_4HeapE.exit, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.a) #20, !inline_history !15
  br label %_ZN2v88internal8NewSpaceC2EPNS0_4HeapE.exit

_ZN2v88internal8NewSpaceC2EPNS0_4HeapE.exit:      ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 304) (i8, ptr @_ZTVN2v88internal8NewSpaceE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr getelementptr inbounds nuw inrange(-16, 304) (i8, ptr @_ZTVN2v88internal13PagedNewSpaceE, i64 16), ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN2v88internal8FreeList25CreateFreeListForNewSpaceEv(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %5) #20
  call void @_ZN2v88internal14PagedSpaceBaseC2EPNS0_4HeapENS0_15AllocationSpaceENS0_13ExecutabilityESt10unique_ptrINS0_8FreeListESt14default_deleteIS7_EENS0_19CompactionSpaceKindE(ptr noundef nonnull align 8 dereferenceable(192) %i.f, ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 0) #20
  %i.g = load ptr, ptr %5, align 8                ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.g, null
  br i1 %.not.i.i5, label %_ZN2v88internal21PagedSpaceForNewSpaceC2EPNS0_4HeapEmmm.exit, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i6

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i6: ; preds = %_ZN2v88internal8NewSpaceC2EPNS0_4HeapE.exit
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.g) #20, !inline_history !31
  br label %_ZN2v88internal21PagedSpaceForNewSpaceC2EPNS0_4HeapEmmm.exit

_ZN2v88internal21PagedSpaceForNewSpaceC2EPNS0_4HeapEmmm.exit: ; preds = %_ZN2v88internal8NewSpaceC2EPNS0_4HeapE.exit, %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i6
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN2v88internal21PagedSpaceForNewSpaceE, i64 16), ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %3, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 %4, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13PagedNewSpaceD2Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  tail call void @_ZN2v88internal14PagedSpaceBase8TearDownEv(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN2v88internal14PagedSpaceBaseE, i64 16), ptr %i.a, align 8
  tail call void @_ZN2v88internal14PagedSpaceBase8TearDownEv(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2v88internal5SpaceE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN2v88internal14PagedSpaceBaseD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.d) #20, !inline_history !32
  br label %_ZN2v88internal14PagedSpaceBaseD2Ev.exit

_ZN2v88internal14PagedSpaceBaseD2Ev.exit:         ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 304) (i8, ptr @_ZTVN2v88internal8NewSpaceE, i64 16), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20, !inline_history !33
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2v88internal5SpaceE, i64 16), ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1, label %_ZN2v88internal8NewSpaceD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i2

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i2: ; preds = %_ZN2v88internal14PagedSpaceBaseD2Ev.exit
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #20, !inline_history !34
  br label %_ZN2v88internal8NewSpaceD2Ev.exit

_ZN2v88internal8NewSpaceD2Ev.exit:                ; preds = %_ZN2v88internal14PagedSpaceBaseD2Ev.exit, %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14PagedSpaceBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN2v88internal14PagedSpaceBaseE, i64 16), ptr %0, align 8
  tail call void @_ZN2v88internal14PagedSpaceBase8TearDownEv(ptr noundef nonnull align 8 dereferenceable(152) %0) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2v88internal5SpaceE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal5SpaceD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #20, !inline_history !8
  br label %_ZN2v88internal5SpaceD2Ev.exit

_ZN2v88internal5SpaceD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal13PagedNewSpaceD0Ev(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  tail call void @_ZN2v88internal14PagedSpaceBase8TearDownEv(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTVN2v88internal14PagedSpaceBaseE, i64 16), ptr %i.a, align 8
  tail call void @_ZN2v88internal14PagedSpaceBase8TearDownEv(ptr noundef nonnull align 8 dereferenceable(192) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #20
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2v88internal5SpaceE, i64 16), ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN2v88internal14PagedSpaceBaseD2Ev.exit.i, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i.i: ; preds = %bb.a
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.d) #20, !inline_history !35
  br label %_ZN2v88internal14PagedSpaceBaseD2Ev.exit.i

_ZN2v88internal14PagedSpaceBaseD2Ev.exit.i:       ; preds = %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i.i, %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 304) (i8, ptr @_ZTVN2v88internal8NewSpaceE, i64 16), ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.h) #20, !inline_history !33
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2v88internal5SpaceE, i64 16), ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i1.i, label %_ZN2v88internal13PagedNewSpaceD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i2.i

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i2.i: ; preds = %_ZN2v88internal14PagedSpaceBaseD2Ev.exit.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.j) #20, !inline_history !36
  br label %_ZN2v88internal13PagedNewSpaceD2Ev.exit

_ZN2v88internal13PagedNewSpaceD2Ev.exit:          ; preds = %_ZN2v88internal14PagedSpaceBaseD2Ev.exit.i, %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i.i2.i
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %0) #20
  ret void
end_hunk_0
begin_hunk_1_@_ZNK2v88internal13PagedNewSpace25ExternalBackingStoreBytesENS0_24ExternalBackingStoreTypeE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 @_ZN2v88internal4Heap21YoungArrayBufferBytesEv(ptr noundef nonnull align 8 dereferenceable(2992) %i.c) #20
  br label %_ZNK2v88internal21PagedSpaceForNewSpace25ExternalBackingStoreBytesENS0_24ExternalBackingStoreTypeE.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load atomic i64, ptr %i.g seq_cst, align 8
  br label %_ZNK2v88internal21PagedSpaceForNewSpace25ExternalBackingStoreBytesENS0_24ExternalBackingStoreTypeE.exit

_ZNK2v88internal21PagedSpaceForNewSpace25ExternalBackingStoreBytesENS0_24ExternalBackingStoreTypeE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.b ], [ %i.h, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal13PagedNewSpace10first_pageEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal13PagedNewSpace9last_pageEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal13PagedNewSpace10first_pageEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal13PagedNewSpace9last_pageEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZN2v88internal13PagedNewSpace17memory_chunk_listEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.3) #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal13PagedNewSpace12ContainsSlowEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = tail call noundef zeroext i1 @_ZNK2v88internal14PagedSpaceBase12ContainsSlowEm(ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 noundef %1) #20
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal13PagedNewSpace8CapacityEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal13PagedNewSpace13TotalCapacityEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal13PagedNewSpace15MinimumCapacityEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal13PagedNewSpace15MaximumCapacityEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal13PagedNewSpace20AllocatedSinceLastGCEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.d = load i64, ptr %i.c, align 8
  %i.e = sub i64 %i.b, %i.d
  ret i64 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13PagedNewSpace4GrowEm(ptr noundef nonnull align 8 dereferenceable(288) %0, i64 noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13PagedNewSpace12MakeIterableEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @_ZN2v88internal8FreeList11RepairListsEPNS0_4HeapE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %i.d) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal13PagedNewSpace5beginEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(152) %i.a) #20, !inline_history !39
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal13PagedNewSpace3endEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK2v88internal13PagedNewSpace5beginEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef ptr %i.d(ptr noundef nonnull align 8 dereferenceable(152) %i.a) #20, !inline_history !40
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNK2v88internal13PagedNewSpace3endEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK2v88internal13PagedNewSpace25first_allocatable_addressEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i64, ptr %i.c, align 8
  ret i64 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8NewSpace25GarbageCollectionPrologueEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13PagedNewSpace25GarbageCollectionEpilogueEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal13PagedNewSpace20IsPromotionCandidateEPKNS0_19MutablePageMetadataE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %1, %i.b
  br i1 %i.c, label %_ZNK2v88internal21PagedSpaceForNewSpace20IsPromotionCandidateEPKNS0_19MutablePageMetadataE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.e = load i64, ptr %i.d, align 8
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 236), align 4
  %i.g = shl nsw i32 %i.f, 18
  %i.h = sdiv i32 %i.g, 100
  %i.i = sext i32 %i.h to i64
  %i.j = icmp ule i64 %i.e, %i.i
  br label %_ZNK2v88internal21PagedSpaceForNewSpace20IsPromotionCandidateEPKNS0_19MutablePageMetadataE.exit

_ZNK2v88internal21PagedSpaceForNewSpace20IsPromotionCandidateEPKNS0_19MutablePageMetadataE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.j, %bb.b ], [ false, %bb.a ]
  ret i1 %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13PagedNewSpace31GrowToMaximumCapacityForTestingEv(ptr noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 %i.b, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal13PagedNewSpace10RemovePageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = add i64 %i.c, -262144
  store i64 %i.d, ptr %i.b, align 8
  tail call void @_ZN2v88internal14PagedSpaceBase10RemovePageEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(192) %i.a, ptr noundef %1) #20
  ret void
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8NewSpaceD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 304) (i8, ptr @_ZTVN2v88internal8NewSpaceE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #20
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN2v88internal5SpaceE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN2v88internal5SpaceD2Ev.exit, label %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i: ; preds = %bb.a
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %i.c) #20, !inline_history !8
  br label %_ZN2v88internal5SpaceD2Ev.exit

_ZN2v88internal5SpaceD2Ev.exit:                   ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal8FreeListEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal8NewSpaceD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal5Space10first_pageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal5Space9last_pageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal5Space10first_pageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK2v88internal5Space9last_pageEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal5SpaceD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #21
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal14ObjectIteratorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal23SemiSpaceObjectIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZN2v88internal8MalloceddlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN2v88internal23SemiSpaceObjectIterator4NextEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  %1 = alloca %"class.v8::internal::detail::TaggedOperatorArrowRef", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %.pre.pre = load i64, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %.preheader
  %i.d = phi i64 [ %.pre.pre, %.preheader ], [ %.be, %.backedge ] ; 3 uses
  %i.e = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i64, ptr %i.f, align 8
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = add nuw i64 %i.d, 1                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  store i64 %i.i, ptr %1, align 8
  %i.j = inttoptr i64 %i.d to ptr                 ; 2 uses
  %i.k = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.l = call i32 @_ZNK2v88internal10HeapObject15SafeSizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  %i.m = load i64, ptr %i.c, align 8
  %i.n = zext i32 %i.l to i64
  %i.o = add i64 %i.m, %i.n                       ; 2 uses
  store i64 %i.o, ptr %i.c, align 8
  %i.p = load atomic volatile i64, ptr %i.j monotonic, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = and i16 %i.s, -2
  %i.u = icmp eq i16 %i.t, 270
  br i1 %i.u, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.c, %bb.e
  %.be = phi i64 [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  br label %bb.b, !llvm.loop !41

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  store ptr %i.w, ptr %i.a, align 8
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  store i64 %i.z, ptr %i.c, align 8
  br label %.backedge

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.03.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.d ], [ %i.i, %bb.c ]
  ret i64 %.sroa.03.0
}

declare i32 @_ZNK2v88internal10HeapObject15SafeSizeFromMapENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #17

declare void @_ZN2v88internal15AllocatorPolicyC2EPNS0_13MainAllocatorE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #2

declare void @_ZN2v88internal14PagedSpaceBase8TearDownEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN2v84base5MutexD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

end_hunk_1
