inline.NumInlined: 122
inline.NumDeleted: 81
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.v8::internal::VirtualMemory" = type { ptr, %"class.v8::base::AddressRegion" }
%"class.v8::base::AddressRegion" = type { i64, i64 }

@.str = private unnamed_addr constant [18 x i8] c"Check failed: %s.\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"evacuation_was_aborted()\00", align 1

@_ZN2v88internal12PageMetadataC1EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_13ExecutabilityEPNS_4base5FlagsINS0_11MemoryChunk4FlagEmmEE = hidden unnamed_addr alias void (ptr, ptr, ptr, i64, i64, i64, ptr, i32, ptr), ptr @_ZN2v88internal12PageMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_13ExecutabilityEPNS_4base5FlagsINS0_11MemoryChunk4FlagEmmEE

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_13ExecutabilityEPNS_4base5FlagsINS0_11MemoryChunk4FlagEmmEE(ptr noundef nonnull align 8 dereferenceable(4448) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull %6, i32 noundef %7, ptr noundef writeonly captures(none) initializes((0, 8)) %8) unnamed_addr #0 align 2 {
bb.a:
  %9 = alloca %"class.v8::internal::VirtualMemory", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.b = load ptr, ptr %6, align 8
  store ptr %i.b, ptr %9, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false)
  tail call void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24) %6) #10
  call void @_ZN2v88internal19MutablePageMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_8PageSizeENS0_13ExecutabilityE(ptr noundef nonnull align 8 dereferenceable(4448) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef nonnull %9, i32 noundef 0, i32 noundef %7) #10
  call void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #10
  %i.d = call i64 @_ZNK2v88internal19MutablePageMetadata19ComputeInitialFlagsENS0_13ExecutabilityE(ptr noundef nonnull align 8 dereferenceable(4448) %0, i32 noundef %7) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.d, ptr %i.e, align 8
  store i64 %i.d, ptr %8, align 8
  ret void
}

declare void @_ZN2v88internal19MutablePageMetadataC2EPNS0_4HeapEPNS0_9BaseSpaceEmmmNS0_13VirtualMemoryENS0_8PageSizeENS0_13ExecutabilityE(ptr noundef nonnull align 8 dereferenceable(4448), ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v88internal13VirtualMemoryD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24)) unnamed_addr #2

declare i64 @_ZNK2v88internal19MutablePageMetadata19ComputeInitialFlagsENS0_13ExecutabilityE(ptr noundef nonnull align 8 dereferenceable(4448), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata26AllocateFreeListCategoriesEv(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp slt i32 %i.f, 0
  %i.i = shl nsw i64 %i.g, 3
  %i.j = select i1 %i.h, i64 -1, i64 %i.i         ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #11 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8
  %i.m = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %.not3 = icmp slt i32 %i.q, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.r = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #11 ; 3 uses
  store i32 -1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  %i.t = load ptr, ptr %i.l, align 8
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.r, ptr %i.u, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.v = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = sext i32 %i.z to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.aa
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !5
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata28InitializeFreeListCategoriesEv(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %.not4 = icmp slt i32 %i.f, 0
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.k, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.n = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sext i32 %i.r to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.s
  br i1 %.not.not, label %bb.b, label %._crit_edge, !llvm.loop !7
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata25ReleaseFreeListCategoriesEv(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.d = load atomic ptr, ptr %i.c seq_cst, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4
  %.not79 = icmp slt i32 %i.h, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %.preheader ] ; 4 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.m, null
  br i1 %.not8, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 32) #12
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr null, ptr %i.o, align 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.p = load atomic ptr, ptr %i.c seq_cst, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64
  %.not7.not = icmp slt i64 %indvars.iv, %i.u
  br i1 %.not7.not, label %.lr.ph, label %._crit_edge, !llvm.loop !8

bb.d:                                             ; preds = %._crit_edge
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  store ptr null, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal12PageMetadata15ConvertNewToOldEPS1_NS0_8FreeModeE(ptr noundef nonnull initializes((320, 328)) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  store atomic ptr %i.e, ptr %i.f seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, -262144
  %i.k = inttoptr i64 %i.j to ptr
  store i64 0, ptr %i.k, align 262144
  %i.l = load ptr, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1920
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i32, ptr %i.o, align 8
  tail call void @_ZN2v88internal19MutablePageMetadata25SetOldGenerationPageFlagsENS0_11MarkingModeE(ptr noundef nonnull align 8 dereferenceable(4448) %0, i32 noundef %i.p) #10
  %i.q = load ptr, ptr %i.e, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef nonnull %0) #10 ; 2 uses
  tail call void @_ZN2v88internal8OldSpace15AddPromotedPageEPNS0_12PageMetadataENS0_8FreeModeE(ptr noundef nonnull align 8 dereferenceable(152) %i.e, ptr noundef %i.t, i32 noundef %1) #10
  ret ptr %i.t
}

declare void @_ZN2v88internal19MutablePageMetadata25SetOldGenerationPageFlagsENS0_11MarkingModeE(ptr noundef nonnull align 8 dereferenceable(4448), i32 noundef) local_unnamed_addr #1

declare void @_ZN2v88internal8OldSpace15AddPromotedPageEPNS0_12PageMetadataENS0_8FreeModeE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse nounwind uwtable
define hidden noundef i64 @_ZN2v88internal12PageMetadata19AvailableInFreeListEv(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %"_ZN2v88internal12PageMetadata24ForAllFreeListCategoriesIZNS1_19AvailableInFreeListEvE3$_0EEvT_.exit"

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %.0 = phi i64 [ 0, %.lr.ph.i ], [ %i.n, %bb.b ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val3.i = load i32, ptr %i.l, align 4
  %i.m = zext i32 %.val3.i to i64
  %i.n = add i64 %.0, %i.m                        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.o = load atomic ptr, ptr %i.a seq_cst, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %bb.b, label %"_ZN2v88internal12PageMetadata24ForAllFreeListCategoriesIZNS1_19AvailableInFreeListEvE3$_0EEvT_.exit", !llvm.loop !9

"_ZN2v88internal12PageMetadata24ForAllFreeListCategoriesIZNS1_19AvailableInFreeListEvE3$_0EEvT_.exit": ; preds = %bb.b, %bb.a
  %.1 = phi i64 [ 0, %bb.a ], [ %i.n, %bb.b ]
  ret i64 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata27MarkNeverAllocateForTestingEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 1536
  store i32 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN2v88internal8FreeList18EvictFreeListItemsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull %0) #10
  ret void
}

declare void @_ZN2v88internal8FreeList18EvictFreeListItemsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata15CreateBlackAreaEmm(ptr noundef nonnull align 8 dereferenceable(4448) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 12 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = and i32 %i.c, 32767                      ; 2 uses
  %i.e = and i64 %2, 262143
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit

_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit: ; preds = %bb.a
  %i.g = trunc i64 %2 to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 32767                      ; 2 uses
  %.not.i = icmp samesign ult i32 %i.d, %i.i
  br i1 %.not.i, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread, label %_ZN2v88internal13MarkingBitmap8SetRangeILNS0_10AccessModeE0EEEvjj.exit

_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread: ; preds = %bb.a, %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit
  %.0.i8 = phi i32 [ %i.i, %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit ], [ 32768, %bb.a ]
  %i.j = add nsw i32 %.0.i8, -1                   ; 2 uses
  %i.k = lshr i32 %i.d, 6                         ; 4 uses
  %i.l = and i32 %i.c, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = lshr i32 %i.j, 6                         ; 5 uses
  %i.p = and i32 %i.j, 63
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %.not23.i = icmp eq i32 %i.k, %i.o
  br i1 %.not23.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread
  %i.r = sub i64 0, %i.n                          ; 2 uses
  %i.s = zext nneg i32 %i.k to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = load atomic volatile i64, ptr %i.t monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.013.i.i.i = phi i64 [ %i.u, %bb.b ], [ %i.x, %bb.d ] ; 3 uses
  %.not16.not.not.i.not.i.not.i = icmp ult i64 %.013.i.i.i, %i.r
  br i1 %.not16.not.not.i.not.i.not.i, label %bb.d, label %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.v = or i64 %.013.i.i.i, %i.r
  %i.w = cmpxchg volatile ptr %i.t, i64 %.013.i.i.i, i64 %i.v monotonic monotonic, align 8 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 0
  %.not.i.i.i = extractvalue { i64, i1 } %i.w, 1
  br i1 %.not.i.i.i, label %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i, label %bb.c, !llvm.loop !10

_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i: ; preds = %bb.d, %bb.c
  %i.y = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, %i.o
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %_ZN2v88internal13MarkingBitmap19SetCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ab = lshr i32 %i.b, 9
  %i.ac = and i32 %i.ab, 511
  %i.ad = xor i32 %i.ac, -1
  %i.ae = add nsw i32 %i.o, %i.ad                 ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  %xtraiter = and i32 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store atomic volatile i64 -1, ptr %i.ag monotonic, align 8
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !11

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.aa, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i32 %i.af, 7
  br i1 %i.ah, label %_ZN2v88internal13MarkingBitmap19SetCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store atomic volatile i64 -1, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store atomic volatile i64 -1, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store atomic volatile i64 -1, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store atomic volatile i64 -1, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic volatile i64 -1, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store atomic volatile i64 -1, ptr %i.as monotonic, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store atomic volatile i64 -1, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store atomic volatile i64 -1, ptr %i.aw monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %lftr.wideiv.i.i.7 = trunc i64 %indvars.iv.next.i.i.7 to i32
  %exitcond.not.i.i.7 = icmp eq i32 %i.o, %lftr.wideiv.i.i.7
  br i1 %exitcond.not.i.i.7, label %_ZN2v88internal13MarkingBitmap19SetCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i, label %.lr.ph.i.i, !llvm.loop !13

_ZN2v88internal13MarkingBitmap19SetCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i
  %i.ax = xor i64 %i.q, 63
  %i.ay = lshr i64 -1, %i.ax                      ; 3 uses
  %i.az = zext nneg i32 %i.o to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN2v88internal13MarkingBitmap19SetCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i
  %.013.i.i24.i = phi i64 [ %i.bb, %_ZN2v88internal13MarkingBitmap19SetCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i ], [ %i.bf, %bb.f ] ; 3 uses
  %i.bc = and i64 %.013.i.i24.i, %i.ay
  %.not16.not.not.i.not.i25.i = icmp eq i64 %i.bc, %i.ay
  br i1 %.not16.not.not.i.not.i25.i, label %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = or i64 %.013.i.i24.i, %i.ay
  %i.be = cmpxchg volatile ptr %i.ba, i64 %.013.i.i24.i, i64 %i.bd monotonic monotonic, align 8 ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 0
  %.not.i.i26.i = extractvalue { i64, i1 } %i.be, 1
  br i1 %.not.i.i26.i, label %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.e, !llvm.loop !10

bb.g:                                             ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread
  %i.bg = shl nuw i64 1, %i.q                     ; 2 uses
  %i.bh = sub i64 %i.bg, %i.n
  %i.bi = or i64 %i.bh, %i.bg                     ; 3 uses
  %i.bj = zext nneg i32 %i.k to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bj ; 2 uses
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.013.i.i28.i = phi i64 [ %i.bl, %bb.g ], [ %i.bp, %bb.i ] ; 3 uses
  %i.bm = and i64 %.013.i.i28.i, %i.bi
  %.not16.not.not.i.not.i29.i = icmp eq i64 %i.bm, %i.bi
  br i1 %.not16.not.not.i.not.i29.i, label %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bn = or i64 %.013.i.i28.i, %i.bi
  %i.bo = cmpxchg volatile ptr %i.bk, i64 %.013.i.i28.i, i64 %i.bn monotonic monotonic, align 8 ; 2 uses
  %i.bp = extractvalue { i64, i1 } %i.bo, 0
  %.not.i.i30.i = extractvalue { i64, i1 } %i.bo, 1
  br i1 %.not.i.i30.i, label %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.h, !llvm.loop !10

_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i: ; preds = %bb.f, %bb.e, %bb.i, %bb.h
  fence seq_cst
  br label %_ZN2v88internal13MarkingBitmap8SetRangeILNS0_10AccessModeE0EEEvjj.exit

_ZN2v88internal13MarkingBitmap8SetRangeILNS0_10AccessModeE0EEEvjj.exit: ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit, %_ZN2v88internal13MarkingBitmap13SetBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i
  %i.bq = sub i64 %2, %1                          ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bs = atomicrmw add ptr %i.br, i64 %i.bq monotonic, align 8 ; 0 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load atomic ptr, ptr %i.bt seq_cst, align 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 128
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(88) %i.bu, i64 noundef %i.bq) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata16DestroyBlackAreaEmm(ptr noundef nonnull align 8 dereferenceable(4448) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 12 uses
  %i.b = trunc i64 %1 to i32                      ; 2 uses
  %i.c = lshr i32 %i.b, 3                         ; 2 uses
  %i.d = and i32 %i.c, 32767                      ; 2 uses
  %i.e = and i64 %2, 262143
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit

_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit: ; preds = %bb.a
  %i.g = trunc i64 %2 to i32
  %i.h = lshr i32 %i.g, 3
  %i.i = and i32 %i.h, 32767                      ; 2 uses
  %.not.i = icmp samesign ult i32 %i.d, %i.i
  br i1 %.not.i, label %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread, label %_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE0EEEvjj.exit

_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread: ; preds = %bb.a, %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit
  %.0.i8 = phi i32 [ %i.i, %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit ], [ 32768, %bb.a ]
  %i.j = add nsw i32 %.0.i8, -1                   ; 2 uses
  %i.k = lshr i32 %i.d, 6                         ; 4 uses
  %i.l = and i32 %i.c, 63
  %i.m = zext nneg i32 %i.l to i64                ; 2 uses
  %i.n = shl nuw i64 1, %i.m                      ; 2 uses
  %i.o = lshr i32 %i.j, 6                         ; 5 uses
  %i.p = and i32 %i.j, 63
  %i.q = zext nneg i32 %i.p to i64                ; 2 uses
  %.not23.i = icmp eq i32 %i.k, %i.o
  br i1 %.not23.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread
  %i.r = zext nneg i32 %i.k to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.u = add i64 %i.n, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.013.i.i.i = phi i64 [ %i.t, %bb.b ], [ %i.x, %bb.d ] ; 3 uses
  %.013.i.i.highbits.i = lshr i64 %.013.i.i.i, %i.m
  %.not16.not.not.i.not.i.not.not.i = icmp eq i64 %.013.i.i.highbits.i, 0
  br i1 %.not16.not.not.i.not.i.not.not.i, label %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = and i64 %.013.i.i.i, %i.u
  %i.w = cmpxchg volatile ptr %i.s, i64 %.013.i.i.i, i64 %i.v monotonic monotonic, align 8 ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 0
  %.not.i.i.i = extractvalue { i64, i1 } %i.w, 1
  br i1 %.not.i.i.i, label %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i, label %bb.c, !llvm.loop !10

_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i: ; preds = %bb.d, %bb.c
  %i.y = add nuw nsw i32 %i.k, 1                  ; 2 uses
  %i.z = icmp samesign ult i32 %i.y, %i.o
  br i1 %i.z, label %.lr.ph.preheader.i.i, label %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i
  %i.aa = zext nneg i32 %i.y to i64               ; 2 uses
  %i.ab = lshr i32 %i.b, 9
  %i.ac = and i32 %i.ab, 511
  %i.ad = xor i32 %i.ac, -1
  %i.ae = add nsw i32 %i.o, %i.ad                 ; 2 uses
  %i.af = add nsw i32 %i.ae, -1
  %xtraiter = and i32 %i.ae, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.preheader.i.i, %.lr.ph.i.i.prol
  %indvars.iv.i.i.prol = phi i64 [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ], [ %i.aa, %.lr.ph.preheader.i.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.preheader.i.i ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i.prol
  store atomic volatile i64 0, ptr %i.ag monotonic, align 8
  %indvars.iv.next.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !14

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.unr = phi i64 [ %i.aa, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ah = icmp ult i32 %i.af, 7
  br i1 %i.ah, label %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.7, %.lr.ph.i.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  store atomic volatile i64 0, ptr %i.ai monotonic, align 8
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store atomic volatile i64 0, ptr %i.ak monotonic, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store atomic volatile i64 0, ptr %i.am monotonic, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store atomic volatile i64 0, ptr %i.ao monotonic, align 8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store atomic volatile i64 0, ptr %i.aq monotonic, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store atomic volatile i64 0, ptr %i.as monotonic, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store atomic volatile i64 0, ptr %i.au monotonic, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  store atomic volatile i64 0, ptr %i.aw monotonic, align 8
  %indvars.iv.next.i.i.7 = add nuw nsw i64 %indvars.iv.i.i, 8 ; 2 uses
  %lftr.wideiv.i.i.7 = trunc i64 %indvars.iv.next.i.i.7 to i32
  %exitcond.not.i.i.7 = icmp eq i32 %i.o, %lftr.wideiv.i.i.7
  br i1 %exitcond.not.i.i.7, label %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i, label %.lr.ph.i.i, !llvm.loop !15

_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit.i
  %i.ax = xor i64 %i.q, 63
  %i.ay = lshr i64 -1, %i.ax                      ; 2 uses
  %i.az = zext nneg i32 %i.o to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.az ; 2 uses
  %i.bb = load atomic volatile i64, ptr %i.ba monotonic, align 8
  %i.bc = xor i64 %i.ay, -1
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i
  %.013.i.i24.i = phi i64 [ %i.bb, %_ZN2v88internal13MarkingBitmap21ClearCellRangeRelaxedILNS0_10AccessModeE0EEEvjj.exit.i ], [ %i.bg, %bb.f ] ; 3 uses
  %i.bd = and i64 %.013.i.i24.i, %i.ay
  %.not16.not.not.i.not.i25.i = icmp eq i64 %i.bd, 0
  br i1 %.not16.not.not.i.not.i25.i, label %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = and i64 %.013.i.i24.i, %i.bc
  %i.bf = cmpxchg volatile ptr %i.ba, i64 %.013.i.i24.i, i64 %i.be monotonic monotonic, align 8 ; 2 uses
  %i.bg = extractvalue { i64, i1 } %i.bf, 0
  %.not.i.i26.i = extractvalue { i64, i1 } %i.bf, 1
  br i1 %.not.i.i26.i, label %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.e, !llvm.loop !10

bb.g:                                             ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit.thread
  %i.bh = shl nuw i64 1, %i.q                     ; 2 uses
  %i.bi = sub i64 %i.bh, %i.n
  %i.bj = or i64 %i.bi, %i.bh                     ; 2 uses
  %i.bk = zext nneg i32 %i.k to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bk ; 2 uses
  %i.bm = load atomic volatile i64, ptr %i.bl monotonic, align 8
  %i.bn = xor i64 %i.bj, -1
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.013.i.i28.i = phi i64 [ %i.bm, %bb.g ], [ %i.br, %bb.i ] ; 3 uses
  %i.bo = and i64 %.013.i.i28.i, %i.bj
  %.not16.not.not.i.not.i29.i = icmp eq i64 %i.bo, 0
  br i1 %.not16.not.not.i.not.i29.i, label %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bp = and i64 %.013.i.i28.i, %i.bn
  %i.bq = cmpxchg volatile ptr %i.bl, i64 %.013.i.i28.i, i64 %i.bp monotonic monotonic, align 8 ; 2 uses
  %i.br = extractvalue { i64, i1 } %i.bq, 0
  %.not.i.i30.i = extractvalue { i64, i1 } %i.bq, 1
  br i1 %.not.i.i30.i, label %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i, label %bb.h, !llvm.loop !10

_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i: ; preds = %bb.f, %bb.e, %bb.i, %bb.h
  fence seq_cst
  br label %_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE0EEEvjj.exit

_ZN2v88internal13MarkingBitmap10ClearRangeILNS0_10AccessModeE0EEEvjj.exit: ; preds = %_ZN2v88internal13MarkingBitmap19LimitAddressToIndexEm.exit, %_ZN2v88internal13MarkingBitmap15ClearBitsInCellILNS0_10AccessModeE0EEEvjm.exit27.i
  %i.bs = sub i64 %2, %1                          ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bu = atomicrmw sub ptr %i.bt, i64 %i.bs monotonic, align 8 ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bw = load atomic ptr, ptr %i.bv seq_cst, align 8 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 136
  %i.bz = load ptr, ptr %i.by, align 8
  tail call void %i.bz(ptr noundef nonnull align 8 dereferenceable(88) %i.bw, i64 noundef %i.bs) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata23MarkEvacuationCandidateEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 128
  store i32 %i.c, ptr %i.a, align 8
  tail call void @_ZN2v88internal19MutablePageMetadata22SetFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr noundef nonnull align 8 dereferenceable(4448) %0, i64 noundef 512) #10
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load atomic ptr, ptr %i.d seq_cst, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN2v88internal8FreeList18EvictFreeListItemsEPNS0_12PageMetadataE(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull %0) #10
  ret void
}

declare void @_ZN2v88internal19MutablePageMetadata22SetFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr noundef nonnull align 8 dereferenceable(4448), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal12PageMetadata24ClearEvacuationCandidateEv(ptr noundef nonnull align 8 dereferenceable(4448) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = and i32 %i.b, 256
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #13
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, -385
  store i32 %i.d, ptr %i.a, align 8
  tail call void @_ZN2v88internal19MutablePageMetadata24ClearFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr noundef nonnull align 8 dereferenceable(4448) %0, i64 noundef 512) #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load atomic ptr, ptr %i.e seq_cst, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %.not4.i = icmp slt i32 %i.j, 0
  br i1 %.not4.i, label %_ZN2v88internal12PageMetadata28InitializeFreeListCategoriesEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %i.o = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.o, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 0, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.r = load atomic ptr, ptr %i.e seq_cst, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.w
  br i1 %.not.not.i, label %bb.d, label %_ZN2v88internal12PageMetadata28InitializeFreeListCategoriesEv.exit, !llvm.loop !7

_ZN2v88internal12PageMetadata28InitializeFreeListCategoriesEv.exit: ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #8

declare void @_ZN2v88internal19MutablePageMetadata24ClearFlagMaybeExecutableENS0_11MemoryChunk4FlagE(ptr noundef nonnull align 8 dereferenceable(4448), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN2v88internal12PageMetadata15AbortEvacuationEv(ptr noundef nonnull align 8 captures(none) dereferenceable(4448) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, 256
  store i32 %i.c, ptr %i.a, align 8
  ret void
}

declare void @_ZN2v88internal13VirtualMemory5ResetEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress norecurse nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { builtin nounwind allocsize(0) }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !6}
!16 = !{!"branch_weights", !"expected", i32 1, i32 2000}
end_hunk_0
