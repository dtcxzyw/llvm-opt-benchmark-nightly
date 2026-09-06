Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/bytecode-array-writer?download=true
inline.NumInlined: 259
inline.NumDeleted: 102
begin_hunk_0_@_ZN2v88internal11interpreter19BytecodeArrayWriter15ToBytecodeArrayINS0_7IsolateEEENS0_6HandleINS0_13BytecodeArrayEEEPT_ittNS0_12DirectHandleINS0_16TrustedByteArrayEEE:bb.a
  %i.i = shl nsw i32 %2, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @_ZN2v88internal11interpreter20ConstantArrayBuilder12ToFixedArrayINS0_7IsolateEEENS0_6HandleINS0_17TrustedFixedArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(224) %i.k, ptr noundef %1) #9
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %5 to i64
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewBytecodeArrayEiPKhittNS0_12DirectHandleINS0_17TrustedFixedArrayEEENS6_INS0_16TrustedByteArrayEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.h, ptr noundef nonnull %i.m, i32 noundef %i.i, i16 noundef zeroext %3, i16 noundef zeroext %4, i64 %i.n, i64 %i.o, i8 noundef zeroext 8) #9
  ret ptr %i.p
}

declare ptr @_ZN2v88internal11interpreter20ConstantArrayBuilder12ToFixedArrayINS0_7IsolateEEENS0_6HandleINS0_17TrustedFixedArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #1

declare ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE16NewBytecodeArrayEiPKhittNS0_12DirectHandleINS0_17TrustedFixedArrayEEENS6_INS0_16TrustedByteArrayEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64, i64, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11interpreter19BytecodeArrayWriter15ToBytecodeArrayINS0_12LocalIsolateEEENS0_6HandleINS0_13BytecodeArrayEEEPT_ittNS0_12DirectHandleINS0_16TrustedByteArrayEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3, i16 noundef zeroext %4, ptr %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = trunc i64 %i.g to i32
  %i.i = shl nsw i32 %2, 3
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call ptr @_ZN2v88internal11interpreter20ConstantArrayBuilder12ToFixedArrayINS0_12LocalIsolateEEENS0_6HandleINS0_17TrustedFixedArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(224) %i.k, ptr noundef %1) #9
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %5 to i64
  %i.p = tail call ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16NewBytecodeArrayEiPKhittNS0_12DirectHandleINS0_17TrustedFixedArrayEEENS6_INS0_16TrustedByteArrayEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.h, ptr noundef nonnull %i.m, i32 noundef %i.i, i16 noundef zeroext %3, i16 noundef zeroext %4, i64 %i.n, i64 %i.o, i8 noundef zeroext 8) #9
  ret ptr %i.p
}

declare ptr @_ZN2v88internal11interpreter20ConstantArrayBuilder12ToFixedArrayINS0_12LocalIsolateEEENS0_6HandleINS0_17TrustedFixedArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef) local_unnamed_addr #1

declare ptr @_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE16NewBytecodeArrayEiPKhittNS0_12DirectHandleINS0_17TrustedFixedArrayEEENS6_INS0_16TrustedByteArrayEEENS0_14AllocationTypeE(ptr noundef nonnull align 1 dereferenceable(1), i32 noundef, ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i64, i64, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11interpreter19BytecodeArrayWriter21ToSourcePositionTableINS0_7IsolateEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9568
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_ZN2v88internal26SourcePositionTableBuilder21ToSourcePositionTableINS0_7IsolateEEENS0_6HandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %1) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal26SourcePositionTableBuilder21ToSourcePositionTableINS0_7IsolateEEENS0_6HandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define weak_odr hidden ptr @_ZN2v88internal11interpreter19BytecodeArrayWriter21ToSourcePositionTableINS0_12LocalIsolateEEENS0_12DirectHandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 2
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = add i64 %i.e, -55464
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 9568
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef ptr @_ZN2v88internal16LocalHandleScope19GetMainThreadHandleEPNS0_9LocalHeapEm(ptr noundef nonnull %i.c, i64 noundef %i.i) #9
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24empty_trusted_byte_arrayEv.exit

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8              ; 5 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_ZN2v88internal12LocalHandles8AddBlockEv(ptr noundef nonnull align 8 dereferenceable(48) %i.o) #9
  %.pre.i = load ptr, ptr %i.o, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %.pre.i, %bb.e ], [ %i.p, %bb.d ]
  %.0.i.i = phi ptr [ %i.t, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.v, ptr %i.o, align 8
  store i64 %i.i, ptr %.0.i.i, align 8
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24empty_trusted_byte_arrayEv.exit

bb.g:                                             ; preds = %bb.a
  %i.w = tail call ptr @_ZN2v88internal26SourcePositionTableBuilder21ToSourcePositionTableINS0_12LocalIsolateEEENS0_6HandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %1) #9
  br label %_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24empty_trusted_byte_arrayEv.exit

_ZN2v88internal11FactoryBaseINS0_12LocalFactoryEE24empty_trusted_byte_arrayEv.exit: ; preds = %bb.f, %bb.c, %bb.g
  %.sroa.0.0 = phi ptr [ %i.w, %bb.g ], [ %i.m, %bb.c ], [ %.0.i.i, %bb.f ]
  ret ptr %.sroa.0.0
}

declare ptr @_ZN2v88internal26SourcePositionTableBuilder21ToSourcePositionTableINS0_12LocalIsolateEEENS0_6HandleINS0_16TrustedByteArrayEEEPT_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriterC2EPNS0_4ZoneEPNS1_20ConstantArrayBuilderENS0_26SourcePositionTableBuilder13RecordingModeE(ptr noundef nonnull align 8 dereferenceable(144) initializes((0, 12), (16, 52)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store i32 127, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 32639, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2139062143, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.d, i8 0, i64 28, i1 false)
  tail call void @_ZN2v88internal26SourcePositionTableBuilderC1EPNS0_4ZoneENS1_13RecordingModeE(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef %1, i32 noundef %3) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %2, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 -45, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.k = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 317), align 1, !range !5, !noundef !6
  store i8 %i.k, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 0, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %.not.i.i = icmp ult i64 %i.r, 512
  br i1 %.not.i.i, label %bb.b, label %_ZN2v88internal10ZoneVectorIhE7reserveEm.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef 512)
  br label %_ZN2v88internal10ZoneVectorIhE7reserveEm.exit

_ZN2v88internal10ZoneVectorIhE7reserveEm.exit:    ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN2v88internal26SourcePositionTableBuilderC1EPNS0_4ZoneENS1_13RecordingModeE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter5WriteEPNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 4                 ; 2 uses
  switch i8 %i.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit [
    i8 -73, label %bb.c
    i8 -75, label %bb.c
    i8 -74, label %bb.c
    i8 -62, label %bb.c
    i8 -106, label %bb.c
    i8 -107, label %bb.c
    i8 -105, label %bb.c
    i8 -67, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store i8 1, ptr %i.a, align 2
  %.pre = load i8, ptr %1, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit: ; preds = %bb.b, %bb.c
  %i.e = phi i8 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = icmp ne i8 %i.g, 0                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = add i8 %i.m, -11
  %i.o = icmp ult i8 %i.n, 15
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = zext i8 %i.e to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2v88internal11interpreter9Bytecodes20kImplicitRegisterUseE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i = and i1 %i.h, %i.v
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not.i.i.i = icmp ugt i64 %i.x, %i.ae
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.x)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %i.ab, %bb.g ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, %i.ah
  br i1 %i.ak, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add i64 %i.x, %i.am
  %i.ao = sub i64 %i.an, %i.al
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.ao, i1 false)
  br label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i:   ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  store ptr %i.ah, ptr %i.ai, align 8
  %i.ap = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %2 = trunc nuw i8 %i.ap to i1
  %3 = or i1 %i.h, %2
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i, %bb.f, %bb.e, %bb.d
  %.0.i = phi i1 [ true, %bb.f ], [ %3, %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  store i8 %i.e, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = zext i1 %.0.i to i8
  store i8 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ay, ptr %i.az, align 8
  %.pr = load i8, ptr %i.f, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit, %bb.i
  %i.ba = phi i8 [ %i.g, %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit ], [ %.pr, %bb.i ] ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %sext.i = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %sext.i, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 1
  %i.bp = and i64 %i.bo, -140735340871682
  %i.bq = icmp eq i8 %i.ba, 2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load i8, ptr %i.br, align 4, !range !5, !noundef !6
  %i.bt = trunc nuw i8 %i.bs to i1
  tail call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 noundef %i.bj, i64 %i.bp, i1 noundef zeroext %i.bq, i1 noundef zeroext %i.bt) #9
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit, %bb.j
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitBytecodeEPKNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(144) %0, i8 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  switch i8 %1, label %bb.c [
    i8 -73, label %bb.b
    i8 -75, label %bb.b
    i8 -74, label %bb.b
    i8 -62, label %bb.b
    i8 -106, label %bb.b
    i8 -107, label %bb.b
    i8 -105, label %bb.b
    i8 -67, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 1, ptr %i.a, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb(ptr noundef nonnull align 8 dereferenceable(144) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.b = load i8, ptr %i.a, align 1, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = add i8 %i.e, -11
  %i.g = icmp ult i8 %i.f, 15
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = zext i8 %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr @_ZN2v88internal11interpreter9Bytecodes20kImplicitRegisterUseE, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 2
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond = and i1 %2, %i.n
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i64, ptr %i.o, align 8              ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %.not.i.i = icmp ugt i64 %i.p, %i.w
  br i1 %.not.i.i, label %bb.f, label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 noundef %i.p)
  %.pre.i = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i: ; preds = %bb.f, %bb.e
  %i.y = phi ptr [ %i.t, %bb.e ], [ %.pre.i, %bb.f ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.p ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %i.ac = icmp ult ptr %i.ab, %i.z
  br i1 %i.ac, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i
  %i.ad = ptrtoaddr ptr %i.ab to i64
  %i.ae = ptrtoaddr ptr %i.y to i64
  %i.af = add i64 %i.p, %i.ae
  %i.ag = sub i64 %i.af, %i.ad
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ab, i8 0, i64 %i.ag, i1 false)
  br label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit

_ZN2v88internal10ZoneVectorIhE6resizeEm.exit:     ; preds = %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  store ptr %i.z, ptr %i.aa, align 8
  %i.ah = load i8, ptr %i.l, align 8, !range !5, !noundef !6
  %i.ai = trunc nuw i8 %i.ah to i1
  %i.aj = or i1 %2, %i.ai
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit, %bb.c, %bb.b
  %.0 = phi i1 [ true, %bb.d ], [ %i.aj, %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit ], [ %2, %bb.c ], [ %2, %bb.b ]
  store i8 %1, ptr %i.d, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.al = zext i1 %.0 to i8
  store i8 %i.al, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = ptrtoint ptr %i.an to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.as, ptr %i.at, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i8, ptr %i.a, align 4               ; 2 uses
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = sub i64 %i.e, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %sext = shl i64 %i.i, 32
  %i.k = ashr exact i64 %sext, 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.m = load i32, ptr %i.l, align 4
  %i.n = add nsw i32 %i.m, 1
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 1
  %i.q = and i64 %i.p, -140735340871682
  %i.r = icmp eq i8 %i.b, 2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.t = load i8, ptr %i.s, align 4, !range !5, !noundef !6
end_hunk_0
begin_hunk_1_@_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitBytecodeEPKNS1_12BytecodeNodeE:bb.a
bb.i:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4
  %i.au = trunc i32 %i.at to i8
  %i.av = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.aw = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ax = icmp ult ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit31, label %bb.j, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.ap, align 8
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = add i64 %i.az, 1
  %i.bc = sub i64 %i.bb, %i.ba
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.bc)
  %.pre.i.i30 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit31

_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit31: ; preds = %bb.i, %bb.j
  %i.bd = phi ptr [ %i.av, %bb.i ], [ %.pre.i.i30, %bb.j ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  store ptr %i.be, ptr %i.s, align 8
  store i8 %i.au, ptr %i.bd, align 1
  br label %bb.s

bb.k:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.bg = load i32, ptr %i.bf, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.bg to i8
  %.sroa.4.0.extract.shift44 = lshr i32 %i.bg, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift44 to i8
  %i.bh = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bi = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bj = icmp ult ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit, label %bb.l, !prof !8

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.ap, align 8
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = add i64 %i.bl, 1
  %i.bo = sub i64 %i.bn, %i.bm
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.bo)
  %.pre.i = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit: ; preds = %bb.k, %bb.l
  %i.bp = phi ptr [ %i.bh, %bb.k ], [ %.pre.i, %bb.l ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bq, ptr %i.s, align 8
  store i8 %.sroa.0.0.extract.trunc, ptr %i.bp, align 1
  %i.br = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.bs = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.bt = icmp ult ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit33, label %bb.m, !prof !8

bb.m:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit
  %i.bu = load ptr, ptr %i.ap, align 8
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = add i64 %i.bv, 1
  %i.by = sub i64 %i.bx, %i.bw
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.by)
  %.pre.i32 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit33

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit33: ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit, %bb.m
  %i.bz = phi ptr [ %i.br, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit ], [ %.pre.i32, %bb.m ] ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1
  store ptr %i.ca, ptr %i.s, align 8
  store i8 %.sroa.4.0.extract.trunc, ptr %i.bz, align 1
  br label %bb.s

bb.n:                                             ; preds = %bb.g
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv ; 4 uses
  %i.cc = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cd = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ce = icmp ult ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit35, label %bb.o, !prof !8

bb.o:                                             ; preds = %bb.n
  %i.cf = load ptr, ptr %i.ap, align 8
  %i.cg = ptrtoint ptr %i.cd to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = add i64 %i.cg, 1
  %i.cj = sub i64 %i.ci, %i.ch
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.cj)
  %.pre.i34 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit35

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit35: ; preds = %bb.n, %bb.o
  %i.ck = phi ptr [ %i.cc, %bb.n ], [ %.pre.i34, %bb.o ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %i.s, align 8
  %i.cm = load i8, ptr %i.cb, align 1
  store i8 %i.cm, ptr %i.ck, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.co = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.cp = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.cq = icmp ult ptr %i.co, %i.cp
  br i1 %i.cq, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit37, label %bb.p, !prof !8

bb.p:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit35
  %i.cr = load ptr, ptr %i.ap, align 8
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = add i64 %i.cs, 1
  %i.cv = sub i64 %i.cu, %i.ct
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.cv)
  %.pre.i36 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit37

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit37: ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit35, %bb.p
  %i.cw = phi ptr [ %i.co, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit35 ], [ %.pre.i36, %bb.p ] ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  store ptr %i.cx, ptr %i.s, align 8
  %i.cy = load i8, ptr %i.cn, align 1
  store i8 %i.cy, ptr %i.cw, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.da = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.db = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dc = icmp ult ptr %i.da, %i.db
  br i1 %i.dc, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit39, label %bb.q, !prof !8

bb.q:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit37
  %i.dd = load ptr, ptr %i.ap, align 8
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = add i64 %i.de, 1
  %i.dh = sub i64 %i.dg, %i.df
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.dh)
  %.pre.i38 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit39

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit39: ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit37, %bb.q
  %i.di = phi ptr [ %i.da, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit37 ], [ %.pre.i38, %bb.q ] ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dj, ptr %i.s, align 8
  %i.dk = load i8, ptr %i.cz, align 1
  store i8 %i.dk, ptr %i.di, align 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.dm = load ptr, ptr %i.s, align 8             ; 2 uses
  %i.dn = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.do = icmp ult ptr %i.dm, %i.dn
  br i1 %i.do, label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit41, label %bb.r, !prof !8

bb.r:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit39
  %i.dp = load ptr, ptr %i.ap, align 8
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = add i64 %i.dq, 1
  %i.dt = sub i64 %i.ds, %i.dr
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef %i.dt)
  %.pre.i40 = load ptr, ptr %i.s, align 8
  br label %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit41

_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit41: ; preds = %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit39, %bb.r
  %i.du = phi ptr [ %i.dm, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit39 ], [ %.pre.i40, %bb.r ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.dv, ptr %i.s, align 8
  %i.dw = load i8, ptr %i.dl, align 1
  store i8 %i.dw, ptr %i.du, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.g, %_ZN2v88internal10ZoneVectorIhE9push_backEOh.exit31, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit33, %_ZN2v88internal10ZoneVectorIhE9push_backERKh.exit41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !9
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter9WriteJumpEPNS1_12BytecodeNodeEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 4                 ; 2 uses
  switch i8 %i.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit [
    i8 -73, label %bb.c
    i8 -75, label %bb.c
    i8 -74, label %bb.c
    i8 -62, label %bb.c
    i8 -106, label %bb.c
    i8 -107, label %bb.c
    i8 -105, label %bb.c
    i8 -67, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store i8 1, ptr %i.a, align 2
  %.pre = load i8, ptr %1, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit: ; preds = %bb.b, %bb.c
  %i.e = phi i8 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = icmp ne i8 %i.g, 0                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = add i8 %i.m, -11
  %i.o = icmp ult i8 %i.n, 15
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = zext i8 %i.e to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2v88internal11interpreter9Bytecodes20kImplicitRegisterUseE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i = and i1 %i.h, %i.v
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not.i.i.i = icmp ugt i64 %i.x, %i.ae
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.x)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %i.ab, %bb.g ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, %i.ah
  br i1 %i.ak, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add i64 %i.x, %i.am
  %i.ao = sub i64 %i.an, %i.al
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.ao, i1 false)
  br label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i:   ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  store ptr %i.ah, ptr %i.ai, align 8
  %i.ap = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %3 = trunc nuw i8 %i.ap to i1
  %4 = or i1 %i.h, %3
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i, %bb.f, %bb.e, %bb.d
  %.0.i = phi i1 [ true, %bb.f ], [ %4, %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  store i8 %i.e, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = zext i1 %.0.i to i8
  store i8 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ay, ptr %i.az, align 8
  %.pr = load i8, ptr %i.f, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit, %bb.i
  %i.ba = phi i8 [ %i.g, %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit ], [ %.pr, %bb.i ] ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %sext.i = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %sext.i, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 1
  %i.bp = and i64 %i.bo, -140735340871682
  %i.bq = icmp eq i8 %i.ba, 2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load i8, ptr %i.br, align 4, !range !5, !noundef !6
  %i.bt = trunc nuw i8 %i.bs to i1
  tail call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 noundef %i.bj, i64 %i.bp, i1 noundef zeroext %i.bq, i1 noundef zeroext %i.bt) #9
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit, %bb.j
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter8EmitJumpEPNS1_12BytecodeNodeEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter8EmitJumpEPNS1_12BytecodeNodeEPNS1_13BytecodeLabelE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.g, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = tail call noundef zeroext i8 @_ZN2v88internal11interpreter20ConstantArrayBuilder19CreateReservedEntryENS1_11OperandSizeE(ptr noundef nonnull align 8 dereferenceable(224) %i.m, i8 noundef zeroext %i.o) #9
  switch i8 %i.p, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.e
    i8 4, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.q = load i32, ptr %0, align 8                ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.q, ptr %i.r, align 4
  %i.s = load i8, ptr %1, align 4
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes17kOperandTypeInfosE, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i8, ptr %i.v, align 1
  switch i8 %i.w, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit [
    i8 1, label %bb.d
    i8 2, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split
  ]

bb.d:                                             ; preds = %bb.c
  %i.x = add i32 %i.q, 128
  %i.y = add i32 %i.q, 32768
  br label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.aa, ptr %i.ab, align 4
  %i.ac = load i8, ptr %1, align 4
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes17kOperandTypeInfosE, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = load i8, ptr %i.af, align 1
  switch i8 %i.ag, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit [
    i8 1, label %bb.f
    i8 2, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split
  ]

bb.f:                                             ; preds = %bb.e
  %i.ah = add i32 %i.aa, 128
  %i.ai = add i32 %i.aa, 32768
  br label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = load i32, ptr %i.aj, align 8            ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = load i8, ptr %1, align 4
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes17kOperandTypeInfosE, i64 %i.an
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load i8, ptr %i.ap, align 1
  switch i8 %i.aq, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit [
    i8 1, label %bb.h
    i8 2, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = add i32 %i.ak, 128
  %i.as = add i32 %i.ak, 32768
  br label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split

_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split: ; preds = %bb.g, %bb.e, %bb.c, %bb.d, %bb.f, %bb.h
  %.sink27 = phi i32 [ %i.aa, %bb.e ], [ %i.as, %bb.h ], [ %i.q, %bb.c ], [ %i.ai, %bb.f ], [ %i.y, %bb.d ], [ %i.ak, %bb.g ]
  %.sink.in = phi i32 [ %i.aa, %bb.e ], [ %i.ar, %bb.h ], [ %i.q, %bb.c ], [ %i.ah, %bb.f ], [ %i.x, %bb.d ], [ %i.ak, %bb.g ]
  %.sink = icmp ult i32 %.sink.in, 256
  %i.at = icmp ult i32 %.sink27, 65536
  %..i2.i17 = select i1 %i.at, i8 2, i8 4
  %.0.i3.i18 = select i1 %.sink, i8 1, i8 %..i2.i17
  %i.au = load i8, ptr %i.n, align 4
  %.sroa.speculated.i19 = tail call i8 @llvm.umax.i8(i8 %i.au, i8 %.0.i3.i18)
  store i8 %.sroa.speculated.i19, ptr %i.n, align 4
  br label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit

_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit: ; preds = %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split, %bb.g, %bb.e, %bb.c, %bb.a
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitBytecodeEPKNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter13WriteJumpLoopEPNS1_12BytecodeNodeEPNS1_18BytecodeLoopHeaderE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 4                 ; 2 uses
  switch i8 %i.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit [
    i8 -73, label %bb.c
    i8 -75, label %bb.c
    i8 -74, label %bb.c
    i8 -62, label %bb.c
    i8 -106, label %bb.c
    i8 -107, label %bb.c
    i8 -105, label %bb.c
    i8 -67, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store i8 1, ptr %i.a, align 2
  %.pre = load i8, ptr %1, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit: ; preds = %bb.b, %bb.c
  %i.e = phi i8 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = icmp ne i8 %i.g, 0                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = add i8 %i.m, -11
  %i.o = icmp ult i8 %i.n, 15
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = zext i8 %i.e to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2v88internal11interpreter9Bytecodes20kImplicitRegisterUseE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i = and i1 %i.h, %i.v
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not.i.i.i = icmp ugt i64 %i.x, %i.ae
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.x)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %i.ab, %bb.g ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, %i.ah
  br i1 %i.ak, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add i64 %i.x, %i.am
  %i.ao = sub i64 %i.an, %i.al
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.ao, i1 false)
  br label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i:   ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  store ptr %i.ah, ptr %i.ai, align 8
  %i.ap = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %3 = trunc nuw i8 %i.ap to i1
  %4 = or i1 %i.h, %3
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i, %bb.f, %bb.e, %bb.d
  %.0.i = phi i1 [ true, %bb.f ], [ %4, %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  store i8 %i.e, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = zext i1 %.0.i to i8
  store i8 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ay, ptr %i.az, align 8
  %.pr = load i8, ptr %i.f, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit, %bb.i
  %i.ba = phi i8 [ %i.g, %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit ], [ %.pr, %bb.i ] ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %sext.i = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %sext.i, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 1
  %i.bp = and i64 %i.bo, -140735340871682
  %i.bq = icmp eq i8 %i.ba, 2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load i8, ptr %i.br, align 4, !range !5, !noundef !6
  %i.bt = trunc nuw i8 %i.bs to i1
  tail call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 noundef %i.bj, i64 %i.bp, i1 noundef zeroext %i.bq, i1 noundef zeroext %i.bt) #9
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz                    ; 3 uses
  %i.cb = load i64, ptr %2, align 8               ; 2 uses
  %.not.i7 = icmp ult i64 %i.ca, %i.cb
  br i1 %.not.i7, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

bb.l:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit
  %i.cc = icmp ult i64 %i.ca, 4294967296
  br i1 %i.cc, label %.thread.i, label %bb.m, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

.thread.i:                                        ; preds = %bb.l
  %i.cd = sub nuw i64 %i.ca, %i.cb
  %.fr16.i = freeze i64 %i.cd
  %i.ce = trunc i64 %.fr16.i to i32               ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.cg = load i8, ptr %i.cf, align 4             ; 2 uses
  %.not15.i = icmp ne i8 %i.cg, 1
  %i.ch = icmp ugt i32 %i.ce, 255
  %narrow.i = or i1 %i.ch, %.not15.i
  %.pn.i = zext i1 %narrow.i to i32
  %i.ci = add i32 %.pn.i, %i.ce                   ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.ci, ptr %i.cj, align 4
  %i.ck = load i8, ptr %1, align 4
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes17kOperandTypeInfosE, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = load i8, ptr %i.cn, align 1
  switch i8 %i.co, label %_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitJumpLoopEPNS1_12BytecodeNodeEPNS1_18BytecodeLoopHeaderE.exit [
    i8 1, label %bb.n
    i8 2, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split.i
  ]

bb.n:                                             ; preds = %.thread.i
  %i.cp = add i32 %i.ci, 128
  %i.cq = add i32 %i.ci, 32768
  br label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split.i

_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split.i: ; preds = %.thread.i, %bb.n
  %.sink.i = phi i32 [ %i.cq, %bb.n ], [ %i.ci, %.thread.i ]
  %or.cond.i.i.sink.in.i = phi i32 [ %i.cp, %bb.n ], [ %i.ci, %.thread.i ]
  %or.cond.i.i.sink.i = icmp ult i32 %or.cond.i.i.sink.in.i, 256
  %or.cond3.i.i.i = icmp ult i32 %.sink.i, 65536
  %..i.i.i = select i1 %or.cond3.i.i.i, i8 2, i8 4
  %.0.i.i.i = select i1 %or.cond.i.i.sink.i, i8 1, i8 %..i.i.i
  %.sroa.speculated7.i.i = tail call i8 @llvm.umax.i8(i8 %i.cg, i8 %.0.i.i.i)
  store i8 %.sroa.speculated7.i.i, ptr %i.cf, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitJumpLoopEPNS1_12BytecodeNodeEPNS1_18BytecodeLoopHeaderE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitJumpLoopEPNS1_12BytecodeNodeEPNS1_18BytecodeLoopHeaderE.exit: ; preds = %.thread.i, %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split.i
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitBytecodeEPKNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1)
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitJumpLoopEPNS1_12BytecodeNodeEPNS1_18BytecodeLoopHeaderE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitJumpLoopEPNS1_12BytecodeNodeEPNS1_18BytecodeLoopHeaderE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = load i64, ptr %2, align 8                ; 2 uses
  %.not = icmp ult i64 %i.g, %i.h
  br i1 %.not, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.g, 4294967296
  br i1 %i.i, label %.thread, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3) #10
  unreachable

.thread:                                          ; preds = %bb.c
  %i.j = sub nuw i64 %i.g, %i.h
  %.fr16 = freeze i64 %i.j
  %i.k = trunc i64 %.fr16 to i32                  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.m = load i8, ptr %i.l, align 4               ; 2 uses
  %.not15 = icmp ne i8 %i.m, 1
  %i.n = icmp ugt i32 %i.k, 255
  %narrow = or i1 %.not15, %i.n
  %.pn = zext i1 %narrow to i32
  %i.o = add i32 %.pn, %i.k                       ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.o, ptr %i.p, align 4
  %i.q = load i8, ptr %1, align 4
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZN2v88internal11interpreter9Bytecodes17kOperandTypeInfosE, i64 %i.r
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i8, ptr %i.t, align 1
  switch i8 %i.u, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit [
    i8 1, label %bb.e
    i8 2, label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split
  ]

bb.e:                                             ; preds = %.thread
  %i.v = add i32 %i.o, 128
  %i.w = add i32 %i.o, 32768
  br label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split

_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split: ; preds = %.thread, %bb.e
  %.sink = phi i32 [ %i.w, %bb.e ], [ %i.o, %.thread ]
  %or.cond.i.i.sink.in = phi i32 [ %i.v, %bb.e ], [ %i.o, %.thread ]
  %or.cond.i.i.sink = icmp ult i32 %or.cond.i.i.sink.in, 256
  %or.cond3.i.i = icmp ult i32 %.sink, 65536
  %..i.i = select i1 %or.cond3.i.i, i8 2, i8 4
  %.0.i.i = select i1 %or.cond.i.i.sink, i8 1, i8 %..i.i
  %.sroa.speculated7.i = tail call i8 @llvm.umax.i8(i8 %i.m, i8 %.0.i.i)
  store i8 %.sroa.speculated7.i, ptr %i.l, align 4
  br label %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit

_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit: ; preds = %_ZN2v88internal11interpreter12BytecodeNode15update_operand0Ej.exit.sink.split, %.thread
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitBytecodeEPKNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter11WriteSwitchEPNS1_12BytecodeNodeEPNS1_17BytecodeJumpTableE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !5, !noundef !6
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 4                 ; 2 uses
  switch i8 %i.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit [
    i8 -73, label %bb.c
    i8 -75, label %bb.c
    i8 -74, label %bb.c
    i8 -62, label %bb.c
    i8 -106, label %bb.c
    i8 -107, label %bb.c
    i8 -105, label %bb.c
    i8 -67, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  store i8 1, ptr %i.a, align 2
  %.pre = load i8, ptr %1, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit: ; preds = %bb.b, %bb.c
  %i.e = phi i8 [ %i.d, %bb.b ], [ %.pre, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = icmp ne i8 %i.g, 0                       ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noundef !6
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

bb.d:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8
  %i.n = add i8 %i.m, -11
  %i.o = icmp ult i8 %i.n, 15
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.p = zext i8 %i.e to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN2v88internal11interpreter9Bytecodes20kImplicitRegisterUseE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = icmp eq i8 %i.r, 2
  br i1 %i.s, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i = and i1 %i.h, %i.v
  br i1 %or.cond.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = load i64, ptr %i.w, align 8              ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %.not.i.i.i = icmp ugt i64 %i.x, %i.ae
  br i1 %.not.i.i.i, label %bb.h, label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIhE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.af, i64 noundef %i.x)
  %.pre.i.i = load ptr, ptr %i.aa, align 8
  br label %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i

_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i: ; preds = %bb.h, %bb.g
  %i.ag = phi ptr [ %i.ab, %bb.g ], [ %.pre.i.i, %bb.h ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.x ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 3 uses
  %i.ak = icmp ult ptr %i.aj, %i.ah
  br i1 %i.ak, label %.lr.ph.preheader.i.i, label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = ptrtoaddr ptr %i.ag to i64
  %i.an = add i64 %i.x, %i.am
  %i.ao = sub i64 %i.an, %i.al
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aj, i8 0, i64 %i.ao, i1 false)
  br label %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i

_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i:   ; preds = %.lr.ph.preheader.i.i, %_ZN2v88internal10ZoneVectorIhE14EnsureCapacityEm.exit.i.i
  store ptr %i.ah, ptr %i.ai, align 8
  %i.ap = load i8, ptr %i.t, align 8, !range !5, !noundef !6
  %3 = trunc nuw i8 %i.ap to i1
  %4 = or i1 %i.h, %3
  br label %bb.i

bb.i:                                             ; preds = %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i, %bb.f, %bb.e, %bb.d
  %.0.i = phi i1 [ true, %bb.f ], [ %4, %_ZN2v88internal10ZoneVectorIhE6resizeEm.exit.i ], [ %i.h, %bb.e ], [ %i.h, %bb.d ]
  store i8 %i.e, ptr %i.l, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ar = zext i1 %.0.i to i8
  store i8 %i.ar, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.ay, ptr %i.az, align 8
  %.pr = load i8, ptr %i.f, align 4
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit, %bb.i
  %i.ba = phi i8 [ %i.g, %_ZN2v88internal11interpreter19BytecodeArrayWriter21UpdateExitSeenInBlockENS1_8BytecodeE.exit ], [ %.pr, %bb.i ] ; 2 uses
  %.not.i = icmp eq i8 %i.ba, 0
  br i1 %.not.i, label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56
  %sext.i = shl i64 %i.bh, 32
  %i.bj = ashr exact i64 %sext.i, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bl = load i32, ptr %i.bk, align 4
  %i.bm = add nsw i32 %i.bl, 1
  %i.bn = sext i32 %i.bm to i64
  %i.bo = shl nsw i64 %i.bn, 1
  %i.bp = and i64 %i.bo, -140735340871682
  %i.bq = icmp eq i8 %i.ba, 2
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bs = load i8, ptr %i.br, align 4, !range !5, !noundef !6
  %i.bt = trunc nuw i8 %i.bs to i1
  tail call void @_ZN2v88internal26SourcePositionTableBuilder11AddPositionEmNS0_14SourcePositionEbb(ptr noundef nonnull align 8 dereferenceable(56) %i.bi, i64 noundef %i.bj, i64 %i.bp, i1 noundef zeroext %i.bq, i1 noundef zeroext %i.bt) #9
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit: ; preds = %_ZN2v88internal11interpreter19BytecodeArrayWriter22MaybeElideLastBytecodeENS1_8BytecodeEb.exit, %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.cc = load i8, ptr %i.cb, align 4
  %i.cd = icmp ugt i8 %i.cc, 1
  %i.ce = zext i1 %i.cd to i64
  %spec.select.i = add i64 %i.ca, %i.ce
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select.i, ptr %i.cf, align 8
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitBytecodeEPKNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull readonly %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN2v88internal11interpreter19BytecodeArrayWriter25UpdateSourcePositionTableEPKNS1_12BytecodeNodeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter10EmitSwitchEPNS1_12BytecodeNodeEPNS1_17BytecodeJumpTableE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) initializes((8, 16)) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i8, ptr %i.h, align 4
  %i.j = icmp ugt i8 %i.i, 1
  %i.k = zext i1 %i.j to i64
  %spec.select = add i64 %i.g, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %spec.select, ptr %i.l, align 8
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter12EmitBytecodeEPKNS1_12BytecodeNodeE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter9BindLabelEPNS1_13BytecodeLabelE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1               ; 2 uses
  %i.k = add i64 %i.h, %i.f
  %i.l = sub i64 %i.e, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 2 uses
  %switch.selectcmp.i.i = icmp ult i8 %i.j, 4
  br i1 %switch.selectcmp.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = add nsw i32 %i.m, -1                     ; 5 uses
  %i.o = add i64 %i.h, 1                          ; 5 uses
  switch i8 %i.j, label %default.unreachable [
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 0, label %bb.d
    i8 2, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter24PatchJumpWith8BitOperandEmi(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %i.h, i32 noundef %i.m)
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter9PatchJumpEmm.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  tail call void @_ZN2v88internal11interpreter19BytecodeArrayWriter25PatchJumpWith16BitOperandEmi(ptr noundef nonnull align 8 dereferenceable(144) %0, i64 noundef %i.o, i32 noundef %i.n)
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter9PatchJumpEmm.exit

bb.e:                                             ; preds = %bb.b, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.q = load ptr, ptr %i.p, align 8
  tail call void @_ZN2v88internal11interpreter20ConstantArrayBuilder20DiscardReservedEntryENS1_11OperandSizeE(ptr noundef nonnull align 8 dereferenceable(224) %i.q, i8 noundef zeroext 4) #9
  %.sroa.0.0.extract.trunc.i.i = trunc i32 %i.n to i8
  %.sroa.4.0.extract.shift.i.i = lshr i32 %i.n, 8
  %.sroa.4.0.extract.trunc.i.i = trunc i32 %.sroa.4.0.extract.shift.i.i to i8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %i.n, 16
  %.sroa.5.0.extract.trunc.i.i = trunc i32 %.sroa.5.0.extract.shift.i.i to i8
  %.sroa.6.0.extract.shift.i.i = lshr i32 %i.n, 24
  %.sroa.6.0.extract.trunc.i.i = trunc nuw i32 %.sroa.6.0.extract.shift.i.i to i8
  %i.r = load ptr, ptr %i.c, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 %i.o
  %i.t = getelementptr i8, ptr %i.s, i64 1
  store i8 %.sroa.0.0.extract.trunc.i.i, ptr %i.t, align 1
  %i.u = load ptr, ptr %i.c, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 %i.o
  %i.w = getelementptr i8, ptr %i.v, i64 2
  store i8 %.sroa.4.0.extract.trunc.i.i, ptr %i.w, align 1
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 %i.o
  %i.z = getelementptr i8, ptr %i.y, i64 3
  store i8 %.sroa.5.0.extract.trunc.i.i, ptr %i.z, align 1
  %i.aa = load ptr, ptr %i.c, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.o
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  store i8 %.sroa.6.0.extract.trunc.i.i, ptr %i.ac, align 1
  br label %_ZN2v88internal11interpreter19BytecodeArrayWriter9PatchJumpEmm.exit

_ZN2v88internal11interpreter19BytecodeArrayWriter9PatchJumpEmm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 8
  store i8 1, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 -45, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i8 0, ptr %i.ah, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11interpreter19BytecodeArrayWriter9PatchJumpEmm(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(144) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 %2
  %i.d = load i8, ptr %i.c, align 1               ; 2 uses
  %i.e = sub i64 %1, %2
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %switch.selectcmp.i = icmp ult i8 %i.d, 4
  br i1 %switch.selectcmp.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.f, -1                     ; 5 uses
  %i.h = add i64 %2, 1                            ; 5 uses
  switch i8 %i.d, label %default.unreachable25 [
    i8 1, label %bb.e
    i8 3, label %bb.e
    i8 0, label %bb.d
    i8 2, label %bb.d
  ]

default.unreachable25:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
end_hunk_1
