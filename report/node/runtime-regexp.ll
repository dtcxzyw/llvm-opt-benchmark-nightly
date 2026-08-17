inline.NumInlined: 3452
inline.NumDeleted: 1065
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2v88internal6String11SlowFlattenINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEES5_PNS0_7IsolateES4_INS0_10ConsStringEENS0_14AllocationTypeE:bb.a
  call void @_ZN2v88internal12WriteBarrier11MarkingSlowENS0_6TaggedINS0_10HeapObjectEEENS0_18FullHeapObjectSlotES4_(i64 %i.dk, i64 %i.dl, i64 %i.dh) #21
  br label %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55

_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55: ; preds = %_ZN2v88internal10ConsString9set_firstENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit50, %bb.af, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit
  %.sroa.096.0 = phi ptr [ %.0.i.i, %_ZN2v88internal6HandleINS0_6StringEEC2ENS0_6TaggedIS2_EEPNS0_7IsolateE.exit ], [ %i.as, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit ], [ %i.cg, %_ZN2v88internal10ConsString10set_secondENS0_6TaggedINS0_6StringEEENS0_16WriteBarrierModeE.exit55 ]
  ret ptr %.sroa.096.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #17

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i16, ptr %i.b, align 2              ; 3 uses
  %i.d = icmp ugt i16 %i.c, 255
  br i1 %i.d, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.e = icmp ult i64 %2, 2147483648
  br i1 %i.e, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.b
  %i.f = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.f, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.d, !prof !31

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.g = trunc nuw nsw i64 %2 to i32
  %i.h = trunc nuw nsw i64 %.sroa.22.0.copyload to i32
  %i.i = sub nsw i32 %i.g, %i.h                   ; 2 uses
  %i.j = add nsw i32 %i.i, 1
  %i.k = trunc nuw i16 %i.c to i8
  %i.l = zext nneg i16 %i.c to i32
  %i.m = ptrtoint ptr %1 to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %.016.i = phi i32 [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ], [ %i.z, %bb.g ] ; 2 uses
  %i.n = sext i32 %.016.i to i64
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = sub i32 %i.j, %.016.i
  %i.q = sext i32 %i.p to i64
  %i.r = tail call noundef ptr @memchr(ptr noundef %i.o, i32 noundef %i.l, i64 noundef %i.q) #23 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.t, %i.m                       ; 2 uses
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %sext.i = shl i64 %i.u, 32
  %i.w = ashr exact i64 %sext.i, 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1
  %.not.i = icmp eq i8 %i.y, %i.k
  br i1 %.not.i, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = add nsw i32 %i.v, 1
  %i.aa = icmp sgt i32 %i.i, %i.v
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !212

_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.e ], [ -1, %bb.g ], [ %i.v, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload16 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %.sroa.5.0.copyload to i32
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = ptrtoint ptr %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload16, i64 2
  %i.j = shl nuw nsw i64 %.sroa.5.0.copyload, 32
  %sext = add nsw i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit, %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %.013 = phi i32 [ %3, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ %i.af, %_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit ] ; 2 uses
  %.not = icmp sgt i32 %.013, %i.f
  br i1 %.not, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.d
  %i.l = load i16, ptr %.sroa.0.0.copyload16, align 2 ; 2 uses
  %i.m = trunc i16 %i.l to i8                     ; 2 uses
  %i.n = lshr i16 %i.l, 8
  %i.o = trunc nuw i16 %i.n to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.m, i8 %i.o)
  %i.p = zext i8 %.sroa.speculated.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %.016.i = phi i32 [ %.013, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ], [ %i.ac, %bb.g ] ; 2 uses
  %i.q = sext i32 %.016.i to i64
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = sub i32 %i.g, %.016.i
  %i.t = sext i32 %i.s to i64
  %i.u = tail call noundef ptr @memchr(ptr noundef %i.r, i32 noundef %i.p, i64 noundef %i.t) #23 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.w, %i.h                       ; 2 uses
  %i.y = trunc i64 %i.x to i32                    ; 5 uses
  %sext.i = shl i64 %i.x, 32
  %i.z = ashr exact i64 %sext.i, 32
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.i = icmp eq i8 %i.ab, %i.m
  br i1 %.not.i, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = add nsw i32 %i.y, 1
  %i.ad = icmp sgt i32 %i.f, %i.y
  br i1 %i.ad, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !212

_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.f
  %i.ae = icmp eq i32 %i.y, -1
  br i1 %i.ae, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit
  %i.af = add nuw nsw i32 %i.y, 1                 ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %i.ag
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.i ], [ 0, %bb.h ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv.i
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i16
  %.not.i15 = icmp eq i16 %i.aj, %i.am            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.an = icmp slt i64 %indvars.iv.next.i, %i.k
  %or.cond.i = select i1 %.not.i15, i1 %i.an, i1 false
  br i1 %or.cond.i, label %bb.i, label %_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit, !llvm.loop !281

_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit: ; preds = %bb.i
  br i1 %.not.i15, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.d, !llvm.loop !282

_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %bb.d, %_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit, %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.e, %bb.g
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.d ], [ -1, %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ], [ %i.y, %_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.0.0.copyload47 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %.sroa.5.0.copyload to i32 ; 5 uses
  %i.d = icmp ult i64 %2, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.c                   ; 4 uses
  %.not56 = icmp sgt i32 %3, %i.f
  br i1 %.not56, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.g = shl i32 %i.c, 2
  %i.h = sub nsw i32 -10, %i.g
  %i.i = add nsw i32 %i.f, 1
  %i.j = ptrtoint ptr %1 to i64
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.c, i32 2) ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.j
  %.03358 = phi i32 [ %i.h, %.lr.ph ], [ %i.ee, %bb.j ] ; 2 uses
  %.03757 = phi i32 [ %3, %.lr.ph ], [ %i.ef, %bb.j ] ; 2 uses
  %i.l = add nsw i32 %.03358, 1
  %i.m = icmp slt i32 %.03358, 0
  br i1 %i.m, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i46

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.d
  %i.n = load i16, ptr %.sroa.0.0.copyload47, align 2 ; 2 uses
  %i.o = trunc i16 %i.n to i8                     ; 2 uses
  %i.p = lshr i16 %i.n, 8
  %i.q = trunc nuw i16 %i.p to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.o, i8 %i.q)
  %i.r = zext i8 %.sroa.speculated.i.i to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %.016.i = phi i32 [ %.03757, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ], [ %i.ae, %bb.g ] ; 2 uses
  %i.s = sext i32 %.016.i to i64
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = sub i32 %i.i, %.016.i
  %i.v = sext i32 %i.u to i64
  %i.w = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.r, i64 noundef %i.v) #23 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.y, %i.j                       ; 3 uses
  %i.aa = trunc i64 %i.z to i32                   ; 6 uses
  %sext.i = shl i64 %i.z, 32
  %i.ab = ashr exact i64 %sext.i, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %.not.i = icmp eq i8 %i.ad, %i.o
  br i1 %.not.i, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = add nsw i32 %i.aa, 1
  %i.af = icmp sgt i32 %i.f, %i.aa
  br i1 %i.af, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !212

_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.f
  %i.ag = icmp eq i32 %i.aa, -1
  br i1 %i.ag, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit
  %sext = shl i64 %i.z, 32
  %i.ah = ashr exact i64 %sext, 32
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ah
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.h
  %indvars.iv = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %bb.h ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload47, i64 %indvars.iv
  %i.aj = load i16, ptr %i.ai, align 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ak = load i8, ptr %gep, align 1
  %i.al = zext i8 %i.ak to i16
  %.not44 = icmp eq i16 %i.aj, %i.al
  br i1 %.not44, label %bb.h, label %.split.loop.exit

bb.h:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit76, label %.preheader, !llvm.loop !283

.split.loop.exit:                                 ; preds = %.preheader
  %i.am = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.loop.exit76

.split.loop.exit76:                               ; preds = %bb.h, %.split.loop.exit
  %.136 = phi i32 [ %i.am, %.split.loop.exit ], [ %i.k, %bb.h ] ; 2 uses
  %.not45 = icmp eq i32 %.136, %i.c
  br i1 %.not45, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.j

_ZNK2v84base6VectorIKtE6lengthEv.exit.i46:        ; preds = %bb.d
  %i.an = load ptr, ptr %0, align 8               ; 64 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 60432 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load i32, ptr %i.ap, align 8            ; 5 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %vector.ph

vector.ph:                                        ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i46
  %i.as = add nsw i32 %i.aq, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 60448
  store <4 x i32> %broadcast.splat, ptr %i.ao, align 4
  store <4 x i32> %broadcast.splat, ptr %i.at, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 60464
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 60480
  store <4 x i32> %broadcast.splat, ptr %i.au, align 4
  store <4 x i32> %broadcast.splat, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 60496
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 60512
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.an, i64 60528
  %i.az = getelementptr inbounds nuw i8, ptr %i.an, i64 60544
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4
  store <4 x i32> %broadcast.splat, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.an, i64 60560
  %i.bb = getelementptr inbounds nuw i8, ptr %i.an, i64 60576
  store <4 x i32> %broadcast.splat, ptr %i.ba, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 60592
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 60608
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 60624
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 60640
  store <4 x i32> %broadcast.splat, ptr %i.be, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.an, i64 60656
  %i.bh = getelementptr inbounds nuw i8, ptr %i.an, i64 60672
  store <4 x i32> %broadcast.splat, ptr %i.bg, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.an, i64 60688
  %i.bj = getelementptr inbounds nuw i8, ptr %i.an, i64 60704
  store <4 x i32> %broadcast.splat, ptr %i.bi, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.an, i64 60720
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 60736
  store <4 x i32> %broadcast.splat, ptr %i.bk, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 60752
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 60768
  store <4 x i32> %broadcast.splat, ptr %i.bm, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.an, i64 60784
  %i.bp = getelementptr inbounds nuw i8, ptr %i.an, i64 60800
  store <4 x i32> %broadcast.splat, ptr %i.bo, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.an, i64 60816
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 60832
  store <4 x i32> %broadcast.splat, ptr %i.bq, align 4
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.an, i64 60848
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 60864
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.an, i64 60880
  %i.bv = getelementptr inbounds nuw i8, ptr %i.an, i64 60896
  store <4 x i32> %broadcast.splat, ptr %i.bu, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.an, i64 60912
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 60928
  store <4 x i32> %broadcast.splat, ptr %i.bw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 60944
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 60960
  store <4 x i32> %broadcast.splat, ptr %i.by, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.an, i64 60976
  %i.cb = getelementptr inbounds nuw i8, ptr %i.an, i64 60992
  store <4 x i32> %broadcast.splat, ptr %i.ca, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.an, i64 61008
  %i.cd = getelementptr inbounds nuw i8, ptr %i.an, i64 61024
  store <4 x i32> %broadcast.splat, ptr %i.cc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.an, i64 61040
  %i.cf = getelementptr inbounds nuw i8, ptr %i.an, i64 61056
  store <4 x i32> %broadcast.splat, ptr %i.ce, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.an, i64 61072
  %i.ch = getelementptr inbounds nuw i8, ptr %i.an, i64 61088
  store <4 x i32> %broadcast.splat, ptr %i.cg, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.an, i64 61104
  %i.cj = getelementptr inbounds nuw i8, ptr %i.an, i64 61120
  store <4 x i32> %broadcast.splat, ptr %i.ci, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.an, i64 61136
  %i.cl = getelementptr inbounds nuw i8, ptr %i.an, i64 61152
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.an, i64 61168
  %i.cn = getelementptr inbounds nuw i8, ptr %i.an, i64 61184
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.an, i64 61200
  %i.cp = getelementptr inbounds nuw i8, ptr %i.an, i64 61216
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.an, i64 61232
  %i.cr = getelementptr inbounds nuw i8, ptr %i.an, i64 61248
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.an, i64 61264
  %i.ct = getelementptr inbounds nuw i8, ptr %i.an, i64 61280
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 61296
  %i.cv = getelementptr inbounds nuw i8, ptr %i.an, i64 61312
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.an, i64 61328
  %i.cx = getelementptr inbounds nuw i8, ptr %i.an, i64 61344
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 61360
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 61376
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.an, i64 61392
  %i.db = getelementptr inbounds nuw i8, ptr %i.an, i64 61408
  store <4 x i32> %broadcast.splat, ptr %i.da, align 4
  store <4 x i32> %broadcast.splat, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.an, i64 61424
  %i.dd = getelementptr inbounds nuw i8, ptr %i.an, i64 61440
  store <4 x i32> %broadcast.splat, ptr %i.dc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4
  br label %.loopexit.i

bb.i:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i46
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.ao, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.i
  %i.de = add nsw i32 %i.c, -1                    ; 2 uses
  %i.df = icmp slt i32 %i.aq, %i.de
  br i1 %i.df, label %.lr.ph.preheader.i, label %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit

.lr.ph.preheader.i:                               ; preds = %.loopexit.i
  %i.dg = sext i32 %i.aq to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.de to i64      ; 3 uses
  %i.dh = sub nsw i64 %wide.trip.count.i, %i.dg
  %xtraiter = and i64 %i.dh, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.di = load ptr, ptr %i.a, align 8
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.dg
  %i.dk = load i16, ptr %i.dj, align 2
  %i.dl = and i16 %i.dk, 255
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.dm
  store i32 %i.aq, ptr %i.dn, align 4
  %indvars.iv.next24.i.prol.a = add nsw i64 %i.dg, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv23.i.unr = phi i64 [ %i.dg, %.lr.ph.preheader.i ], [ %indvars.iv.next24.i.prol.a, %.lr.ph.i.prol ]
  %4 = add nsw i64 %wide.trip.count.i, -1
  %5 = icmp eq i64 %4, %i.dg
  br i1 %5, label %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.1.a, %.lr.ph.i ], [ %indvars.iv23.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.do = load ptr, ptr %i.a, align 8
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.do, i64 %indvars.iv23.i
  %i.dq = load i16, ptr %i.dp, align 2
  %i.dr = and i16 %i.dq, 255
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ds
  %i.du = trunc nsw i64 %indvars.iv23.i to i32
  store i32 %i.du, ptr %i.dt, align 4
  %indvars.iv.next24.i.a = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.dv = load ptr, ptr %i.a, align 8
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %indvars.iv.next24.i.a
  %i.dx = load i16, ptr %i.dw, align 2
  %i.dy = and i16 %i.dx, 255
  %i.dz = zext nneg i16 %i.dy to i64
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.dz
  %i.eb = trunc nsw i64 %indvars.iv.next24.i.a to i32
  store i32 %i.eb, ptr %i.ea, align 4
  %indvars.iv.next24.i.1.a = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %exitcond26.not.i.1 = icmp eq i64 %indvars.iv.next24.i.1.a, %wide.trip.count.i
  br i1 %exitcond26.not.i.1, label %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i, !llvm.loop !284

_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.ec, align 8
  %i.ed = tail call noundef i32 @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03757)
  br label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.j:                                             ; preds = %.split.loop.exit76
  %i.ee = add nsw i32 %i.l, %.136
  %i.ef = add nuw nsw i32 %i.aa, 1
  %.not.not = icmp sgt i32 %i.f, %i.aa
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !285

_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %.split.loop.exit76, %bb.j, %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.e, %bb.g, %_ZNK2v84base6VectorIKhE6lengthEv.exit, %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit
  %spec.select = phi i32 [ %i.ed, %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit ], [ -1, %bb.e ], [ -1, %_ZNK2v84base6VectorIKhE6lengthEv.exit ], [ -1, %bb.g ], [ -1, %bb.j ], [ %i.aa, %.split.loop.exit76 ], [ -1, %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload63 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 4 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60432 ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 6 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload63, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = and i16 %i.k, 255
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sub nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %i.r = icmp samesign ugt i64 %.sroa.5.0.copyload.fr, 1
  br i1 %i.r, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split

_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.s = sub nsw i32 0, %i.e
  %i.t = add nuw nsw i64 %.sroa.5.0.copyload.fr, 4294967294
  %i.u = and i64 %i.t, 4294967295
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us

_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us:   ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader, %.critedge.us
  %.053.us = phi i32 [ %i.ao, %.critedge.us ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader ] ; 2 uses
  %.048.us = phi i32 [ %i.ar, %.critedge.us ], [ %i.s, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us.preheader ]
  %.not.us = icmp sgt i32 %.053.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us, %bb.d
  %.154.us = phi i32 [ %i.ae, %bb.d ], [ %.053.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us ] ; 5 uses
  %.149.us = phi i32 [ %i.af, %bb.d ], [ %.048.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us ] ; 2 uses
  %i.v = add nsw i32 %.154.us, %i.h
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = zext i8 %i.y to i16
  %.not60.us = icmp eq i16 %i.k, %i.z
  br i1 %.not60.us, label %.lr.ph.us, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %i.aa = zext i8 %i.y to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub nsw i32 %i.h, %i.ac                 ; 2 uses
  %i.ae = add nsw i32 %i.ad, %.154.us             ; 2 uses
  %reass.sub.us = add i32 %.149.us, 1
  %i.af = sub i32 %reass.sub.us, %i.ad
  %.not61.us = icmp sgt i32 %i.ae, %i.q
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !286

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ag = sext i32 %.154.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.us ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload63, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.aj = load i8, ptr %gep, align 1
  %i.ak = zext i8 %i.aj to i16
  %i.al = icmp eq i16 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.am = icmp sgt i64 %indvars.iv, 0
  br i1 %i.am, label %bb.e, label %.thread, !llvm.loop !287

.critedge.us:                                     ; preds = %bb.e
  %i.an = trunc nsw i64 %indvars.iv to i32
  %i.ao = add nsw i32 %.154.us, %i.p              ; 2 uses
  %i.ap = add i32 %.149.us, %i.e
  %i.aq = add i32 %i.p, %i.an
  %i.ar = sub i32 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us, !llvm.loop !288

_ZNK2v84base6VectorIKtE6lengthEv.exit.split:      ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.not = icmp sgt i32 %3, %i.q
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.split, %bb.g
  %.154 = phi i32 [ %i.bc, %bb.g ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split ] ; 3 uses
  %i.at = add nsw i32 %.154, %i.h
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1             ; 2 uses
  %i.ax = zext i8 %i.aw to i16
  %.not60 = icmp eq i16 %i.k, %i.ax
  br i1 %.not60, label %.thread, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.ay = zext i8 %i.aw to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = sub nsw i32 %i.h, %i.ba
  %i.bc = add nsw i32 %i.bb, %.154                ; 2 uses
  %.not61 = icmp sgt i32 %i.bc, %i.q
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !286

.split.us:                                        ; preds = %.critedge.us
  tail call void @_ZN2v88internal12StringSearchIthE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.bd, align 8
  %i.be = tail call noundef i32 @_ZN2v88internal12StringSearchIthE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i32 noundef %i.ao)
  br label %.thread

.thread:                                          ; preds = %bb.g, %.preheader, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us, %bb.d, %bb.f, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split, %.split.us
  %.4 = phi i32 [ %.154.us, %bb.f ], [ %i.be, %.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit.split ], [ -1, %bb.d ], [ -1, %bb.g ], [ %.154, %.preheader ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StringSearchIthE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = trunc nuw nsw i64 %i.b to i32            ; 14 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 12 uses
  %i.i = sub i32 %i.e, %i.h                       ; 7 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 61456 ; 4 uses
  %i.l = sext i32 %i.h to i64                     ; 7 uses
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 62460
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.m ; 9 uses
  %i.q = icmp slt i32 %i.h, %i.e
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.r = sub nsw i64 %i.b, %i.l                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !289

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit128, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b
  store i32 1, ptr %i.w, align 4
  %i.x = add nuw i32 %i.e, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.x, ptr %i.y, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.i, ptr %i.z, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !290

.loopexit128:                                     ; preds = %.lr.ph, %middle.block
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b ; 3 uses
  store i32 1, ptr %i.aa, align 4
  %i.ab = add nuw i32 %i.e, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr [2 x i8], ptr %i.f, i64 %i.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 -2
  %i.af = load i16, ptr %i.ae, align 2
  br label %bb.c

bb.c:                                             ; preds = %.loopexit128, %.critedge94
  %.083108 = phi i32 [ %i.e, %.loopexit128 ], [ %.2, %.critedge94 ] ; 3 uses
  %.084107 = phi i32 [ %i.ab, %.loopexit128 ], [ %.286, %.critedge94 ] ; 3 uses
  %i.ag = sext i32 %.083108 to i64
  %i.ah = getelementptr [2 x i8], ptr %i.f, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2
  %.not9198 = icmp sgt i32 %.084107, %i.e
  br i1 %.not9198, label %.critedge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.18599 = phi i32 [ %i.at, %bb.f ], [ %.084107, %bb.c ] ; 3 uses
  %i.ak = sext i32 %.18599 to i64                 ; 3 uses
  %i.al = getelementptr [2 x i8], ptr %i.f, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -2
  %i.an = load i16, ptr %i.am, align 2
  %.not92 = icmp eq i16 %i.aj, %i.an
  br i1 %.not92, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph101
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ak ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %i.i
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.18599, %.083108
  store i32 %i.ar, ptr %i.ao, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !291

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2
  %.not93 = icmp eq i16 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !292

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !293

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !294

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIthE16BoyerMooreSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not80 = icmp sgt i32 %3, %i.q
  br i1 %.not80, label %.thread, label %.preheader73.lr.ph

.preheader73.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = and i16 %i.p, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader73, label %.preheader73.us

.preheader73.us:                                  ; preds = %.preheader73.lr.ph, %.preheader73.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader73.us.backedge ], [ %3, %.preheader73.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1               ; 2 uses
  %i.y = zext i8 %i.x to i16
  %.not64.us = icmp eq i16 %i.p, %i.y
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader73.us
  %i.z = zext i8 %i.x to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.m, %i.ab
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader73.us.backedge

.preheader73.us.backedge:                         ; preds = %bb.d, %bb.i
  %.150.us.be = phi i32 [ %i.ad, %bb.d ], [ %.251.us, %bb.i ]
  br label %.preheader73.us, !llvm.loop !295

bb.e:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i8, ptr %gep, align 1              ; 2 uses
  %i.ah = zext i8 %i.ag to i16
  %i.ai = icmp eq i16 %i.af, %i.ah
  br i1 %i.ai, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.aj = icmp sgt i64 %indvars.iv, 0
  br i1 %i.aj, label %bb.e, label %.thread, !llvm.loop !296

.critedge.us:                                     ; preds = %bb.e
  %i.ak = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.al = icmp sgt i32 %i.g, %i.ak
  br i1 %i.al, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.us
  %i.am = and i64 %indvars.iv, 4294967295
  %i.an = getelementptr [4 x i8], ptr %i.l, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 61460
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i8 %i.ag to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub nsw i32 %i.ak, %i.as
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.at)
  br label %bb.i

bb.h:                                             ; preds = %.critedge.us
  %i.au = load i32, ptr %i.t, align 4
  %i.av = sub nsw i32 %i.m, %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.us = phi i32 [ %i.av, %bb.h ], [ %spec.select.us, %bb.g ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader73.us.backedge

.preheader.us:                                    ; preds = %.preheader73.us
  %i.aw = sext i32 %.150.us to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.aw
  br label %bb.e

.preheader73:                                     ; preds = %.preheader73.lr.ph, %bb.j
  %.150 = phi i32 [ %i.bg, %bb.j ], [ %3, %.preheader73.lr.ph ] ; 3 uses
  %i.ax = add nsw i32 %.150, %i.m
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %i.bb = zext i8 %i.ba to i16
  %.not64 = icmp eq i16 %i.p, %i.bb
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader73
  %i.bc = zext i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sub nuw nsw i32 %i.m, %i.be
  %i.bg = add nsw i32 %i.bf, %.150                ; 2 uses
  %.not65 = icmp sgt i32 %i.bg, %i.q
  br i1 %.not65, label %.thread, label %.preheader73, !llvm.loop !297

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader73, %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %.4 = phi i32 [ %.150.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit ], [ %.150, %.preheader73 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE16SingleCharSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.01.0.copyload = load ptr, ptr %i.a, align 8
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8 ; 2 uses
  %i.b = load i16, ptr %.sroa.01.0.copyload, align 2 ; 4 uses
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit33.i:        ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = trunc nuw nsw i64 %.sroa.22.0.copyload to i32
  %i.g = sub nsw i32 %i.e, %i.f                   ; 3 uses
  %i.h = add i32 %i.g, 1                          ; 2 uses
  %i.i = icmp eq i16 %i.b, 0
  br i1 %i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %.not44.i = icmp sgt i32 %3, %i.g
  br i1 %.not44.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.j = sext i32 %3 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.l = load i16, ptr %i.k, align 2
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %.thread.loopexit.split.loop.exit58.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.h, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !298

bb.e:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.n = trunc i16 %i.b to i8
  %i.o = lshr i16 %i.b, 8
  %i.p = trunc nuw i16 %i.o to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.n, i8 %i.p)
  %i.q = zext i8 %.sroa.speculated.i.i to i32
  %i.r = ptrtoint ptr %1 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.0.i = phi i32 [ %3, %bb.e ], [ %i.ah, %bb.h ] ; 2 uses
  %i.s = sext i32 %.0.i to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %1, i64 %i.s
  %i.u = sub i32 %i.h, %.0.i
  %i.v = sext i32 %i.u to i64
  %i.w = shl nsw i64 %i.v, 1
  %i.x = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.q, i64 noundef %i.w) #23 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = and i64 %i.z, -2
  %i.ab = sub i64 %i.aa, %i.r                     ; 2 uses
  %i.ac = lshr exact i64 %i.ab, 1
  %i.ad = trunc i64 %i.ac to i32                  ; 3 uses
  %sext.i = shl i64 %i.ab, 31
  %i.ae = ashr i64 %sext.i, 32
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %.not41.i = icmp eq i16 %i.ag, %i.b
  br i1 %.not41.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ad, 1
  %i.ai = icmp sgt i32 %i.g, %i.ad
  br i1 %i.ai, label %bb.f, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !299

.thread.loopexit.split.loop.exit58.i:             ; preds = %.lr.ph.i
  %i.aj = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.f, %bb.g, %bb.h, %bb.d, %.preheader.i, %.thread.loopexit.split.loop.exit58.i
  %.4.i = phi i32 [ -1, %.preheader.i ], [ -1, %bb.d ], [ %i.aj, %.thread.loopexit.split.loop.exit58.i ], [ -1, %bb.f ], [ %i.ad, %bb.g ], [ -1, %bb.h ]
  ret i32 %.4.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE12LinearSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload18 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit15, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit15:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %.sroa.5.0.copyload to i32
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.d                   ; 3 uses
  %i.g = add i32 %i.f, 1                          ; 2 uses
  %i.h = ptrtoint ptr %1 to i64
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload18, i64 2
  %i.j = shl nuw nsw i64 %.sroa.5.0.copyload, 32
  %sext = add nsw i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit, %_ZNK2v84base6VectorIKtE6lengthEv.exit15
  %.013 = phi i32 [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit15 ], [ %i.ao, %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit ] ; 3 uses
  %.not = icmp sgt i32 %.013, %i.f
  br i1 %.not, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i

_ZNK2v84base6VectorIKtE6lengthEv.exit33.i:        ; preds = %bb.d
  %i.l = load i16, ptr %.sroa.0.0.copyload18, align 2 ; 4 uses
  %i.m = icmp eq i16 %i.l, 0
  br i1 %i.m, label %.lr.ph.preheader.i, label %bb.f

.lr.ph.preheader.i:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.n = sext i32 %.013 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.n, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.p = load i16, ptr %i.o, align 2
  %i.q = icmp eq i16 %i.p, 0
  br i1 %i.q, label %.thread.loopexit.split.loop.exit58.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.g, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !298

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.r = trunc i16 %i.l to i8
  %i.s = lshr i16 %i.l, 8
  %i.t = trunc nuw i16 %i.s to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.r, i8 %i.t)
  %i.u = zext i8 %.sroa.speculated.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.0.i = phi i32 [ %.013, %bb.f ], [ %i.ak, %bb.i ] ; 2 uses
  %i.v = sext i32 %.0.i to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %1, i64 %i.v
  %i.x = sub i32 %i.g, %.0.i
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 1
  %i.aa = tail call noundef ptr @memchr(ptr noundef %i.w, i32 noundef %i.u, i64 noundef %i.z) #23 ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = and i64 %i.ac, -2
  %i.ae = sub i64 %i.ad, %i.h                     ; 2 uses
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %sext.i = shl i64 %i.ae, 31
  %i.ah = ashr i64 %sext.i, 32
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2
  %.not41.i = icmp eq i16 %i.aj, %i.l
  br i1 %.not41.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = add nsw i32 %i.ag, 1
  %i.al = icmp sgt i32 %i.f, %i.ag
  br i1 %i.al, label %bb.g, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !299

.thread.loopexit.split.loop.exit58.i:             ; preds = %.lr.ph.i
  %i.am = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.h, %.thread.loopexit.split.loop.exit58.i
  %.4.i = phi i32 [ %i.am, %.thread.loopexit.split.loop.exit58.i ], [ %i.ag, %bb.h ] ; 3 uses
  %i.an = icmp eq i32 %.4.i, -1
  br i1 %i.an, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit
  %i.ao = add nuw nsw i32 %.4.i, 1                ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ap
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17, %bb.k ], [ 0, %bb.j ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %indvars.iv.i16
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %indvars.iv.i16
  %i.au = load i16, ptr %i.at, align 2
  %.not.i = icmp eq i16 %i.as, %i.au              ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %i.av = icmp slt i64 %indvars.iv.next.i17, %i.k
  %or.cond.i = select i1 %.not.i, i1 %i.av, i1 false
  br i1 %or.cond.i, label %bb.k, label %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit, !llvm.loop !300

_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit: ; preds = %bb.k
  br i1 %.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.d, !llvm.loop !301

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %bb.d, %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit, %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.g, %bb.i, %bb.e
  %.0 = phi i32 [ -1, %bb.g ], [ -1, %bb.e ], [ -1, %bb.i ], [ -1, %bb.d ], [ %.4.i, %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit ], [ -1, %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE13InitialSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.sroa.0.0.copyload54 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %i.b = icmp ult i64 %.sroa.5.0.copyload, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %.sroa.5.0.copyload to i32 ; 5 uses
  %i.d = icmp ult i64 %2, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKtE6lengthEv.exit46, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit46:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.e = trunc nuw nsw i64 %2 to i32
  %i.f = sub nsw i32 %i.e, %i.c                   ; 4 uses
  %.not66 = icmp sgt i32 %3, %i.f
  br i1 %.not66, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit46
  %i.g = shl i32 %i.c, 2
  %i.h = sub nsw i32 -10, %i.g
  %i.i = add i32 %i.f, 1                          ; 2 uses
  %i.j = ptrtoint ptr %1 to i64
  %i.k = tail call i32 @llvm.umax.i32(i32 %i.c, i32 2) ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.l
  %.03368 = phi i32 [ %i.h, %.lr.ph ], [ %i.em, %bb.l ] ; 2 uses
  %.03767 = phi i32 [ %3, %.lr.ph ], [ %i.en, %bb.l ] ; 3 uses
  %i.l = add nsw i32 %.03368, 1
  %i.m = icmp slt i32 %.03368, 0
  br i1 %i.m, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i47

_ZNK2v84base6VectorIKtE6lengthEv.exit33.i:        ; preds = %bb.d
  %i.n = load i16, ptr %.sroa.0.0.copyload54, align 2 ; 4 uses
  %i.o = icmp eq i16 %i.n, 0
  br i1 %i.o, label %.lr.ph.preheader.i, label %bb.f

.lr.ph.preheader.i:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.p = sext i32 %.03767 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.p, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv.i
  %i.r = load i16, ptr %i.q, align 2
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %.thread.loopexit.split.loop.exit58.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.i, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !298

bb.f:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i
  %i.t = trunc i16 %i.n to i8
  %i.u = lshr i16 %i.n, 8
  %i.v = trunc nuw i16 %i.u to i8
  %.sroa.speculated.i.i = tail call noundef i8 @llvm.umax.i8(i8 %i.t, i8 %i.v)
  %i.w = zext i8 %.sroa.speculated.i.i to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.0.i = phi i32 [ %.03767, %bb.f ], [ %i.am, %bb.i ] ; 2 uses
  %i.x = sext i32 %.0.i to i64
  %i.y = getelementptr inbounds [2 x i8], ptr %1, i64 %i.x
  %i.z = sub i32 %i.i, %.0.i
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 1
  %i.ac = tail call noundef ptr @memchr(ptr noundef %i.y, i32 noundef %i.w, i64 noundef %i.ab) #23 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = and i64 %i.ae, -2
  %i.ag = sub i64 %i.af, %i.j                     ; 2 uses
  %i.ah = lshr exact i64 %i.ag, 1
  %i.ai = trunc i64 %i.ah to i32                  ; 3 uses
  %sext.i = shl i64 %i.ag, 31
  %i.aj = ashr i64 %sext.i, 32
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %.not41.i = icmp eq i16 %i.al, %i.n
  br i1 %.not41.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = add nsw i32 %i.ai, 1
  %i.an = icmp sgt i32 %i.f, %i.ai
  br i1 %i.an, label %bb.g, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !299

.thread.loopexit.split.loop.exit58.i:             ; preds = %.lr.ph.i
  %i.ao = trunc nsw i64 %indvars.iv.i to i32
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit: ; preds = %bb.h, %.thread.loopexit.split.loop.exit58.i
  %.4.i = phi i32 [ %i.ao, %.thread.loopexit.split.loop.exit58.i ], [ %i.ai, %bb.h ] ; 5 uses
  %i.ap = icmp eq i32 %.4.i, -1
  br i1 %i.ap, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit
  %i.aq = sext i32 %.4.i to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.aq
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.j
  %indvars.iv = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %bb.j ] ; 4 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload54, i64 %indvars.iv
  %i.as = load i16, ptr %i.ar, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.at = load i16, ptr %gep, align 2
  %.not44 = icmp eq i16 %i.as, %i.at
  br i1 %.not44, label %bb.j, label %.split.loop.exit

bb.j:                                             ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.split.loop.exit91, label %.preheader, !llvm.loop !302

.split.loop.exit:                                 ; preds = %.preheader
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  br label %.split.loop.exit91

.split.loop.exit91:                               ; preds = %bb.j, %.split.loop.exit
  %.136 = phi i32 [ %i.au, %.split.loop.exit ], [ %i.k, %bb.j ] ; 2 uses
  %.not45 = icmp eq i32 %.136, %i.c
  br i1 %.not45, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.l

_ZNK2v84base6VectorIKtE6lengthEv.exit.i47:        ; preds = %bb.d
  %i.av = load ptr, ptr %0, align 8               ; 64 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 60432 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ay = load i32, ptr %i.ax, align 8            ; 5 uses
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.k, label %vector.ph

vector.ph:                                        ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i47
  %i.ba = add nsw i32 %i.ay, -1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 64 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 60448
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.av, i64 60464
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 60480
  store <4 x i32> %broadcast.splat, ptr %i.bc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %i.av, i64 60496
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 60512
  store <4 x i32> %broadcast.splat, ptr %i.be, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bf, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 60528
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 60544
  store <4 x i32> %broadcast.splat, ptr %i.bg, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 60560
  %i.bj = getelementptr inbounds nuw i8, ptr %i.av, i64 60576
  store <4 x i32> %broadcast.splat, ptr %i.bi, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.av, i64 60592
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 60608
  store <4 x i32> %broadcast.splat, ptr %i.bk, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 60624
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 60640
  store <4 x i32> %broadcast.splat, ptr %i.bm, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.av, i64 60656
  %i.bp = getelementptr inbounds nuw i8, ptr %i.av, i64 60672
  store <4 x i32> %broadcast.splat, ptr %i.bo, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bp, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 60688
  %i.br = getelementptr inbounds nuw i8, ptr %i.av, i64 60704
  store <4 x i32> %broadcast.splat, ptr %i.bq, align 4
  store <4 x i32> %broadcast.splat, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.av, i64 60720
  %i.bt = getelementptr inbounds nuw i8, ptr %i.av, i64 60736
  store <4 x i32> %broadcast.splat, ptr %i.bs, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.av, i64 60752
  %i.bv = getelementptr inbounds nuw i8, ptr %i.av, i64 60768
  store <4 x i32> %broadcast.splat, ptr %i.bu, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.av, i64 60784
  %i.bx = getelementptr inbounds nuw i8, ptr %i.av, i64 60800
  store <4 x i32> %broadcast.splat, ptr %i.bw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bx, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.av, i64 60816
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 60832
  store <4 x i32> %broadcast.splat, ptr %i.by, align 4
  store <4 x i32> %broadcast.splat, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 60848
  %i.cb = getelementptr inbounds nuw i8, ptr %i.av, i64 60864
  store <4 x i32> %broadcast.splat, ptr %i.ca, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.av, i64 60880
  %i.cd = getelementptr inbounds nuw i8, ptr %i.av, i64 60896
  store <4 x i32> %broadcast.splat, ptr %i.cc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cd, align 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.av, i64 60912
  %i.cf = getelementptr inbounds nuw i8, ptr %i.av, i64 60928
  store <4 x i32> %broadcast.splat, ptr %i.ce, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cf, align 4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.av, i64 60944
  %i.ch = getelementptr inbounds nuw i8, ptr %i.av, i64 60960
  store <4 x i32> %broadcast.splat, ptr %i.cg, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.av, i64 60976
  %i.cj = getelementptr inbounds nuw i8, ptr %i.av, i64 60992
  store <4 x i32> %broadcast.splat, ptr %i.ci, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cj, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 61008
  %i.cl = getelementptr inbounds nuw i8, ptr %i.av, i64 61024
  store <4 x i32> %broadcast.splat, ptr %i.ck, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cl, align 4
  %i.cm = getelementptr inbounds nuw i8, ptr %i.av, i64 61040
  %i.cn = getelementptr inbounds nuw i8, ptr %i.av, i64 61056
  store <4 x i32> %broadcast.splat, ptr %i.cm, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.av, i64 61072
  %i.cp = getelementptr inbounds nuw i8, ptr %i.av, i64 61088
  store <4 x i32> %broadcast.splat, ptr %i.co, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.av, i64 61104
  %i.cr = getelementptr inbounds nuw i8, ptr %i.av, i64 61120
  store <4 x i32> %broadcast.splat, ptr %i.cq, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cr, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.av, i64 61136
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 61152
  store <4 x i32> %broadcast.splat, ptr %i.cs, align 4
  store <4 x i32> %broadcast.splat, ptr %i.ct, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.av, i64 61168
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 61184
  store <4 x i32> %broadcast.splat, ptr %i.cu, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cv, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.av, i64 61200
  %i.cx = getelementptr inbounds nuw i8, ptr %i.av, i64 61216
  store <4 x i32> %broadcast.splat, ptr %i.cw, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %i.av, i64 61232
  %i.cz = getelementptr inbounds nuw i8, ptr %i.av, i64 61248
  store <4 x i32> %broadcast.splat, ptr %i.cy, align 4
  store <4 x i32> %broadcast.splat, ptr %i.cz, align 4
  %i.da = getelementptr inbounds nuw i8, ptr %i.av, i64 61264
  %i.db = getelementptr inbounds nuw i8, ptr %i.av, i64 61280
  store <4 x i32> %broadcast.splat, ptr %i.da, align 4
  store <4 x i32> %broadcast.splat, ptr %i.db, align 4
  %i.dc = getelementptr inbounds nuw i8, ptr %i.av, i64 61296
  %i.dd = getelementptr inbounds nuw i8, ptr %i.av, i64 61312
  store <4 x i32> %broadcast.splat, ptr %i.dc, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.av, i64 61328
  %i.df = getelementptr inbounds nuw i8, ptr %i.av, i64 61344
  store <4 x i32> %broadcast.splat, ptr %i.de, align 4
  store <4 x i32> %broadcast.splat, ptr %i.df, align 4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.av, i64 61360
  %i.dh = getelementptr inbounds nuw i8, ptr %i.av, i64 61376
  store <4 x i32> %broadcast.splat, ptr %i.dg, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.av, i64 61392
  %i.dj = getelementptr inbounds nuw i8, ptr %i.av, i64 61408
  store <4 x i32> %broadcast.splat, ptr %i.di, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dj, align 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.av, i64 61424
  %i.dl = getelementptr inbounds nuw i8, ptr %i.av, i64 61440
  store <4 x i32> %broadcast.splat, ptr %i.dk, align 4
  store <4 x i32> %broadcast.splat, ptr %i.dl, align 4
  br label %.loopexit.i

bb.k:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.aw, i8 -1, i64 1024, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %vector.ph, %bb.k
  %i.dm = add nsw i32 %i.c, -1                    ; 2 uses
  %i.dn = icmp slt i32 %i.ay, %i.dm
  br i1 %i.dn, label %.lr.ph.preheader.i52, label %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit

.lr.ph.preheader.i52:                             ; preds = %.loopexit.i
  %i.do = sext i32 %i.ay to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.dm to i64      ; 3 uses
  %i.dp = sub nsw i64 %wide.trip.count.i, %i.do
  %xtraiter = and i64 %i.dp, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i53.prol.loopexit, label %.lr.ph.i53.prol

.lr.ph.i53.prol:                                  ; preds = %.lr.ph.preheader.i52
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %i.do
  %i.ds = load i16, ptr %i.dr, align 2
  %i.dt = and i16 %i.ds, 255
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.du
  store i32 %i.ay, ptr %i.dv, align 4
  %indvars.iv.next24.i.prol.a = add nsw i64 %i.do, 1
  br label %.lr.ph.i53.prol.loopexit

.lr.ph.i53.prol.loopexit:                         ; preds = %.lr.ph.i53.prol, %.lr.ph.preheader.i52
  %indvars.iv23.i.unr = phi i64 [ %i.do, %.lr.ph.preheader.i52 ], [ %indvars.iv.next24.i.prol.a, %.lr.ph.i53.prol ]
  %4 = add nsw i64 %wide.trip.count.i, -1
  %5 = icmp eq i64 %4, %i.do
  br i1 %5, label %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53
  %indvars.iv23.i = phi i64 [ %indvars.iv.next24.i.1.a, %.lr.ph.i53 ], [ %indvars.iv23.i.unr, %.lr.ph.i53.prol.loopexit ] ; 4 uses
  %i.dw = load ptr, ptr %i.a, align 8
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %indvars.iv23.i
  %i.dy = load i16, ptr %i.dx, align 2
  %i.dz = and i16 %i.dy, 255
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.ea
  %i.ec = trunc nsw i64 %indvars.iv23.i to i32
  store i32 %i.ec, ptr %i.eb, align 4
  %indvars.iv.next24.i.a = add nsw i64 %indvars.iv23.i, 1 ; 2 uses
  %i.ed = load ptr, ptr %i.a, align 8
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %indvars.iv.next24.i.a
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = and i16 %i.ef, 255
  %i.eh = zext nneg i16 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.eh
  %i.ej = trunc nsw i64 %indvars.iv.next24.i.a to i32
  store i32 %i.ej, ptr %i.ei, align 4
  %indvars.iv.next24.i.1.a = add nsw i64 %indvars.iv23.i, 2 ; 2 uses
  %exitcond26.not.i.1 = icmp eq i64 %indvars.iv.next24.i.1.a, %wide.trip.count.i
  br i1 %exitcond26.not.i.1, label %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i53, !llvm.loop !303

_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %.loopexit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi, ptr %i.ek, align 8
  %i.el = tail call noundef i32 @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03767)
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.l:                                             ; preds = %.split.loop.exit91
  %i.em = add nsw i32 %i.l, %.136
  %i.en = add nuw nsw i32 %.4.i, 1
  %.not.not = icmp slt i32 %.4.i, %i.f
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !304

_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread: ; preds = %.split.loop.exit91, %bb.l, %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, %bb.g, %bb.i, %bb.e, %_ZNK2v84base6VectorIKtE6lengthEv.exit46, %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit
  %spec.select = phi i32 [ -1, %bb.g ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit46 ], [ %i.el, %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit ], [ -1, %bb.e ], [ -1, %bb.i ], [ -1, %bb.l ], [ %.4.i, %.split.loop.exit91 ], [ -1, %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit ]
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload64 = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 4 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit62:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 4 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 60432 ; 3 uses
  %i.h = add nsw i32 %i.e, -1                     ; 6 uses
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload64, i64 %i.i
  %i.k = load i16, ptr %i.j, align 2              ; 3 uses
  %i.l = and i16 %i.k, 255
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sub nsw i32 %i.h, %i.o                   ; 2 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %i.r = icmp samesign ugt i64 %.sroa.5.0.copyload.fr, 1
  br i1 %i.r, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split

_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62
  %i.s = sub nsw i32 0, %i.e
  %i.t = add nuw nsw i64 %.sroa.5.0.copyload.fr, 4294967294
  %i.u = and i64 %i.t, 4294967295
  br label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us

_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader, %.critedge.us
  %.053.us = phi i32 [ %i.an, %.critedge.us ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader ] ; 2 uses
  %.048.us = phi i32 [ %i.aq, %.critedge.us ], [ %i.s, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us.preheader ]
  %.not.us = icmp sgt i32 %.053.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader.us

.preheader.us:                                    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us, %bb.d
  %.154.us = phi i32 [ %i.ae, %bb.d ], [ %.053.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us ] ; 5 uses
  %.149.us = phi i32 [ %i.af, %bb.d ], [ %.048.us, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us ] ; 2 uses
  %i.v = add nsw i32 %.154.us, %i.h
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %.not60.us = icmp eq i16 %i.k, %i.y
  br i1 %.not60.us, label %.lr.ph.us, label %bb.d

bb.d:                                             ; preds = %.preheader.us
  %i.z = and i16 %i.y, 255
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sub nsw i32 %i.h, %i.ac                 ; 2 uses
  %i.ae = add nsw i32 %i.ad, %.154.us             ; 2 uses
  %reass.sub.us = add i32 %.149.us, 1
  %i.af = sub i32 %reass.sub.us, %i.ad
  %.not61.us = icmp sgt i32 %i.ae, %i.q
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !305

.lr.ph.us:                                        ; preds = %.preheader.us
  %i.ag = sext i32 %.154.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.ag
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.f
  %indvars.iv = phi i64 [ %i.u, %.lr.ph.us ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload64, i64 %indvars.iv
  %i.ai = load i16, ptr %i.ah, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aj = load i16, ptr %gep, align 2
  %i.ak = icmp eq i16 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.al = icmp sgt i64 %indvars.iv, 0
  br i1 %i.al, label %bb.e, label %.thread, !llvm.loop !306

.critedge.us:                                     ; preds = %bb.e
  %i.am = trunc nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %.154.us, %i.p              ; 2 uses
  %i.ao = add i32 %.149.us, %i.e
  %i.ap = add i32 %i.p, %i.am
  %i.aq = sub i32 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us, !llvm.loop !307

_ZNK2v84base6VectorIKtE6lengthEv.exit62.split:    ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62
  %.not = icmp sgt i32 %3, %i.q
  br i1 %.not, label %.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split, %bb.g
  %.154 = phi i32 [ %i.bb, %bb.g ], [ %3, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split ] ; 3 uses
  %i.as = add nsw i32 %.154, %i.h
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.at
  %i.av = load i16, ptr %i.au, align 2            ; 2 uses
  %.not60 = icmp eq i16 %i.k, %i.av
  br i1 %.not60, label %.thread, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.aw = and i16 %i.av, 255
  %i.ax = zext nneg i16 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = sub nsw i32 %i.h, %i.az
  %i.bb = add nsw i32 %i.ba, %.154                ; 2 uses
  %.not61 = icmp sgt i32 %i.bb, %i.q
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !305

.split.us:                                        ; preds = %.critedge.us
  tail call void @_ZN2v88internal12StringSearchIttE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0)
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi, ptr %i.bc, align 8
  %i.bd = tail call noundef i32 @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef nonnull %0, ptr nonnull %1, i64 %2, i32 noundef %i.an)
  br label %.thread

.thread:                                          ; preds = %bb.g, %.preheader, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us, %bb.d, %bb.f, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split, %.split.us
  %.4 = phi i32 [ %.154.us, %bb.f ], [ %i.bd, %.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split ], [ -1, %bb.d ], [ -1, %bb.g ], [ %.154, %.preheader ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal12StringSearchIttE23PopulateBoyerMooreTableEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8              ; 10 uses
  %i.c = icmp ult i64 %i.b, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = trunc nuw nsw i64 %i.b to i32            ; 14 uses
  %i.f = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load i32, ptr %i.g, align 8              ; 12 uses
  %i.i = sub i32 %i.e, %i.h                       ; 7 uses
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 61456 ; 4 uses
  %i.l = sext i32 %i.h to i64                     ; 7 uses
  %i.m = sub nsw i64 0, %i.l                      ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.m ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 62460
  %i.p = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.m ; 9 uses
  %i.q = icmp slt i32 %i.h, %i.e
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.r = sub nsw i64 %i.b, %i.l                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.r, 8
  br i1 %min.iters.check, label %.lr.ph.preheader130, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  %i.s = add nsw i64 %n.vec, %i.l
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.t, align 4
  store <4 x i32> %broadcast.splat, ptr %i.u, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !308

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit128, label %.lr.ph.preheader130

.lr.ph.preheader130:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.l, %.lr.ph.preheader ], [ %i.s, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b
  store i32 1, ptr %i.w, align 4
  %i.x = add nuw i32 %i.e, 1
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.x, ptr %i.y, align 4
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader130, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader130 ] ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv
  store i32 %i.i, ptr %i.z, align 4
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !309

.loopexit128:                                     ; preds = %.lr.ph, %middle.block
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.b ; 3 uses
  store i32 1, ptr %i.aa, align 4
  %i.ab = add nuw i32 %i.e, 1                     ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.b
  store i32 %i.ab, ptr %i.ac, align 4
  %i.ad = getelementptr [2 x i8], ptr %i.f, i64 %i.b
  %i.ae = getelementptr i8, ptr %i.ad, i64 -2
  %i.af = load i16, ptr %i.ae, align 2
  br label %bb.c

bb.c:                                             ; preds = %.loopexit128, %.critedge94
  %.083108 = phi i32 [ %i.e, %.loopexit128 ], [ %.2, %.critedge94 ] ; 3 uses
  %.084107 = phi i32 [ %i.ab, %.loopexit128 ], [ %.286, %.critedge94 ] ; 3 uses
  %i.ag = sext i32 %.083108 to i64
  %i.ah = getelementptr [2 x i8], ptr %i.f, i64 %i.ag
  %i.ai = getelementptr i8, ptr %i.ah, i64 -2
  %i.aj = load i16, ptr %i.ai, align 2
  %.not9198 = icmp sgt i32 %.084107, %i.e
  br i1 %.not9198, label %.critedge, label %.lr.ph101

.lr.ph101:                                        ; preds = %bb.c, %bb.f
  %.18599 = phi i32 [ %i.at, %bb.f ], [ %.084107, %bb.c ] ; 3 uses
  %i.ak = sext i32 %.18599 to i64                 ; 3 uses
  %i.al = getelementptr [2 x i8], ptr %i.f, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 -2
  %i.an = load i16, ptr %i.am, align 2
  %.not92 = icmp eq i16 %i.aj, %i.an
  br i1 %.not92, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.lr.ph101
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ak ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = icmp eq i32 %i.ap, %i.i
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ar = sub nsw i32 %.18599, %.083108
  store i32 %i.ar, ptr %i.ao, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ak
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %.not91 = icmp sgt i32 %i.at, %i.e
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !310

.critedge:                                        ; preds = %.lr.ph101, %bb.f, %bb.c
  %.185.lcssa = phi i32 [ %.084107, %bb.c ], [ %i.at, %bb.f ], [ %.18599, %.lr.ph101 ] ; 2 uses
  %i.au = add nsw i32 %.185.lcssa, -1             ; 3 uses
  %i.av = add nsw i32 %.083108, -1                ; 3 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  store i32 %i.au, ptr %i.ax, align 4
  %i.ay = icmp eq i32 %i.au, %i.e
  %i.az = icmp sgt i32 %i.av, %i.h
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %.lr.ph105, label %.critedge94

.lr.ph105:                                        ; preds = %.critedge, %bb.i
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.i ], [ %i.aw, %.critedge ] ; 4 uses
  %i.ba = getelementptr [2 x i8], ptr %i.f, i64 %indvars.iv116
  %i.bb = getelementptr i8, ptr %i.ba, i64 -2
  %i.bc = load i16, ptr %i.bb, align 2
  %.not93 = icmp eq i16 %i.bc, %i.af
  br i1 %.not93, label %.critedge2, label %bb.g

bb.g:                                             ; preds = %.lr.ph105
  %i.bd = load i32, ptr %i.aa, align 4
  %i.be = icmp eq i32 %i.bd, %i.i
  br i1 %i.be, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bf = sub nsw i64 %i.b, %indvars.iv116
  %i.bg = trunc nsw i64 %i.bf to i32
  store i32 %i.bg, ptr %i.aa, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -1 ; 4 uses
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next117
  store i32 %i.e, ptr %i.bh, align 4
  %i.bi = icmp sgt i64 %indvars.iv.next117, %i.l
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !311

.critedge2:                                       ; preds = %.lr.ph105
  %i.bj = trunc nsw i64 %indvars.iv116 to i32
  %i.bk = add nsw i32 %.185.lcssa, -2             ; 2 uses
  %i.bl = add nsw i32 %i.bj, -1                   ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bm
  store i32 %i.bk, ptr %i.bn, align 4
  br label %.critedge94

.critedge94.loopexit:                             ; preds = %bb.i
  %i.bo = trunc nsw i64 %indvars.iv.next117 to i32
  br label %.critedge94

.critedge94:                                      ; preds = %.critedge94.loopexit, %.critedge2, %.critedge
  %.286 = phi i32 [ %i.bk, %.critedge2 ], [ %i.au, %.critedge ], [ %i.e, %.critedge94.loopexit ] ; 7 uses
  %.2 = phi i32 [ %i.bl, %.critedge2 ], [ %i.av, %.critedge ], [ %i.bo, %.critedge94.loopexit ] ; 2 uses
  %i.bp = icmp sgt i32 %.2, %i.h
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !312

bb.j:                                             ; preds = %.critedge94
  %i.bq = icmp sge i32 %.286, %i.e
  %.not90109 = icmp sgt i32 %i.h, %i.e
  %or.cond113 = or i1 %i.bq, %.not90109
  br i1 %or.cond113, label %.loopexit, label %.lr.ph112.preheader

.lr.ph112.preheader:                              ; preds = %bb.j
  %i.br = add i32 %i.h, %i.e
  %i.bs = and i32 %i.br, 1
  %lcmp.mod.not.not = icmp eq i32 %i.bs, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph112.prol, label %.lr.ph112.prol.loopexit

.lr.ph112.prol:                                   ; preds = %.lr.ph112.preheader
  %i.bt = load i32, ptr %i.k, align 4
  %i.bu = icmp eq i32 %i.bt, %i.i
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph112.prol
  %i.bv = sub nsw i32 %.286, %i.h
  store i32 %i.bv, ptr %i.k, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph112.prol
  %i.bw = icmp eq i32 %.286, %i.h
  br i1 %i.bw, label %bb.m, label %.lr.ph112.prol.loopexit.unr-lcssa

bb.m:                                             ; preds = %bb.l
  %i.bx = sext i32 %.286 to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4
  br label %.lr.ph112.prol.loopexit.unr-lcssa

.lr.ph112.prol.loopexit.unr-lcssa:                ; preds = %bb.m, %bb.l
  %.4.prol = phi i32 [ %i.bz, %bb.m ], [ %.286, %bb.l ]
  %indvars.iv.next120.prol = add nsw i64 %i.l, 1
  br label %.lr.ph112.prol.loopexit

.lr.ph112.prol.loopexit:                          ; preds = %.lr.ph112.prol.loopexit.unr-lcssa, %.lr.ph112.preheader
  %indvars.iv119.unr = phi i64 [ %i.l, %.lr.ph112.preheader ], [ %indvars.iv.next120.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %.3110.unr = phi i32 [ %.286, %.lr.ph112.preheader ], [ %.4.prol, %.lr.ph112.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %i.h, %i.e
  br i1 %i.ca, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t
  %indvars.iv119 = phi i64 [ %indvars.iv.next120.1, %bb.t ], [ %indvars.iv119.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %.3110 = phi i32 [ %.4.1, %bb.t ], [ %.3110.unr, %.lr.ph112.prol.loopexit ] ; 4 uses
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv119 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = icmp eq i32 %i.cc, %i.i
  br i1 %i.cd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph112
  %i.ce = sub nsw i32 %.3110, %i.h
  store i32 %i.ce, ptr %i.cb, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph112
  %i.cf = trunc nsw i64 %indvars.iv119 to i32
  %i.cg = icmp eq i32 %.3110, %i.cf
  br i1 %i.cg, label %bb.p, label %.lr.ph112.1

bb.p:                                             ; preds = %bb.o
  %i.ch = sext i32 %.3110 to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4
  br label %.lr.ph112.1

.lr.ph112.1:                                      ; preds = %bb.o, %bb.p
  %.4 = phi i32 [ %i.cj, %bb.p ], [ %.3110, %bb.o ] ; 4 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.next120 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = icmp eq i32 %i.cl, %i.i
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph112.1
  %i.cn = sub nsw i32 %.4, %i.h
  store i32 %i.cn, ptr %i.ck, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph112.1
  %i.co = trunc nsw i64 %indvars.iv.next120 to i32
  %i.cp = icmp eq i32 %.4, %i.co
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cq = sext i32 %.4 to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.4.1 = phi i32 [ %i.cs, %bb.s ], [ %.4, %bb.r ]
  %indvars.iv.next120.1 = add nsw i64 %indvars.iv119, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next120.1 to i32
  %exitcond122.not.1 = icmp eq i32 %i.ab, %lftr.wideiv.1
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !313

.loopexit:                                        ; preds = %.lr.ph112.prol.loopexit, %bb.t, %._crit_edge, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringSearchIttE16BoyerMooreSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef %0, ptr %1, i64 %2, i32 noundef %3) #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0.copyload.fr = freeze i64 %.sroa.5.0.copyload ; 3 uses
  %i.b = icmp ult i64 %2, 2147483648
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit66, label %bb.c, !prof !31

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.26) #22
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit66:          ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  %i.d = trunc nuw nsw i64 %2 to i32
  %i.e = trunc nuw nsw i64 %.sroa.5.0.copyload.fr to i32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = load ptr, ptr %0, align 8                ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60432 ; 4 uses
  %i.j = sext i32 %i.g to i64
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr [4 x i8], ptr %i.h, i64 %i.k
  %i.m = add nsw i32 %i.e, -1                     ; 6 uses
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2              ; 3 uses
  %i.q = sub nsw i32 %i.d, %i.e                   ; 4 uses
  %.not81 = icmp sgt i32 %3, %i.q
  br i1 %.not81, label %.thread, label %.preheader74.lr.ph

.preheader74.lr.ph:                               ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.not = icmp eq i64 %.sroa.5.0.copyload.fr, 0
  %i.r = and i16 %i.p, 255
  %i.s = zext nneg i16 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.s
  br i1 %.not, label %.preheader74, label %.preheader74.us

.preheader74.us:                                  ; preds = %.preheader74.lr.ph, %.preheader74.us.backedge
  %.150.us = phi i32 [ %.150.us.be, %.preheader74.us.backedge ], [ %3, %.preheader74.lr.ph ] ; 5 uses
  %i.u = add nsw i32 %.150.us, %i.m
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2              ; 2 uses
  %.not64.us = icmp eq i16 %i.p, %i.x
  br i1 %.not64.us, label %.preheader.us, label %bb.d

bb.d:                                             ; preds = %.preheader74.us
  %i.y = and i16 %i.x, 255
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = sub nsw i32 %i.m, %i.ab
  %i.ad = add nsw i32 %i.ac, %.150.us             ; 2 uses
  %.not65.us = icmp sgt i32 %i.ad, %i.q
  br i1 %.not65.us, label %.thread, label %.preheader74.us.backedge

.preheader74.us.backedge:                         ; preds = %bb.d, %bb.i
  %.150.us.be = phi i32 [ %i.ad, %bb.d ], [ %.251.us, %bb.i ]
  br label %.preheader74.us, !llvm.loop !314

bb.e:                                             ; preds = %.preheader.us, %bb.f
  %indvars.iv = phi i64 [ %i.n, %.preheader.us ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.copyload, i64 %indvars.iv
  %i.af = load i16, ptr %i.ae, align 2
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.ag = load i16, ptr %gep, align 2             ; 2 uses
  %i.ah = icmp eq i16 %i.af, %i.ag
  br i1 %i.ah, label %bb.f, label %.critedge.us

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ai = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ai, label %bb.e, label %.thread, !llvm.loop !315

.critedge.us:                                     ; preds = %bb.e
  %i.aj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ak = icmp sgt i32 %i.g, %i.aj
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.critedge.us
  %i.al = and i64 %indvars.iv, 4294967295
  %i.am = getelementptr [4 x i8], ptr %i.l, i64 %i.al
  %i.an = getelementptr i8, ptr %i.am, i64 61460
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i16 %i.ag, 255
  %i.aq = zext nneg i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub nsw i32 %i.aj, %i.as
  %spec.select.us = tail call i32 @llvm.smax.i32(i32 %i.ao, i32 %i.at)
  br label %bb.i

bb.h:                                             ; preds = %.critedge.us
  %i.au = load i32, ptr %i.t, align 4
  %i.av = sub nsw i32 %i.m, %i.au
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.us = phi i32 [ %i.av, %bb.h ], [ %spec.select.us, %bb.g ]
  %.251.us = add nsw i32 %.pn.us, %.150.us        ; 2 uses
  %.not.us = icmp sgt i32 %.251.us, %i.q
  br i1 %.not.us, label %.thread, label %.preheader74.us.backedge

.preheader.us:                                    ; preds = %.preheader74.us
  %i.aw = sext i32 %.150.us to i64
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.aw
  br label %bb.e

.preheader74:                                     ; preds = %.preheader74.lr.ph, %bb.j
  %.150 = phi i32 [ %i.bg, %bb.j ], [ %3, %.preheader74.lr.ph ] ; 3 uses
  %i.ax = add nsw i32 %.150, %i.m
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not64 = icmp eq i16 %i.p, %i.ba
  br i1 %.not64, label %.thread, label %bb.j

bb.j:                                             ; preds = %.preheader74
  %i.bb = and i16 %i.ba, 255
  %i.bc = zext nneg i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = sub nuw nsw i32 %i.m, %i.be
  %i.bg = add nsw i32 %i.bf, %.150                ; 2 uses
  %.not65 = icmp sgt i32 %i.bg, %i.q
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !316

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader74, %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.4 = phi i32 [ %.150.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit66 ], [ %.150, %.preheader74 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = add i64 %i.r, -8
  %i.t = sub i64 %i.s, %i.g                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 4
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 4
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 4
  store <2 x i64> %wide.load13, ptr %i.ac, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 4
  store i64 %i.ae, ptr %.08.i.i.i.i, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !318

_ZSt18uninitialized_moveIPN2v88internal19CompiledReplacement15ReplacementPartES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal19CompiledReplacement15ReplacementPartELm8ESaIS4_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !319
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %.not.i = icmp eq i64 %2, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = or disjoint i64 %i.d, 1
  %.idx.i.i9 = shl nuw nsw i64 %2, 1              ; 2 uses
  %i.f = icmp eq i64 %2, 0                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.b
  %.sroa.090.0 = phi i64 [ %i.e, %bb.b ], [ %i.cc, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.b ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.g = add i64 %.sroa.090.0, -1
  %i.h = inttoptr i64 %i.g to ptr                 ; 9 uses
  %i.i = load atomic volatile i64, ptr %i.h acquire, align 8
  %i.j = add i64 %i.i, 11
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = load atomic volatile i16, ptr %i.k monotonic, align 2
  %i.m = and i16 %i.l, 15
  switch i16 %i.m, label %bb.p [
    i16 8, label %bb.d
    i16 0, label %bb.e
    i16 9, label %bb.f
    i16 1, label %bb.f
    i16 10, label %bb.g
    i16 2, label %bb.k
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = sext i32 %.0 to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr %1, i64 %2)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = sext i32 %.0 to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx.i.i9
  br i1 %i.f, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %i.t, %bb.e ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %1, %bb.e ] ; 2 uses
  %i.v = load i16, ptr %.01013.i.i, align 2
  %i.w = load i8, ptr %.01112.i.i, align 1
  %i.x = zext i8 %i.w to i16
  %.not.i.i = icmp eq i16 %i.v, %i.x              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %i.y, %i.u
  %or.cond = select i1 %.not.i.i, i1 %.not16.i.i, i1 false
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !322

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.aa = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.090.0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.g:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = inttoptr i64 %i.ac to ptr               ; 6 uses
  %i.ae = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = and i16 %i.ah, 16
  %.not.i4 = icmp eq i16 %i.ai, 0
  br i1 %.not.i4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = load ptr, ptr %i.ad, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %i.ad) #21, !inline_history !22
  br i1 %i.am, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ap = load ptr, ptr %i.ad, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = tail call noundef ptr %i.ar(ptr noundef nonnull align 8 dereferenceable(16) %i.ad) #21, !inline_history !22
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.i, %bb.j
  %.0.i5 = phi ptr [ %i.ao, %bb.i ], [ %i.as, %bb.j ]
  %i.at = sext i32 %.0 to i64
  %i.au = getelementptr inbounds i8, ptr %.0.i5, i64 %i.at
  %bcmp.i.i6 = tail call i32 @bcmp(ptr %i.au, ptr %1, i64 %2)
  %i.av = icmp eq i32 %bcmp.i.i6, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.k:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = inttoptr i64 %i.ax to ptr               ; 6 uses
  %i.az = load atomic volatile i64, ptr %i.h monotonic, align 8
  %i.ba = add i64 %i.az, 11
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = load atomic volatile i16, ptr %i.bb monotonic, align 2
  %i.bd = and i16 %i.bc, 16
  %.not.i7 = icmp eq i16 %i.bd, 0
  br i1 %.not.i7, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.ay) #21, !inline_history !26
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bk = load ptr, ptr %i.ay, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef ptr %i.bm(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #21, !inline_history !26
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.m, %bb.n
  %.0.i8 = phi ptr [ %i.bj, %bb.m ], [ %i.bn, %bb.n ]
  %i.bo = sext i32 %.0 to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %.0.i8, i64 %i.bo ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.idx.i.i9
  br i1 %i.f, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i10

.lr.ph.i.i10:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %.lr.ph.i.i10
  %.01013.i.i11 = phi ptr [ %i.bu, %.lr.ph.i.i10 ], [ %i.bp, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i12 = phi ptr [ %i.bv, %.lr.ph.i.i10 ], [ %1, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.br = load i16, ptr %.01013.i.i11, align 2
  %i.bs = load i8, ptr %.01112.i.i12, align 1
  %i.bt = zext i8 %i.bs to i16
  %.not.i.i13 = icmp eq i16 %i.br, %i.bt          ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01013.i.i11, i64 2 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.01112.i.i12, i64 1
  %.not16.i.i15 = icmp ult ptr %i.bu, %i.bq
  %or.cond157 = select i1 %.not.i.i13, i1 %.not16.i.i15, i1 false
  br i1 %or.cond157, label %.lr.ph.i.i10, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !322

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = lshr i64 %i.bx, 32
  %i.bz = trunc nuw i64 %i.by to i32
  %i.ca = add nsw i32 %.0, %i.bz
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.p:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.c, %bb.c, %bb.o
  %.1 = phi i32 [ %i.ca, %bb.o ], [ %.0, %bb.c ], [ %.0, %bb.c ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.cc = load i64, ptr %i.cb, align 8
  br label %bb.c

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i10, %.lr.ph.i.i, %bb.e, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.f, %bb.d
  %.sroa.048.1.ph = phi i1 [ %i.av, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %.not.i.i, %.lr.ph.i.i ], [ %i.aa, %bb.f ], [ %i.q, %bb.d ], [ true, %bb.e ], [ true, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.not.i.i13, %.lr.ph.i.i10 ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !28
  %i.cd = trunc nuw i8 %.pre to i1
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.ce, align 8
  br i1 %i.cd, label %bb.q, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cf = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cf) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.a, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.q, %bb.r
  %.2.i120 = phi i1 [ %.sroa.048.1.ph, %bb.r ], [ %.sroa.048.1.ph, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %.sroa.048.1.ph, %bb.q ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %.2.i120
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::ConsStringIterator", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = icmp eq i64 %0, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(276) %4, i8 0, i64 268, i1 false)
  br i1 %i.b, label %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, label %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit

_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %.thread134

_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit: ; preds = %bb.a
  call void @_ZN2v88internal18ConsStringIterator10InitializeENS0_6TaggedINS0_10ConsStringEEEi(ptr noundef nonnull align 8 dereferenceable(276) %4, i64 %0, i32 noundef 0) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 264
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %i.c = icmp eq i32 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 264
  br i1 %i.c, label %.thread134, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit

_ZN2v88internal18ConsStringIterator4NextEPi.exit: ; preds = %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit
  %i.e = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread134, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33
  %storemerge144 = phi i64 [ %i.cn, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %i.e, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.6.0142 = phi i64 [ %i.ck, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %2, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.039.0141 = phi ptr [ %i.cj, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %1, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 6 uses
  %i.g = add i64 %storemerge144, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.6.0142, i64 %i.k) ; 7 uses
  %.idx.i.i22 = shl nuw nsw i64 %.sroa.speculated, 1 ; 2 uses
  %i.l = icmp eq i64 %.sroa.speculated, 0         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %.lr.ph
  %.sroa.0119.0 = phi i64 [ %storemerge144, %.lr.ph ], [ %i.cf, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.m = add i64 %.sroa.0119.0, -1
  %i.n = inttoptr i64 %i.m to ptr                 ; 9 uses
  %i.o = load atomic volatile i64, ptr %i.n acquire, align 8
  %i.p = add i64 %i.o, 11
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load atomic volatile i16, ptr %i.q monotonic, align 2
  %i.s = and i16 %i.r, 15
  switch i16 %i.s, label %bb.o [
    i16 8, label %.split
    i16 0, label %bb.c
    i16 9, label %.split167
    i16 1, label %.split167
    i16 10, label %bb.e
    i16 2, label %bb.i
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

.split:                                           ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.u = sext i32 %.0 to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.v, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %i.w = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.w, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.y = sext i32 %.0 to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx.i.i22
  br i1 %i.l, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01013.i.i = phi ptr [ %i.ae, %bb.d ], [ %i.z, %bb.c ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.af, %bb.d ], [ %.sroa.039.0141, %bb.c ] ; 2 uses
  %i.ab = load i16, ptr %.01013.i.i, align 2
  %i.ac = load i8, ptr %.01112.i.i, align 1
  %i.ad = zext i8 %i.ac to i16
  %.not.i.i = icmp eq i16 %i.ab, %i.ad
  br i1 %.not.i.i, label %bb.d, label %.thread134

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %i.ae, %i.aa
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !322

.split167:                                        ; preds = %bb.b, %bb.b
  %i.ag = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIhEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0119.0, ptr %.sroa.039.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ag, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

bb.e:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = inttoptr i64 %i.ai to ptr               ; 6 uses
  %i.ak = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.al = add i64 %i.ak, 11
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = load atomic volatile i16, ptr %i.am monotonic, align 2
  %i.ao = and i16 %i.an, 16
  %.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.aj, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = call noundef zeroext i1 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #21, !inline_history !22
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21
  %i.at = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.av = load ptr, ptr %i.aj, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = call noundef ptr %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.aj) #21, !inline_history !22
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = inttoptr i64 %i.ba to ptr               ; 6 uses
  %i.bc = load atomic volatile i64, ptr %i.n monotonic, align 8
  %i.bd = add i64 %i.bc, 11
  %i.be = inttoptr i64 %i.bd to ptr
  %i.bf = load atomic volatile i16, ptr %i.be monotonic, align 2
  %i.bg = and i16 %i.bf, 16
  %.not.i20 = icmp eq i16 %i.bg, 0
  br i1 %.not.i20, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load ptr, ptr %i.bb, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef zeroext i1 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %i.bb) #21, !inline_history !26
  br i1 %i.bk, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bn = load ptr, ptr %i.bb, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = call noundef ptr %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bb) #21, !inline_history !26
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.k, %bb.l
  %.0.i21 = phi ptr [ %i.bm, %bb.k ], [ %i.bq, %bb.l ]
  %i.br = sext i32 %.0 to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.br ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i22
  br i1 %i.l, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.m
  %.01013.i.i24 = phi ptr [ %i.bx, %bb.m ], [ %i.bs, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %i.by, %bb.m ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bu = load i16, ptr %.01013.i.i24, align 2
  %i.bv = load i8, ptr %.01112.i.i25, align 1
  %i.bw = zext i8 %i.bv to i16
  %.not.i.i26 = icmp eq i16 %i.bu, %i.bw
  br i1 %.not.i.i26, label %bb.m, label %.thread134

bb.m:                                             ; preds = %.lr.ph.i.i23
  %i.bx = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i28 = icmp ult ptr %i.bx, %i.bt
  br i1 %.not16.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !322

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add nsw i32 %.0, %i.cc
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.o:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EhEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.n
  %.1 = phi i32 [ %i.cd, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.h, %bb.g
  %.0.i = phi ptr [ %i.au, %bb.g ], [ %i.ay, %bb.h ]
  %i.cg = sext i32 %.0 to i64
  %i.ch = getelementptr inbounds i8, ptr %.0.i, i64 %i.cg
  %bcmp.i.i19 = call i32 @bcmp(ptr %i.ch, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %i.ci = icmp eq i32 %bcmp.i.i19, 0
  br i1 %i.ci, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.m, %bb.d, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.c, %.split167, %.split, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.039.0141, i64 %.sroa.speculated
  %i.ck = sub i64 %.sroa.6.0142, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %.thread134, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.cl = load i32, ptr %i.d, align 8
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.thread134, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit33

_ZN2v88internal18ConsStringIterator4NextEPi.exit33: ; preds = %bb.p
  %i.cn = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.thread134, label %.lr.ph, !llvm.loop !323

.thread134:                                       ; preds = %bb.p, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %.split, %.split167, %.lr.ph.i.i23, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i23 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.p ], [ false, %.split167 ], [ false, %.split ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EhEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.116
}

declare void @_ZN2v88internal18ConsStringIterator10InitializeENS0_6TaggedINS0_10ConsStringEEEi(ptr noundef nonnull align 8 dereferenceable(276), i64, i32 noundef) local_unnamed_addr #3

declare i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276), ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v88internal6String9IsEqualToILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %3 = alloca %"class.v8::internal::SharedStringAccessGuardIfNeeded", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !alias.scope !324
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4
  %i.c = zext i32 %i.b to i64
  %.not.i = icmp eq i64 %2, %i.c
  br i1 %.not.i, label %bb.b, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = ptrtoint ptr %0 to i64
  %i.e = or disjoint i64 %i.d, 1
  %i.f = shl nuw nsw i64 %2, 1                    ; 2 uses
  %i.g = icmp eq i64 %2, 0                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %bb.b
  %.sroa.089.0 = phi i64 [ %i.e, %bb.b ], [ %i.cd, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.b ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.h = add i64 %.sroa.089.0, -1
  %i.i = inttoptr i64 %i.h to ptr                 ; 9 uses
  %i.j = load atomic volatile i64, ptr %i.i acquire, align 8
  %i.k = add i64 %i.j, 11
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i16, ptr %i.l monotonic, align 2
  %i.n = and i16 %i.m, 15
  switch i16 %i.n, label %bb.p [
    i16 8, label %bb.d
    i16 0, label %bb.e
    i16 9, label %bb.f
    i16 1, label %bb.f
    i16 10, label %bb.g
    i16 2, label %bb.k
    i16 11, label %bb.o
    i16 3, label %bb.o
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.p = sext i32 %.0 to i64
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 %i.p ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %2
  br i1 %i.g, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %.lr.ph.i.i
  %.01013.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.q, %bb.d ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.w, %.lr.ph.i.i ], [ %1, %bb.d ] ; 2 uses
  %i.s = load i8, ptr %.01013.i.i, align 1
  %i.t = load i16, ptr %.01112.i.i, align 2
  %i.u = zext i8 %i.s to i16
  %.not.i.i = icmp eq i16 %i.t, %i.u              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 1 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 2
  %.not16.i.i = icmp ult ptr %i.v, %i.r
  %or.cond = select i1 %.not.i.i, i1 %.not16.i.i, i1 false
  br i1 %or.cond, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !327

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.y = sext i32 %.0 to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %i.x, i64 %i.y
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.z, ptr %1, i64 %i.f)
  %i.aa = icmp eq i32 %bcmp.i.i, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.f:                                             ; preds = %bb.c, %bb.c
  %i.ab = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.089.0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.g:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = inttoptr i64 %i.ad to ptr               ; 6 uses
  %i.af = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.ag = add i64 %i.af, 11
  %i.ah = inttoptr i64 %i.ag to ptr
  %i.ai = load atomic volatile i16, ptr %i.ah monotonic, align 2
  %i.aj = and i16 %i.ai, 16
  %.not.i4 = icmp eq i16 %i.aj, 0
  br i1 %.not.i4, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.ae, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.ae) #21, !inline_history !22
  br i1 %i.an, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #21
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.aq = load ptr, ptr %i.ae, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(16) %i.ae) #21, !inline_history !22
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.i, %bb.j
  %.0.i5 = phi ptr [ %i.ap, %bb.i ], [ %i.at, %bb.j ]
  %i.au = sext i32 %.0 to i64
  %i.av = getelementptr inbounds i8, ptr %.0.i5, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %2
  br i1 %i.g, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, label %.lr.ph.i.i6

.lr.ph.i.i6:                                      ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %.lr.ph.i.i6
  %.01013.i.i7 = phi ptr [ %i.ba, %.lr.ph.i.i6 ], [ %i.av, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i8 = phi ptr [ %i.bb, %.lr.ph.i.i6 ], [ %1, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %i.ax = load i8, ptr %.01013.i.i7, align 1
  %i.ay = load i16, ptr %.01112.i.i8, align 2
  %i.az = zext i8 %i.ax to i16
  %.not.i.i9 = icmp eq i16 %i.ay, %i.az           ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01013.i.i7, i64 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.01112.i.i8, i64 2
  %.not16.i.i11 = icmp ult ptr %i.ba, %i.aw
  %or.cond156 = select i1 %.not.i.i9, i1 %.not16.i.i11, i1 false
  br i1 %or.cond156, label %.lr.ph.i.i6, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, !llvm.loop !327

bb.k:                                             ; preds = %bb.c
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = inttoptr i64 %i.bd to ptr               ; 6 uses
  %i.bf = load atomic volatile i64, ptr %i.i monotonic, align 8
  %i.bg = add i64 %i.bf, 11
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i16, ptr %i.bh monotonic, align 2
  %i.bj = and i16 %i.bi, 16
  %.not.i13 = icmp eq i16 %i.bj, 0
  br i1 %.not.i13, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load ptr, ptr %i.be, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #21, !inline_history !26
  br i1 %i.bn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #21
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bq = load ptr, ptr %i.be, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #21, !inline_history !26
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.m, %bb.n
  %.0.i14 = phi ptr [ %i.bp, %bb.m ], [ %i.bt, %bb.n ]
  %i.bu = sext i32 %.0 to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %.0.i14, i64 %i.bu
  %bcmp.i.i15 = tail call i32 @bcmp(ptr %i.bv, ptr %1, i64 %i.f)
  %i.bw = icmp eq i32 %bcmp.i.i15, 0
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.o:                                             ; preds = %bb.c, %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = lshr i64 %i.by, 32
  %i.ca = trunc nuw i64 %i.bz to i32
  %i.cb = add nsw i32 %.0, %i.ca
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.p:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_0EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.c, %bb.c, %bb.o
  %.1 = phi i32 [ %i.cb, %bb.o ], [ %.0, %bb.c ], [ %.0, %bb.c ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cd = load i64, ptr %i.cc, align 8
  br label %bb.c

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %.lr.ph.i.i6, %.lr.ph.i.i, %bb.d, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.f, %bb.e
  %.sroa.047.1.ph = phi i1 [ true, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ], [ %.not.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.f ], [ %i.aa, %bb.e ], [ true, %bb.d ], [ %i.bw, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ %.not.i.i9, %.lr.ph.i.i6 ] ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !28
  %i.ce = trunc nuw i8 %.pre to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i8 0, ptr %i.cf, align 8
  br i1 %i.ce, label %bb.q, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

bb.q:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cg = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.cg) #21
  br label %_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit

_ZN2v88internal31SharedStringAccessGuardIfNeededD2Ev.exit: ; preds = %bb.a, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %bb.q, %bb.r
  %.2.i119 = phi i1 [ %.sroa.047.1.ph, %bb.r ], [ %.sroa.047.1.ph, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE0EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ %.sroa.047.1.ph, %bb.q ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  ret i1 %.2.i119
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::ConsStringIterator", align 8 ; 8 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.b = icmp eq i64 %0, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(276) %4, i8 0, i64 268, i1 false)
  br i1 %i.b, label %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, label %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit

_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %.thread133

_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit: ; preds = %bb.a
  call void @_ZN2v88internal18ConsStringIterator10InitializeENS0_6TaggedINS0_10ConsStringEEEi(ptr noundef nonnull align 8 dereferenceable(276) %4, i64 %0, i32 noundef 0) #21
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 264
  %.pre = load i32, ptr %.phi.trans.insert, align 8
  %i.c = icmp eq i32 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 264
  br i1 %i.c, label %.thread133, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit

_ZN2v88internal18ConsStringIterator4NextEPi.exit: ; preds = %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit
  %i.e = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.thread133, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32
  %storemerge143 = phi i64 [ %i.co, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ %i.e, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.6.0141 = phi i64 [ %i.cl, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ %2, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.038.0140 = phi ptr [ %i.ck, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ %1, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 6 uses
  %i.g = add i64 %storemerge143, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = zext i32 %i.j to i64
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.sroa.6.0141, i64 %i.k) ; 7 uses
  %i.l = shl nuw nsw i64 %.sroa.speculated, 1     ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated, 0         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %.lr.ph
  %.sroa.0118.0 = phi i64 [ %storemerge143, %.lr.ph ], [ %i.cf, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.n = add i64 %.sroa.0118.0, -1
  %i.o = inttoptr i64 %i.n to ptr                 ; 9 uses
  %i.p = load atomic volatile i64, ptr %i.o acquire, align 8
  %i.q = add i64 %i.p, 11
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = load atomic volatile i16, ptr %i.r monotonic, align 2
  %i.t = and i16 %i.s, 15
  switch i16 %i.t, label %bb.o [
    i16 8, label %bb.c
    i16 0, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
    i16 9, label %.split
    i16 1, label %.split
    i16 10, label %bb.e
    i16 2, label %bb.j
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.v = sext i32 %.0 to i64
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %.sroa.speculated
  br i1 %i.m, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01013.i.i = phi ptr [ %i.ab, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.ac, %bb.d ], [ %.sroa.038.0140, %bb.c ] ; 2 uses
  %i.y = load i8, ptr %.01013.i.i, align 1
  %i.z = load i16, ptr %.01112.i.i, align 2
  %i.aa = zext i8 %i.y to i16
  %.not.i.i = icmp eq i16 %i.z, %i.aa
  br i1 %.not.i.i, label %bb.d, label %.thread133

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 2
  %.not16.i.i = icmp ult ptr %i.ab, %i.x
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !327

.split:                                           ; preds = %bb.b, %bb.b
  %i.ad = call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplItEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0118.0, ptr %.sroa.038.0140, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.ad, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = inttoptr i64 %i.af to ptr               ; 6 uses
  %i.ah = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.ai = add i64 %i.ah, 11
  %i.aj = inttoptr i64 %i.ai to ptr
  %i.ak = load atomic volatile i16, ptr %i.aj monotonic, align 2
  %i.al = and i16 %i.ak, 16
  %.not.i = icmp eq i16 %i.al, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr %i.ag, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef zeroext i1 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #21, !inline_history !22
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.as = load ptr, ptr %i.ag, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef ptr %i.au(ptr noundef nonnull align 8 dereferenceable(16) %i.ag) #21, !inline_history !22
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi ptr [ %i.ar, %bb.g ], [ %i.av, %bb.h ]
  %i.aw = sext i32 %.0 to i64
  %i.ax = getelementptr inbounds i8, ptr %.0.i, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.speculated
  br i1 %i.m, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i19

.lr.ph.i.i19:                                     ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.i
  %.01013.i.i20 = phi ptr [ %i.bc, %bb.i ], [ %i.ax, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i21 = phi ptr [ %i.bd, %bb.i ], [ %.sroa.038.0140, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit ] ; 2 uses
  %i.az = load i8, ptr %.01013.i.i20, align 1
  %i.ba = load i16, ptr %.01112.i.i21, align 2
  %i.bb = zext i8 %i.az to i16
  %.not.i.i22 = icmp eq i16 %i.ba, %i.bb
  br i1 %.not.i.i22, label %bb.i, label %.thread133

bb.i:                                             ; preds = %.lr.ph.i.i19
  %i.bc = getelementptr inbounds nuw i8, ptr %.01013.i.i20, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.01112.i.i21, i64 2
  %.not16.i.i24 = icmp ult ptr %i.bc, %i.ay
  br i1 %.not16.i.i24, label %.lr.ph.i.i19, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !327

bb.j:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = inttoptr i64 %i.bf to ptr               ; 6 uses
  %i.bh = load atomic volatile i64, ptr %i.o monotonic, align 8
  %i.bi = add i64 %i.bh, 11
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i16, ptr %i.bj monotonic, align 2
  %i.bl = and i16 %i.bk, 16
  %.not.i26 = icmp eq i16 %i.bl, 0
  br i1 %.not.i26, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr %i.bg, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef zeroext i1 %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bg) #21, !inline_history !26
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.bs = load ptr, ptr %i.bg, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 72
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef ptr %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bg) #21, !inline_history !26
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.l, %bb.m
  %.0.i27 = phi ptr [ %i.br, %bb.l ], [ %i.bv, %bb.m ]
  %i.bw = sext i32 %.0 to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %.0.i27, i64 %i.bw
  %bcmp.i.i28 = call i32 @bcmp(ptr %i.bx, ptr %.sroa.038.0140, i64 %i.l)
  %i.by = icmp eq i32 %bcmp.i.i28, 0
  br i1 %i.by, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add nsw i32 %.0, %i.cc
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.o:                                             ; preds = %bb.b
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #22
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EtEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.n
  %.1 = phi i32 [ %i.cd, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.cf = load i64, ptr %i.ce, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.b
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ch = sext i32 %.0 to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.cg, i64 %i.ch
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ci, ptr %.sroa.038.0140, i64 %i.l)
  %i.cj = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.cj, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread133

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.i, %bb.d, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.c, %.split, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %.sroa.038.0140, i64 %.sroa.speculated
  %i.cl = sub i64 %.sroa.6.0141, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.thread133, label %bb.p

bb.p:                                             ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  store i32 0, ptr %i.a, align 4
  %i.cm = load i32, ptr %i.d, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread133, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit32

_ZN2v88internal18ConsStringIterator4NextEPi.exit32: ; preds = %bb.p
  %i.co = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) #21 ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.thread133, label %.lr.ph, !llvm.loop !328

.thread133:                                       ; preds = %bb.p, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %.split, %.lr.ph.i.i19, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ false, %.lr.ph.i.i19 ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit.thread ], [ true, %_ZN2v88internal18ConsStringIteratorC2ENS0_6TaggedINS0_10ConsStringEEEi.exit ], [ false, %.lr.ph.i.i ], [ true, %bb.p ], [ false, %.split ], [ false, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit32 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EtEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i1 %.116
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = load ptr, ptr %0, align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64                 ; 4 uses
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 2
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.i)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.speculated, i64 1) ; 3 uses
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %spec.select.i.i, i1 false)
  %i.k = sub nuw nsw i64 64, %i.j                 ; 2 uses
  %i.l = icmp ugt i64 %spec.select.i.i, 576460752303423487
  br i1 %i.l, label %bb.b, label %bb.e, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #22
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #22
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #24 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.e
  %i.q = ptrtoaddr ptr %i.o to i64
  %i.r = ptrtoaddr ptr %i.b to i64
  %i.s = add i64 %i.r, -8
  %i.t = sub i64 %i.s, %i.g                       ; 2 uses
  %i.u = lshr i64 %i.t, 3
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.t, 72
  %i.w = sub i64 %i.g, %i.q
  %diff.check = icmp ugt i64 %i.w, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.v, 4611686018427387900      ; 3 uses
  %i.x = shl i64 %n.vec, 3                        ; 2 uses
  %i.y = getelementptr i8, ptr %i.o, i64 %i.x
  %i.z = getelementptr i8, ptr %i.c, i64 %i.x
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.o, i64 %i.aa ; 2 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.aa ; 2 uses
  %i.ab = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8
  %wide.load13 = load <2 x i64>, ptr %i.ab, align 8
  %i.ac = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load13, ptr %i.ac, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !329

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

.lr.ph.i.i.i.i.preheader15:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.08.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.preheader ], [ %i.y, %middle.block ]
  %.sroa.04.07.i.i.i.i.ph = phi ptr [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader15, %.lr.ph.i.i.i.i
  %.08.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %.08.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %.sroa.04.07.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sroa.04.07.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader15 ] ; 2 uses
  %i.ae = load i64, ptr %.sroa.04.07.i.i.i.i, align 8
  store i64 %i.ae, ptr %.08.i.i.i.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.04.07.i.i.i.i, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i, i64 8
  %i.ah = icmp eq ptr %i.af, %i.b
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !330

_ZSt18uninitialized_moveIPN2v88internal21DirectHandleUncheckedINS1_6StringEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(88) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #15 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal21DirectHandleUncheckedINS2_6StringEEELm8ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef 0)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress noreturn nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { builtin nounwind allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!7 = distinct !{!7, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!8 = !{!9}
!9 = distinct !{!9, !10, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!10 = distinct !{!10, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!13 = distinct !{!13, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!14 = !{!15, !12}
!15 = distinct !{!15, !16, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!16 = distinct !{!16, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!17 = !{!18, !20, !12}
!18 = distinct !{!18, !19, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!19 = distinct !{!19, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!20 = distinct !{!20, !21, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!21 = distinct !{!21, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!22 = distinct !{null}
!23 = !{!24, !20, !12}
!24 = distinct !{!24, !25, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!25 = distinct !{!25, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!26 = distinct !{null}
!27 = !{!20, !12}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = distinct !{!35, !33}
!36 = distinct !{!36, !33}
!37 = distinct !{!37, !33}
!38 = distinct !{!38, !33}
!39 = distinct !{!39, !33}
!40 = distinct !{!40, !33}
!41 = distinct !{!41, !33}
!42 = distinct !{!42, !33}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!45 = distinct !{!45, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!48 = distinct !{!48, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!51 = distinct !{!51, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!52 = !{!53, !50}
!53 = distinct !{!53, !54, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!54 = distinct !{!54, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!55 = !{!56, !58, !50}
!56 = distinct !{!56, !57, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!57 = distinct !{!57, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!58 = distinct !{!58, !59, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!59 = distinct !{!59, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!60 = !{!61, !58, !50}
!61 = distinct !{!61, !62, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!62 = distinct !{!62, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!63 = !{!58, !50}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!66 = distinct !{!66, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!67 = !{!68}
!68 = distinct !{!68, !69, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!69 = distinct !{!69, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!72 = distinct !{!72, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!73 = !{!74, !71}
!74 = distinct !{!74, !75, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!75 = distinct !{!75, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!76 = !{!77, !79, !71}
!77 = distinct !{!77, !78, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!78 = distinct !{!78, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!79 = distinct !{!79, !80, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!80 = distinct !{!80, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!81 = !{!82, !79, !71}
!82 = distinct !{!82, !83, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!83 = distinct !{!83, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!84 = !{!79, !71}
!85 = distinct !{null}
!86 = distinct !{!86, !33}
!87 = distinct !{!87, !33}
!88 = distinct !{!88, !33}
!89 = distinct !{!89, !33}
!90 = distinct !{null}
!91 = distinct !{!91, !33}
!92 = distinct !{null}
!93 = distinct !{!93, !33}
!94 = distinct !{null}
!95 = distinct !{!95, !33}
!96 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!97 = distinct !{!97, !33}
!98 = !{!"branch_weights", !"expected", i32 2145337206, i32 2146442}
!99 = distinct !{!99, !33}
!100 = !{!"branch_weights", i32 2146410443, i32 1073205}
!101 = !{!"branch_weights", i32 -2146410, i32 2146410}
!102 = !{!"branch_weights", i32 4000000, i32 2001, i32 2000}
!103 = distinct !{!103, !104}
!104 = !{!"llvm.loop.unroll.disable"}
!105 = distinct !{!105, !33}
!106 = distinct !{!106, !107}
!107 = !{!"llvm.loop.peeled.count", i32 1}
!108 = distinct !{!108, !33}
!109 = distinct !{!109, !104}
!110 = distinct !{!110, !33}
!111 = distinct !{!111, !33}
!112 = distinct !{!112, !33}
!113 = distinct !{!113, !33}
!114 = !{!"branch_weights", !"expected", i32 2145766520, i32 1717128}
!115 = distinct !{!115, !33}
!116 = distinct !{!116, !33}
!117 = distinct !{!117, !33}
!118 = distinct !{!118, !33}
!119 = distinct !{!119, !33}
!120 = distinct !{!120, !33}
!121 = distinct !{!121, !33}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!124 = distinct !{!124, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!127 = distinct !{!127, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!130 = distinct !{!130, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!131 = !{!132, !129}
!132 = distinct !{!132, !133, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!133 = distinct !{!133, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!134 = !{!135, !137, !129}
!135 = distinct !{!135, !136, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!136 = distinct !{!136, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!137 = distinct !{!137, !138, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!138 = distinct !{!138, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!139 = !{!140, !137, !129}
!140 = distinct !{!140, !141, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!141 = distinct !{!141, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!142 = !{!137, !129}
!143 = distinct !{!143, !33}
!144 = distinct !{!144, !33}
!145 = distinct !{!145, !33}
!146 = distinct !{!146, !33, !147, !148}
!147 = !{!"llvm.loop.isvectorized", i32 1}
!148 = !{!"llvm.loop.unroll.runtime.disable"}
!149 = distinct !{!149, !104}
!150 = distinct !{!150, !33, !147}
!151 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!152 = !{!"branch_weights", !"expected", i32 2146839403, i32 644245}
!153 = !{!154}
!154 = distinct !{!154, !155, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!155 = distinct !{!155, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!158 = distinct !{!158, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!161 = distinct !{!161, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!162 = !{!163, !160}
!163 = distinct !{!163, !164, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!164 = distinct !{!164, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!165 = !{!166, !168, !160}
!166 = distinct !{!166, !167, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!167 = distinct !{!167, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!168 = distinct !{!168, !169, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!169 = distinct !{!169, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!170 = !{!171, !168, !160}
!171 = distinct !{!171, !172, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!172 = distinct !{!172, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!173 = !{!168, !160}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE: argument 0"}
!176 = distinct !{!176, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEE"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!179 = distinct !{!179, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!182 = distinct !{!182, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!183 = !{!184, !181}
!184 = distinct !{!184, !185, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!185 = distinct !{!185, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!186 = !{!187, !189, !181}
!187 = distinct !{!187, !188, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!188 = distinct !{!188, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!189 = distinct !{!189, !190, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!190 = distinct !{!190, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!191 = !{!192, !189, !181}
!192 = distinct !{!192, !193, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!193 = distinct !{!193, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!194 = !{!189, !181}
!195 = distinct !{!195, !33}
!196 = distinct !{!196, !33}
!197 = distinct !{!197, !33}
!198 = distinct !{null, null, null}
!199 = distinct !{!199, !33}
!200 = distinct !{!200, !33}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_: argument 0"}
!203 = distinct !{!203, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_: argument 0"}
!206 = distinct !{!206, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_"}
!207 = distinct !{!207, !33}
!208 = distinct !{!208, !33}
!209 = distinct !{null, null, null}
!210 = distinct !{!210, !33}
!211 = distinct !{null, null, null}
!212 = distinct !{!212, !33}
!213 = distinct !{!213, !33}
!214 = distinct !{!214, !33}
!215 = !{!216}
!216 = distinct !{!216, !217, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_: argument 0"}
!217 = distinct !{!217, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_: argument 0"}
!220 = distinct !{!220, !"_ZN3hwy6N_SSE2L5LoadUINS0_4SimdItLm8ELi0EEETnPNS_9EnableIfTIXeqmlsrT_13kPrivateLanesstNS5_1TELi16EEE4typeELPv0ETnPNS4_IXaantclsr3hwyE7IsFloatIS6_EEntclsr3hwyE14IsSpecialFloatIS6_EEEE4typeELSA_0EEEDTcl4ZerocvS5__EEES5_PKS6_"}
!221 = distinct !{!221, !33}
!222 = distinct !{!222, !33}
!223 = distinct !{null, null, null}
!224 = distinct !{!224, !33}
!225 = !{i64 19793214}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!228 = distinct !{!228, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!231 = distinct !{!231, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!232 = distinct !{!232, !33}
!233 = distinct !{!233, !33}
!234 = distinct !{!234, !33}
!235 = distinct !{!235, !33}
!236 = distinct !{!236, !33}
!237 = distinct !{!237, !104}
!238 = distinct !{!238, !33}
!239 = distinct !{!239, !33}
!240 = distinct !{!240, !33}
!241 = distinct !{!241, !33}
!242 = distinct !{!242, !33}
!243 = distinct !{!243, !33, !147, !148}
!244 = distinct !{!244, !33, !148, !147}
!245 = distinct !{!245, !33}
!246 = distinct !{!246, !33}
!247 = distinct !{!247, !33}
!248 = distinct !{!248, !33}
!249 = distinct !{!249, !33}
!250 = distinct !{!250, !33}
!251 = distinct !{!251, !33}
!252 = distinct !{!252, !33}
!253 = distinct !{!253, !33}
!254 = distinct !{!254, !33}
!255 = distinct !{!255, !33}
!256 = distinct !{!256, !104}
!257 = distinct !{!257, !33}
!258 = distinct !{!258, !33}
!259 = distinct !{!259, !33}
!260 = distinct !{!260, !33}
!261 = distinct !{!261, !33}
!262 = distinct !{!262, !33, !147, !148}
!263 = distinct !{!263, !33, !148, !147}
!264 = distinct !{!264, !33}
!265 = distinct !{!265, !33}
!266 = distinct !{!266, !33}
!267 = distinct !{!267, !33}
!268 = distinct !{!268, !33}
!269 = distinct !{!269, !33}
!270 = distinct !{!270, !33}
!271 = distinct !{!271, !33, !147, !148}
!272 = distinct !{!272, !33, !147}
!273 = distinct !{!273, !33, !147, !148}
!274 = distinct !{!274, !33, !147}
!275 = !{!276}
!276 = distinct !{!276, !277, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!277 = distinct !{!277, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!280 = distinct !{!280, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!281 = distinct !{!281, !33}
!282 = distinct !{!282, !33}
!283 = distinct !{!283, !33}
!284 = distinct !{!284, !33}
!285 = distinct !{!285, !33}
!286 = distinct !{!286, !33}
!287 = distinct !{!287, !33}
!288 = distinct !{!288, !33}
!289 = distinct !{!289, !33, !147, !148}
!290 = distinct !{!290, !33, !148, !147}
!291 = distinct !{!291, !33}
!292 = distinct !{!292, !33}
!293 = distinct !{!293, !33}
!294 = distinct !{!294, !33}
!295 = distinct !{!295, !33}
!296 = distinct !{!296, !33}
!297 = distinct !{!297, !33}
!298 = distinct !{!298, !33}
!299 = distinct !{!299, !33}
!300 = distinct !{!300, !33}
!301 = distinct !{!301, !33}
!302 = distinct !{!302, !33}
!303 = distinct !{!303, !33}
!304 = distinct !{!304, !33}
!305 = distinct !{!305, !33}
!306 = distinct !{!306, !33}
!307 = distinct !{!307, !33}
!308 = distinct !{!308, !33, !147, !148}
!309 = distinct !{!309, !33, !148, !147}
!310 = distinct !{!310, !33}
!311 = distinct !{!311, !33}
!312 = distinct !{!312, !33}
!313 = distinct !{!313, !33}
!314 = distinct !{!314, !33}
!315 = distinct !{!315, !33}
!316 = distinct !{!316, !33}
!317 = distinct !{!317, !33, !147, !148}
!318 = distinct !{!318, !33, !147}
!319 = !{!320}
!320 = distinct !{!320, !321, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!321 = distinct !{!321, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!322 = distinct !{!322, !33}
!323 = distinct !{!323, !33}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!326 = distinct !{!326, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!327 = distinct !{!327, !33}
!328 = distinct !{!328, !33}
!329 = distinct !{!329, !33, !147, !148}
!330 = distinct !{!330, !33, !147}
end_hunk_0
