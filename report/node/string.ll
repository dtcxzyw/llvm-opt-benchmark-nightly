inline.NumInlined: 4553
inline.NumDeleted: 1209
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN2v88internal12SearchStringIhtEEiPNS0_7IsolateENS_4base6VectorIKT_EENS5_IKT0_EEi:bb.a
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit

bb.i:                                             ; preds = %bb.g
  store ptr @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.al, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit

bb.j:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit3.i
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.am, align 8
  br label %_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit

_ZN2v88internal12StringSearchIthEC2EPNS0_7IsolateENS_4base6VectorIKtEE.exit: ; preds = %bb.f, %bb.h, %bb.i, %bb.j
  %i.an = phi ptr [ @_ZN2v88internal12StringSearchIthE10FailSearchEPS2_NS_4base6VectorIKhEEi, %bb.f ], [ @_ZN2v88internal12StringSearchIthE16SingleCharSearchEPS2_NS_4base6VectorIKhEEi, %bb.h ], [ @_ZN2v88internal12StringSearchIthE12LinearSearchEPS2_NS_4base6VectorIKhEEi, %bb.i ], [ @_ZN2v88internal12StringSearchIthE13InitialSearchEPS2_NS_4base6VectorIKhEEi, %bb.j ]
  %i.ao = call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr %1, i64 %2, i32 noundef %5) #25, !inline_history !454
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret i32 %i.ao
}

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
  br i1 %i.e, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.b
  %i.f = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.f, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.d, !prof !26

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  %i.r = tail call noundef ptr @memchr(ptr noundef %i.o, i32 noundef %i.l, i64 noundef %i.q) #29 ; 2 uses
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
  br i1 %i.aa, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !455

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  %i.u = tail call noundef ptr @memchr(ptr noundef %i.r, i32 noundef %i.p, i64 noundef %i.t) #29 ; 2 uses
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
  br i1 %i.ad, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !455

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
  br i1 %or.cond.i, label %bb.i, label %_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit, !llvm.loop !456

_ZN2v88internal11CharCompareIthEEbPKT_PKT0_i.exit: ; preds = %bb.i
  br i1 %.not.i15, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.d, !llvm.loop !457

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %.sroa.5.0.copyload to i32 ; 5 uses
  %i.d = icmp ult i64 %2, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  %i.w = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.r, i64 noundef %i.v) #29 ; 2 uses
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
  br i1 %i.af, label %bb.e, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !455

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
  br i1 %exitcond.not, label %.split.loop.exit76, label %.preheader, !llvm.loop !458

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
  br i1 %exitcond26.not.i.1, label %_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i, !llvm.loop !459

_ZN2v88internal12StringSearchIthE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.loopexit.i
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi, ptr %i.ec, align 8
  %i.ed = tail call noundef i32 @_ZN2v88internal12StringSearchIthE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKhEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03757)
  br label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.j:                                             ; preds = %.split.loop.exit76
  %i.ee = add nsw i32 %i.l, %.136
  %i.ef = add nuw nsw i32 %i.aa, 1
  %.not.not = icmp sgt i32 %i.f, %i.aa
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIthEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !460

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !461

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
  br i1 %i.am, label %bb.e, label %.thread, !llvm.loop !462

.critedge.us:                                     ; preds = %bb.e
  %i.an = trunc nsw i64 %indvars.iv to i32
  %i.ao = add nsw i32 %.154.us, %i.p              ; 2 uses
  %i.ap = add i32 %.149.us, %i.e
  %i.aq = add i32 %i.p, %i.an
  %i.ar = sub i32 %i.ap, %i.aq                    ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.split.us, !llvm.loop !463

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
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !461

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
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !464

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
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !465

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
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !466

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
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !467

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
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !468

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
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !469

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKhE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br label %.preheader73.us, !llvm.loop !470

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
  br i1 %i.aj, label %bb.e, label %.thread, !llvm.loop !471

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
  br i1 %.not65, label %.thread, label %.preheader73, !llvm.loop !472

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
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.a
  %i.d = icmp ult i64 %.sroa.22.0.copyload, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKtE6lengthEv.exit33.i, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, label %.lr.ph.i, !llvm.loop !473

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
  %i.x = tail call noundef ptr @memchr(ptr noundef %i.t, i32 noundef %i.q, i64 noundef %i.w) #29 ; 2 uses
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
  br i1 %i.ai, label %bb.f, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit, !llvm.loop !474

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %2, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit15, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !473

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
  %i.aa = tail call noundef ptr @memchr(ptr noundef %i.w, i32 noundef %i.u, i64 noundef %i.z) #29 ; 2 uses
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
  br i1 %i.al, label %bb.g, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !474

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
  br i1 %or.cond.i, label %bb.k, label %_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit, !llvm.loop !475

_ZN2v88internal11CharCompareIttEEbPKT_PKT0_i.exit: ; preds = %bb.k
  br i1 %.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %bb.d, !llvm.loop !476

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = trunc nuw nsw i64 %.sroa.5.0.copyload to i32 ; 5 uses
  %i.d = icmp ult i64 %2, 2147483648
  br i1 %i.d, label %_ZNK2v84base6VectorIKtE6lengthEv.exit46, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br i1 %exitcond.not.i, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, label %.lr.ph.i, !llvm.loop !473

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
  %i.ac = tail call noundef ptr @memchr(ptr noundef %i.y, i32 noundef %i.w, i64 noundef %i.ab) #29 ; 2 uses
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
  br i1 %i.an, label %bb.g, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !474

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
  br i1 %exitcond.not, label %.split.loop.exit91, label %.preheader, !llvm.loop !477

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
  br i1 %exitcond26.not.i.1, label %_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit, label %.lr.ph.i53, !llvm.loop !478

_ZN2v88internal12StringSearchIttE31PopulateBoyerMooreHorspoolTableEv.exit: ; preds = %.lr.ph.i53.prol.loopexit, %.lr.ph.i53, %.loopexit.i
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi, ptr %i.ek, align 8
  %i.el = tail call noundef i32 @_ZN2v88internal12StringSearchIttE24BoyerMooreHorspoolSearchEPS2_NS_4base6VectorIKtEEi(ptr noundef nonnull %0, ptr %1, i64 %2, i32 noundef %.03767)
  br label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread

bb.l:                                             ; preds = %.split.loop.exit91
  %i.em = add nsw i32 %i.l, %.136
  %i.en = add nuw nsw i32 %.4.i, 1
  %.not.not = icmp slt i32 %.4.i, %i.f
  br i1 %.not.not, label %bb.d, label %_ZN2v88internal18FindFirstCharacterIttEEiNS_4base6VectorIKT_EENS3_IKT0_EEi.exit.thread, !llvm.loop !479

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br i1 %.not61.us, label %.thread, label %.preheader.us, !llvm.loop !480

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
  br i1 %i.al, label %bb.e, label %.thread, !llvm.loop !481

.critedge.us:                                     ; preds = %bb.e
  %i.am = trunc nsw i64 %indvars.iv to i32
  %i.an = add nsw i32 %.154.us, %i.p              ; 2 uses
  %i.ao = add i32 %.149.us, %i.e
  %i.ap = add i32 %i.p, %i.am
  %i.aq = sub i32 %i.ao, %i.ap                    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.split.us, label %_ZNK2v84base6VectorIKtE6lengthEv.exit62.split.us, !llvm.loop !482

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
  br i1 %.not61, label %.thread, label %.preheader, !llvm.loop !480

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
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !483

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
  br i1 %exitcond.not, label %.loopexit128, label %.lr.ph, !llvm.loop !484

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
  br i1 %.not91, label %.critedge, label %.lr.ph101, !llvm.loop !485

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
  br i1 %i.bi, label %.lr.ph105, label %.critedge94.loopexit, !llvm.loop !486

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
  br i1 %i.bp, label %bb.c, label %bb.j, !llvm.loop !487

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
  br i1 %exitcond122.not.1, label %.loopexit, label %.lr.ph112, !llvm.loop !488

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
  br i1 %i.b, label %_ZNK2v84base6VectorIKtE6lengthEv.exit, label %bb.b, !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit:            ; preds = %bb.a
  %i.c = icmp ult i64 %.sroa.5.0.copyload.fr, 2147483648
  br i1 %i.c, label %_ZNK2v84base6VectorIKtE6lengthEv.exit66, label %bb.c, !prof !26

bb.c:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34) #26
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
  br label %.preheader74.us, !llvm.loop !489

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
  br i1 %i.ai, label %bb.e, label %.thread, !llvm.loop !490

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
  br i1 %.not65, label %.thread, label %.preheader74, !llvm.loop !491

.thread:                                          ; preds = %bb.i, %bb.d, %bb.f, %bb.j, %.preheader74, %_ZNK2v84base6VectorIKtE6lengthEv.exit66
  %.4 = phi i32 [ %.150.us, %bb.f ], [ -1, %_ZNK2v84base6VectorIKtE6lengthEv.exit66 ], [ %.150, %.preheader74 ], [ -1, %bb.j ], [ -1, %bb.d ], [ -1, %bb.i ]
  ret i32 %.4
}

declare ptr @_ZN2v88internal7Factory18NewProperSubStringENS0_12DirectHandleINS0_6StringEEEjj(ptr noundef nonnull align 1 dereferenceable(1), ptr, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @_ZN2v88internal6Object15ConvertToNumberINS0_12DirectHandleEQsr3stdE16is_convertible_vIT_IS1_ENS3_IS1_EEEEENS4_INS0_5UnionIJNS0_3SmiENS0_10HeapNumberEEEEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #21 comdat align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::ConsStringIterator", align 8 ; 10 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.b = icmp eq i64 %0, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(276) %4, i8 0, i64 256, i1 false)
  br i1 %i.b, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit

_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  br label %.thread134

_ZN2v88internal18ConsStringIterator4NextEPi.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i32 0, ptr %i.e, align 8
  store i32 1, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 268
  store i32 33, ptr %i.f, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.h = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %.thread134, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal18ConsStringIterator4NextEPi.exit, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33
  %storemerge144 = phi i64 [ %i.cq, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %i.h, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.6.0142 = phi i64 [ %i.cm, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %2, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 2 uses
  %.sroa.039.0141 = phi ptr [ %i.cp, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ], [ %1, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ] ; 6 uses
  %i.j = add i64 %storemerge144, -1
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.m = load i32, ptr %i.l, align 4
  %i.n = zext i32 %i.m to i64
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %.sroa.6.0142, i64 %i.n) ; 7 uses
  %.idx.i.i22 = shl nuw nsw i64 %.sroa.speculated, 1 ; 2 uses
  %i.o = icmp eq i64 %.sroa.speculated, 0         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit, %.lr.ph
  %.sroa.0119.0 = phi i64 [ %storemerge144, %.lr.ph ], [ %i.ci, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 2 uses
  %.0 = phi i32 [ 0, %.lr.ph ], [ %.1, %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit ] ; 7 uses
  %i.p = add i64 %.sroa.0119.0, -1
  %i.q = inttoptr i64 %i.p to ptr                 ; 9 uses
  %i.r = load atomic volatile i64, ptr %i.q acquire, align 8
  %i.s = add i64 %i.r, 11
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = load atomic volatile i16, ptr %i.t monotonic, align 2
  %i.v = and i16 %i.u, 15
  switch i16 %i.v, label %bb.o [
    i16 8, label %.split
    i16 0, label %bb.c
    i16 9, label %.split167
    i16 1, label %.split167
    i16 10, label %bb.e
    i16 2, label %bb.i
    i16 11, label %bb.n
    i16 3, label %bb.n
    i16 13, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
    i16 5, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit
  ]

.split:                                           ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.x = sext i32 %.0 to i64
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.y, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %i.z = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.z, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ab = sext i32 %.0 to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i22
  br i1 %i.o, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.01013.i.i = phi ptr [ %i.ah, %bb.d ], [ %i.ac, %bb.c ] ; 2 uses
  %.01112.i.i = phi ptr [ %i.ai, %bb.d ], [ %.sroa.039.0141, %bb.c ] ; 2 uses
  %i.ae = load i16, ptr %.01013.i.i, align 2
  %i.af = load i8, ptr %.01112.i.i, align 1
  %i.ag = zext i8 %i.af to i16
  %.not.i.i = icmp eq i16 %i.ae, %i.ag
  br i1 %.not.i.i, label %bb.d, label %.thread134

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.01013.i.i, i64 2 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.01112.i.i, i64 1
  %.not16.i.i = icmp ult ptr %i.ah, %i.ad
  br i1 %.not16.i.i, label %.lr.ph.i.i, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !182

.split167:                                        ; preds = %bb.b, %bb.b
  %i.aj = tail call noundef zeroext i1 @_ZN2v88internal6String23IsConsStringEqualToImplIcEEbNS0_6TaggedINS0_10ConsStringEEENS_4base6VectorIKT_EERKNS0_31SharedStringAccessGuardIfNeededE(i64 %.sroa.0119.0, ptr %.sroa.039.0141, i64 %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(16) %3)
  br i1 %i.aj, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

bb.e:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = inttoptr i64 %i.al to ptr               ; 6 uses
  %i.an = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.ao = add i64 %i.an, 11
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i16, ptr %i.ap monotonic, align 2
  %i.ar = and i16 %i.aq, 16
  %.not.i = icmp eq i16 %i.ar, 0
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = load ptr, ptr %i.am, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.am) #25, !inline_history !49
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #25
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ay = load ptr, ptr %i.am, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.am) #25, !inline_history !49
  br label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit

bb.i:                                             ; preds = %bb.b
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = inttoptr i64 %i.bd to ptr               ; 6 uses
  %i.bf = load atomic volatile i64, ptr %i.q monotonic, align 8
  %i.bg = add i64 %i.bf, 11
  %i.bh = inttoptr i64 %i.bg to ptr
  %i.bi = load atomic volatile i16, ptr %i.bh monotonic, align 2
  %i.bj = and i16 %i.bi, 16
  %.not.i20 = icmp eq i16 %i.bj, 0
  br i1 %.not.i20, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.be, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.be) #25, !inline_history !53
  br i1 %i.bn, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bq = load ptr, ptr %i.be, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 72
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef ptr %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.be) #25, !inline_history !53
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.k, %bb.l
  %.0.i21 = phi ptr [ %i.bp, %bb.k ], [ %i.bt, %bb.l ]
  %i.bu = sext i32 %.0 to i64
  %i.bv = getelementptr inbounds [2 x i8], ptr %.0.i21, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx.i.i22
  br i1 %i.o, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.m
  %.01013.i.i24 = phi ptr [ %i.ca, %bb.m ], [ %i.bv, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %.01112.i.i25 = phi ptr [ %i.cb, %bb.m ], [ %.sroa.039.0141, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit ] ; 2 uses
  %i.bx = load i16, ptr %.01013.i.i24, align 2
  %i.by = load i8, ptr %.01112.i.i25, align 1
  %i.bz = zext i8 %i.by to i16
  %.not.i.i26 = icmp eq i16 %i.bx, %i.bz
  br i1 %.not.i.i26, label %bb.m, label %.thread134

bb.m:                                             ; preds = %.lr.ph.i.i23
  %i.ca = getelementptr inbounds nuw i8, ptr %.01013.i.i24, i64 2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.01112.i.i25, i64 1
  %.not16.i.i28 = icmp ult ptr %i.ca, %i.bw
  br i1 %.not16.i.i28, label %.lr.ph.i.i23, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, !llvm.loop !182

bb.n:                                             ; preds = %bb.b, %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = lshr i64 %i.cd, 32
  %i.cf = trunc nuw i64 %i.ce to i32
  %i.cg = add nsw i32 %.0, %i.cf
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit

bb.o:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNKS0_6String13IsEqualToImplILNS5_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededEEUlNS0_6TaggedINS0_16SeqOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_16SeqTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalOneByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_21ExternalTwoByteStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_12SlicedStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ConsStringEEEE_ZNKS6_ILS7_2EcEEbSC_SF_EUlNSG_INS0_10ThinStringEEEE_EEEEEDaNSG_IS5_EEOT_.exit: ; preds = %bb.b, %bb.b, %bb.n
  %.1 = phi i32 [ %i.cg, %bb.n ], [ %.0, %bb.b ], [ %.0, %bb.b ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ci = load i64, ptr %i.ch, align 8
  br label %bb.b

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit: ; preds = %bb.h, %bb.g
  %.0.i = phi ptr [ %i.ax, %bb.g ], [ %i.bb, %bb.h ]
  %i.cj = sext i32 %.0 to i64
  %i.ck = getelementptr inbounds i8, ptr %.0.i, i64 %i.cj
  %bcmp.i.i19 = tail call i32 @bcmp(ptr %i.ck, ptr %.sroa.039.0141, i64 %.sroa.speculated)
  %i.cl = icmp eq i32 %bcmp.i.i19, 0
  br i1 %i.cl, label %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, label %.thread134

_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread: ; preds = %bb.m, %bb.d, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit, %bb.c, %.split167, %.split, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit
  %i.cm = sub i64 %.sroa.6.0142, %.sroa.speculated ; 2 uses
  %.not = icmp eq i64 %i.cm, 0
  %i.cn = load i32, ptr %i.g, align 8
  %i.co = icmp eq i32 %i.cn, 0
  %or.cond = select i1 %.not, i1 true, i1 %i.co
  br i1 %or.cond, label %.thread134, label %_ZN2v88internal18ConsStringIterator4NextEPi.exit33

_ZN2v88internal18ConsStringIterator4NextEPi.exit33: ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.039.0141, i64 %.sroa.speculated
  %i.cq = call i64 @_ZN2v88internal18ConsStringIterator8ContinueEPi(ptr noundef nonnull align 8 dereferenceable(276) %4, ptr noundef nonnull %i.a) ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %.thread134, label %.lr.ph, !llvm.loop !492

.thread134:                                       ; preds = %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit, %.split, %.split167, %.lr.ph.i.i23, %.lr.ph.i.i, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread, %_ZN2v88internal18ConsStringIterator4NextEPi.exit
  %.116 = phi i1 [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit.thread ], [ false, %.lr.ph.i.i ], [ false, %.lr.ph.i.i23 ], [ false, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit ], [ false, %.split167 ], [ false, %.split ], [ true, %_ZNK2v88internal6String13IsEqualToImplILNS1_12EqualityTypeE2EcEEbNS_4base6VectorIKT0_EERKNS0_31SharedStringAccessGuardIfNeededE.exit.thread ], [ true, %_ZN2v88internal18ConsStringIterator4NextEPi.exit33 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i1 %.116
}

declare noundef zeroext i1 @_ZN2v88internal21IsIdentifierStartSlowEj(i32 noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN2v88internal20IsIdentifierPartSlowEj(i32 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringIhEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %.thread128, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ult i32 %1, 17
  br i1 %i.a, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1
  %i.c = zext i8 %i.b to i64                      ; 2 uses
  %i.d = add nsw i64 %i.c, -48                    ; 5 uses
  %i.e = icmp ugt i64 %i.d, 9
  br i1 %i.e, label %.thread128, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not140 = icmp eq i32 %1, 1
  br i1 %.not140, label %._crit_edge.thread, label %.thread128

bb.f:                                             ; preds = %bb.d
  %i.g = icmp samesign ugt i32 %1, 10
  br i1 %i.g, label %.lr.ph155, label %.preheader141

.preheader141:                                    ; preds = %bb.f
  %.not158 = icmp eq i32 %1, 1
  br i1 %.not158, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader141
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.091150 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.o, %bb.g ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i32
  %i.k = add nsw i32 %i.j, -48                    ; 2 uses
  %i.l = icmp ugt i32 %i.k, 9
  br i1 %i.l, label %.thread128, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.m = mul i64 %.091150, 10
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add i64 %i.m, %i.n                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !493

._crit_edge:                                      ; preds = %bb.g
  %i.p = icmp ugt i64 %i.o, 4294967294
  br i1 %i.p, label %._crit_edge156, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader141, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.o, %._crit_edge ], [ 0, %bb.e ], [ %i.d, %.preheader141 ]
  %i.q = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.w = load i32, ptr %i.v, align 8
  %i.x = lshr i32 %i.q, 12
  %i.y = xor i32 %i.x, %i.q
  %i.z = mul i32 %i.y, %i.s                       ; 2 uses
  %i.aa = lshr i32 %i.z, 12
  %i.ab = and i32 %i.aa, 4095
  %i.ac = xor i32 %i.ab, %i.z
  %i.ad = mul i32 %i.ac, %i.u                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.w
  %i.ai = and i32 %i.ah, 16777215                 ; 2 uses
  %i.aj = lshr i32 %i.ai, 12
  %i.ak = xor i32 %i.aj, %i.ai
  %i.al = shl nuw nsw i32 %i.ak, 2
  %i.am = shl nuw nsw i32 %1, 26
  %i.an = or disjoint i32 %i.al, %i.am
  br label %bb.u

.lr.ph155:                                        ; preds = %bb.f, %bb.h
  %indvars.iv168 = phi i64 [ %indvars.iv.next169, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i153 = phi i64 [ %i.av, %bb.h ], [ %i.d, %bb.f ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv168
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i32
  %i.ar = add nsw i32 %i.aq, -48                  ; 2 uses
  %i.as = icmp ult i32 %i.ar, 10
  br i1 %i.as, label %bb.h, label %.thread128

bb.h:                                             ; preds = %.lr.ph155
  %i.at = mul i64 %.013.i153, 10
  %i.au = zext nneg i32 %i.ar to i64
  %i.av = add i64 %i.at, %i.au                    ; 2 uses
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next169 to i32
  %exitcond171.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond171.not, label %._crit_edge156, label %.lr.ph155, !llvm.loop !494

._crit_edge156:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.o, %._crit_edge ], [ %i.av, %bb.h ]
  %i.aw = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.aw, label %.thread128, label %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge156
  %i.ax = load i64, ptr %2, align 8               ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = zext nneg i32 %1 to i64                 ; 7 uses
  %i.ba = load i64, ptr %i.ay, align 8            ; 2 uses
  %i.bb = xor i64 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = zext i64 %i.bb to i128
  %i.bf = zext i64 %i.bd to i128                  ; 2 uses
  %i.bg = mul nuw i128 %i.bf, %i.be               ; 2 uses
  %i.bh = lshr i128 %i.bg, 64
  %i.bi = xor i128 %i.bh, %i.bg
  %i.bj = trunc i128 %i.bi to i64
  %i.bk = xor i64 %i.az, %i.bj
  %i.bl = xor i64 %i.bk, %i.ax                    ; 2 uses
  %i.bm = icmp ugt i32 %1, 3
  br i1 %i.bm, label %bb.i, label %bb.j, !prof !26

bb.i:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.bn = getelementptr i8, ptr %0, i64 %i.az
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 1
  %i.bp = zext i32 %.0.copyload.i to i64
  %i.bq = shl nuw i64 %i.bp, 32
  %.0.copyload.i37 = load i32, ptr %i.bo, align 1
  %i.br = zext i32 %.0.copyload.i37 to i64
  %i.bs = or disjoint i64 %i.bq, %i.br
  %i.bt = and i64 %i.az, 24
  %i.bu = lshr i64 %i.az, 3
  %i.bv = lshr exact i64 %i.bt, %i.bu             ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bv
  %.0.copyload.i38 = load i32, ptr %i.bw, align 1
  %i.bx = zext i32 %.0.copyload.i38 to i64
  %i.by = shl nuw i64 %i.bx, 32
  %i.bz = sub nsw i64 0, %i.bv
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 %i.bz
  %.0.copyload.i39 = load i32, ptr %i.ca, align 1
  %i.cb = zext i32 %.0.copyload.i39 to i64
  %i.cc = or disjoint i64 %i.by, %i.cb
  %i.cd = xor i64 %i.cc, %i.bl
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexIhEENS1_16IndexParseResultEPKT_jjm.exit
  %i.ce = shl nuw nsw i64 %i.c, 56
  %i.cf = lshr i64 %i.az, 1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i64
  %i.cj = shl nuw nsw i64 %i.ci, 32
  %i.ck = or disjoint i64 %i.cj, %i.ce
  %i.cl = getelementptr i8, ptr %0, i64 %i.az
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36:  ; preds = %bb.i, %bb.j
  %.0101 = phi i64 [ %i.cd, %bb.i ], [ %i.bl, %bb.j ]
  %.0100 = phi i64 [ %i.bs, %bb.i ], [ %i.cp, %bb.j ]
  %i.cq = xor i64 %.0100, %i.bd
  %i.cr = zext i64 %i.cq to i128
  %i.cs = zext i64 %.0101 to i128
  %i.ct = mul nuw i128 %i.cr, %i.cs               ; 2 uses
  %i.cu = trunc i128 %i.ct to i64
  %i.cv = lshr i128 %i.ct, 64
  %i.cw = xor i64 %i.az, %i.cu
  %i.cx = xor i64 %i.cw, %i.ba
  %i.cy = zext i64 %i.cx to i128
  %i.cz = xor i128 %i.cv, %i.bf
  %i.da = mul nuw i128 %i.cz, %i.cy               ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = xor i128 %i.db, %i.da
  %i.dd = trunc i128 %i.dc to i32
  %i.de = and i32 %i.dd, 1073741823               ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  %i.dg = shl nuw i32 %i.de, 2
  %i.dh = select i1 %i.df, i32 108, i32 %i.dg     ; 3 uses
  %i.di = icmp ult i32 %i.dh, 536870912
  %i.dj = or i32 %i.dh, 536870912
  %spec.select = select i1 %i.di, i32 %i.dj, i32 %i.dh
  br label %bb.u

bb.k:                                             ; preds = %bb.b
  %i.dk = icmp ugt i32 %1, 16383
  br i1 %i.dk, label %bb.l, label %.thread128

bb.l:                                             ; preds = %bb.k
  %i.dl = shl i32 %1, 2
  %i.dm = or disjoint i32 %i.dl, 2
  br label %bb.u

.thread128:                                       ; preds = %.lr.ph, %.lr.ph155, %._crit_edge156, %bb.e, %bb.c, %bb.k, %bb.a
  %i.dn = load i64, ptr %2, align 8               ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dp = zext i32 %1 to i64                      ; 9 uses
  %i.dq = load i64, ptr %i.do, align 8            ; 3 uses
  %i.dr = xor i64 %i.dq, %i.dn
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dt = load i64, ptr %i.ds, align 8            ; 4 uses
  %i.du = zext i64 %i.dr to i128
  %i.dv = zext i64 %i.dt to i128                  ; 2 uses
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  %i.ea = xor i64 %i.dp, %i.dz
  %i.eb = xor i64 %i.ea, %i.dn                    ; 7 uses
  %i.ec = icmp ult i32 %1, 17
  br i1 %i.ec, label %bb.m, label %bb.q, !prof !26

bb.m:                                             ; preds = %.thread128
  %i.ed = icmp samesign ugt i32 %1, 3
  br i1 %i.ed, label %bb.n, label %bb.o, !prof !26

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr i8, ptr %0, i64 %i.dp
  %i.ef = getelementptr i8, ptr %i.ee, i64 -4     ; 2 uses
  %.0.copyload.i52 = load i32, ptr %0, align 1
  %i.eg = zext i32 %.0.copyload.i52 to i64
  %i.eh = shl nuw i64 %i.eg, 32
  %.0.copyload.i53 = load i32, ptr %i.ef, align 1
  %i.ei = zext i32 %.0.copyload.i53 to i64
  %i.ej = or disjoint i64 %i.eh, %i.ei
  %i.ek = and i64 %i.dp, 24
  %i.el = lshr i64 %i.dp, 3
  %i.em = lshr exact i64 %i.ek, %i.el             ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 %i.em
  %.0.copyload.i54 = load i32, ptr %i.en, align 1
  %i.eo = zext i32 %.0.copyload.i54 to i64
  %i.ep = shl nuw i64 %i.eo, 32
  %i.eq = sub nsw i64 0, %i.em
  %i.er = getelementptr inbounds i8, ptr %i.ef, i64 %i.eq
  %.0.copyload.i55 = load i32, ptr %i.er, align 1
  %i.es = zext i32 %.0.copyload.i55 to i64
  %i.et = or disjoint i64 %i.ep, %i.es
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.o:                                             ; preds = %bb.m
  br i1 %.not, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, label %bb.p, !prof !5

bb.p:                                             ; preds = %bb.o
  %i.eu = load i8, ptr %0, align 1
  %i.ev = zext i8 %i.eu to i64
  %i.ew = shl nuw i64 %i.ev, 56
  %i.ex = lshr i64 %i.dp, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw nsw i64 %i.fa, 32
  %i.fc = or disjoint i64 %i.fb, %i.ew
  %i.fd = getelementptr i8, ptr %0, i64 %i.dp
  %i.fe = getelementptr i8, ptr %i.fd, i64 -1
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = zext i8 %i.ff to i64
  %i.fh = or disjoint i64 %i.fc, %i.fg
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

bb.q:                                             ; preds = %.thread128
  %i.fi = icmp ugt i32 %1, 48
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  br i1 %i.fi, label %.preheader, label %.thread131, !prof !5

.preheader:                                       ; preds = %bb.q, %.preheader
  %.065.i = phi i64 [ %i.ft, %.preheader ], [ %i.eb, %bb.q ]
  %.063.i = phi ptr [ %i.go, %.preheader ], [ %0, %bb.q ] ; 7 uses
  %.062.i = phi i64 [ %i.gp, %.preheader ], [ %i.dp, %bb.q ]
  %.061.i = phi i64 [ %i.gd, %.preheader ], [ %i.eb, %bb.q ]
  %.0.i = phi i64 [ %i.gn, %.preheader ], [ %i.eb, %bb.q ]
  %.0.copyload.i56 = load i64, ptr %.063.i, align 1
  %i.fl = xor i64 %.0.copyload.i56, %i.dq
  %i.fm = getelementptr inbounds nuw i8, ptr %.063.i, i64 8
  %.0.copyload.i57 = load i64, ptr %i.fm, align 1
  %i.fn = xor i64 %.0.copyload.i57, %.065.i
  %i.fo = zext i64 %i.fl to i128
  %i.fp = zext i64 %i.fn to i128
  %i.fq = mul nuw i128 %i.fp, %i.fo               ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = xor i128 %i.fr, %i.fq
  %i.ft = trunc i128 %i.fs to i64                 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.063.i, i64 16
  %.0.copyload.i58 = load i64, ptr %i.fu, align 1
  %i.fv = xor i64 %.0.copyload.i58, %i.dt
  %i.fw = getelementptr inbounds nuw i8, ptr %.063.i, i64 24
  %.0.copyload.i59 = load i64, ptr %i.fw, align 1
  %i.fx = xor i64 %.0.copyload.i59, %.061.i
  %i.fy = zext i64 %i.fv to i128
  %i.fz = zext i64 %i.fx to i128
  %i.ga = mul nuw i128 %i.fz, %i.fy               ; 2 uses
  %i.gb = lshr i128 %i.ga, 64
  %i.gc = xor i128 %i.gb, %i.ga
  %i.gd = trunc i128 %i.gc to i64                 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.063.i, i64 32
  %.0.copyload.i60 = load i64, ptr %i.ge, align 1
  %i.gf = xor i64 %i.fk, %.0.copyload.i60
  %i.gg = getelementptr inbounds nuw i8, ptr %.063.i, i64 40
  %.0.copyload.i61 = load i64, ptr %i.gg, align 1
  %i.gh = xor i64 %.0.copyload.i61, %.0.i
  %i.gi = zext i64 %i.gf to i128
  %i.gj = zext i64 %i.gh to i128
  %i.gk = mul nuw i128 %i.gj, %i.gi               ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = xor i128 %i.gl, %i.gk
  %i.gn = trunc i128 %i.gm to i64                 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.063.i, i64 48 ; 3 uses
  %i.gp = add i64 %.062.i, -48                    ; 5 uses
  %i.gq = icmp ugt i64 %i.gp, 47
  br i1 %i.gq, label %.preheader, label %bb.r, !prof !26, !llvm.loop !495

bb.r:                                             ; preds = %.preheader
  %i.gr = xor i64 %i.gd, %i.ft
  %i.gs = xor i64 %i.gr, %i.gn                    ; 2 uses
  %i.gt = icmp samesign ugt i64 %i.gp, 16
  br i1 %i.gt, label %.thread131, label %bb.t

.thread131:                                       ; preds = %bb.q, %bb.r
  %.1.i139 = phi i64 [ %i.gp, %bb.r ], [ %i.dp, %bb.q ] ; 3 uses
  %.164.i137 = phi ptr [ %i.go, %bb.r ], [ %0, %bb.q ] ; 6 uses
  %.166.i135 = phi i64 [ %i.gs, %bb.r ], [ %i.eb, %bb.q ]
  %.0.copyload.i62 = load i64, ptr %.164.i137, align 1
  %i.gu = xor i64 %i.fk, %.0.copyload.i62
  %i.gv = getelementptr inbounds nuw i8, ptr %.164.i137, i64 8
  %.0.copyload.i63 = load i64, ptr %i.gv, align 1
  %i.gw = xor i64 %.166.i135, %.0.copyload.i63
  %i.gx = xor i64 %i.gw, %i.dt
  %i.gy = zext i64 %i.gu to i128
  %i.gz = zext i64 %i.gx to i128
  %i.ha = mul nuw i128 %i.gz, %i.gy               ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = xor i128 %i.hb, %i.ha
  %i.hd = trunc i128 %i.hc to i64                 ; 2 uses
  %i.he = icmp samesign ugt i64 %.1.i139, 32
  br i1 %i.he, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.thread131
  %i.hf = getelementptr inbounds nuw i8, ptr %.164.i137, i64 16
  %.0.copyload.i64 = load i64, ptr %i.hf, align 1
  %i.hg = xor i64 %.0.copyload.i64, %i.fk
  %i.hh = getelementptr inbounds nuw i8, ptr %.164.i137, i64 24
  %.0.copyload.i65 = load i64, ptr %i.hh, align 1
  %i.hi = xor i64 %.0.copyload.i65, %i.hd
  %i.hj = zext i64 %i.hg to i128
  %i.hk = zext i64 %i.hi to i128
  %i.hl = mul nuw i128 %i.hk, %i.hj               ; 2 uses
  %i.hm = lshr i128 %i.hl, 64
  %i.hn = xor i128 %i.hm, %i.hl
  %i.ho = trunc i128 %i.hn to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.thread131, %bb.r
  %.1.i138 = phi i64 [ %.1.i139, %bb.s ], [ %.1.i139, %.thread131 ], [ %i.gp, %bb.r ]
  %.164.i136 = phi ptr [ %.164.i137, %bb.s ], [ %.164.i137, %.thread131 ], [ %i.go, %bb.r ]
  %.2.i24 = phi i64 [ %i.ho, %bb.s ], [ %i.hd, %.thread131 ], [ %i.gs, %bb.r ]
  %i.hp = getelementptr i8, ptr %.164.i136, i64 %.1.i138 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -16
  %.0.copyload.i66 = load i64, ptr %i.hq, align 1
  %i.hr = getelementptr i8, ptr %i.hp, i64 -8
  %.0.copyload.i67 = load i64, ptr %i.hr, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit:    ; preds = %bb.o, %bb.n, %bb.p, %bb.t
  %.0103 = phi i64 [ %i.et, %bb.n ], [ %.0.copyload.i67, %bb.t ], [ 0, %bb.p ], [ 0, %bb.o ]
  %.0102 = phi i64 [ %i.ej, %bb.n ], [ %.0.copyload.i66, %bb.t ], [ %i.fh, %bb.p ], [ 0, %bb.o ]
  %.3.i = phi i64 [ %i.eb, %bb.n ], [ %.2.i24, %bb.t ], [ %i.eb, %bb.p ], [ %i.eb, %bb.o ]
  %i.hs = xor i64 %.0102, %i.dt
  %i.ht = xor i64 %.3.i, %.0103
  %i.hu = zext i64 %i.hs to i128
  %i.hv = zext i64 %i.ht to i128
  %i.hw = mul nuw i128 %i.hv, %i.hu               ; 2 uses
  %i.hx = trunc i128 %i.hw to i64
  %i.hy = lshr i128 %i.hw, 64
  %i.hz = xor i64 %i.dp, %i.hx
  %i.ia = xor i64 %i.hz, %i.dq
  %i.ib = zext i64 %i.ia to i128
  %i.ic = xor i128 %i.hy, %i.dv
  %i.id = mul nuw i128 %i.ic, %i.ib               ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = xor i128 %i.ie, %i.id
  %i.ig = trunc i128 %i.if to i32
  %i.ih = and i32 %i.ig, 1073741823               ; 2 uses
  %i.ii = icmp eq i32 %i.ih, 0
  %i.ij = shl nuw i32 %i.ih, 2
  %i.ik = or disjoint i32 %i.ij, 2
  %i.il = select i1 %i.ii, i32 110, i32 %i.ik
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.thread, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit, %bb.l
  %.1 = phi i32 [ %i.il, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit ], [ %i.dm, %bb.l ], [ %spec.select, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit36 ], [ %i.an, %._crit_edge.thread ]
  ret i32 %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #13

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal12StringHasher20HashSequentialStringItEEjPKT_jNS0_8HashSeedE(ptr noundef %0, i32 noundef %1, ptr %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.thread133.thread206, label %bb.b

.thread133.thread206:                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %._crit_edge168

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult i32 %1, 17
  br i1 %i.c, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.d = load i16, ptr %0, align 2                ; 3 uses
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -48                    ; 5 uses
  %i.g = icmp ugt i64 %i.f, 9
  %i.h = lshr i16 %i.d, 8
  %i.i = zext nneg i16 %i.h to i64
  br i1 %i.g, label %.lr.ph167.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.not147 = icmp eq i32 %1, 1
  br i1 %.not147, label %._crit_edge.thread, label %.lr.ph167.preheader

bb.f:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i32 %1, 10
  br i1 %i.k, label %.lr.ph162, label %.preheader148

.preheader148:                                    ; preds = %bb.f
  %.not169 = icmp eq i32 %1, 1
  br i1 %.not169, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader148
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %.096157 = phi i64 [ %i.f, %.lr.ph.preheader ], [ %i.s, %bb.g ]
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv
  %i.m = load i16, ptr %i.l, align 2
  %i.n = zext i16 %i.m to i32
  %i.o = add nsw i32 %i.n, -48                    ; 2 uses
  %i.p = icmp ugt i32 %i.o, 9
  br i1 %i.p, label %.lr.ph167.preheader, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.q = mul i64 %.096157, 10
  %i.r = zext nneg i32 %i.o to i64
  %i.s = add i64 %i.q, %i.r                       ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !496

._crit_edge:                                      ; preds = %bb.g
  %i.t = icmp ugt i64 %i.s, 4294967294
  br i1 %i.t, label %._crit_edge163, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader148, %bb.e, %._crit_edge
  %.2.ph = phi i64 [ %i.s, %._crit_edge ], [ 0, %bb.e ], [ %i.f, %.preheader148 ]
  %i.u = trunc nuw i64 %.2.ph to i32              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load i32, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = lshr i32 %i.u, 12
  %i.ac = xor i32 %i.ab, %i.u
  %i.ad = mul i32 %i.ac, %i.w                     ; 2 uses
  %i.ae = lshr i32 %i.ad, 12
  %i.af = and i32 %i.ae, 4095
  %i.ag = xor i32 %i.af, %i.ad
  %i.ah = mul i32 %i.ag, %i.y                     ; 2 uses
  %i.ai = lshr i32 %i.ah, 12
  %i.aj = and i32 %i.ai, 4095
  %i.ak = xor i32 %i.aj, %i.ah
  %i.al = mul i32 %i.ak, %i.aa
  %i.am = and i32 %i.al, 16777215                 ; 2 uses
  %i.an = lshr i32 %i.am, 12
  %i.ao = xor i32 %i.an, %i.am
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = shl nuw nsw i32 %1, 26
  %i.ar = or disjoint i32 %i.ap, %i.aq
  br label %bb.z

.lr.ph162:                                        ; preds = %bb.f, %bb.h
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %bb.h ], [ 1, %bb.f ] ; 2 uses
  %.013.i160 = phi i64 [ %i.az, %bb.h ], [ %i.f, %bb.f ]
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv180
  %i.at = load i16, ptr %i.as, align 2
  %i.au = zext i16 %i.at to i32
  %i.av = add nsw i32 %i.au, -48                  ; 2 uses
  %i.aw = icmp ult i32 %i.av, 10
  br i1 %i.aw, label %bb.h, label %.lr.ph167.preheader

bb.h:                                             ; preds = %.lr.ph162
  %i.ax = mul i64 %.013.i160, 10
  %i.ay = zext nneg i32 %i.av to i64
  %i.az = add i64 %i.ax, %i.ay                    ; 2 uses
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next181 to i32
  %exitcond183.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond183.not, label %._crit_edge163, label %.lr.ph162, !llvm.loop !497

._crit_edge163:                                   ; preds = %bb.h, %._crit_edge
  %.013.i.lcssa = phi i64 [ %i.s, %._crit_edge ], [ %i.az, %bb.h ]
  %i.ba = icmp ugt i64 %.013.i.lcssa, 9007199254740991
  br i1 %i.ba, label %.lr.ph167.preheader, label %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit

_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit: ; preds = %._crit_edge163
  %i.bb = load i64, ptr %2, align 8               ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count187 = zext nneg i32 %1 to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185, %wide.trip.count187
  br i1 %exitcond188.not, label %bb.k, label %bb.j, !llvm.loop !498

bb.j:                                             ; preds = %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit, %bb.i
  %indvars.iv184 = phi i64 [ 0, %_ZN2v88internal6detail20TryParseIntegerIndexItEENS1_16IndexParseResultEPKT_jjm.exit ], [ %indvars.iv.next185, %bb.i ] ; 2 uses
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv184
  %i.be = load i16, ptr %i.bd, align 2
  %i.bf = icmp ugt i16 %i.be, 255
  br i1 %i.bf, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41, label %bb.i

bb.k:                                             ; preds = %bb.i
  %i.bg = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bb, ptr noundef nonnull %i.bc) #25
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41:   ; preds = %bb.j
  %i.bh = shl nuw nsw i32 %1, 1
  %i.bi = zext nneg i32 %i.bh to i64              ; 7 uses
  %i.bj = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.bk = xor i64 %i.bj, %i.bb
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bm = load i64, ptr %i.bl, align 8            ; 3 uses
  %i.bn = zext i64 %i.bk to i128
  %i.bo = zext i64 %i.bm to i128                  ; 2 uses
  %i.bp = mul nuw i128 %i.bo, %i.bn               ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = xor i128 %i.bq, %i.bp
  %i.bs = trunc i128 %i.br to i64
  %i.bt = xor i64 %i.bi, %i.bs
  %i.bu = xor i64 %i.bt, %i.bb                    ; 3 uses
  %i.bv = icmp ult i32 %1, 9
  br i1 %i.bv, label %bb.l, label %.thread, !prof !26

bb.l:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.not146 = icmp eq i32 %1, 1
  br i1 %.not146, label %bb.n, label %bb.m, !prof !5

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr i8, ptr %0, i64 %i.bi
  %i.bx = getelementptr i8, ptr %i.bw, i64 -4     ; 2 uses
  %.0.copyload.i = load i32, ptr %0, align 2
  %i.by = zext i32 %.0.copyload.i to i64
  %i.bz = shl nuw i64 %i.by, 32
  %.0.copyload.i42 = load i32, ptr %i.bx, align 1
  %i.ca = zext i32 %.0.copyload.i42 to i64
  %i.cb = or disjoint i64 %i.bz, %i.ca
  %i.cc = and i64 %i.bi, 24
  %i.cd = lshr i64 %i.bi, 3
  %i.ce = lshr exact i64 %i.cc, %i.cd             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ce
  %.0.copyload.i43 = load i32, ptr %i.cf, align 1
  %i.cg = zext i32 %.0.copyload.i43 to i64
  %i.ch = shl nuw i64 %i.cg, 32
  %i.ci = sub nsw i64 0, %i.ce
  %i.cj = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %.0.copyload.i44 = load i32, ptr %i.cj, align 1
  %i.ck = zext i32 %.0.copyload.i44 to i64
  %i.cl = or disjoint i64 %i.ch, %i.ck
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

bb.n:                                             ; preds = %bb.l
  %i.cm = and i16 %i.d, 255
  %i.cn = zext nneg i16 %i.cm to i64
  %i.co = shl nuw i64 %i.cn, 56
  %i.cp = shl nuw nsw i64 %i.i, 32
  %i.cq = or disjoint i64 %i.cp, %i.co
  %i.cr = getelementptr i8, ptr %0, i64 %i.bi
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cq, %i.cu
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

.thread:                                          ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit41
  %.0.copyload.i51 = load i64, ptr %0, align 2
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = xor i64 %i.cx, %.0.copyload.i51
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.0.copyload.i52 = load i64, ptr %i.cz, align 2
  %i.da = xor i64 %i.bm, %.0.copyload.i52
  %i.db = xor i64 %i.da, %i.bu
  %i.dc = zext i64 %i.cy to i128
  %i.dd = zext i64 %i.db to i128
  %i.de = mul nuw i128 %i.dd, %i.dc               ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = xor i128 %i.df, %i.de
  %i.dh = trunc i128 %i.dg to i64
  %i.di = getelementptr i8, ptr %0, i64 %i.bi     ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 -16
  %.0.copyload.i55 = load i64, ptr %i.dj, align 1
  %i.dk = getelementptr i8, ptr %i.di, i64 -8
  %.0.copyload.i56 = load i64, ptr %i.dk, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i:  ; preds = %.thread, %bb.n, %bb.m
  %.0108 = phi i64 [ %i.cl, %bb.m ], [ %.0.copyload.i56, %.thread ], [ 0, %bb.n ]
  %.0107 = phi i64 [ %i.cb, %bb.m ], [ %.0.copyload.i55, %.thread ], [ %i.cv, %bb.n ]
  %.3.i.i = phi i64 [ %i.bu, %bb.m ], [ %i.dh, %.thread ], [ %i.bu, %bb.n ]
  %i.dl = xor i64 %.0107, %i.bm
  %i.dm = xor i64 %.3.i.i, %.0108
  %i.dn = zext i64 %i.dl to i128
  %i.do = zext i64 %i.dm to i128
  %i.dp = mul nuw i128 %i.do, %i.dn               ; 2 uses
  %i.dq = trunc i128 %i.dp to i64
  %i.dr = lshr i128 %i.dp, 64
  %i.ds = xor i64 %i.bi, %i.dq
  %i.dt = xor i64 %i.ds, %i.bj
  %i.du = zext i64 %i.dt to i128
  %i.dv = xor i128 %i.dr, %i.bo
  %i.dw = mul nuw i128 %i.dv, %i.du               ; 2 uses
  %i.dx = lshr i128 %i.dw, 64
  %i.dy = xor i128 %i.dx, %i.dw
  %i.dz = trunc i128 %i.dy to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit: ; preds = %bb.k, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i
  %.0.i = phi i64 [ %i.bg, %bb.k ], [ %i.dz, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i ]
  %i.ea = trunc i64 %.0.i to i32
  %i.eb = and i32 %i.ea, 1073741823               ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 0
  %i.ed = shl nuw i32 %i.eb, 2
  %i.ee = select i1 %i.ec, i32 108, i32 %i.ed     ; 3 uses
  %i.ef = icmp ult i32 %i.ee, 536870912
  %i.eg = or i32 %i.ee, 536870912
  %spec.select = select i1 %i.ef, i32 %i.eg, i32 %i.ee
  br label %bb.z

bb.o:                                             ; preds = %bb.b
  %i.eh = icmp ugt i32 %1, 16383
  br i1 %i.eh, label %bb.p, label %.lr.ph167.preheader

bb.p:                                             ; preds = %bb.o
  %i.ei = shl i32 %1, 2
  %i.ej = or disjoint i32 %i.ei, 2
  br label %bb.z

.lr.ph167.preheader:                              ; preds = %.lr.ph, %.lr.ph162, %._crit_edge163, %bb.o, %bb.c, %bb.e
  %i.ek = load i64, ptr %2, align 8               ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %wide.trip.count192 = zext i32 %1 to i64
  br label %.lr.ph167

bb.q:                                             ; preds = %.lr.ph167
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %wide.trip.count192
  br i1 %exitcond193.not, label %._crit_edge168, label %.lr.ph167, !llvm.loop !498

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %bb.q
  %indvars.iv189 = phi i64 [ 0, %.lr.ph167.preheader ], [ %indvars.iv.next190, %bb.q ] ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv189
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = icmp ugt i16 %i.en, 255
  br i1 %i.eo, label %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit, label %bb.q

._crit_edge168:                                   ; preds = %bb.q, %.thread133.thread206
  %i.ep = phi ptr [ %i.b, %.thread133.thread206 ], [ %i.el, %bb.q ]
  %i.eq = phi i64 [ %i.a, %.thread133.thread206 ], [ %i.ek, %bb.q ]
  %i.er = tail call noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef %0, i32 noundef %1, i64 noundef %i.eq, ptr noundef nonnull %i.ep) #25
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail10IsOnly8BitEPKtj.exit:     ; preds = %.lr.ph167
  %i.es = shl i32 %1, 1                           ; 5 uses
  %i.et = zext i32 %i.es to i64                   ; 9 uses
  %i.eu = load i64, ptr %i.el, align 8            ; 3 uses
  %i.ev = xor i64 %i.eu, %i.ek
  %i.ew = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ex = load i64, ptr %i.ew, align 8            ; 4 uses
  %i.ey = zext i64 %i.ev to i128
  %i.ez = zext i64 %i.ex to i128                  ; 2 uses
  %i.fa = mul nuw i128 %i.ez, %i.ey               ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = xor i128 %i.fb, %i.fa
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = xor i64 %i.et, %i.fd
  %i.ff = xor i64 %i.fe, %i.ek                    ; 7 uses
  %i.fg = icmp ult i32 %i.es, 17
  br i1 %i.fg, label %bb.r, label %bb.v, !prof !26

bb.r:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.fh = icmp samesign ugt i32 %i.es, 3
  br i1 %i.fh, label %bb.s, label %bb.t, !prof !26

bb.s:                                             ; preds = %bb.r
  %i.fi = getelementptr i8, ptr %0, i64 %i.et
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4     ; 2 uses
  %.0.copyload.i57 = load i32, ptr %0, align 1
  %i.fk = zext i32 %.0.copyload.i57 to i64
  %i.fl = shl nuw i64 %i.fk, 32
  %.0.copyload.i58 = load i32, ptr %i.fj, align 1
  %i.fm = zext i32 %.0.copyload.i58 to i64
  %i.fn = or disjoint i64 %i.fl, %i.fm
  %i.fo = and i64 %i.et, 24
  %i.fp = lshr i64 %i.et, 3
  %i.fq = lshr exact i64 %i.fo, %i.fp             ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 %i.fq
  %.0.copyload.i59 = load i32, ptr %i.fr, align 1
  %i.fs = zext i32 %.0.copyload.i59 to i64
  %i.ft = shl nuw i64 %i.fs, 32
  %i.fu = sub nsw i64 0, %i.fq
  %i.fv = getelementptr inbounds i8, ptr %i.fj, i64 %i.fu
  %.0.copyload.i60 = load i32, ptr %i.fv, align 1
  %i.fw = zext i32 %.0.copyload.i60 to i64
  %i.fx = or disjoint i64 %i.ft, %i.fw
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.t:                                             ; preds = %bb.r
  %.not.i.i36 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i36, label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28, label %bb.u, !prof !5

bb.u:                                             ; preds = %bb.t
  %i.fy = load i8, ptr %0, align 1
  %i.fz = zext i8 %i.fy to i64
  %i.ga = shl nuw i64 %i.fz, 56
  %i.gb = lshr exact i64 %i.et, 1
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1
  %i.ge = zext i8 %i.gd to i64
  %i.gf = shl nuw nsw i64 %i.ge, 32
  %i.gg = or disjoint i64 %i.gf, %i.ga
  %i.gh = getelementptr i8, ptr %0, i64 %i.et
  %i.gi = getelementptr i8, ptr %i.gh, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = zext i8 %i.gj to i64
  %i.gl = or disjoint i64 %i.gg, %i.gk
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

bb.v:                                             ; preds = %_ZN2v88internal6detail10IsOnly8BitEPKtj.exit
  %i.gm = icmp ugt i32 %i.es, 48
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.go = load i64, ptr %i.gn, align 8            ; 3 uses
  br i1 %i.gm, label %.preheader, label %.thread137, !prof !5

.preheader:                                       ; preds = %bb.v, %.preheader
  %.065.i.i31 = phi i64 [ %i.gx, %.preheader ], [ %i.ff, %bb.v ]
  %.063.i.i32 = phi ptr [ %i.hs, %.preheader ], [ %0, %bb.v ] ; 7 uses
  %.062.i.i33 = phi i64 [ %i.ht, %.preheader ], [ %i.et, %bb.v ]
  %.061.i.i34 = phi i64 [ %i.hh, %.preheader ], [ %i.ff, %bb.v ]
  %.0.i.i35 = phi i64 [ %i.hr, %.preheader ], [ %i.ff, %bb.v ]
  %.0.copyload.i61 = load i64, ptr %.063.i.i32, align 1
  %i.gp = xor i64 %.0.copyload.i61, %i.eu
  %i.gq = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 8
  %.0.copyload.i62 = load i64, ptr %i.gq, align 1
  %i.gr = xor i64 %.0.copyload.i62, %.065.i.i31
  %i.gs = zext i64 %i.gp to i128
  %i.gt = zext i64 %i.gr to i128
  %i.gu = mul nuw i128 %i.gt, %i.gs               ; 2 uses
  %i.gv = lshr i128 %i.gu, 64
  %i.gw = xor i128 %i.gv, %i.gu
  %i.gx = trunc i128 %i.gw to i64                 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 16
  %.0.copyload.i63 = load i64, ptr %i.gy, align 1
  %i.gz = xor i64 %.0.copyload.i63, %i.ex
  %i.ha = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 24
  %.0.copyload.i64 = load i64, ptr %i.ha, align 1
  %i.hb = xor i64 %.0.copyload.i64, %.061.i.i34
  %i.hc = zext i64 %i.gz to i128
  %i.hd = zext i64 %i.hb to i128
  %i.he = mul nuw i128 %i.hd, %i.hc               ; 2 uses
  %i.hf = lshr i128 %i.he, 64
  %i.hg = xor i128 %i.hf, %i.he
  %i.hh = trunc i128 %i.hg to i64                 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 32
  %.0.copyload.i65 = load i64, ptr %i.hi, align 1
  %i.hj = xor i64 %i.go, %.0.copyload.i65
  %i.hk = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 40
  %.0.copyload.i66 = load i64, ptr %i.hk, align 1
  %i.hl = xor i64 %.0.copyload.i66, %.0.i.i35
  %i.hm = zext i64 %i.hj to i128
  %i.hn = zext i64 %i.hl to i128
  %i.ho = mul nuw i128 %i.hn, %i.hm               ; 2 uses
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = xor i128 %i.hp, %i.ho
  %i.hr = trunc i128 %i.hq to i64                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.063.i.i32, i64 48 ; 3 uses
  %i.ht = add i64 %.062.i.i33, -48                ; 5 uses
  %i.hu = icmp ugt i64 %i.ht, 47
  br i1 %i.hu, label %.preheader, label %bb.w, !prof !26, !llvm.loop !495

bb.w:                                             ; preds = %.preheader
  %i.hv = xor i64 %i.hh, %i.gx
  %i.hw = xor i64 %i.hv, %i.hr                    ; 2 uses
  %i.hx = icmp samesign ugt i64 %i.ht, 16
  br i1 %i.hx, label %.thread137, label %bb.y

.thread137:                                       ; preds = %bb.v, %bb.w
  %.1.i.i26145 = phi i64 [ %i.ht, %bb.w ], [ %i.et, %bb.v ] ; 3 uses
  %.164.i.i25143 = phi ptr [ %i.hs, %bb.w ], [ %0, %bb.v ] ; 6 uses
  %.166.i.i24141 = phi i64 [ %i.hw, %bb.w ], [ %i.ff, %bb.v ]
  %.0.copyload.i67 = load i64, ptr %.164.i.i25143, align 1
  %i.hy = xor i64 %i.go, %.0.copyload.i67
  %i.hz = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 8
  %.0.copyload.i68 = load i64, ptr %i.hz, align 1
  %i.ia = xor i64 %.166.i.i24141, %.0.copyload.i68
  %i.ib = xor i64 %i.ia, %i.ex
  %i.ic = zext i64 %i.hy to i128
  %i.id = zext i64 %i.ib to i128
  %i.ie = mul nuw i128 %i.id, %i.ic               ; 2 uses
  %i.if = lshr i128 %i.ie, 64
  %i.ig = xor i128 %i.if, %i.ie
  %i.ih = trunc i128 %i.ig to i64                 ; 2 uses
  %i.ii = icmp samesign ugt i64 %.1.i.i26145, 32
  br i1 %i.ii, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.thread137
  %i.ij = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 16
  %.0.copyload.i69 = load i64, ptr %i.ij, align 1
  %i.ik = xor i64 %.0.copyload.i69, %i.go
  %i.il = getelementptr inbounds nuw i8, ptr %.164.i.i25143, i64 24
  %.0.copyload.i70 = load i64, ptr %i.il, align 1
  %i.im = xor i64 %.0.copyload.i70, %i.ih
  %i.in = zext i64 %i.ik to i128
  %i.io = zext i64 %i.im to i128
  %i.ip = mul nuw i128 %i.io, %i.in               ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = xor i128 %i.iq, %i.ip
  %i.is = trunc i128 %i.ir to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread137, %bb.w
  %.1.i.i26144 = phi i64 [ %.1.i.i26145, %bb.x ], [ %.1.i.i26145, %.thread137 ], [ %i.ht, %bb.w ]
  %.164.i.i25142 = phi ptr [ %.164.i.i25143, %bb.x ], [ %.164.i.i25143, %.thread137 ], [ %i.hs, %bb.w ]
  %.2.i.i27 = phi i64 [ %i.is, %bb.x ], [ %i.ih, %.thread137 ], [ %i.hw, %bb.w ]
  %i.it = getelementptr i8, ptr %.164.i.i25142, i64 %.1.i.i26144 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.it, i64 -16
  %.0.copyload.i71 = load i64, ptr %i.iu, align 1
  %i.iv = getelementptr i8, ptr %i.it, i64 -8
  %.0.copyload.i72 = load i64, ptr %i.iv, align 1
  br label %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28

_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28: ; preds = %bb.t, %bb.y, %bb.u, %bb.s
  %.0106 = phi i64 [ %i.fx, %bb.s ], [ %.0.copyload.i72, %bb.y ], [ 0, %bb.u ], [ 0, %bb.t ]
  %.0105 = phi i64 [ %i.fn, %bb.s ], [ %.0.copyload.i71, %bb.y ], [ %i.gl, %bb.u ], [ 0, %bb.t ]
  %.3.i.i29 = phi i64 [ %i.ff, %bb.s ], [ %.2.i.i27, %bb.y ], [ %i.ff, %bb.u ], [ %i.ff, %bb.t ]
  %i.iw = xor i64 %.0105, %i.ex
  %i.ix = xor i64 %.3.i.i29, %.0106
  %i.iy = zext i64 %i.iw to i128
  %i.iz = zext i64 %i.ix to i128
  %i.ja = mul nuw i128 %i.iz, %i.iy               ; 2 uses
  %i.jb = trunc i128 %i.ja to i64
  %i.jc = lshr i128 %i.ja, 64
  %i.jd = xor i64 %i.et, %i.jb
  %i.je = xor i64 %i.jd, %i.eu
  %i.jf = zext i64 %i.je to i128
  %i.jg = xor i128 %i.jc, %i.ez
  %i.jh = mul nuw i128 %i.jg, %i.jf               ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = xor i128 %i.ji, %i.jh
  %i.jk = trunc i128 %i.jj to i64
  br label %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37

_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37: ; preds = %._crit_edge168, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28
  %.0.i30 = phi i64 [ %i.er, %._crit_edge168 ], [ %i.jk, %_Z9rapidhashI15PlainHashReaderEmPKhmmPKm.exit.i28 ]
  %i.jl = trunc i64 %.0.i30 to i32
  %i.jm = and i32 %i.jl, 1073741823               ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 0
  %i.jo = shl nuw i32 %i.jm, 2
  %i.jp = or disjoint i32 %i.jo, 2
  %i.jq = select i1 %i.jn, i32 110, i32 %i.jp
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge.thread, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37, %bb.p
  %.1 = phi i32 [ %i.jq, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit37 ], [ %i.ej, %bb.p ], [ %spec.select, %_ZN2v88internal6detail12GetRapidHashEPKtjmPKm.exit ], [ %i.ar, %._crit_edge.thread ]
  ret i32 %.1
}

declare noundef i64 @_ZN2v88internal6detail20HashConvertingTo8BitEPKtjmPKm(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE16_M_push_back_auxIJS6_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 5
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 4
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 4
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.35) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #30
  %i.an = load ptr, ptr %i.c, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = load ptr, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8
  %i.as = load ptr, ptr %i.ar, align 8            ; 3 uses
  store ptr %i.as, ptr %i.o, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 512
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.at, ptr %i.au, align 8
  store ptr %i.as, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 4 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 5 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.f                       ; 3 uses
  %i.y = icmp sgt i64 %i.x, 8
  br i1 %i.y, label %bb.d, label %bb.e, !prof !26

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.t, ptr nonnull align 8 %i.d, i64 %i.x, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = icmp eq i64 %i.x, 8
  br i1 %i.z, label %bb.f, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.d, align 8
  store ptr %i.aa, ptr %i.t, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.g:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.i ; 2 uses
  %i.ac = ptrtoint ptr %i.v to i64
  %i.ad = sub i64 %i.ac, %i.f                     ; 3 uses
  %i.ae = ashr exact i64 %i.ad, 3                 ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 1
  br i1 %i.af, label %bb.h, label %bb.i, !prof !26

bb.h:                                             ; preds = %bb.g
  %i.ag = sub nsw i64 0, %i.ae
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ag
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.d, i64 %i.ad, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = icmp eq i64 %i.ad, 8
  br i1 %i.ai, label %bb.j, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ak = load ptr, ptr %i.d, align 8
  store ptr %i.ak, ptr %i.aj, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

bb.k:                                             ; preds = %bb.a
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %1)
  %i.al = add i64 %i.l, 2
  %i.am = add i64 %i.al, %.sroa.speculated        ; 5 uses
  %i.an = icmp ugt i64 %i.am, 1152921504606846975
  br i1 %i.an, label %bb.l, label %_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit, !prof !5

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ugt i64 %i.am, 2305843009213693951
  br i1 %i.ao, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.n:                                             ; preds = %bb.l
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit: ; preds = %bb.k
  %i.ap = shl nuw nsw i64 %i.am, 3
  %i.aq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ap) #30 ; 2 uses
  %i.ar = sub i64 %i.am, %i.j
  %i.as = lshr i64 %i.ar, 1
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.as
  %i.au = select i1 %2, i64 %1, i64 0
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.f                     ; 3 uses
  %i.az = icmp sgt i64 %i.ay, 8
  br i1 %i.az, label %bb.o, label %bb.p, !prof !26

bb.o:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %i.d, i64 %i.ay, i1 false)
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24

bb.p:                                             ; preds = %_ZNSt11_Deque_baseISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE15_M_allocate_mapEm.exit
  %i.ba = icmp eq i64 %i.ay, 8
  br i1 %i.ba, label %bb.q, label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.d, align 8
  store ptr %i.bb, ptr %i.av, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24

_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24: ; preds = %bb.o, %bb.p, %bb.q
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = shl i64 %i.l, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.bd) #27
  store ptr %i.aq, ptr %0, align 8
  store i64 %i.am, ptr %i.k, align 8
  br label %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit

_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24
  %.0 = phi ptr [ %i.av, %_ZSt4copyIPPSt4pairIN2v88internal6TaggedINS2_6StringEEEiES8_ET0_T_SA_S9_.exit24 ], [ %i.t, %bb.f ], [ %i.t, %bb.d ], [ %i.t, %bb.e ], [ %i.t, %bb.h ], [ %i.t, %bb.i ], [ %i.t, %bb.j ] ; 3 uses
  store ptr %.0, ptr %i.c, align 8
  %i.be = load ptr, ptr %.0, align 8              ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.be, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 512
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.bg, ptr %i.bh, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %i.i
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.a, align 8
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.bk, ptr %i.bl, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 512
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_6StringEEELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef %1) local_unnamed_addr #21 comdat align 2 {
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
  br i1 %i.l, label %bb.b, label %bb.e, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.m = icmp ugt i64 %spec.select.i.i, 1152921504606846975
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.n = shl nuw i64 8, %i.k
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #30 ; 7 uses
  %i.p = icmp eq ptr %i.c, %i.b
  br i1 %i.p, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader

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
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !499

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.v, %n.vec
  br i1 %cmp.n, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i.preheader15

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
  br i1 %i.ah, label %_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_6StringEEES5_ET0_T_S7_S6_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !500

_ZSt18uninitialized_moveIPN2v88internal6TaggedINS1_6StringEEES5_ET0_T_S7_S6_.exit: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.e
  %i.ai = shl nuw i64 1, %i.k
  %i.aj = ptrtoint ptr %i.b to i64
  %i.ak = sub i64 %i.aj, %i.g
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_6StringEEELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr %i.o, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ak
  store ptr %i.al, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.ai
  store ptr %i.am, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_6StringEEELm32ESaIS5_EE11FreeStorageEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #21 comdat align 2 {
_ZSt9destroy_nIPN2v88internal6TaggedINS1_6StringEEElET_S6_T0_.exit:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not = icmp eq ptr %i.a, %i.b
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %_ZSt9destroy_nIPN2v88internal6TaggedINS1_6StringEEElET_S6_T0_.exit
  %i.c = ptrtoint ptr %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = sub i64 %i.f, %i.c
  tail call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.g) #27
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_ZSt9destroy_nIPN2v88internal6TaggedINS1_6StringEEElET_S6_T0_.exit
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_6StringEEELm32ESaIS5_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #21 comdat align 2 {
bb.a:
  tail call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal6TaggedINS2_6StringEEELm32ESaIS5_EE4GrowEm(ptr noundef nonnull align 8 dereferenceable(280) %0, i64 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS4_EEES0_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 9 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = urem i64 %i.e, %i.g                      ; 5 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.critedge17, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.024.0.in = phi ptr [ %i.l, %bb.b ], [ %.sroa.024.0, %bb.d ]
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8 ; 4 uses
  %i.m = icmp eq ptr %.sroa.024.0, null
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8
  %i.o = load i64, ptr %i.b, align 8
  %i.p = load i64, ptr %i.n, align 8
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %_ZNKSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !501

.critedge:                                        ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = urem i64 %i.r, %i.t
  br label %.critedge17

bb.e:                                             ; preds = %.critedge.thread
  %i.v = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.e, %i.x
  br i1 %i.y, label %_ZNKSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.e, %i.ac
  br i1 %i.z, label %_ZNKSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !83

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.aa = load ptr, ptr %.020.i.i, align 8        ; 4 uses
  %.not18.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i, label %.critedge17, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = urem i64 %i.ac, %i.g
  %.not19.i.i = icmp eq i64 %i.ad, %i.h
  br i1 %.not19.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i, !llvm.loop !83

..loopexit_crit_edge21.i.i:                       ; preds = %bb.g
  br label %.critedge17, !llvm.loop !83

.critedge17:                                      ; preds = %.lr.ph.i.i, %.critedge, %..loopexit_crit_edge21.i.i, %.critedge.thread
  %i.ae = phi i64 [ %i.u, %.critedge ], [ %i.h, %.critedge.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.af = phi i64 [ %i.t, %.critedge ], [ %i.g, %.critedge.thread ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ag = phi ptr [ %i.s, %.critedge ], [ %i.f, %.critedge.thread ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %i.ah = phi i64 [ %i.r, %.critedge ], [ %i.e, %.critedge.thread ], [ %i.e, %..loopexit_crit_edge21.i.i ], [ %i.e, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef %i.af, i64 noundef %i.d, i64 noundef 1) #25 ; 2 uses
  %i.ak = extractvalue { i8, i64 } %i.aj, 0
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge17
  %i.am = extractvalue { i8, i64 } %i.aj, 1
  tail call void @_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am)
  %i.an = load i64, ptr %i.ag, align 8
  %i.ao = urem i64 %i.ah, %i.an
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge17
  %.0.i18 = phi i64 [ %i.ao, %bb.h ], [ %i.ae, %.critedge17 ] ; 2 uses
  %i.ap = load ptr, ptr %0, align 8               ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i18 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.a, align 8
  %i.at = load ptr, ptr %i.aq, align 8
  store ptr %i.a, ptr %i.at, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  store ptr %i.av, ptr %i.a, align 8
  store ptr %i.a, ptr %i.au, align 8
  %.not11.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.ag, align 8
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = urem i64 %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.az
  store ptr %i.a, ptr %i.ba, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = phi ptr [ %.pre, %bb.l ], [ %i.ap, %bb.k ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0.i18
  store ptr %i.au, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bd = load i64, ptr %i.c, align 8
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.c, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.031.0.ph = phi ptr [ %.sroa.024.0, %bb.d ], [ %i.v, %bb.e ], [ %i.aa, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %_ZNKSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %.sroa.4.042 = phi i8 [ 1, %bb.n ], [ 0, %_ZNKSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ]
  %.sroa.031.040 = phi ptr [ %i.a, %bb.n ], [ %.sroa.031.0.ph, %_ZNKSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.040, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.042, 1
  ret { ptr, i8 } %.fca.1.insert
}

declare { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKhELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKhELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKhELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKhELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !502

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmPKhESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEENS0_11StringShapeES4_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE(i64 %0, i16 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.au, %bb.a
  %.tr.ph = phi i64 [ %i.bs, %bb.au ], [ %0, %bb.a ]
  %.tr130.ph = phi i16 [ %i.by, %bb.au ], [ %1, %bb.a ]
  %.tr132.ph = phi i32 [ %i.cd, %bb.au ], [ %3, %bb.a ] ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %bb.av
  %.tr = phi i64 [ %i.ch, %bb.av ], [ %.tr.ph, %tailrecurse.outer ] ; 6 uses
  %.tr130 = phi i16 [ %i.cn, %bb.av ], [ %.tr130.ph, %tailrecurse.outer ]
  %i.a = and i16 %.tr130, 15
  switch i16 %i.a, label %bb.aw [
    i16 8, label %bb.b
    i16 0, label %bb.t
    i16 9, label %bb.u
    i16 1, label %bb.u
    i16 10, label %bb.v
    i16 2, label %bb.aq
    i16 11, label %bb.au
    i16 3, label %bb.au
    i16 13, label %bb.av
    i16 5, label %bb.av
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = add i64 %.tr, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = zext i32 %.tr132.ph to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e ; 17 uses
  switch i32 %4, label %bb.s [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 15, label %bb.q
    i32 16, label %bb.r
    i32 0, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 1
  store i8 %i.g, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.d:                                             ; preds = %bb.b
  %i.h = load i16, ptr %i.f, align 1
  store i16 %i.h, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) %i.f, i64 3, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.f:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.f, align 1
  store i32 %i.i, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.g:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) %i.f, i64 5, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) %i.f, i64 6, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.i:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) %i.f, i64 7, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.j:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.f, align 1
  store i64 %i.j, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.k:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) %i.f, i64 9, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.l:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) %i.f, i64 10, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %2, ptr noundef nonnull align 1 dereferenceable(11) %i.f, i64 11, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) %i.f, i64 12, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.o:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 1 dereferenceable(13) %i.f, i64 13, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.p:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) %i.f, i64 14, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) %i.f, i64 15, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.r:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %i.f, i64 16, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.s:                                             ; preds = %bb.b
  %i.k = zext i32 %4 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %i.f, i64 %i.k, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.t:                                             ; preds = %tailrecurse
  %i.l = add i64 %.tr, -1
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = zext i32 %.tr132.ph to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.o
  %i.q = zext i32 %4 to i64
  tail call void @_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m(ptr noundef %2, ptr noundef %i.p, i64 noundef %i.q)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.u:                                             ; preds = %tailrecurse, %tailrecurse
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

bb.v:                                             ; preds = %tailrecurse
  %i.r = add i64 %.tr, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i64, ptr %i.t, align 8
  %i.v = inttoptr i64 %i.u to ptr                 ; 6 uses
  %i.w = load atomic volatile i64, ptr %i.s monotonic, align 8
  %i.x = add i64 %i.w, 11
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load atomic volatile i16, ptr %i.y monotonic, align 2
  %i.aa = and i16 %i.z, 16
  %.not.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call noundef zeroext i1 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #25, !inline_history !49
  br i1 %i.ae, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.ah = load ptr, ptr %i.v, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 72
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.v) #25, !inline_history !49
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.x, %bb.y
  %.0.i8 = phi ptr [ %i.ag, %bb.x ], [ %i.ak, %bb.y ]
  %i.al = zext i32 %.tr132.ph to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i8, i64 %i.al ; 17 uses
end_hunk_0
begin_hunk_1_@_ZN2v88internal12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEENS0_11StringShapeES4_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE:bb.a
    i32 12, label %bb.ak
    i32 13, label %bb.al
    i32 14, label %bb.am
    i32 15, label %bb.an
    i32 16, label %bb.ao
    i32 0, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit
  ]

bb.z:                                             ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %i.an = load i8, ptr %i.am, align 1
  store i8 %i.an, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.aa:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %i.ao = load i16, ptr %i.am, align 1
  store i16 %i.ao, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ab:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %2, ptr noundef nonnull align 1 dereferenceable(3) %i.am, i64 3, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ac:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %i.ap = load i32, ptr %i.am, align 1
  store i32 %i.ap, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ad:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %2, ptr noundef nonnull align 1 dereferenceable(5) %i.am, i64 5, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ae:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %2, ptr noundef nonnull align 1 dereferenceable(6) %i.am, i64 6, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.af:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %2, ptr noundef nonnull align 1 dereferenceable(7) %i.am, i64 7, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ag:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %i.aq = load i64, ptr %i.am, align 1
  store i64 %i.aq, ptr %2, align 1
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ah:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %2, ptr noundef nonnull align 1 dereferenceable(9) %i.am, i64 9, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ai:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %2, ptr noundef nonnull align 1 dereferenceable(10) %i.am, i64 10, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.aj:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %2, ptr noundef nonnull align 1 dereferenceable(11) %i.am, i64 11, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ak:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %2, ptr noundef nonnull align 1 dereferenceable(12) %i.am, i64 12, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.al:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %2, ptr noundef nonnull align 1 dereferenceable(13) %i.am, i64 13, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.am:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %2, ptr noundef nonnull align 1 dereferenceable(14) %i.am, i64 14, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.an:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %2, ptr noundef nonnull align 1 dereferenceable(15) %i.am, i64 15, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ao:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(16) %i.am, i64 16, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.ap:                                            ; preds = %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit
  %i.ar = zext i32 %4 to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %2, ptr nonnull align 1 %i.am, i64 %i.ar, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.aq:                                            ; preds = %tailrecurse
  %i.as = add i64 %.tr, -1
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = inttoptr i64 %i.av to ptr               ; 6 uses
  %i.ax = load atomic volatile i64, ptr %i.at monotonic, align 8
  %i.ay = add i64 %i.ax, 11
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i16, ptr %i.az monotonic, align 2
  %i.bb = and i16 %i.ba, 16
  %.not.i10 = icmp eq i16 %i.bb, 0
  br i1 %.not.i10, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bc = load ptr, ptr %i.aw, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call noundef zeroext i1 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.aw) #25, !inline_history !53
  br i1 %i.bf, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  tail call void @_ZNK2v86String22ExternalStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25
  %i.bg = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %i.bi = load ptr, ptr %i.aw, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(16) %i.aw) #25, !inline_history !53
  br label %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit: ; preds = %bb.as, %bb.at
  %.0.i11 = phi ptr [ %i.bh, %bb.as ], [ %i.bl, %bb.at ]
  %i.bm = zext i32 %.tr132.ph to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.0.i11, i64 %i.bm
  %i.bo = zext i32 %4 to i64
  tail call void @_ZN2v88internal9CopyCharsIthEEvPT0_PKT_m(ptr noundef %2, ptr noundef %i.bn, i64 noundef %i.bo)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.au:                                            ; preds = %tailrecurse, %tailrecurse
  %i.bp = add i64 %.tr, -1
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8            ; 2 uses
  %i.bt = add i64 %i.bs, -1
  %i.bu = inttoptr i64 %i.bt to ptr
  %i.bv = load atomic volatile i64, ptr %i.bu acquire, align 8
  %i.bw = add i64 %i.bv, 11
  %i.bx = inttoptr i64 %i.bw to ptr
  %i.by = load atomic volatile i16, ptr %i.bx monotonic, align 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.ca = load i64, ptr %i.bz, align 8
  %i.cb = lshr i64 %i.ca, 32
  %i.cc = trunc nuw i64 %i.cb to i32
  %i.cd = add i32 %.tr132.ph, %i.cc
  br label %tailrecurse.outer

bb.av:                                            ; preds = %tailrecurse, %tailrecurse
  %i.ce = add i64 %.tr, -1
  %i.cf = inttoptr i64 %i.ce to ptr
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.ci = add i64 %i.ch, -1
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = load atomic volatile i64, ptr %i.cj acquire, align 8
  %i.cl = add i64 %i.ck, 11
  %i.cm = inttoptr i64 %i.cl to ptr
  %i.cn = load atomic volatile i16, ptr %i.cm monotonic, align 2
  br label %tailrecurse

bb.aw:                                            ; preds = %tailrecurse
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2IhEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_IhEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit: ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.t, %_ZNK2v88internal21ExternalTwoByteString8GetCharsEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { ptr, i8 } @_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS4_EEES0_INS6_14_Node_iteratorIS4_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #30 ; 9 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %.not.not = icmp eq i64 %i.d, 0
  br i1 %.not.not, label %bb.b, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a
  %i.e = load i64, ptr %i.b, align 8              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8              ; 5 uses
  %i.h = urem i64 %i.e, %i.g                      ; 5 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.critedge17, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.024.0.in = phi ptr [ %i.l, %bb.b ], [ %.sroa.024.0, %bb.d ]
  %.sroa.024.0 = load ptr, ptr %.sroa.024.0.in, align 8 ; 4 uses
  %i.m = icmp eq ptr %.sroa.024.0, null
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.0, i64 8
  %i.o = load i64, ptr %i.b, align 8
  %i.p = load i64, ptr %i.n, align 8
  %i.q = icmp eq i64 %i.o, %i.p
  br i1 %i.q, label %_ZNKSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %bb.c, !llvm.loop !503

.critedge:                                        ; preds = %bb.c
  %i.r = load i64, ptr %i.b, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8              ; 2 uses
  %i.u = urem i64 %i.r, %i.t
  br label %.critedge17

bb.e:                                             ; preds = %.critedge.thread
  %i.v = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = icmp eq i64 %i.e, %i.x
  br i1 %i.y, label %_ZNKSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i

bb.f:                                             ; preds = %bb.g
  %i.z = icmp eq i64 %i.e, %i.ac
  br i1 %i.z, label %_ZNKSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit, label %.lr.ph.i.i, !llvm.loop !90

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.020.i.i = phi ptr [ %i.aa, %bb.f ], [ %i.v, %bb.e ]
  %i.aa = load ptr, ptr %.020.i.i, align 8        ; 4 uses
  %.not18.i.i = icmp eq ptr %i.aa, null
  br i1 %.not18.i.i, label %.critedge17, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ad = urem i64 %i.ac, %i.g
  %.not19.i.i = icmp eq i64 %i.ad, %i.h
  br i1 %.not19.i.i, label %bb.f, label %..loopexit_crit_edge21.i.i, !llvm.loop !90

..loopexit_crit_edge21.i.i:                       ; preds = %bb.g
  br label %.critedge17, !llvm.loop !90

.critedge17:                                      ; preds = %.lr.ph.i.i, %.critedge, %..loopexit_crit_edge21.i.i, %.critedge.thread
  %i.ae = phi i64 [ %i.u, %.critedge ], [ %i.h, %.critedge.thread ], [ %i.h, %..loopexit_crit_edge21.i.i ], [ %i.h, %.lr.ph.i.i ]
  %i.af = phi i64 [ %i.t, %.critedge ], [ %i.g, %.critedge.thread ], [ %i.g, %..loopexit_crit_edge21.i.i ], [ %i.g, %.lr.ph.i.i ]
  %i.ag = phi ptr [ %i.s, %.critedge ], [ %i.f, %.critedge.thread ], [ %i.f, %..loopexit_crit_edge21.i.i ], [ %i.f, %.lr.ph.i.i ] ; 2 uses
  %i.ah = phi i64 [ %i.r, %.critedge ], [ %i.e, %.critedge.thread ], [ %i.e, %..loopexit_crit_edge21.i.i ], [ %i.e, %.lr.ph.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = tail call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 noundef %i.af, i64 noundef %i.d, i64 noundef 1) #25 ; 2 uses
  %i.ak = extractvalue { i8, i64 } %i.aj, 0
  %i.al = trunc i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge17
  %i.am = extractvalue { i8, i64 } %i.aj, 1
  tail call void @_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.am)
  %i.an = load i64, ptr %i.ag, align 8
  %i.ao = urem i64 %i.ah, %i.an
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.critedge17
  %.0.i18 = phi i64 [ %i.ao, %bb.h ], [ %i.ae, %.critedge17 ] ; 2 uses
  %i.ap = load ptr, ptr %0, align 8               ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.0.i18 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.ar, align 8
  store ptr %i.as, ptr %i.a, align 8
  %i.at = load ptr, ptr %i.aq, align 8
  store ptr %i.a, ptr %i.at, align 8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 3 uses
  store ptr %i.av, ptr %i.a, align 8
  store ptr %i.a, ptr %i.au, align 8
  %.not11.i.i = icmp eq ptr %i.av, null
  br i1 %.not11.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.ag, align 8
  %i.ay = load i64, ptr %i.aw, align 8
  %i.az = urem i64 %i.ay, %i.ax
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.az
  store ptr %i.a, ptr %i.ba, align 8
  %.pre = load ptr, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bb = phi ptr [ %.pre, %bb.l ], [ %i.ap, %bb.k ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.0.i18
  store ptr %i.au, ptr %i.bc, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.bd = load i64, ptr %i.c, align 8
  %i.be = add i64 %i.bd, 1
  store i64 %i.be, ptr %i.c, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNKSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit: ; preds = %bb.f, %bb.d, %bb.e
  %.sroa.031.0.ph = phi ptr [ %.sroa.024.0, %bb.d ], [ %i.v, %bb.e ], [ %i.aa, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 24) #27
  br label %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit

_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit: ; preds = %bb.n, %_ZNKSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit
  %.sroa.4.042 = phi i8 [ 1, %bb.n ], [ 0, %_ZNKSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ]
  %.sroa.031.040 = phi ptr [ %i.a, %bb.n ], [ %.sroa.031.0.ph, %_ZNKSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.031.040, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.4.042, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8
  br label %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKtELb0EEEEE19_M_allocate_bucketsEm.exit.i, !prof !5

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #26
  unreachable

bb.f:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #26
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKtELb0EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #30 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKtELb0EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPKtELb0EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  store ptr null, ptr %i.g, align 8
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.j
  %.031 = phi ptr [ %i.i, %bb.j ], [ %i.h, %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.j ], [ 0, %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8             ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 8
  %i.k = load i64, ptr %i.j, align 8
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8
  store ptr %i.o, ptr %.031, align 8
  store ptr %.031, ptr %i.g, align 8
  store ptr %i.g, ptr %i.m, align 8
  %i.p = load ptr, ptr %.031, align 8
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8
  store ptr %i.r, ptr %.031, align 8
  %i.s = load ptr, ptr %i.m, align 8
  store ptr %.031, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.1 = phi i64 [ %.02530, %bb.i ], [ %i.l, %bb.h ], [ %i.l, %bb.g ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !504

._crit_edge:                                      ; preds = %bb.j, %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #27
  br label %_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableImSt4pairIKmPKtESaIS4_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS6_18_Mod_range_hashingENS6_20_Default_ranged_hashENS6_20_Prime_rehash_policyENS6_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8
  store ptr %.0.i, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN2v88internal12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEENS0_11StringShapeES4_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSD_2EEEE(i64 %0, i16 %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %bb.as, %bb.a
  %.tr.ph = phi i64 [ %i.bq, %bb.as ], [ %0, %bb.a ]
  %.tr132.ph = phi i16 [ %i.bw, %bb.as ], [ %1, %bb.a ]
  %.tr134.ph = phi i32 [ %i.cb, %bb.as ], [ %3, %bb.a ] ; 5 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.outer, %bb.at
  %.tr = phi i64 [ %i.cf, %bb.at ], [ %.tr.ph, %tailrecurse.outer ] ; 6 uses
  %.tr132 = phi i16 [ %i.cl, %bb.at ], [ %.tr132.ph, %tailrecurse.outer ]
  %i.a = and i16 %.tr132, 15
  switch i16 %i.a, label %bb.au [
    i16 8, label %bb.b
    i16 0, label %bb.c
    i16 9, label %bb.t
    i16 1, label %bb.t
    i16 10, label %bb.u
    i16 2, label %bb.y
    i16 11, label %bb.as
    i16 3, label %bb.as
    i16 13, label %bb.at
    i16 5, label %bb.at
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = add i64 %.tr, -1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = zext i32 %.tr134.ph to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = zext i32 %4 to i64
  tail call void @_ZN2v88internal9CopyCharsIhtEEvPT0_PKT_m(ptr noundef %2, ptr noundef %i.f, i64 noundef %i.g)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.c:                                             ; preds = %tailrecurse
  %i.h = add i64 %.tr, -1
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = zext i32 %.tr134.ph to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %i.k ; 17 uses
  switch i32 %4, label %_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
    i32 6, label %bb.i
    i32 7, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
    i32 14, label %bb.q
    i32 15, label %bb.r
    i32 16, label %bb.s
    i32 0, label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit
  ]

bb.d:                                             ; preds = %bb.c
  %i.m = load i16, ptr %i.l, align 2
  store i16 %i.m, ptr %2, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.e:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.l, align 2
  store i32 %i.n, ptr %2, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %2, ptr noundef nonnull align 2 dereferenceable(6) %i.l, i64 6, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.g:                                             ; preds = %bb.c
  %i.o = load i64, ptr %i.l, align 2
  store i64 %i.o, ptr %2, align 2
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.h:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %2, ptr noundef nonnull align 2 dereferenceable(10) %i.l, i64 10, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.i:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %2, ptr noundef nonnull align 2 dereferenceable(12) %i.l, i64 12, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(14) %2, ptr noundef nonnull align 2 dereferenceable(14) %i.l, i64 14, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.k:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %2, ptr noundef nonnull align 2 dereferenceable(16) %i.l, i64 16, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.l:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %2, ptr noundef nonnull align 2 dereferenceable(18) %i.l, i64 18, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.m:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(20) %2, ptr noundef nonnull align 2 dereferenceable(20) %i.l, i64 20, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %2, ptr noundef nonnull align 2 dereferenceable(22) %i.l, i64 22, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.o:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(24) %2, ptr noundef nonnull align 2 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.p:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(26) %2, ptr noundef nonnull align 2 dereferenceable(26) %i.l, i64 26, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.q:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(28) %2, ptr noundef nonnull align 2 dereferenceable(28) %i.l, i64 28, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.r:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %2, ptr noundef nonnull align 2 dereferenceable(30) %i.l, i64 30, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.s:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %2, ptr noundef nonnull align 2 dereferenceable(32) %i.l, i64 32, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

_ZSt8__copy_nIPKtmPtET1_T_T0_S3_St26random_access_iterator_tag.exit.i.i: ; preds = %bb.c
  %i.p = zext i32 %4 to i64
  %.idx.i.i.i = shl nuw nsw i64 %i.p, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %2, ptr nonnull align 2 %i.l, i64 %.idx.i.i.i, i1 false)
  br label %_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_12_GLOBAL__N_119WriteNonConsToFlat2ItEEPT_NS0_6TaggedINS0_6StringEEES1_S8_jjRKNS0_31SharedStringAccessGuardIfNeededERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSG_2EEEEEUlNS9_INS0_16SeqOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_16SeqTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalOneByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_21ExternalTwoByteStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_12SlicedStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ThinStringEEEE_ZNS6_ItEES8_SB_S1_S8_jjSE_SJ_EUlNS9_INS0_10ConsStringEEEE_EEEEEDaSB_OS7_.exit

bb.t:                                             ; preds = %tailrecurse, %tailrecurse
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.17) #26
  unreachable

bb.u:                                             ; preds = %tailrecurse
  %i.q = add i64 %.tr, -1
  %i.r = inttoptr i64 %i.q to ptr                 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load i64, ptr %i.s, align 8
  %i.u = inttoptr i64 %i.t to ptr                 ; 6 uses
  %i.v = load atomic volatile i64, ptr %i.r monotonic, align 8
  %i.w = add i64 %i.v, 11
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load atomic volatile i16, ptr %i.x monotonic, align 2
  %i.z = and i16 %i.y, 16
  %.not.i = icmp eq i16 %i.z, 0
  br i1 %.not.i, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aa = load ptr, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #25, !inline_history !49
  br i1 %i.ad, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @_ZNK2v86String29ExternalOneByteStringResource25CheckCachedDataInvariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ag = load ptr, ptr %i.u, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef ptr %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.u) #25, !inline_history !49
  br label %_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit

_ZNK2v88internal21ExternalOneByteString8GetCharsEv.exit: ; preds = %bb.w, %bb.x
  %.0.i8 = phi ptr [ %i.af, %bb.w ], [ %i.aj, %bb.x ]
  %i.ak = zext i32 %.tr134.ph to i64
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i8, i64 %i.ak
end_hunk_1
begin_hunk_2_@llvm.umax.i8
!259 = distinct !{!259, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!260 = distinct !{!260, !56}
!261 = !{!262}
!262 = distinct !{!262, !263, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!263 = distinct !{!263, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!264 = !{!265, !262}
!265 = distinct !{!265, !266, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!266 = distinct !{!266, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!267 = !{!268, !270, !262}
!268 = distinct !{!268, !269, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!269 = distinct !{!269, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!270 = distinct !{!270, !271, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!271 = distinct !{!271, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!272 = !{!273, !270, !262}
!273 = distinct !{!273, !274, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!274 = distinct !{!274, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!275 = !{!270, !262}
!276 = !{!277}
!277 = distinct !{!277, !278, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!278 = distinct !{!278, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!279 = !{!280, !277}
!280 = distinct !{!280, !281, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!281 = distinct !{!281, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!282 = !{!283, !285, !277}
!283 = distinct !{!283, !284, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!284 = distinct !{!284, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!285 = distinct !{!285, !286, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!286 = distinct !{!286, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!287 = !{!288, !285, !277}
!288 = distinct !{!288, !289, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!289 = distinct !{!289, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!290 = !{!285, !277}
!291 = distinct !{!291, !56}
!292 = distinct !{!292, !56}
!293 = distinct !{!293, !56}
!294 = distinct !{!294, !56}
!295 = distinct !{!295, !56}
!296 = distinct !{!296, !56}
!297 = distinct !{!297, !56}
!298 = distinct !{!298, !56}
!299 = distinct !{!299, !56}
!300 = !{!301}
!301 = distinct !{!301, !302, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!302 = distinct !{!302, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!303 = !{!304}
!304 = distinct !{!304, !305, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!305 = distinct !{!305, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!306 = !{!307, !304}
!307 = distinct !{!307, !308, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!308 = distinct !{!308, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!309 = !{!310, !312, !304}
!310 = distinct !{!310, !311, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!311 = distinct !{!311, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!312 = distinct !{!312, !313, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!313 = distinct !{!313, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!314 = !{!315, !312, !304}
!315 = distinct !{!315, !316, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!316 = distinct !{!316, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!317 = !{!312, !304}
!318 = distinct !{!318, !56}
!319 = distinct !{!319, !56}
!320 = !{!321}
!321 = distinct !{!321, !322, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!322 = distinct !{!322, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!323 = distinct !{null, null, ptr @_ZNK2v88internal21ExternalOneByteString8GetCharsEv}
!324 = distinct !{null, null, ptr @_ZNK2v88internal21ExternalTwoByteString8GetCharsEv}
!325 = !{!326}
!326 = distinct !{!326, !327, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!327 = distinct !{!327, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!328 = !{!329}
!329 = distinct !{!329, !330, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!330 = distinct !{!330, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!331 = distinct !{!331, !56}
!332 = !{!333}
!333 = distinct !{!333, !334, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!334 = distinct !{!334, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!335 = distinct !{!335, !56}
!336 = !{!337}
!337 = distinct !{!337, !338, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!338 = distinct !{!338, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!339 = distinct !{!339, !56}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!342 = distinct !{!342, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!343 = distinct !{!343, !56}
!344 = !{!345}
!345 = distinct !{!345, !346, !"_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE3endEv: argument 0"}
!346 = distinct !{!346, !"_ZNSt5dequeISt4pairIN2v88internal6TaggedINS2_6StringEEEiESaIS6_EE3endEv"}
!347 = distinct !{!347, !56}
!348 = distinct !{!348, !56}
!349 = !{!350, !352}
!350 = distinct !{!350, !351, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_: argument 0"}
!351 = distinct !{!351, !"_ZNK2v88internal6String22DispatchToSpecificTypeIN4absl8OverloadIJZNS1_33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS6_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSA_INS0_16SeqOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_16SeqTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalOneByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlNSA_INS0_21ExternalTwoByteStringEEEE_ZNS1_33TryGetFlatContentFromDirectStringES9_SB_jjSE_EUlSB_E_EEEEEDaOT_"}
!352 = distinct !{!352, !353, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE: argument 0"}
!353 = distinct !{!353, !"_ZN2v88internal6String14GetFlatContentERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEERKNS0_31SharedStringAccessGuardIfNeededE"}
!354 = !{!355, !357, !352}
!355 = distinct !{!355, !356, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_: argument 0"}
!356 = distinct !{!356, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalOneByteStringEEEE_clESD_"}
!357 = distinct !{!357, !358, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_: argument 0"}
!358 = distinct !{!358, !"_ZNK2v88internal11StringShape22DispatchToSpecificTypeIN4absl8OverloadIJZNS0_6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS7_2EEEENS0_6TaggedIS5_EEjjRKNS0_31SharedStringAccessGuardIfNeededEEUlNSB_INS0_16SeqOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_16SeqTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalOneByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlNSB_INS0_21ExternalTwoByteStringEEEE_ZNS5_33TryGetFlatContentFromDirectStringESA_SC_jjSF_EUlSC_E_EEEEEDaSC_OT_"}
!359 = !{!360, !357, !352}
!360 = distinct !{!360, !361, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_: argument 0"}
!361 = distinct !{!361, !"_ZZN2v88internal6String33TryGetFlatContentFromDirectStringERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELS3_2EEEENS0_6TaggedIS1_EEjjRKNS0_31SharedStringAccessGuardIfNeededEENKUlNS7_INS0_21ExternalTwoByteStringEEEE_clESD_"}
!362 = !{!357, !352}
!363 = distinct !{!363, !56}
!364 = distinct !{!364, !56}
!365 = distinct !{!365, !56}
!366 = !{!367}
!367 = distinct !{!367, !368, !"_ZSt19__relocate_object_aIN2v88internal10TaggedImplILNS1_23HeapObjectReferenceTypeE1EmEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!368 = distinct !{!368, !"_ZSt19__relocate_object_aIN2v88internal10TaggedImplILNS1_23HeapObjectReferenceTypeE1EmEES4_SaIS4_EEvPT_PT0_RT1_"}
!369 = !{!370}
!370 = distinct !{!370, !368, !"_ZSt19__relocate_object_aIN2v88internal10TaggedImplILNS1_23HeapObjectReferenceTypeE1EmEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!371 = distinct !{!371, !56, !372, !373}
!372 = !{!"llvm.loop.isvectorized", i32 1}
!373 = !{!"llvm.loop.unroll.runtime.disable"}
!374 = distinct !{!374, !56, !372}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZSt19__relocate_object_aIN2v88internal10TaggedImplILNS1_23HeapObjectReferenceTypeE1EmEES4_SaIS4_EEvPT_PT0_RT1_: argument 0"}
!377 = distinct !{!377, !"_ZSt19__relocate_object_aIN2v88internal10TaggedImplILNS1_23HeapObjectReferenceTypeE1EmEES4_SaIS4_EEvPT_PT0_RT1_"}
!378 = !{!379}
!379 = distinct !{!379, !377, !"_ZSt19__relocate_object_aIN2v88internal10TaggedImplILNS1_23HeapObjectReferenceTypeE1EmEES4_SaIS4_EEvPT_PT0_RT1_: argument 1"}
!380 = distinct !{!380, !56, !372, !373}
!381 = distinct !{!381, !56, !372}
!382 = !{!383}
!383 = distinct !{!383, !384}
!384 = distinct !{!384, !"LVerDomain"}
!385 = !{!386}
!386 = distinct !{!386, !384}
!387 = distinct !{!387, !56, !372, !373}
!388 = !{!"branch_weights", i32 4, i32 12}
!389 = distinct !{!389, !56, !372, !373}
!390 = distinct !{!390, !56, !372}
!391 = !{!392}
!392 = distinct !{!392, !393}
!393 = distinct !{!393, !"LVerDomain"}
!394 = !{!395}
!395 = distinct !{!395, !393}
!396 = distinct !{!396, !56, !372, !373}
!397 = distinct !{!397, !56, !372, !373}
!398 = distinct !{!398, !56, !372}
!399 = distinct !{!399, !56}
!400 = !{!401}
!401 = distinct !{!401, !402, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!402 = distinct !{!402, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!403 = !{!404}
!404 = distinct !{!404, !405, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!405 = distinct !{!405, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!408 = distinct !{!408, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!409 = !{!410}
!410 = distinct !{!410, !411, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv: argument 0"}
!411 = distinct !{!411, !"_ZN2v88internal31SharedStringAccessGuardIfNeeded9NotNeededEv"}
!412 = distinct !{!412, !56}
!413 = distinct !{!413, !56}
!414 = distinct !{!414, !56}
!415 = distinct !{!415, !56}
!416 = distinct !{!416, !74}
!417 = distinct !{!417, !56}
!418 = distinct !{!418, !56}
!419 = distinct !{!419, !56}
!420 = distinct !{!420, !56}
!421 = distinct !{!421, !56}
!422 = distinct !{!422, !56, !372, !373}
!423 = distinct !{!423, !56, !373, !372}
!424 = distinct !{!424, !56}
!425 = distinct !{!425, !56}
!426 = distinct !{!426, !56}
!427 = distinct !{!427, !56}
!428 = distinct !{!428, !56}
!429 = distinct !{!429, !56}
!430 = distinct !{!430, !56}
!431 = distinct !{!431, !56}
!432 = distinct !{!432, !56}
!433 = distinct !{!433, !56}
!434 = distinct !{!434, !56}
!435 = distinct !{!435, !56}
!436 = distinct !{!436, !74}
!437 = distinct !{!437, !56}
!438 = distinct !{!438, !56}
!439 = distinct !{!439, !56}
!440 = distinct !{!440, !56}
!441 = distinct !{!441, !56}
!442 = distinct !{!442, !56, !372, !373}
!443 = distinct !{!443, !56, !373, !372}
!444 = distinct !{!444, !56}
!445 = distinct !{!445, !56}
!446 = distinct !{!446, !56}
!447 = distinct !{!447, !56}
!448 = distinct !{!448, !56}
!449 = distinct !{!449, !56}
!450 = distinct !{!450, !56}
!451 = distinct !{!451, !56}
!452 = distinct !{!452, !56}
!453 = distinct !{!453, !56}
!454 = distinct !{null}
!455 = distinct !{!455, !56}
!456 = distinct !{!456, !56}
!457 = distinct !{!457, !56}
!458 = distinct !{!458, !56}
!459 = distinct !{!459, !56}
!460 = distinct !{!460, !56}
!461 = distinct !{!461, !56}
!462 = distinct !{!462, !56}
!463 = distinct !{!463, !56}
!464 = distinct !{!464, !56, !372, !373}
!465 = distinct !{!465, !56, !373, !372}
!466 = distinct !{!466, !56}
!467 = distinct !{!467, !56}
!468 = distinct !{!468, !56}
!469 = distinct !{!469, !56}
!470 = distinct !{!470, !56}
!471 = distinct !{!471, !56}
!472 = distinct !{!472, !56}
!473 = distinct !{!473, !56}
!474 = distinct !{!474, !56}
!475 = distinct !{!475, !56}
!476 = distinct !{!476, !56}
!477 = distinct !{!477, !56}
!478 = distinct !{!478, !56}
!479 = distinct !{!479, !56}
!480 = distinct !{!480, !56}
!481 = distinct !{!481, !56}
!482 = distinct !{!482, !56}
!483 = distinct !{!483, !56, !372, !373}
!484 = distinct !{!484, !56, !373, !372}
!485 = distinct !{!485, !56}
!486 = distinct !{!486, !56}
!487 = distinct !{!487, !56}
!488 = distinct !{!488, !56}
!489 = distinct !{!489, !56}
!490 = distinct !{!490, !56}
!491 = distinct !{!491, !56}
!492 = distinct !{!492, !56}
!493 = distinct !{!493, !56}
!494 = distinct !{!494, !56}
!495 = distinct !{!495, !56}
!496 = distinct !{!496, !56}
!497 = distinct !{!497, !56}
!498 = distinct !{!498, !56}
!499 = distinct !{!499, !56, !372, !373}
!500 = distinct !{!500, !56, !372}
!501 = distinct !{!501, !56}
!502 = distinct !{!502, !56}
!503 = distinct !{!503, !56}
!504 = distinct !{!504, !56}
end_hunk_2
