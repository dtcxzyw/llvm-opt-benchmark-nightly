inline.NumInlined: 82
inline.NumDeleted: 26
begin_hunk_0_@_ZN6icu_7810CharString6appendEPKciR10UErrorCode:bb.a
  br i1 %i.i, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.l = load i32, ptr %i.k, align 8              ; 5 uses
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m ; 2 uses
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = sub nsw i32 %i.q, %i.l
  %.not32 = icmp slt i32 %.026, %i.r
  br i1 %.not32, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 5, ptr %3, align 4
  br label %bb.r

bb.k:                                             ; preds = %bb.i
  %i.s = add nsw i32 %i.l, %.026                  ; 2 uses
  store i32 %i.s, ptr %i.k, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds i8, ptr %i.j, i64 %i.t
  store i8 0, ptr %i.u, align 1
  br label %bb.r

bb.l:                                             ; preds = %bb.h
  %.not29 = icmp ule ptr %i.j, %1
  %i.v = icmp ult ptr %1, %i.n
  %or.cond33 = and i1 %.not29, %i.v
  br i1 %or.cond33, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sub nsw i32 %i.x, %i.l
  %.not30 = icmp slt i32 %.026, %i.y
  br i1 %.not30, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef %1, i32 noundef %.026, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.z = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %4, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ab = load i8, ptr %i.aa, align 4
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.ac) #12
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.r

bb.p:                                             ; preds = %bb.m, %bb.l
  %i.ad = add nuw i32 %.026, 1
  %i.ae = add i32 %i.ad, %i.l
  %i.af = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.ae, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not31 = icmp eq i8 %i.af, 0
  br i1 %.not31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = load i32, ptr %i.k, align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai
  %i.ak = zext nneg i32 %.026 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aj, ptr align 1 %1, i64 %i.ak, i1 false)
  %i.al = load i32, ptr %i.k, align 8
  %i.am = add nsw i32 %i.al, %.026                ; 2 uses
  store i32 %i.am, ptr %i.k, align 8
  %i.an = sext i32 %i.am to i64
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.ap, align 1
  br label %bb.r

bb.r:                                             ; preds = %bb.g, %bb.q, %bb.p, %bb.j, %bb.k, %bb.a, %_ZN6icu_7810CharStringD2Ev.exit, %bb.d
  %.0 = phi ptr [ %i.z, %_ZN6icu_7810CharStringD2Ev.exit ], [ %0, %bb.d ], [ %0, %bb.a ], [ %0, %bb.k ], [ %0, %bb.j ], [ %0, %bb.p ], [ %0, %bb.q ], [ %0, %bb.g ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendERKS0_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(60) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2)
  ret ptr %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6icu_7810CharStringC2EPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 13 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 40, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.d, align 8
  store i8 0, ptr %i.a, align 1
  %i.e = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString12appendNumberElR10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, i64 noundef %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp slt i64 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = add nsw i32 %i.c, 2
  %i.e = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.d, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr %i.b, align 8              ; 2 uses
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.b, align 8
  %i.h = sext i32 %i.f to i64
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %i.h
  store i8 45, ptr %i.j, align 1
  %i.k = load i32, ptr %i.b, align 8
  %i.l = sext i32 %i.k to i64
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 %i.l
  store i8 0, ptr %i.n, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit: ; preds = %bb.b, %bb.c
  %i.o = load i32, ptr %2, align 4
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %.preheader, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

bb.d:                                             ; preds = %bb.a
  %i.q = icmp eq i64 %1, 0
  br i1 %i.q, label %bb.e, label %.preheader

.preheader:                                       ; preds = %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = add nsw i32 %i.t, 2
  %i.v = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.u, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i27 = icmp eq i8 %i.v, 0
  br i1 %.not.i27, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.s, align 8              ; 2 uses
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.s, align 8
  %i.y = sext i32 %i.w to i64
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 %i.y
  store i8 48, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.s, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = load ptr, ptr %0, align 8
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 %i.ac
  store i8 0, ptr %i.ae, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

bb.g:                                             ; preds = %.preheader, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30
  %indvars.iv38 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next39, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 2 uses
  %.023 = phi i64 [ %1, %.preheader ], [ %i.af, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 3 uses
  %.022 = phi i32 [ 0, %.preheader ], [ %i.au, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30 ] ; 2 uses
  %.not25 = icmp eq i64 %.023, 0
  br i1 %.not25, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = sdiv i64 %.023, 10
  %i.ag = srem i64 %.023, 10
  %i.ah = load i32, ptr %i.r, align 8
  %i.ai = add nsw i32 %i.ah, 2
  %i.aj = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.ai, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i29 = icmp eq i8 %i.aj, 0
  br i1 %.not.i29, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30, label %bb.i

bb.i:                                             ; preds = %bb.h
  %3 = trunc nsw i64 %i.ag to i8
  %4 = tail call i8 @llvm.abs.i8(i8 %3, i1 true)
  %i.ak = add nuw nsw i8 %4, 48
  %i.al = load i32, ptr %i.r, align 8             ; 2 uses
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.r, align 8
  %i.an = sext i32 %i.al to i64
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.an
  store i8 %i.ak, ptr %i.ap, align 1
  %i.aq = load i32, ptr %i.r, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ar
  store i8 0, ptr %i.at, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30: ; preds = %bb.h, %bb.i
  %i.au = add nuw nsw i32 %.022, 1
  %i.av = load i32, ptr %2, align 4
  %i.aw = icmp slt i32 %i.av, 1
  %indvars.iv.next39 = add i64 %indvars.iv38, -1
  br i1 %i.aw, label %bb.g, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, !llvm.loop !8

bb.j:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %i.r, align 8             ; 3 uses
  %i.ay = sub nsw i32 %i.ax, %.022
  %.033 = add nsw i32 %i.ax, -1
  %i.az = icmp slt i32 %i.ay, %.033
  br i1 %i.az, label %.lr.ph.preheader, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.ba = sext i32 %i.ax to i64                   ; 2 uses
  %i.bb = add nsw i64 %i.ba, -1
  %i.bc = add nsw i64 %indvars.iv38, %i.ba
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv41 = phi i64 [ %i.bc, %.lr.ph.preheader ], [ %indvars.iv.next42, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.bd = load ptr, ptr %0, align 8               ; 2 uses
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %indvars.iv41 ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %indvars.iv ; 2 uses
  %i.bg = load i8, ptr %i.be, align 1
  %i.bh = load i8, ptr %i.bf, align 1
  store i8 %i.bh, ptr %i.be, align 1
  store i8 %i.bg, ptr %i.bf, align 1
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.bi = icmp slt i64 %indvars.iv.next42, %indvars.iv.next
  br i1 %i.bi, label %.lr.ph, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28, !llvm.loop !9

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit28: ; preds = %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit30, %.lr.ph, %bb.j, %bb.f, %bb.e, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7810CharString15getAppendBufferEiiRiR10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(60) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %3, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = xor i32 %i.f, -1
  %i.h = add i32 %i.d, %i.g                       ; 2 uses
  %.not14 = icmp slt i32 %i.h, %1
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.h, ptr %3, align 4
  %i.i = load ptr, ptr %0, align 8
  %i.j = load i32, ptr %i.e, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.m = add i32 %1, 1
  %i.n = add i32 %i.m, %i.f
  %i.o = add i32 %2, 1
  %i.p = add i32 %i.o, %i.f
  %i.q = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.n, i32 noundef %i.p, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %.not15 = icmp eq i8 %i.q, 0
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.c, align 8
  %i.s = load i32, ptr %i.e, align 8
  %i.t = xor i32 %i.s, -1
  %i.u = add i32 %i.r, %i.t
  store i32 %i.u, ptr %3, align 4
  %i.v = load ptr, ptr %0, align 8
  %i.w = load i32, ptr %i.e, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 0, ptr %3, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.f, %bb.g, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.l, %bb.d ], [ %i.y, %bb.f ], [ null, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = and i16 %i.b, 17
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %bb.b, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = and i16 %i.b, 2
  %.not2.i = icmp eq i16 %i.d, 0
  br i1 %.not2.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.a, %bb.c, %bb.d
  %.0.i = phi ptr [ %i.g, %bb.d ], [ %i.e, %bb.c ], [ null, %bb.a ] ; 2 uses
  %i.h = icmp slt i16 %i.b, 0
  %i.i = ashr i16 %i.b, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 4 uses
  %i.n = load i32, ptr %2, align 4
  %i.o = icmp slt i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.p = tail call signext i8 @uprv_isInvariantUString_78(ptr noundef %.0.i, i32 noundef %i.m) #12
  %.not10.i = icmp eq i8 %i.p, 0
  br i1 %.not10.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 26, ptr %2, align 4
  br label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.r = load i32, ptr %i.q, align 8
  %i.s = add i32 %i.m, 1
  %i.t = add i32 %i.s, %i.r
  %i.u = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.t, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not11.i = icmp eq i8 %i.u, 0
  br i1 %.not11.i, label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr %0, align 8
  %i.w = load i32, ptr %i.q, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds i8, ptr %i.v, i64 %i.x
  tail call void @u_UCharsToChars_78(ptr noundef %.0.i, ptr noundef %i.y, i32 noundef %i.m) #12
  %i.z = load i32, ptr %i.q, align 8
  %i.aa = add nsw i32 %i.z, %i.m                  ; 2 uses
  store i32 %i.aa, ptr %i.q, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.ab
  store i8 0, ptr %i.ad, align 1
  br label %_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit

_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode.exit: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.f, %bb.g, %bb.h
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString20appendInvariantCharsEPKDsiR10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = tail call signext i8 @uprv_isInvariantUString_78(ptr noundef %1, i32 noundef %2) #12
  %.not10 = icmp eq i8 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 26, ptr %3, align 4
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %2, 1
  %i.g = add i32 %i.f, %i.e
  %i.h = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.g, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not11 = icmp eq i8 %i.h, 0
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %0, align 8
  %i.j = load i32, ptr %i.d, align 8
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 %i.k
  tail call void @u_UCharsToChars_78(ptr noundef %1, ptr noundef %i.l, i32 noundef %2) #12
  %i.m = load i32, ptr %i.d, align 8
  %i.n = add nsw i32 %i.m, %2                     ; 2 uses
  store i32 %i.n, ptr %i.d, align 8
  %i.o = sext i32 %i.n to i64
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i8 0, ptr %i.q, align 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  ret ptr %0
}

declare signext i8 @uprv_isInvariantUString_78(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @u_UCharsToChars_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString14appendPathPartENS_11StringPieceER10UErrorCode(ptr noundef nonnull returned align 8 dereferenceable(60) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = icmp eq i32 %2, 0
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = zext nneg i32 %i.e to i64
  %i.i = getelementptr i8, ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -1
  %i.k = load i8, ptr %i.j, align 1
  %.not7 = icmp eq i8 %i.k, 47
  br i1 %.not7, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = add nuw nsw i32 %i.e, 2
  %i.m = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.l, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load i32, ptr %i.d, align 8              ; 2 uses
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.d, align 8
  %i.p = sext i32 %i.n to i64
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.p
  store i8 47, ptr %i.r, align 1
  %i.s = load i32, ptr %i.d, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.t
  store i8 0, ptr %i.v, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %i.w = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i8 @_ZNK6icu_7810CharString13getDirSepCharEv(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(60) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret i8 47
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString27ensureEndsWithFileSeparatorER10UErrorCode(ptr noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(60) %0, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8              ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8
  %i.g = zext nneg i32 %i.d to i64
  %i.h = getelementptr i8, ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  %.not5 = icmp eq i8 %i.j, 47
  br i1 %.not5, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw nsw i32 %i.d, 2
  %i.l = tail call noundef signext i8 @_ZN6icu_7810CharString14ensureCapacityEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %0, i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.not.i = icmp eq i8 %i.l, 0
  br i1 %.not.i, label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.c, align 8              ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.c, align 8
  %i.o = sext i32 %i.m to i64
  %i.p = load ptr, ptr %0, align 8
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.o
  store i8 47, ptr %i.q, align 1
  %i.r = load i32, ptr %i.c, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %0, align 8
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.s
  store i8 0, ptr %i.u, align 1
  br label %_ZN6icu_7810CharString6appendEcR10UErrorCode.exit

_ZN6icu_7810CharString6appendEcR10UErrorCode.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret ptr %0
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind willreturn memory(read) }

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
end_hunk_0
