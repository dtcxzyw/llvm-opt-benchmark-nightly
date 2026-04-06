begin_hunk_0
inline.NumInlined: 12826
inline.NumDeleted: 1652
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE = comdat any

$_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE = comdat any

$_ZN2v88internal11FactoryBaseINS0_7FactoryEE24NewTrustedWeakFixedArrayEi = comdat any

end_hunk_1
begin_hunk_2_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
  %4 = icmp ult i32 %1, 134217729
  br i1 %4, label %6, label %5, !prof !9

5:                                                ; preds = %3
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #18
  unreachable

6:                                                ; preds = %3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %8, label %10, !prof !5

8:                                                ; preds = %6
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 1928
  br label %bb.a

10:                                               ; preds = %6
  %11 = shl nuw nsw i32 %1, 3                     ; 2 uses
  %12 = add nuw nsw i32 %11, 16                   ; 2 uses
  %13 = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %12, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 0) #16 ; 3 uses
  %14 = icmp eq i8 %2, 2
  %15 = getelementptr inbounds nuw i8, ptr %0, i64 58252
  %16 = load i32, ptr %15, align 4
  %.0.i.i14.i.i = select i1 %14, i32 %16, i32 131072
  %17 = icmp sgt i32 %12, %.0.i.i14.i.i
  %18 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1222), align 2, !range !6
  %19 = trunc nuw i8 %18 to i1
  %or.cond.i.i.i = select i1 %17, i1 %19, i1 false
  br i1 %or.cond.i.i.i, label %20, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i

20:                                               ; preds = %10
  %21 = and i64 %13, -262144
  %22 = inttoptr i64 %21 to ptr
  %23 = getelementptr inbounds nuw i8, ptr %22, i64 8
  %24 = load ptr, ptr %23, align 8                ; 3 uses
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 80
  %26 = load atomic ptr, ptr %25 seq_cst, align 8
  %.not.i.i.i.i = icmp eq ptr %26, null
  br i1 %.not.i.i.i.i, label %27, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i, !prof !5

27:                                               ; preds = %20
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #18
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i: ; preds = %20
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 224
  %narrow.i = add nuw nsw i32 %11, 131080
  %29 = lshr i32 %narrow.i, 17
  %30 = zext nneg i32 %29 to i64
  store i64 %30, ptr %28, align 8
  %31 = getelementptr inbounds nuw i8, ptr %24, i64 232
  store atomic i64 0, ptr %31 seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i.i, %10
  %32 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %33 = load i64, ptr %32, align 8
  %34 = add i64 %13, -1
  %35 = inttoptr i64 %34 to ptr                   ; 3 uses
  store atomic volatile i64 %33, ptr %35 monotonic, align 8
  %36 = getelementptr inbounds nuw i8, ptr %35, i64 8
  %37 = zext nneg i32 %1 to i64                   ; 2 uses
  %38 = shl nuw nsw i64 %37, 32
  store atomic volatile i64 %38, ptr %36 monotonic, align 8
  %39 = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %40 = load ptr, ptr %39, align 8                ; 2 uses
  %41 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %40, %42
  br i1 %43, label %44, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit.i, !prof !5

44:                                               ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i
  %45 = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit.i

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit.i: ; preds = %44, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i
  %.0.i.i.i.i = phi ptr [ %45, %44 ], [ %40, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i.i ] ; 3 uses
  %46 = ptrtoint ptr %.0.i.i.i.i to i64
  %47 = add i64 %46, 8
  %48 = inttoptr i64 %47 to ptr
  store ptr %48, ptr %39, align 8
  store i64 %13, ptr %.0.i.i.i.i, align 8
  %49 = getelementptr inbounds nuw i8, ptr %35, i64 16
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.sroa.014.0.i = load i64, ptr %50, align 8
  %51 = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.014.0.i, i64 %37, ptr nonnull %49) #16, !srcloc !10 ; 0 uses
  br label %bb.a

bb.a:                                             ; preds = %8, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit.i
  %.sroa.023.0.i = phi ptr [ %9, %8 ], [ %.0.i.i.i.i, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit.i ]
  ret ptr %.sroa.023.0.i
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
