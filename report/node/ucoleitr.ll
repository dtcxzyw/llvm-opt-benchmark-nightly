inline.NumInlined: 51
inline.NumDeleted: 9
begin_hunk_0_@_ZN6icu_7813UCollationPCE4initEPNS_24CollationElementIteratorE:bb.a
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9, !inline_history !7
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 192
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9, !inline_history !7
  %i.n = icmp eq i32 %i.m, 20
  %i.o = zext i1 %i.n to i8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i8 %i.o, ptr %i.p, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 285
  store i8 0, ptr %i.q, align 1
  %i.r = load ptr, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 240
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = call noundef i32 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9, !inline_history !7
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.u, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813UCollationPCE4initERKNS_8CollatorE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(292) initializes((280, 286), (288, 292)) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = call noundef i32 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 5, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i32 %i.e, ptr %i.f, align 8
  %i.g = load ptr, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef i32 %i.i(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9
  %i.k = icmp eq i32 %i.j, 20
  %i.l = zext i1 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i8 %i.l, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 285
  store i8 0, ptr %i.n, align 1
  %i.o = load ptr, ptr %1, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call noundef i32 %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.r, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7813UCollationPCED2Ev(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(292) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.b, %0
  br i1 %.not.i, label %_ZN6icu_789PCEBufferD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uprv_free_78(ptr noundef %i.b) #9
  br label %_ZN6icu_789PCEBufferD2Ev.exit

_ZN6icu_789PCEBufferD2Ev.exit:                    ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef range(i64 0, -280375465082880) i64 @_ZN6icu_7813UCollationPCE9processCEEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(292) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  switch i32 %i.b, label %bb.b [
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = shl i32 %1, 16
  %i.d = and i32 %i.c, 16711680
  %i.e = zext nneg i32 %i.d to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.016 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.a ]
  %i.f = lshr i32 %1, 8
  %i.g = and i32 %i.f, 255
  %i.h = zext nneg i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.019 = phi i64 [ %i.i, %bb.c ], [ 0, %bb.a ]
  %.117 = phi i64 [ %.016, %bb.c ], [ 0, %bb.a ]
  %i.j = lshr i32 %1, 16                          ; 3 uses
  %i.k = zext nneg i32 %i.j to i64                ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.m = load i8, ptr %i.l, align 4
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp ugt i32 %i.o, %1
  %i.q = icmp ne i32 %i.j, 0
  %or.cond = and i1 %i.q, %i.p
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 285 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1
  %i.t = icmp ne i8 %i.s, 0
  %i.u = icmp eq i32 %i.j, 0
  %or.cond3 = and i1 %i.u, %i.t
  br i1 %or.cond3, label %.thread, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.v = icmp sgt i32 %i.b, 2
  %spec.select = select i1 %i.v, i64 %i.k, i64 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 285
  store i8 1, ptr %i.w, align 1
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.x = icmp sgt i32 %i.b, 2
  %spec.select24 = select i1 %i.x, i64 65535, i64 0
  store i8 0, ptr %i.r, align 1
  %i.y = shl nuw i64 %i.k, 48
  %i.z = or disjoint i64 %spec.select24, %i.y
  %i.aa = or i64 %i.z, %.019
  %i.ab = or i64 %i.aa, %.117
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.g, %bb.h
  %.022 = phi i64 [ %i.ab, %bb.h ], [ %spec.select, %bb.g ], [ 0, %bb.f ]
  ret i64 %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 256) i32 @ucol_tertiaryOrder_78(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = and i32 %0, 255
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 256) i32 @ucol_secondaryOrder_78(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i32 %0, 8
  %i.b = and i32 %i.a, 255
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 65536) i32 @ucol_primaryOrder_78(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = lshr i32 %0, 16
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @ucol_openElements_78(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %1, null
  %i.e = icmp ne i32 %2, 0
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8
  %i.g = icmp eq ptr %i.f, getelementptr inbounds inrange(-16, 312) ({ [41 x ptr] }, ptr @_ZTVN6icu_7817RuleBasedCollatorE, i32 0, i32 0, i32 2)
  br i1 %i.g, label %_ZN6icu_7817RuleBasedCollator16rbcFromUCollatorEPK9UCollator.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %3, align 4
  br label %bb.i

_ZN6icu_7817RuleBasedCollator16rbcFromUCollatorEPK9UCollator.exit: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %.lobit = lshr i32 %2, 31
  %i.h = trunc nuw nsw i32 %.lobit to i8
  store ptr %1, ptr %5, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 noundef signext %i.h, ptr noundef nonnull %5, i32 noundef %2) #9
  %i.i = load ptr, ptr %5, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.i) #9, !srcloc !8
  %i.j = call noundef ptr @_ZNK6icu_7817RuleBasedCollator30createCollationElementIteratorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(64) %4) #9 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN6icu_7817RuleBasedCollator16rbcFromUCollatorEPK9UCollator.exit
  store i32 7, ptr %3, align 4
  br label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7817RuleBasedCollator16rbcFromUCollatorEPK9UCollator.exit, %bb.g
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.a, %bb.d
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ], [ %i.j, %bb.h ]
  ret ptr %.2
}

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef ptr @_ZNK6icu_7817RuleBasedCollator30createCollationElementIteratorERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucol_closeElements_78(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7824CollationElementIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7824CollationElementIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @ucol_reset_78(ptr noundef nonnull %0) local_unnamed_addr #1 {
bb.a:
  tail call void @_ZN6icu_7824CollationElementIterator5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) #9
  ret void
}

declare void @_ZN6icu_7824CollationElementIterator5resetEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @ucol_next_78(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN6icu_7824CollationElementIterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

declare noundef i32 @_ZN6icu_7824CollationElementIterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i64 1, -280375465082880) i64 @_ZN6icu_7813UCollationPCE13nextProcessedEPiS1_P10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(292) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 285 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7813UCollationPCE9processCEEj.exit, %bb.b
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = tail call noundef i32 @_ZNK6icu_7824CollationElementIterator9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.i) #9
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = tail call noundef i32 @_ZN6icu_7824CollationElementIterator4nextER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %3) #9 ; 5 uses
  %i.m = load ptr, ptr %i.d, align 8
  %i.n = tail call noundef i32 @_ZNK6icu_7824CollationElementIterator9getOffsetEv(ptr noundef nonnull align 8 dereferenceable(104) %i.m) #9
  %i.o = icmp eq i32 %i.l, -1
  br i1 %i.o, label %_ZN6icu_7813UCollationPCE9processCEEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load i32, ptr %i.e, align 8              ; 3 uses
  switch i32 %i.p, label %bb.e [
    i32 1, label %bb.f
    i32 0, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = shl i32 %i.l, 16
  %i.r = and i32 %i.q, 16711680
  %i.s = zext nneg i32 %i.r to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.016.i = phi i64 [ %i.s, %bb.e ], [ 0, %bb.d ]
  %i.t = lshr i32 %i.l, 8
  %i.u = and i32 %i.t, 255
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.019.i = phi i64 [ %i.w, %bb.f ], [ 0, %bb.d ]
  %.117.i = phi i64 [ %.016.i, %bb.f ], [ 0, %bb.d ]
  %i.x = lshr i32 %i.l, 16                        ; 3 uses
  %i.y = zext nneg i32 %i.x to i64                ; 2 uses
  %i.z = load i8, ptr %i.f, align 4
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.g, align 8
  %i.ab = icmp ugt i32 %i.aa, %i.l
  %i.ac = icmp ne i32 %i.x, 0
  %or.cond.i = and i1 %i.ac, %i.ab
  br i1 %or.cond.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load i8, ptr %i.h, align 1
  %i.ae = icmp ne i8 %i.ad, 0
  %i.af = icmp eq i32 %i.x, 0
  %or.cond3.i = and i1 %i.af, %i.ae
  br i1 %or.cond3.i, label %_ZN6icu_7813UCollationPCE9processCEEj.exit, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ag = icmp sgt i32 %i.p, 2
  store i8 1, ptr %i.h, align 1
  br i1 %i.ag, label %_ZN6icu_7813UCollationPCE9processCEEj.exit.thread, label %_ZN6icu_7813UCollationPCE9processCEEj.exit

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp sgt i32 %i.p, 2
  %spec.select24.i = select i1 %i.ah, i64 65535, i64 0
  store i8 0, ptr %i.h, align 1
  %i.ai = shl nuw i64 %i.y, 48
  %i.aj = or disjoint i64 %spec.select24.i, %i.ai
  %i.ak = or i64 %.019.i, %i.aj
  %i.al = or i64 %i.ak, %.117.i
  br label %_ZN6icu_7813UCollationPCE9processCEEj.exit

_ZN6icu_7813UCollationPCE9processCEEj.exit:       ; preds = %bb.j, %bb.k, %bb.i
  %.015 = phi i64 [ 0, %bb.i ], [ %i.al, %bb.k ], [ 0, %bb.j ] ; 2 uses
  %i.am = icmp eq i64 %.015, 0
  br i1 %i.am, label %bb.c, label %_ZN6icu_7813UCollationPCE9processCEEj.exit.thread, !llvm.loop !9

_ZN6icu_7813UCollationPCE9processCEEj.exit.thread: ; preds = %bb.j, %bb.c, %_ZN6icu_7813UCollationPCE9processCEEj.exit
  %.01524 = phi i64 [ %.015, %_ZN6icu_7813UCollationPCE9processCEEj.exit ], [ 9223372036854775807, %bb.c ], [ %i.y, %bb.j ] ; 2 uses
  %.not19 = icmp eq ptr %1, null
  br i1 %.not19, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN6icu_7813UCollationPCE9processCEEj.exit.thread
  store i32 %i.j, ptr %1, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN6icu_7813UCollationPCE9processCEEj.exit.thread
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.n, ptr %2, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.a
  %.0 = phi i64 [ 9223372036854775807, %bb.a ], [ %.01524, %bb.n ], [ %.01524, %bb.m ]
  ret i64 %.0
}

end_hunk_0
