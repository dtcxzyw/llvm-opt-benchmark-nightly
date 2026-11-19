Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/collationfastlatinbuilder?download=true
inline.NumInlined: 102
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7825CollationFastLatinBuilder7forDataERKNS_13CollationDataER10UErrorCode:bb.a
  %i.i = load i32, ptr %i.h, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 7292 ; 2 uses
  store i32 %i.i, ptr %i.j, align 4, !tbaa !26
  tail call void @_ZN6icu_7825CollationFastLatinBuilder6getCEsERKNS_13CollationDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.k = tail call noundef signext i8 @_ZN6icu_7825CollationFastLatinBuilder15encodeUniqueCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not16 = icmp eq i8 %i.k, 0
  br i1 %.not16, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 7296 ; 3 uses
  %i.m = load i8, ptr %i.l, align 8, !tbaa !27
  %.not17 = icmp eq i8 %i.m, 0
  br i1 %.not17, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7284
  %i.o = load i32, ptr %i.n, align 4, !tbaa !28
  store i32 %i.o, ptr %i.j, align 4, !tbaa !26
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7192
  tail call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.p)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7224
  tail call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.q)
  store i8 0, ptr %i.l, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7368
  %i.s = load i32, ptr %i.r, align 8, !tbaa !22   ; 5 uses
  %i.t = load i16, ptr %i.d, align 8, !tbaa !21   ; 5 uses
  %i.u = trunc i16 %i.t to i1
  %i.v = icmp eq i32 %i.s, 0
  %or.cond.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c)
  br label %_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit

bb.i:                                             ; preds = %bb.g
  %i.w = icmp slt i16 %i.t, 0
  %i.x = ashr i16 %i.t, 5
  %i.y = sext i16 %i.x to i32
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 7316 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = select i1 %i.w, i32 %i.aa, i32 %i.y
  %i.ac = icmp ult i32 %i.s, %i.ab
  br i1 %i.ac, label %bb.j, label %_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp slt i32 %i.s, 1024
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = and i16 %i.t, 31
  %.tr.i.i.i.i = trunc i32 %i.s to i16
  %i.af = shl i16 %.tr.i.i.i.i, 5
  %i.ag = or disjoint i16 %i.ae, %i.af
  store i16 %i.ag, ptr %i.d, align 8, !tbaa !21
  br label %_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = or i16 %i.t, -32
  store i16 %i.ah, ptr %i.d, align 8, !tbaa !21
  store i32 %i.s, ptr %i.z, align 4, !tbaa !21
  br label %_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit

_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit: ; preds = %bb.h, %bb.i, %bb.k, %bb.l
  tail call void @_ZN6icu_7825CollationFastLatinBuilder6getCEsERKNS_13CollationDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.ai = tail call noundef signext i8 @_ZN6icu_7825CollationFastLatinBuilder15encodeUniqueCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not18 = icmp eq i8 %i.ai, 0
  br i1 %.not18, label %bb.p, label %bb.m

bb.m:                                             ; preds = %_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit
  %.pr = load i8, ptr %i.l, align 8, !tbaa !27
  %.not19 = icmp eq i8 %.pr, 0
  br i1 %.not19, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.f, %bb.m
  %i.aj = tail call noundef signext i8 @_ZN6icu_7825CollationFastLatinBuilder13encodeCharCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not20 = icmp eq i8 %i.aj, 0
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread
  %i.ak = tail call noundef signext i8 @_ZN6icu_7825CollationFastLatinBuilder18encodeContractionsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.thread, %bb.m
  %i.al = phi i8 [ 0, %.thread ], [ 0, %bb.m ], [ %i.ak, %bb.n ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 7192
  tail call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.am)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 7224
  tail call void @_ZN6icu_789UVector6417removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit, %bb.e, %bb.d, %bb.a, %bb.o, %bb.c
  %.0 = phi i8 [ 0, %bb.c ], [ %i.al, %bb.o ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.a ], [ 0, %_ZN6icu_7825CollationFastLatinBuilder8resetCEsEv.exit ]
  ret i8 %.0
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7825CollationFastLatinBuilder10loadGroupsERKNS_13CollationDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 16 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = load i32, ptr %2, align 4, !tbaa !24
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7368
  store i32 5, ptr %i.e, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 7304 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 517, ptr %i.b, align 2, !tbaa !30
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7264
  %i.i = call noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 4096) ; 2 uses
  store i32 %i.i, ptr %i.h, align 8, !tbaa !31
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2, !tbaa !30
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = call noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 4097) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 7268
  store i32 %i.l, ptr %i.m, align 4, !tbaa !31
  %i.n = icmp eq i32 %i.l, 0
  br i1 %i.n, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2, !tbaa !30
  %i.o = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = call noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 4098) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7272
  store i32 %i.p, ptr %i.q, align 8, !tbaa !31
  %i.r = icmp eq i32 %i.p, 0
  br i1 %i.r, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2, !tbaa !30
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.t = call noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 4099) ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 7276
  store i32 %i.t, ptr %i.u, align 4, !tbaa !31
  %i.v = icmp eq i32 %i.t, 0
  br i1 %i.v, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 0, ptr %i.a, align 2, !tbaa !30
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = call noundef i32 @_ZNK6icu_7813CollationData23getFirstPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 4100)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 7280 ; 2 uses
  store i32 %i.x, ptr %i.y, align 8, !tbaa !25
  %i.z = call noundef i32 @_ZNK6icu_7813CollationData23getFirstPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 25)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 7284 ; 2 uses
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !28
  %i.ab = call noundef i32 @_ZNK6icu_7813CollationData22getLastPrimaryForGroupEi(ptr noundef nonnull align 8 dereferenceable(140) %1, i32 noundef 25)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 7288
  store i32 %i.ab, ptr %i.ac, align 8, !tbaa !32
  %i.ad = load i32, ptr %i.y, align 8, !tbaa !25
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.af = load i32, ptr %i.aa, align 4, !tbaa !28
  %i.ag = icmp ne i32 %i.af, 0
  %spec.select = zext i1 %i.ag to i8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %.critedge, %bb.a
  %.2 = phi i8 [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 0, %.critedge ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i8 %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825CollationFastLatinBuilder6getCEsERKNS_13CollationDataER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 8 dereferenceable(140) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !24
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7224 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7232 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.x
  %.027 = phi i32 [ %4, %bb.x ], [ 0, %.preheader ] ; 2 uses
  %.026 = phi i16 [ %i.er, %bb.x ], [ 0, %.preheader ] ; 8 uses
  switch i16 %.026, label %bb.d [
    i16 384, label %.thread
    i16 8256, label %bb.c
  ]

.thread:                                          ; preds = %bb.b
  %i.k = load ptr, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !53
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 7200 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !42   ; 4 uses
  %i.p = icmp slt i32 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7204
  %i.r = load i32, ptr %i.q, align 4
  %.not.i.i = icmp sle i32 %i.r, %i.o
  %or.cond.i.i = select i1 %i.p, i1 true, i1 %.not.i.i
  br i1 %or.cond.i.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 7192
  %i.t = add nsw i32 %i.o, 1
  %i.u = tail call noundef signext i8 @_ZN6icu_789UVector6414expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i32 noundef %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not.i = icmp eq i8 %i.u, 0
  br i1 %.not.i, label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit, label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !42
  br label %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i

_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i, %bb.c
  %i.v = phi i32 [ %.pre.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit._ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread_crit_edge.i ], [ %i.o, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 7216
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = sext i32 %i.v to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.y
  store i64 511, ptr %i.z, align 8, !tbaa !44
  %i.aa = add nsw i32 %i.v, 1
  store i32 %i.aa, ptr %i.n, align 8, !tbaa !42
  br label %_ZN6icu_789UVector6410addElementElR10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = zext i16 %.026 to i32                   ; 6 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !50    ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.af = icmp ult i16 %.026, -10240
  br i1 %i.af, label %_ZNK6icu_7813CollationData7getCE32Ei.exit, label %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread

_ZNK6icu_7813CollationData7getCE32Ei.exit:        ; preds = %bb.d, %.thread
  %i.ag = phi ptr [ %i.m, %.thread ], [ %i.ae, %bb.d ]
  %i.ah = phi ptr [ %i.k, %.thread ], [ %i.ac, %bb.d ]
  %i.ai = phi i32 [ 8192, %.thread ], [ %i.ab, %bb.d ] ; 5 uses
  %.152 = phi i16 [ 8192, %.thread ], [ %.026, %bb.d ] ; 2 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.ak = lshr i32 %i.ai, 5
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2, !tbaa !45
  %i.ao = zext i16 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 2
  %i.aq = and i32 %i.ai, 31
  %i.ar = add nuw nsw i32 %i.ap, %i.aq
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !31 ; 2 uses
  %i.av = icmp eq i32 %i.au, 192
  br i1 %i.av, label %bb.e, label %bb.g

_ZNK6icu_7813CollationData7getCE32Ei.exit.thread: ; preds = %bb.d
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !54
  %i.ax = icmp samesign ult i16 %.026, -9216
  %i.ay = select i1 %i.ax, i32 320, i32 0
  %i.az = lshr i32 %i.ab, 5
  %i.ba = add nuw nsw i32 %i.ay, %i.az
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !45
  %i.be = zext i16 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 2
  %i.bg = and i32 %i.ab, 31
  %i.bh = add nuw nsw i32 %i.bf, %i.bg
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !31 ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 192
  br i1 %i.bl, label %bb.f, label %bb.g

bb.e:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit
  %i.bm = lshr i32 %i.ai, 5
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit34

bb.f:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread
  %i.bn = icmp ult i16 %.026, -9216
  %i.bo = select i1 %i.bn, i32 320, i32 0
  %i.bp = lshr i32 %i.ab, 5
  %i.bq = add nuw nsw i32 %i.bo, %i.bp
  br label %_ZNK6icu_7813CollationData7getCE32Ei.exit34

_ZNK6icu_7813CollationData7getCE32Ei.exit34:      ; preds = %bb.e, %bb.f
  %.sink107 = phi i32 [ %i.bm, %bb.e ], [ %i.bq, %bb.f ]
  %.sink103 = phi i32 [ %i.ai, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %.1519093 = phi i16 [ %.152, %bb.e ], [ %.026, %bb.f ]
  %i.br = load ptr, ptr %i.c, align 8, !tbaa !55  ; 2 uses
  %.sink.in = load ptr, ptr %i.br, align 8, !tbaa !50 ; 2 uses
  %.in = getelementptr inbounds nuw i8, ptr %.sink.in, i64 16
  %i.bs = load ptr, ptr %.in, align 8, !tbaa !53
  %.sink = load ptr, ptr %.sink.in, align 8, !tbaa !54
  %i.bt = zext nneg i32 %.sink107 to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.sink, i64 %i.bt
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !45
  %i.bw = zext i16 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 2
  %i.by = and i32 %.sink103, 31
  %i.bz = add nuw nsw i32 %i.bx, %i.by
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread, %_ZNK6icu_7813CollationData7getCE32Ei.exit, %_ZNK6icu_7813CollationData7getCE32Ei.exit34
  %.15189 = phi i16 [ %.1519093, %_ZNK6icu_7813CollationData7getCE32Ei.exit34 ], [ %.152, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %.026, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread ] ; 2 uses
  %i.cd = phi i32 [ %.sink103, %_ZNK6icu_7813CollationData7getCE32Ei.exit34 ], [ %i.ai, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %i.ab, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread ]
  %.025 = phi ptr [ %i.br, %_ZNK6icu_7813CollationData7getCE32Ei.exit34 ], [ %1, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %1, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread ]
  %.0 = phi i32 [ %i.cc, %_ZNK6icu_7813CollationData7getCE32Ei.exit34 ], [ %i.au, %_ZNK6icu_7813CollationData7getCE32Ei.exit ], [ %i.bk, %_ZNK6icu_7813CollationData7getCE32Ei.exit.thread ]
  %i.ce = tail call noundef signext i8 @_ZN6icu_7825CollationFastLatinBuilder14getCEsFromCE32ERKNS_13CollationDataEijR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr noundef nonnull align 8 dereferenceable(140) %.025, i32 noundef %i.cd, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.not30 = icmp eq i8 %i.ce, 0
  %3 = zext nneg i32 %.027 to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %3 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8 ; 2 uses
  br i1 %.not30, label %bb.u, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = load i64, ptr %i.d, align 8, !tbaa !46  ; 4 uses
  store i64 %i.ch, ptr %i.cf, align 8, !tbaa !44
  %i.ci = load i64, ptr %i.f, align 8, !tbaa !47  ; 3 uses
  store i64 %i.ci, ptr %i.cg, align 8, !tbaa !44
  %i.cj = load i32, ptr %2, align 4, !tbaa !24    ; 3 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %i.cl = icmp eq i64 %i.ch, 0
  %or.cond.i = or i1 %i.cl, %i.ck
  %.mask.i = and i64 %i.ch, -4294967296
  %i.cm = icmp eq i64 %.mask.i, 4294967296
  %or.cond11.i = or i1 %i.cm, %or.cond.i
  br i1 %or.cond11.i, label %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cn = and i64 %i.ch, -49153                   ; 4 uses
  %i.co = load ptr, ptr %i.h, align 8, !tbaa !43  ; 2 uses
  %i.cp = load i32, ptr %i.i, align 8, !tbaa !42  ; 3 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.i
  %i.cr = sdiv i32 %i.cp, 2                       ; 3 uses
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !44 ; 2 uses
  %i.cv = icmp eq i64 %i.cn, %i.cu
  br i1 %i.cv, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.n
  %i.cw = phi i64 [ %i.dg, %bb.n ], [ %i.cu, %.preheader.i.i ]
  %i.cx = phi i32 [ %i.dd, %bb.n ], [ %i.cr, %.preheader.i.i ] ; 5 uses
  %.01838.i.i = phi i32 [ %.2.i.i, %bb.n ], [ 0, %.preheader.i.i ] ; 2 uses
  %.02237.i.i = phi i32 [ %.224.i.i, %bb.n ], [ %i.cp, %.preheader.i.i ]
  %i.cy = icmp ult i64 %i.cn, %i.cw
  %i.cz = icmp eq i32 %i.cx, %.01838.i.i          ; 2 uses
  br i1 %i.cy, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.lr.ph.i.i
  br i1 %i.cz, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.da = xor i32 %i.cx, -1
  br label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  br i1 %i.cz, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.db = sub nsw i32 -2, %i.cx
  br label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i

bb.n:                                             ; preds = %bb.l, %bb.j
  %.224.i.i = phi i32 [ %.02237.i.i, %bb.l ], [ %i.cx, %bb.j ] ; 2 uses
  %.2.i.i = phi i32 [ %i.cx, %bb.l ], [ %.01838.i.i, %bb.j ] ; 2 uses
  %i.dc = add nsw i32 %.2.i.i, %.224.i.i
  %i.dd = sdiv i32 %i.dc, 2                       ; 3 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !44 ; 2 uses
  %i.dh = icmp eq i64 %i.cn, %i.dg
  br i1 %i.dh, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i, label %.lr.ph.i.i, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i: ; preds = %bb.n, %bb.m, %bb.k, %.preheader.i.i
  %.221.i.i = phi i32 [ %i.cr, %.preheader.i.i ], [ %i.db, %bb.m ], [ %i.da, %bb.k ], [ %i.dd, %bb.n ] ; 2 uses
  %i.di = icmp slt i32 %.221.i.i, 0
  br i1 %i.di, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i, label %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit

_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i: ; preds = %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i, %bb.i
  %.221.i13.i = phi i32 [ %.221.i.i, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i ], [ -1, %bb.i ]
  %i.dj = xor i32 %.221.i13.i, -1
  tail call void @_ZN6icu_789UVector6415insertElementAtEliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.cn, i32 noundef %i.dj, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %.pre = load i64, ptr %i.f, align 8, !tbaa !47
  %.pre69 = load i32, ptr %2, align 4, !tbaa !24
  br label %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit

_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit: ; preds = %bb.h, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i
  %i.dk = phi i32 [ %i.cj, %bb.h ], [ %i.cj, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i ], [ %.pre69, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i ]
  %i.dl = phi i64 [ %i.ci, %bb.h ], [ %i.ci, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i ], [ %.pre, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i ] ; 3 uses
  %i.dm = icmp sgt i32 %i.dk, 0
  %i.dn = icmp eq i64 %i.dl, 0
  %or.cond.i35 = or i1 %i.dn, %i.dm
  %.mask.i36 = and i64 %i.dl, -4294967296
  %i.do = icmp eq i64 %.mask.i36, 4294967296
  %or.cond11.i37 = or i1 %i.do, %or.cond.i35
  br i1 %or.cond11.i37, label %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit48, label %bb.o

bb.o:                                             ; preds = %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit
  %i.dp = and i64 %i.dl, -49153                   ; 4 uses
  %i.dq = load ptr, ptr %i.h, align 8, !tbaa !43  ; 2 uses
  %i.dr = load i32, ptr %i.i, align 8, !tbaa !42  ; 3 uses
  %i.ds = icmp eq i32 %i.dr, 0
  br i1 %i.ds, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i46, label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %bb.o
  %i.dt = sdiv i32 %i.dr, 2                       ; 3 uses
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.du
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !44 ; 2 uses
  %i.dx = icmp eq i64 %i.dp, %i.dw
  br i1 %i.dx, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44, label %.lr.ph.i.i39

.lr.ph.i.i39:                                     ; preds = %.preheader.i.i38, %bb.t
  %i.dy = phi i64 [ %i.ei, %bb.t ], [ %i.dw, %.preheader.i.i38 ]
  %i.dz = phi i32 [ %i.ef, %bb.t ], [ %i.dt, %.preheader.i.i38 ] ; 5 uses
  %.01838.i.i40 = phi i32 [ %.2.i.i43, %bb.t ], [ 0, %.preheader.i.i38 ] ; 2 uses
  %.02237.i.i41 = phi i32 [ %.224.i.i42, %bb.t ], [ %i.dr, %.preheader.i.i38 ]
  %i.ea = icmp ult i64 %i.dp, %i.dy
  %i.eb = icmp eq i32 %i.dz, %.01838.i.i40        ; 2 uses
  br i1 %i.ea, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph.i.i39
  br i1 %i.eb, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.ec = xor i32 %i.dz, -1
  br label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44

bb.r:                                             ; preds = %.lr.ph.i.i39
  br i1 %i.eb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ed = sub nsw i32 -2, %i.dz
  br label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44

bb.t:                                             ; preds = %bb.r, %bb.p
  %.224.i.i42 = phi i32 [ %.02237.i.i41, %bb.r ], [ %i.dz, %bb.p ] ; 2 uses
  %.2.i.i43 = phi i32 [ %i.dz, %bb.r ], [ %.01838.i.i40, %bb.p ] ; 2 uses
  %i.ee = add nsw i32 %.2.i.i43, %.224.i.i42
  %i.ef = sdiv i32 %i.ee, 2                       ; 3 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %i.dq, i64 %i.eg
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !44 ; 2 uses
  %i.ej = icmp eq i64 %i.dp, %i.ei
  br i1 %i.ej, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44, label %.lr.ph.i.i39, !llvm.loop !0

_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44: ; preds = %bb.t, %bb.s, %bb.q, %.preheader.i.i38
  %.221.i.i45 = phi i32 [ %i.dt, %.preheader.i.i38 ], [ %i.ed, %bb.s ], [ %i.ec, %bb.q ], [ %i.ef, %bb.t ] ; 2 uses
  %i.ek = icmp slt i32 %.221.i.i45, 0
  br i1 %i.ek, label %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i46, label %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit48

_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i46: ; preds = %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44, %bb.o
  %.221.i13.i47 = phi i32 [ %.221.i.i45, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44 ], [ -1, %bb.o ]
  %i.el = xor i32 %.221.i13.i47, -1
  tail call void @_ZN6icu_789UVector6415insertElementAtEliR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef %i.dp, i32 noundef %i.el, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit48

bb.u:                                             ; preds = %bb.g
  store i64 4311744768, ptr %i.d, align 8, !tbaa !46
  store i64 4311744768, ptr %i.cf, align 8, !tbaa !44
  store i64 0, ptr %i.f, align 8, !tbaa !47
  store i64 0, ptr %i.cg, align 8, !tbaa !44
  br label %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit48

_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit48: ; preds = %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.thread.i46, %_ZN6icu_7812_GLOBAL__N_112binarySearchEPKlil.exit.i44, %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit, %bb.u
  %i.em = icmp eq i16 %.15189, 0
  br i1 %i.em, label %bb.v, label %bb.x

bb.v:                                             ; preds = %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit48
  %i.en = load i64, ptr %i.d, align 8, !tbaa !46  ; 3 uses
  %.mask.i49 = and i64 %i.en, -4294967296
  %i.eo = icmp ne i64 %.mask.i49, 4294967296
  %i.ep = icmp eq i64 %i.en, 4311744768
  %.not54 = or i1 %i.ep, %i.eo
  br i1 %.not54, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.eq = load i64, ptr %i.f, align 8, !tbaa !47
  tail call void @_ZN6icu_7825CollationFastLatinBuilder19addContractionEntryEillR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, i32 noundef 511, i64 noundef %i.en, i64 noundef %i.eq, ptr noundef nonnull align 4 dereferenceable(4) %2)
  store i64 6442450944, ptr %i.e, align 8, !tbaa !44
  store i64 0, ptr %i.j, align 8, !tbaa !44
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZN6icu_7825CollationFastLatinBuilder11addUniqueCEElR10UErrorCode.exit48
  %4 = add nuw nsw i32 %.027, 1
  %i.er = add i16 %.15189, 1
  br label %bb.b, !llvm.loop !49

_ZN6icu_789UVector6410addElementElR10UErrorCode.exit: ; preds = %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.thread.i, %_ZN6icu_789UVector6414ensureCapacityEiR10UErrorCode.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7825CollationFastLatinBuilder15encodeUniqueCEsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(7372) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !24
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !20
  tail call void @uprv_free_78(ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 7232 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !42
  %i.g = shl nsw i32 %i.f, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.h) #15 ; 2 uses
  store ptr %i.i, ptr %i.c, align 8, !tbaa !20
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %1, align 4, !tbaa !24
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.l = load i32, ptr %i.e, align 8, !tbaa !42
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph, label %._crit_edge112

_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph:   ; preds = %bb.d
  %i.n = load i32, ptr %i.k, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 7248
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7304 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7292
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7296
  br label %_ZNK6icu_789UVector6410elementAtiEi.exit

._crit_edge112:                                   ; preds = %bb.af, %bb.d
  %i.s = load i32, ptr %1, align 4, !tbaa !24
  %i.t = icmp slt i32 %i.s, 1
  %i.u = zext i1 %i.t to i8
  br label %bb.ag

_ZNK6icu_789UVector6410elementAtiEi.exit:         ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph, %bb.af
  %indvars.iv115 = phi i64 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %indvars.iv.next116, %bb.af ] ; 3 uses
  %.063110 = phi i32 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %.6, %bb.af ] ; 3 uses
  %.064109 = phi i32 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %.670, %bb.af ] ; 3 uses
  %.071108 = phi i32 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %.374, %bb.af ] ; 10 uses
  %.075107 = phi i32 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %.479, %bb.af ] ; 3 uses
  %.080106 = phi i32 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %.282, %bb.af ] ; 4 uses
  %.083105 = phi i32 [ %i.n, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %.487, %bb.af ] ; 3 uses
  %.088104 = phi i32 [ 0, %_ZNK6icu_789UVector6410elementAtiEi.exit.lr.ph ], [ %.492, %bb.af ] ; 5 uses
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !43
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv115
  %i.x = load i64, ptr %i.w, align 8, !tbaa !44   ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc nuw i64 %i.y to i32                ; 8 uses
  %.not97 = icmp eq i32 %.080106, %i.z
  br i1 %.not97, label %bb.m, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_789UVector6410elementAtiEi.exit
  %i.aa = icmp ult i32 %.083105, %i.z
  br i1 %i.aa, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ab = trunc i32 %.071108 to i16               ; 2 uses
  %i.ac = sext i32 %.088104 to i64                ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.088104, i32 3)
  %i.ad = add nuw i32 %smax, 1                    ; 2 uses
  %smax114 = tail call i64 @llvm.smax.i64(i64 %i.ac, i64 3)
  %indvars.iv.next122 = add nsw i64 %i.ac, 1      ; 2 uses
  %i.ae = trunc nsw i64 %indvars.iv.next122 to i32 ; 2 uses
  %i.af = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i32 noundef %i.ae, i16 noundef zeroext %i.ab) ; 0 uses
  %exitcond.not123 = icmp sgt i32 %.088104, 2
  br i1 %exitcond.not123, label %._crit_edge, label %.lr.ph125

bb.e:                                             ; preds = %.lr.ph125
  %indvars.iv.next = add nsw i64 %indvars.iv.next124, 1 ; 2 uses
  %i.ag = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  %i.ah = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9setCharAtEiDs(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i32 noundef %i.ag, i16 noundef zeroext %i.ab) ; 0 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next124, %smax114
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph125, !llvm.loop !56

.lr.ph125:                                        ; preds = %.lr.ph, %bb.e
  %i.ai = phi i32 [ %i.ag, %bb.e ], [ %i.ae, %.lr.ph ]
  %indvars.iv.next124 = phi i64 [ %indvars.iv.next, %bb.e ], [ %indvars.iv.next122, %.lr.ph ] ; 3 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv.next124
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !31 ; 2 uses
  %i.al = icmp ult i32 %i.ak, %i.z
  br i1 %i.al, label %bb.e, label %.._crit_edge.loopexit_crit_edge127, !llvm.loop !56

.._crit_edge.loopexit_crit_edge127:               ; preds = %.lr.ph125
  br label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %bb.e, %.lr.ph, %.._crit_edge.loopexit_crit_edge127, %.preheader
  %.290 = phi i32 [ %.088104, %.preheader ], [ %i.ad, %.lr.ph ], [ %i.ai, %.._crit_edge.loopexit_crit_edge127 ], [ %i.ad, %bb.e ] ; 6 uses
  %.285 = phi i32 [ %.083105, %.preheader ], [ -1, %.lr.ph ], [ %i.ak, %.._crit_edge.loopexit_crit_edge127 ], [ -1, %bb.e ] ; 6 uses
  %i.am = load i32, ptr %i.q, align 4, !tbaa !26
  %i.an = icmp ugt i32 %i.am, %i.z
  br i1 %i.an, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.ao = icmp eq i32 %.071108, 0
  br i1 %i.ao, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = icmp ult i32 %.071108, 4088
  br i1 %i.ap, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g
  %i.aq = add nuw nsw i32 %.071108, 8
  br label %bb.m

bb.i:                                             ; preds = %._crit_edge
  %i.ar = icmp ult i32 %.071108, 4096
  br i1 %i.ar, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = icmp ult i32 %.071108, 63488
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = add nuw nsw i32 %.071108, 1024
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store i8 1, ptr %i.r, align 8, !tbaa !27
  br label %bb.af

bb.m:                                             ; preds = %bb.h, %bb.k, %bb.f, %bb.i, %_ZNK6icu_789UVector6410elementAtiEi.exit
  %.391 = phi i32 [ %.088104, %_ZNK6icu_789UVector6410elementAtiEi.exit ], [ %.290, %bb.i ], [ %.290, %bb.f ], [ %.290, %bb.k ], [ %.290, %bb.h ] ; 6 uses
  %.386 = phi i32 [ %.083105, %_ZNK6icu_789UVector6410elementAtiEi.exit ], [ %.285, %bb.i ], [ %.285, %bb.f ], [ %.285, %bb.k ], [ %.285, %bb.h ] ; 6 uses
  %.181 = phi i32 [ %.080106, %_ZNK6icu_789UVector6410elementAtiEi.exit ], [ %i.z, %bb.i ], [ %i.z, %bb.f ], [ %i.z, %bb.k ], [ %i.z, %bb.h ] ; 6 uses
  %.176 = phi i32 [ %.075107, %_ZNK6icu_789UVector6410elementAtiEi.exit ], [ 1280, %bb.i ], [ 1280, %bb.f ], [ 1280, %bb.k ], [ 1280, %bb.h ] ; 5 uses
  %.273 = phi i32 [ %.071108, %_ZNK6icu_789UVector6410elementAtiEi.exit ], [ 4096, %bb.i ], [ 3072, %bb.f ], [ %i.at, %bb.k ], [ %i.aq, %bb.h ] ; 9 uses
  %.165 = phi i32 [ %.064109, %_ZNK6icu_789UVector6410elementAtiEi.exit ], [ 160, %bb.i ], [ 160, %bb.f ], [ 160, %bb.k ], [ 160, %bb.h ] ; 13 uses
  %.1 = phi i32 [ %.063110, %_ZNK6icu_789UVector6410elementAtiEi.exit ], [ 0, %bb.i ], [ 0, %bb.f ], [ 0, %bb.k ], [ 0, %bb.h ] ; 4 uses
  %i.au = trunc i64 %i.x to i32                   ; 3 uses
  %i.av = lshr i32 %i.au, 16                      ; 8 uses
  %.not98 = icmp eq i32 %i.av, %.176
  br i1 %.not98, label %bb.z, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp eq i32 %.273, 0
  br i1 %i.aw, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp eq i32 %.165, 0
  br i1 %i.ax, label %bb.z, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp ult i32 %.165, 992
  br i1 %i.ay, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  %i.az = add nuw nsw i32 %.165, 32
  br label %bb.z

bb.r:                                             ; preds = %bb.n
  %i.ba = icmp ult i32 %i.au, 83886080
  br i1 %i.ba, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bb = icmp eq i32 %.165, 160
  br i1 %i.bb, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = icmp ult i32 %.165, 128
  br i1 %i.bc, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %i.bd = add nuw nsw i32 %.165, 32
  br label %bb.z

bb.v:                                             ; preds = %bb.r
  %i.be = icmp eq i32 %i.av, 1280
  br i1 %i.be, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = icmp ult i32 %.165, 192
  br i1 %i.bf, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bg = icmp ult i32 %.165, 352
  br i1 %i.bg, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %i.bh = add nuw nsw i32 %.165, 32
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.u, %bb.o, %bb.q, %bb.s, %bb.v, %bb.w, %bb.m
  %.277 = phi i32 [ %.176, %bb.m ], [ %i.av, %bb.w ], [ 1280, %bb.v ], [ %i.av, %bb.s ], [ %i.av, %bb.q ], [ %i.av, %bb.o ], [ %i.av, %bb.u ], [ %i.av, %bb.y ] ; 3 uses
end_hunk_0
