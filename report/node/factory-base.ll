inline.NumInlined: 12826
inline.NumDeleted: 1652
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN2v88internal11FactoryBaseINS0_7FactoryEE36AllocateRawOneByteInternalizedStringEij:bb.a
bb.e:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16SeqOneByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit, %bb.e
  %.0.i.i = phi ptr [ %i.u, %bb.e ], [ %i.q, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE.exit ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.p, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE28NewTwoByteInternalizedStringENS_4base6VectorIKtEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.b = icmp samesign ult i64 %2, 536870889
  br i1 %i.b, label %bb.d, label %bb.c, !prof !9

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #17
  unreachable

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.c = trunc nuw nsw i64 %2 to i32              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.e = load i64, ptr %i.d, align 8
  %i.f = shl nuw nsw i32 %i.c, 1                  ; 2 uses
  %i.g = add nuw nsw i32 %i.f, 22
  %i.h = and i32 %i.g, 2147483640                 ; 2 uses
  %i.i = tail call noundef zeroext i8 @_ZN2v88internal7Factory44AllocationTypeForInPlaceInternalizableStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.j = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.h, i8 noundef zeroext %i.i, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr                 ; 5 uses
  store atomic volatile i64 %i.e, ptr %i.l monotonic, align 8
  %i.m = zext nneg i32 %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  store i64 0, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store atomic volatile i32 %i.c, ptr %i.p monotonic, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store atomic i32 %3, ptr %i.q monotonic, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.e, label %_ZNK2v84base6VectorIKtE6lengthEv.exit1, !prof !5

bb.e:                                             ; preds = %bb.d
  %i.w = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit1

_ZNK2v84base6VectorIKtE6lengthEv.exit1:           ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.s, %bb.d ] ; 3 uses
  %i.x = ptrtoint ptr %.0.i.i.i to i64
  %i.y = add i64 %i.x, 8
  %i.z = inttoptr i64 %i.y to ptr
  store ptr %i.z, ptr %i.r, align 8
  store i64 %i.j, ptr %.0.i.i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 9 uses
  switch i32 %i.c, label %bb.n [
    i32 8, label %bb.m
    i32 1, label %bb.f
    i32 6, label %bb.k
    i32 2, label %bb.g
    i32 7, label %bb.l
    i32 3, label %bb.h
    i32 5, label %bb.j
    i32 4, label %bb.i
  ]

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ab = load i16, ptr %1, align 1
  store i16 %i.ab, ptr %i.aa, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.g:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ac = load i32, ptr %1, align 1
  store i32 %i.ac, ptr %i.aa, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.h:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.aa, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.i:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ad = load i64, ptr %1, align 1
  store i64 %i.ad, ptr %i.aa, align 8
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.j:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.aa, ptr noundef nonnull align 1 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.k:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.aa, ptr noundef nonnull align 1 dereferenceable(12) %1, i64 12, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.l:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.aa, ptr noundef nonnull align 1 dereferenceable(14) %1, i64 14, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.m:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.aa, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.n:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit1
  %i.ae = zext nneg i32 %i.f to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aa, ptr align 1 %1, i64 %i.ae, i1 false)
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE36AllocateRawTwoByteInternalizedStringEij(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 536870889
  br i1 %i.a, label %bb.c, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.4) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.c = load i64, ptr %i.b, align 8
  %i.d = shl i32 %1, 1
  %i.e = add i32 %i.d, 22
  %i.f = and i32 %i.e, -8                         ; 2 uses
  %i.g = tail call noundef zeroext i8 @_ZN2v88internal7Factory44AllocationTypeForInPlaceInternalizableStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  %i.h = tail call i64 @_ZN2v88internal7Factory11AllocateRawEiNS0_14AllocationTypeENS0_19AllocationAlignmentENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.f, i8 noundef zeroext %i.g, i8 noundef zeroext 0, i8 0) #15 ; 2 uses
  %i.i = add i64 %i.h, -1
  %i.j = inttoptr i64 %i.i to ptr                 ; 4 uses
  store atomic volatile i64 %i.c, ptr %i.j monotonic, align 8
  %i.k = sext i32 %i.f to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -8
  store i64 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store atomic volatile i32 %1, ptr %i.n monotonic, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store atomic i32 %2, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.q, %i.s
  br i1 %i.t, label %bb.d, label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.u = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %0) #15
  br label %_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit

_ZN2v88internal6HandleINS0_16SeqTwoByteStringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i = phi ptr [ %i.u, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.v = ptrtoint ptr %.0.i.i to i64
  %i.w = add i64 %i.v, 8
  %i.x = inttoptr i64 %i.w to ptr
  store ptr %i.x, ptr %i.p, align 8
  store i64 %i.h, ptr %.0.i.i, align 8
  ret ptr %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE39NewOneByteInternalizedStringFromTwoByteENS_4base6VectorIKtEEj(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i32 noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #17
  unreachable

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %2 to i32
  %i.c = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE36AllocateRawOneByteInternalizedStringEij(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.b, i32 noundef %3) ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = add i64 %i.d, -1
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  tail call void @_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m(ptr noundef %i.g, ptr noundef %1, i64 noundef %2)
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  switch i64 %2, label %bb.b [
    i64 1, label %.lr.ph.i.i.i.i.i.i.i.preheader
    i64 2, label %.lr.ph.i.i.i.i.i.i.i37.preheader
    i64 3, label %.lr.ph.i.i.i.i.i.i.i42.preheader
    i64 4, label %.lr.ph.i.i.i.i.i.i.i47.preheader
    i64 5, label %.lr.ph.i.i.i.i.i.i.i52.preheader
    i64 6, label %.lr.ph.i.i.i.i.i.i.i57.preheader
    i64 7, label %.lr.ph.i.i.i.i.i.i.i62.preheader
    i64 8, label %.lr.ph.i.i.i.i.i.i.i67.preheader
    i64 9, label %.lr.ph.i.i.i.i.i.i.i72.preheader
    i64 10, label %.lr.ph.i.i.i.i.i.i.i77.preheader
    i64 11, label %.lr.ph.i.i.i.i.i.i.i82.preheader
    i64 12, label %.lr.ph.i.i.i.i.i.i.i87.preheader
    i64 13, label %.lr.ph.i.i.i.i.i.i.i92.preheader
    i64 14, label %.lr.ph.i.i.i.i.i.i.i97.preheader
    i64 15, label %.lr.ph.i.i.i.i.i.i.i102.preheader
    i64 16, label %.lr.ph.i.i.i.i.i.i.i107.preheader
  ]

.lr.ph.i.i.i.i.i.i.i107.preheader:                ; preds = %bb.a
  %3 = load i16, ptr %1, align 2
  %4 = trunc i16 %3 to i8
  store i8 %4, ptr %0, align 1
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %7 = load i16, ptr %5, align 2
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %6, align 1
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %10 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %11 = load i16, ptr %9, align 2
  %12 = trunc i16 %11 to i8
  store i8 %12, ptr %10, align 1
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %15 = load i16, ptr %13, align 2
  %16 = trunc i16 %15 to i8
  store i8 %16, ptr %14, align 1
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %18 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %19 = load i16, ptr %17, align 2
  %20 = trunc i16 %19 to i8
  store i8 %20, ptr %18, align 1
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %23 = load i16, ptr %21, align 2
  %24 = trunc i16 %23 to i8
  store i8 %24, ptr %22, align 1
  %25 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %26 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %27 = load i16, ptr %25, align 2
  %28 = trunc i16 %27 to i8
  store i8 %28, ptr %26, align 1
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %30 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %31 = load i16, ptr %29, align 2
  %32 = trunc i16 %31 to i8
  store i8 %32, ptr %30, align 1
  %33 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %34 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %35 = load i16, ptr %33, align 2
  %36 = trunc i16 %35 to i8
  store i8 %36, ptr %34, align 1
  %37 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %39 = load i16, ptr %37, align 2
  %40 = trunc i16 %39 to i8
  store i8 %40, ptr %38, align 1
  %41 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %42 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %43 = load i16, ptr %41, align 2
  %44 = trunc i16 %43 to i8
  store i8 %44, ptr %42, align 1
  %45 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %46 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %47 = load i16, ptr %45, align 2
  %48 = trunc i16 %47 to i8
  store i8 %48, ptr %46, align 1
  %49 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %50 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %51 = load i16, ptr %49, align 2
  %52 = trunc i16 %51 to i8
  store i8 %52, ptr %50, align 1
  %53 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %54 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %55 = load i16, ptr %53, align 2
  %56 = trunc i16 %55 to i8
  store i8 %56, ptr %54, align 1
  %57 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %58 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %59 = load i16, ptr %57, align 2
  %60 = trunc i16 %59 to i8
  store i8 %60, ptr %58, align 1
  %61 = getelementptr inbounds nuw i8, ptr %1, i64 30
  %62 = getelementptr inbounds nuw i8, ptr %0, i64 15
  %63 = load i16, ptr %61, align 2
  %64 = trunc i16 %63 to i8
  store i8 %64, ptr %62, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i102.preheader:                ; preds = %bb.a
  %65 = load i16, ptr %1, align 2
  %66 = trunc i16 %65 to i8
  store i8 %66, ptr %0, align 1
  %67 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %68 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %69 = load i16, ptr %67, align 2
  %70 = trunc i16 %69 to i8
  store i8 %70, ptr %68, align 1
  %71 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %72 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %73 = load i16, ptr %71, align 2
  %74 = trunc i16 %73 to i8
  store i8 %74, ptr %72, align 1
  %75 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %76 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %77 = load i16, ptr %75, align 2
  %78 = trunc i16 %77 to i8
  store i8 %78, ptr %76, align 1
  %79 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %80 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %81 = load i16, ptr %79, align 2
  %82 = trunc i16 %81 to i8
  store i8 %82, ptr %80, align 1
  %83 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %84 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %85 = load i16, ptr %83, align 2
  %86 = trunc i16 %85 to i8
  store i8 %86, ptr %84, align 1
  %87 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %88 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %89 = load i16, ptr %87, align 2
  %90 = trunc i16 %89 to i8
  store i8 %90, ptr %88, align 1
  %91 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %92 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %93 = load i16, ptr %91, align 2
  %94 = trunc i16 %93 to i8
  store i8 %94, ptr %92, align 1
  %95 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %96 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %97 = load i16, ptr %95, align 2
  %98 = trunc i16 %97 to i8
  store i8 %98, ptr %96, align 1
  %99 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %100 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %101 = load i16, ptr %99, align 2
  %102 = trunc i16 %101 to i8
  store i8 %102, ptr %100, align 1
  %103 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %104 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %105 = load i16, ptr %103, align 2
  %106 = trunc i16 %105 to i8
  store i8 %106, ptr %104, align 1
  %107 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %108 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %109 = load i16, ptr %107, align 2
  %110 = trunc i16 %109 to i8
  store i8 %110, ptr %108, align 1
  %111 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %112 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %113 = load i16, ptr %111, align 2
  %114 = trunc i16 %113 to i8
  store i8 %114, ptr %112, align 1
  %115 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %116 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %117 = load i16, ptr %115, align 2
  %118 = trunc i16 %117 to i8
  store i8 %118, ptr %116, align 1
  %119 = getelementptr inbounds nuw i8, ptr %1, i64 28
  %120 = getelementptr inbounds nuw i8, ptr %0, i64 14
  %121 = load i16, ptr %119, align 2
  %122 = trunc i16 %121 to i8
  store i8 %122, ptr %120, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i97.preheader:                 ; preds = %bb.a
  %123 = load i16, ptr %1, align 2
  %124 = trunc i16 %123 to i8
  store i8 %124, ptr %0, align 1
  %125 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %126 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %127 = load i16, ptr %125, align 2
  %128 = trunc i16 %127 to i8
  store i8 %128, ptr %126, align 1
  %129 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %130 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %131 = load i16, ptr %129, align 2
  %132 = trunc i16 %131 to i8
  store i8 %132, ptr %130, align 1
  %133 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %134 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %135 = load i16, ptr %133, align 2
  %136 = trunc i16 %135 to i8
  store i8 %136, ptr %134, align 1
  %137 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %138 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %139 = load i16, ptr %137, align 2
  %140 = trunc i16 %139 to i8
  store i8 %140, ptr %138, align 1
  %141 = getelementptr inbounds nuw i8, ptr %1, i64 10
  %142 = getelementptr inbounds nuw i8, ptr %0, i64 5
  %143 = load i16, ptr %141, align 2
  %144 = trunc i16 %143 to i8
  store i8 %144, ptr %142, align 1
  %145 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %146 = getelementptr inbounds nuw i8, ptr %0, i64 6
  %147 = load i16, ptr %145, align 2
  %148 = trunc i16 %147 to i8
  store i8 %148, ptr %146, align 1
  %149 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %150 = getelementptr inbounds nuw i8, ptr %0, i64 7
  %151 = load i16, ptr %149, align 2
  %152 = trunc i16 %151 to i8
  store i8 %152, ptr %150, align 1
  %153 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %154 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %155 = load i16, ptr %153, align 2
  %156 = trunc i16 %155 to i8
  store i8 %156, ptr %154, align 1
  %157 = getelementptr inbounds nuw i8, ptr %1, i64 18
  %158 = getelementptr inbounds nuw i8, ptr %0, i64 9
  %159 = load i16, ptr %157, align 2
  %160 = trunc i16 %159 to i8
  store i8 %160, ptr %158, align 1
  %161 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %162 = getelementptr inbounds nuw i8, ptr %0, i64 10
  %163 = load i16, ptr %161, align 2
  %164 = trunc i16 %163 to i8
  store i8 %164, ptr %162, align 1
  %165 = getelementptr inbounds nuw i8, ptr %1, i64 22
  %166 = getelementptr inbounds nuw i8, ptr %0, i64 11
  %167 = load i16, ptr %165, align 2
  %168 = trunc i16 %167 to i8
  store i8 %168, ptr %166, align 1
  %169 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %170 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %171 = load i16, ptr %169, align 2
  %172 = trunc i16 %171 to i8
  store i8 %172, ptr %170, align 1
  %173 = getelementptr inbounds nuw i8, ptr %1, i64 26
  %174 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %175 = load i16, ptr %173, align 2
  %176 = trunc i16 %175 to i8
  store i8 %176, ptr %174, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i92.preheader:                 ; preds = %bb.a
  %i.a = load i16, ptr %1, align 2
  %i.b = trunc i16 %i.a to i8
  store i8 %i.b, ptr %0, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i16, ptr %i.c, align 2
  %i.f = trunc i16 %i.e to i8
  store i8 %i.f, ptr %i.d, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.i = load i16, ptr %i.g, align 2
  %i.j = trunc i16 %i.i to i8
  store i8 %i.j, ptr %i.h, align 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.m = load i16, ptr %i.k, align 2
  %i.n = trunc i16 %i.m to i8
  store i8 %i.n, ptr %i.l, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = load i16, ptr %i.o, align 2
  %i.r = trunc i16 %i.q to i8
  store i8 %i.r, ptr %i.p, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.u = load i16, ptr %i.s, align 2
  %i.v = trunc i16 %i.u to i8
  store i8 %i.v, ptr %i.t, align 1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.y = load i16, ptr %i.w, align 2
  %i.z = trunc i16 %i.y to i8
  store i8 %i.z, ptr %i.x, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ac = load i16, ptr %i.aa, align 2
  %i.ad = trunc i16 %i.ac to i8
  store i8 %i.ad, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = load i16, ptr %i.ae, align 2
  %i.ah = trunc i16 %i.ag to i8
  store i8 %i.ah, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ak = load i16, ptr %i.ai, align 2
  %i.al = trunc i16 %i.ak to i8
  store i8 %i.al, ptr %i.aj, align 1
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ao = load i16, ptr %i.am, align 2
  %i.ap = trunc i16 %i.ao to i8
  store i8 %i.ap, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.as = load i16, ptr %i.aq, align 2
  %i.at = trunc i16 %i.as to i8
  store i8 %i.at, ptr %i.ar, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aw = load i16, ptr %i.au, align 2
  %i.ax = trunc i16 %i.aw to i8
  store i8 %i.ax, ptr %i.av, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i87.preheader:                 ; preds = %bb.a
  %i.ay = load i16, ptr %1, align 2
  %i.az = trunc i16 %i.ay to i8
  store i8 %i.az, ptr %0, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bc = load i16, ptr %i.ba, align 2
  %i.bd = trunc i16 %i.bc to i8
  store i8 %i.bd, ptr %i.bb, align 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bg = load i16, ptr %i.be, align 2
  %i.bh = trunc i16 %i.bg to i8
  store i8 %i.bh, ptr %i.bf, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.bk = load i16, ptr %i.bi, align 2
  %i.bl = trunc i16 %i.bk to i8
  store i8 %i.bl, ptr %i.bj, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load i16, ptr %i.bm, align 2
  %i.bp = trunc i16 %i.bo to i8
  store i8 %i.bp, ptr %i.bn, align 1
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.bs = load i16, ptr %i.bq, align 2
  %i.bt = trunc i16 %i.bs to i8
  store i8 %i.bt, ptr %i.br, align 1
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.bw = load i16, ptr %i.bu, align 2
  %i.bx = trunc i16 %i.bw to i8
  store i8 %i.bx, ptr %i.bv, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ca = load i16, ptr %i.by, align 2
  %i.cb = trunc i16 %i.ca to i8
  store i8 %i.cb, ptr %i.bz, align 1
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ce = load i16, ptr %i.cc, align 2
  %i.cf = trunc i16 %i.ce to i8
  store i8 %i.cf, ptr %i.cd, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ci = load i16, ptr %i.cg, align 2
  %i.cj = trunc i16 %i.ci to i8
  store i8 %i.cj, ptr %i.ch, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cm = load i16, ptr %i.ck, align 2
  %i.cn = trunc i16 %i.cm to i8
  store i8 %i.cn, ptr %i.cl, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 22
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cq = load i16, ptr %i.co, align 2
  %i.cr = trunc i16 %i.cq to i8
  store i8 %i.cr, ptr %i.cp, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i82.preheader:                 ; preds = %bb.a
  %i.cs = load i16, ptr %1, align 2
  %i.ct = trunc i16 %i.cs to i8
  store i8 %i.ct, ptr %0, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.cw = load i16, ptr %i.cu, align 2
  %i.cx = trunc i16 %i.cw to i8
  store i8 %i.cx, ptr %i.cv, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.da = load i16, ptr %i.cy, align 2
  %i.db = trunc i16 %i.da to i8
  store i8 %i.db, ptr %i.cz, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.de = load i16, ptr %i.dc, align 2
  %i.df = trunc i16 %i.de to i8
  store i8 %i.df, ptr %i.dd, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.di = load i16, ptr %i.dg, align 2
  %i.dj = trunc i16 %i.di to i8
  store i8 %i.dj, ptr %i.dh, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.dm = load i16, ptr %i.dk, align 2
  %i.dn = trunc i16 %i.dm to i8
  store i8 %i.dn, ptr %i.dl, align 1
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.dq = load i16, ptr %i.do, align 2
  %i.dr = trunc i16 %i.dq to i8
  store i8 %i.dr, ptr %i.dp, align 1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.du = load i16, ptr %i.ds, align 2
  %i.dv = trunc i16 %i.du to i8
  store i8 %i.dv, ptr %i.dt, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dy = load i16, ptr %i.dw, align 2
  %i.dz = trunc i16 %i.dy to i8
  store i8 %i.dz, ptr %i.dx, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ec = load i16, ptr %i.ea, align 2
  %i.ed = trunc i16 %i.ec to i8
  store i8 %i.ed, ptr %i.eb, align 1
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.eg = load i16, ptr %i.ee, align 2
  %i.eh = trunc i16 %i.eg to i8
  store i8 %i.eh, ptr %i.ef, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i77.preheader:                 ; preds = %bb.a
  %i.ei = load i16, ptr %1, align 2
  %i.ej = trunc i16 %i.ei to i8
  store i8 %i.ej, ptr %0, align 1
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.em = load i16, ptr %i.ek, align 2
  %i.en = trunc i16 %i.em to i8
  store i8 %i.en, ptr %i.el, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.eq = load i16, ptr %i.eo, align 2
  %i.er = trunc i16 %i.eq to i8
  store i8 %i.er, ptr %i.ep, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 3
end_hunk_0
begin_hunk_1_@_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m:bb.a
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.jo = load i16, ptr %i.jm, align 2
  %i.jp = trunc i16 %i.jo to i8
  store i8 %i.jp, ptr %i.jn, align 1
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.js = load i16, ptr %i.jq, align 2
  %i.jt = trunc i16 %i.js to i8
  store i8 %i.jt, ptr %i.jr, align 1
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.jw = load i16, ptr %i.ju, align 2
  %i.jx = trunc i16 %i.jw to i8
  store i8 %i.jx, ptr %i.jv, align 1
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ka = load i16, ptr %i.jy, align 2
  %i.kb = trunc i16 %i.ka to i8
  store i8 %i.kb, ptr %i.jz, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i52.preheader:                 ; preds = %bb.a
  %i.kc = load i16, ptr %1, align 2
  %i.kd = trunc i16 %i.kc to i8
  store i8 %i.kd, ptr %0, align 1
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.kg = load i16, ptr %i.ke, align 2
  %i.kh = trunc i16 %i.kg to i8
  store i8 %i.kh, ptr %i.kf, align 1
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.kk = load i16, ptr %i.ki, align 2
  %i.kl = trunc i16 %i.kk to i8
  store i8 %i.kl, ptr %i.kj, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ko = load i16, ptr %i.km, align 2
  %i.kp = trunc i16 %i.ko to i8
  store i8 %i.kp, ptr %i.kn, align 1
  %i.kq = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ks = load i16, ptr %i.kq, align 2
  %i.kt = trunc i16 %i.ks to i8
  store i8 %i.kt, ptr %i.kr, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i47.preheader:                 ; preds = %bb.a
  %i.ku = load i16, ptr %1, align 2
  %i.kv = trunc i16 %i.ku to i8
  store i8 %i.kv, ptr %0, align 1
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ky = load i16, ptr %i.kw, align 2
  %i.kz = trunc i16 %i.ky to i8
  store i8 %i.kz, ptr %i.kx, align 1
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lc = load i16, ptr %i.la, align 2
  %i.ld = trunc i16 %i.lc to i8
  store i8 %i.ld, ptr %i.lb, align 1
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.lg = load i16, ptr %i.le, align 2
  %i.lh = trunc i16 %i.lg to i8
  store i8 %i.lh, ptr %i.lf, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i42.preheader:                 ; preds = %bb.a
  %i.li = load i16, ptr %1, align 2
  %i.lj = trunc i16 %i.li to i8
  store i8 %i.lj, ptr %0, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lm = load i16, ptr %i.lk, align 2
  %i.ln = trunc i16 %i.lm to i8
  store i8 %i.ln, ptr %i.ll, align 1
  %i.lo = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.lq = load i16, ptr %i.lo, align 2
  %i.lr = trunc i16 %i.lq to i8
  store i8 %i.lr, ptr %i.lp, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i37.preheader:                 ; preds = %bb.a
  %i.ls = load i16, ptr %1, align 2
  %i.lt = trunc i16 %i.ls to i8
  store i8 %i.lt, ptr %0, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.lw = load i16, ptr %i.lu, align 2
  %i.lx = trunc i16 %i.lw to i8
  store i8 %i.lx, ptr %i.lv, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.a
  %i.ly = load i16, ptr %1, align 2
  %i.lz = trunc i16 %i.ly to i8
  store i8 %i.lz, ptr %0, align 1
  br label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

bb.b:                                             ; preds = %bb.a
  %i.ma = icmp sgt i64 %2, 0
  br i1 %i.ma, label %iter.check, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit

iter.check:                                       ; preds = %bb.b
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %0, i64 %2
  %i.mb = shl nuw i64 %2, 1
  %scevgep148 = getelementptr i8, ptr %1, i64 %i.mb
  %bound0 = icmp ult ptr %0, %scevgep148
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check149 = icmp ult i64 %2, 16
  br i1 %min.iters.check149, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %2, 12
  %n.vec = and i64 %2, 9223372036854775792        ; 5 uses
  %i.mc = and i64 %2, 15
  %i.md = getelementptr i8, ptr %0, i64 %n.vec
  %i.me = shl nuw i64 %n.vec, 1
  %i.mf = getelementptr i8, ptr %1, i64 %i.me
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.mg = shl i64 %index, 1
  %next.gep150 = getelementptr i8, ptr %1, i64 %i.mg ; 2 uses
  %i.mh = getelementptr i8, ptr %next.gep150, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep150, align 2, !alias.scope !13
  %wide.load151 = load <8 x i16>, ptr %i.mh, align 2, !alias.scope !13
  %i.mi = trunc <8 x i16> %wide.load to <8 x i8>
  %i.mj = trunc <8 x i16> %wide.load151 to <8 x i8>
  %i.mk = getelementptr i8, ptr %next.gep, i64 8
  store <8 x i8> %i.mi, ptr %next.gep, align 1, !alias.scope !16, !noalias !13
  store <8 x i8> %i.mj, ptr %i.mk, align 1, !alias.scope !16, !noalias !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.i.i.i.i112.preheader, label %vec.epilog.ph, !prof !21

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec155 = and i64 %2, 9223372036854775804     ; 4 uses
  %i.mm = and i64 %2, 3
  %i.mn = getelementptr i8, ptr %0, i64 %n.vec155
  %i.mo = shl nuw i64 %n.vec155, 1
  %i.mp = getelementptr i8, ptr %1, i64 %i.mo
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next160, %vec.epilog.vector.body ] ; 3 uses
  %next.gep157 = getelementptr i8, ptr %0, i64 %index156
  %i.mq = shl i64 %index156, 1
  %next.gep158 = getelementptr i8, ptr %1, i64 %i.mq
  %wide.load159 = load <4 x i16>, ptr %next.gep158, align 2, !alias.scope !13
  %i.mr = trunc <4 x i16> %wide.load159 to <4 x i8>
  store <4 x i8> %i.mr, ptr %next.gep157, align 1, !alias.scope !16, !noalias !13
  %index.next160 = add nuw i64 %index156, 4       ; 2 uses
  %i.ms = icmp eq i64 %index.next160, %n.vec155
  br i1 %i.ms, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n161 = icmp eq i64 %2, %n.vec155
  br i1 %cmp.n161, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, label %.lr.ph.i.i.i.i.i.i.i112.preheader

.lr.ph.i.i.i.i.i.i.i112.preheader:                ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i.i113.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.mc, %vec.epilog.iter.check ], [ %i.mm, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i.i114.ph = phi ptr [ %0, %iter.check ], [ %0, %vector.memcheck ], [ %i.md, %vec.epilog.iter.check ], [ %i.mn, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i.i115.ph = phi ptr [ %1, %iter.check ], [ %1, %vector.memcheck ], [ %i.mf, %vec.epilog.iter.check ], [ %i.mp, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i112

.lr.ph.i.i.i.i.i.i.i112:                          ; preds = %.lr.ph.i.i.i.i.i.i.i112.preheader, %.lr.ph.i.i.i.i.i.i.i112
  %.012.i.i.i.i.i.i.i113 = phi i64 [ %i.mx, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.012.i.i.i.i.i.i.i113.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i.i114 = phi ptr [ %i.mw, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0811.i.i.i.i.i.i.i114.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i.i115 = phi ptr [ %i.mv, %.lr.ph.i.i.i.i.i.i.i112 ], [ %.0910.i.i.i.i.i.i.i115.ph, %.lr.ph.i.i.i.i.i.i.i112.preheader ] ; 2 uses
  %i.mt = load i16, ptr %.0910.i.i.i.i.i.i.i115, align 2
  %i.mu = trunc i16 %i.mt to i8
  store i8 %i.mu, ptr %.0811.i.i.i.i.i.i.i114, align 1
  %i.mv = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i115, i64 2
  %i.mw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i114, i64 1
  %i.mx = add nsw i64 %.012.i.i.i.i.i.i.i113, -1
  %i.my = icmp samesign ugt i64 %.012.i.i.i.i.i.i.i113, 1
  br i1 %i.my, label %.lr.ph.i.i.i.i.i.i.i112, label %_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit, !llvm.loop !23

_ZSt6copy_nIPKtiPhET1_T_T0_S3_.exit:              ; preds = %.lr.ph.i.i.i.i.i.i.i112, %middle.block, %vec.epilog.middle.block, %.lr.ph.i.i.i.i.i.i.i107.preheader, %.lr.ph.i.i.i.i.i.i.i102.preheader, %.lr.ph.i.i.i.i.i.i.i97.preheader, %.lr.ph.i.i.i.i.i.i.i92.preheader, %.lr.ph.i.i.i.i.i.i.i87.preheader, %.lr.ph.i.i.i.i.i.i.i82.preheader, %.lr.ph.i.i.i.i.i.i.i77.preheader, %.lr.ph.i.i.i.i.i.i.i72.preheader, %.lr.ph.i.i.i.i.i.i.i67.preheader, %.lr.ph.i.i.i.i.i.i.i62.preheader, %.lr.ph.i.i.i.i.i.i.i57.preheader, %.lr.ph.i.i.i.i.i.i.i52.preheader, %.lr.ph.i.i.i.i.i.i.i47.preheader, %.lr.ph.i.i.i.i.i.i.i42.preheader, %.lr.ph.i.i.i.i.i.i.i37.preheader, %.lr.ph.i.i.i.i.i.i.i.preheader, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden noundef zeroext i8 @_ZN2v88internal11FactoryBaseINS0_7FactoryEE50RefineAllocationTypeForInPlaceInternalizableStringENS0_14AllocationTypeENS0_6TaggedINS0_3MapEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i8 noundef zeroext %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq i8 %1, 1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef zeroext i8 @_ZN2v88internal7Factory44AllocationTypeForInPlaceInternalizableStringEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.a, %bb.b ], [ %1, %bb.a ]
  ret i8 %.0
}

declare noundef zeroext i1 @_ZN2v88internal7Factory26CanAllocateInReadOnlySpaceEv(ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE35LookupSingleCharacterStringFromCodeEt(ptr noundef nonnull align 1 dereferenceable(1) %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %2 = alloca %"class.v8::internal::SequentialStringKey.758", align 8 ; 10 uses
  %i.a = alloca [1 x i16], align 2                ; 5 uses
  %i.b = icmp ult i16 %1, 256
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i16 %1 to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 3272
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i16 %1, ptr %i.a, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2080
  %i.g = load i64, ptr %i.f, align 8
  %i.h = add i64 %i.g, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = call noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef nonnull %i.a, i32 noundef 1, ptr nonnull %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.m, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN2v88internal19SequentialStringKeyItEE, i64 16), ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.n, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr null, ptr %i.p, align 8
  %i.q = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 386), align 2, !range !6, !noundef !7
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 55448
  %i.t = load i8, ptr %i.s, align 8, !range !6
  %i.u = trunc nuw i8 %i.t to i1
  %not..i.i.i.i = xor i1 %i.r, true
  %i.v = select i1 %not..i.i.i.i, i1 true, i1 %i.u
  br i1 %i.v, label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKtEEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64088
  %i.x = load i8, ptr %i.w, align 8, !range !6, !noundef !7
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZSt27__throw_bad_optional_accessv() #16
  unreachable

_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i: ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64080
  %i.aa = load ptr, ptr %i.z, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKtEEb.exit

_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKtEEb.exit: ; preds = %bb.c, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i
  %.pn.i.i.i = phi ptr [ %i.aa, %_ZNK2v88internal7Isolate20shared_space_isolateEv.exit.i.i.i ], [ %0, %bb.c ]
  %.in.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 58464
  %i.ab = load ptr, ptr %.in.i.i.i, align 8
  %i.ac = call ptr @_ZN2v88internal11StringTable9LookupKeyINS0_19SequentialStringKeyItEENS0_7IsolateEEENS0_12DirectHandleINS0_6StringEEEPT0_PT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKtEEb.exit, %bb.b
  %.sroa.04.0 = phi ptr [ %i.e, %bb.b ], [ %i.ac, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE17InternalizeStringENS_4base6VectorIKtEEb.exit ]
  ret ptr %.sroa.04.0
}

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE20NewStringFromOneByteENS_4base6VectorIKhEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr %1, i64 %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp ult i64 %2, 2147483648
  br i1 %i.a, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %2 to i32              ; 2 uses
  switch i32 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit8 [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = load i8, ptr %1, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 3272
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

_ZNK2v84base6VectorIKhE6lengthEv.exit8:           ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.h = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE19NewRawOneByteStringEjNS0_14AllocationTypeENS0_14AllocationHintE(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.b, i8 noundef zeroext %3, i8 0) ; 20 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit8
  %i.j = load i64, ptr %i.h, align 8
  %i.k = add i64 %i.j, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 17 uses
  switch i64 %2, label %bb.v [
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 4, label %bb.i
    i64 5, label %bb.j
    i64 6, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 9, label %bb.n
    i64 10, label %bb.o
    i64 11, label %bb.p
    i64 12, label %bb.q
    i64 13, label %bb.r
    i64 14, label %bb.s
    i64 15, label %bb.t
    i64 16, label %bb.u
    i64 0, label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %1, align 1
  store i8 %i.n, ptr %i.m, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.g:                                             ; preds = %bb.e
  %i.o = load i16, ptr %1, align 1
  store i16 %i.o, ptr %i.m, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) %1, i64 3, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.i:                                             ; preds = %bb.e
  %i.p = load i32, ptr %1, align 1
  store i32 %i.p, ptr %i.m, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.j:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.m, ptr noundef nonnull align 1 dereferenceable(5) %1, i64 5, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.k:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.m, ptr noundef nonnull align 1 dereferenceable(6) %1, i64 6, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.l:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.m, ptr noundef nonnull align 1 dereferenceable(7) %1, i64 7, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.m:                                             ; preds = %bb.e
  %i.q = load i64, ptr %1, align 1
  store i64 %i.q, ptr %i.m, align 1
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.n:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.m, ptr noundef nonnull align 1 dereferenceable(9) %1, i64 9, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.o:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.m, ptr noundef nonnull align 1 dereferenceable(10) %1, i64 10, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

bb.p:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.m, ptr noundef nonnull align 1 dereferenceable(11) %1, i64 11, i1 false)
  br label %_ZNK2v88internal11MaybeHandleINS0_16SeqOneByteStringEE8ToHandleIS2_EEbPNS0_6HandleIT_EE.exit

end_hunk_1
