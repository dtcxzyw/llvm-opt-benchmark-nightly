begin_hunk_0
inline.NumInlined: 12825
inline.NumDeleted: 1651
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

end_hunk_0
begin_hunk_1
$_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE = comdat any

$_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE = comdat any

$_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE = comdat any

$_ZN2v88internal11FactoryBaseINS0_7FactoryEE24NewTrustedWeakFixedArrayEi = comdat any

end_hunk_1
begin_hunk_2_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE:bb.a

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE17NewWeakFixedArrayEiNS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = tail call ptr @_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE(ptr noundef nonnull %0, i32 noundef %1, i8 noundef zeroext %2, ptr null)
  ret ptr %3
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN2v88internal14WeakFixedArray3NewINS0_7IsolateEEENS0_6HandleIS1_EEPT_iNS0_14AllocationTypeENS0_17MaybeDirectHandleINS0_6ObjectEEE(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr %3) local_unnamed_addr #6 comdat align 2 {
  %5 = icmp ult i32 %1, 134217729
  br i1 %5, label %7, label %6, !prof !9

6:                                                ; preds = %4
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23) #18
  unreachable

7:                                                ; preds = %4
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %9, label %11, !prof !5

9:                                                ; preds = %7
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 1928
  br label %54

11:                                               ; preds = %7
  %12 = shl nuw nsw i32 %1, 3                     ; 2 uses
  %13 = add nuw nsw i32 %12, 16                   ; 2 uses
  %14 = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %13, i8 noundef zeroext %2, i8 noundef zeroext 0, i8 0) #16 ; 3 uses
  %15 = icmp eq i8 %2, 2
  %16 = getelementptr inbounds nuw i8, ptr %0, i64 58252
  %17 = load i32, ptr %16, align 4
  %.0.i.i14.i = select i1 %15, i32 %17, i32 131072
  %18 = icmp sgt i32 %13, %.0.i.i14.i
  %19 = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1222), align 2, !range !6
  %20 = trunc nuw i8 %19 to i1
  %or.cond.i.i = select i1 %18, i1 %20, i1 false
  br i1 %or.cond.i.i, label %21, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i

21:                                               ; preds = %11
  %22 = and i64 %14, -262144
  %23 = inttoptr i64 %22 to ptr
  %24 = getelementptr inbounds nuw i8, ptr %23, i64 8
  %25 = load ptr, ptr %24, align 8                ; 3 uses
  %26 = getelementptr inbounds nuw i8, ptr %25, i64 80
  %27 = load atomic ptr, ptr %26 seq_cst, align 8
  %.not.i.i.i = icmp eq ptr %27, null
  br i1 %.not.i.i.i, label %28, label %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i, !prof !5

28:                                               ; preds = %21
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15) #18
  unreachable

_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i: ; preds = %21
  %29 = getelementptr inbounds nuw i8, ptr %25, i64 224
  %narrow = add nuw nsw i32 %12, 131080
  %30 = lshr i32 %narrow, 17
  %31 = zext nneg i32 %30 to i64
  store i64 %31, ptr %29, align 8
  %32 = getelementptr inbounds nuw i8, ptr %25, i64 232
  store atomic i64 0, ptr %32 seq_cst, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i

_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i: ; preds = %_ZN2v88internal19MutablePageMetadata4castEPNS0_19MemoryChunkMetadataE.exit.i.i, %11
  %33 = getelementptr inbounds nuw i8, ptr %0, i64 832
  %34 = load i64, ptr %33, align 8
  %35 = add i64 %14, -1
  %36 = inttoptr i64 %35 to ptr                   ; 3 uses
  store atomic volatile i64 %34, ptr %36 monotonic, align 8
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 8
  %38 = zext nneg i32 %1 to i64                   ; 2 uses
  %39 = shl nuw nsw i64 %38, 32
  store atomic volatile i64 %39, ptr %37 monotonic, align 8
  %40 = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %41 = load ptr, ptr %40, align 8                ; 2 uses
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 568
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %45, label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit, !prof !5

45:                                               ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i
  %46 = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #16
  br label %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit

_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i, %45
  %.0.i.i.i = phi ptr [ %46, %45 ], [ %41, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE16AllocateRawArrayEiNS0_14AllocationTypeENS0_14AllocationHintENS0_19AllocationAlignmentE.exit.i ] ; 3 uses
  %47 = ptrtoint ptr %.0.i.i.i to i64
  %48 = add i64 %47, 8
  %49 = inttoptr i64 %48 to ptr
  store ptr %49, ptr %40, align 8
  store i64 %14, ptr %.0.i.i.i, align 8
  %50 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %51 = icmp eq ptr %3, null
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 648
  %.sroa.014.0.in = select i1 %51, ptr %52, ptr %3
  %.sroa.014.0 = load i64, ptr %.sroa.014.0.in, align 8
  %53 = tail call { i64, ptr } asm sideeffect "cld;rep ; stosq", "=&{cx},=&{di},{ax},0,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %.sroa.014.0, i64 %38, ptr nonnull %50) #16, !srcloc !10 ; 0 uses
  br label %54

54:                                               ; preds = %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit, %9
  %.sroa.023.0 = phi ptr [ %10, %9 ], [ %.0.i.i.i, %_ZN2v88internal15TaggedArrayBaseINS0_14WeakFixedArrayENS0_19WeakFixedArrayShapeENS0_16HeapObjectLayoutEE8AllocateINS0_7IsolateEEENS0_6HandleIS2_EEPT_iPSt8optionalINS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSE_2EEEEENS0_14AllocationTypeENS0_14AllocationHintE.exit ]
  ret ptr %.sroa.023.0
}

; Function Attrs: mustprogress nounwind uwtable
end_hunk_2
