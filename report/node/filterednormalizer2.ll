inline.NumInlined: 69
inline.NumDeleted: 27
begin_hunk_0_@_ZNK6icu_7819FilteredNormalizer212isNormalizedERKNS_13UnicodeStringER10UErrorCode:bb.a
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.critedge30, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 1
  %.not3.i = icmp eq i16 %i.e, 0
  br i1 %.not3.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %.critedge30

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.h = load i16, ptr %i.f, align 8              ; 3 uses
  %i.i = icmp slt i16 %i.h, 0
  %i.j = ashr i16 %i.h, 5
  %i.k = sext i16 %i.j to i32
  %i.l = load i32, ptr %i.g, align 4
  %i.m = select i1 %i.i, i32 %i.l, i32 %i.k       ; 2 uses
  %.not2833 = icmp slt i32 %i.m, 1
  br i1 %.not2833, label %.critedge30, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit

_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit: ; preds = %.lr.ph, %bb.f
  %i.r = phi i32 [ %i.m, %.lr.ph ], [ %i.aq, %bb.f ]
  %i.s = phi i16 [ %i.h, %.lr.ph ], [ %i.al, %bb.f ] ; 2 uses
  %.02135 = phi i32 [ 0, %.lr.ph ], [ %i.ab, %bb.f ] ; 3 uses
  %.02334 = phi i32 [ 2, %.lr.ph ], [ %.225, %bb.f ] ; 2 uses
  %i.t = load ptr, ptr %i.n, align 8, !nonnull !5, !align !6
  %i.u = and i16 %i.s, 17
  %.not.i.i = icmp eq i16 %i.u, 0
  %i.v = and i16 %i.s, 2
  %.not2.i.i = icmp eq i16 %i.v, 0
  %i.w = load ptr, ptr %i.p, align 8
  %spec.select39 = select i1 %.not2.i.i, ptr %i.w, ptr %i.o
  %.0.i.i = select i1 %.not.i.i, ptr %spec.select39, ptr null
  %.0.i = call i32 @llvm.smax.i32(i32 %.02135, i32 0) ; 3 uses
  %i.x = zext nneg i32 %.0.i to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %i.x
  %i.z = sub nsw i32 %i.r, %.0.i
  %i.aa = call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.t, ptr noundef %i.y, i32 noundef %i.z, i32 noundef %.02334) #5
  %i.ab = add nsw i32 %i.aa, %.0.i                ; 3 uses
  %i.ac = icmp eq i32 %.02334, 0
  br i1 %i.ac, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit
  %i.ad = load ptr, ptr %i.q, align 8, !nonnull !5, !align !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.ae = sub nsw i32 %i.ab, %.02135
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.02135, i32 noundef %i.ae) #5
  %i.af = load ptr, ptr %i.ad, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef signext i8 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #5
  %.not26 = icmp eq i8 %i.ai, 0
  br i1 %.not26, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load i32, ptr %2, align 4
  %i.ak = icmp slt i32 %i.aj, 1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br i1 %i.ak, label %bb.f, label %.critedge30

.critedge:                                        ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %.critedge30

bb.f:                                             ; preds = %bb.e, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit
  %.225 = phi i32 [ 2, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit ], [ 0, %bb.e ]
  %i.al = load i16, ptr %i.f, align 8             ; 3 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.g, align 4
  %i.aq = select i1 %i.am, i32 %i.ap, i32 %i.ao   ; 2 uses
  %.not28.not = icmp slt i32 %i.ab, %i.aq
  br i1 %.not28.not, label %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit, label %.critedge30, !llvm.loop !9

.critedge30:                                      ; preds = %bb.e, %bb.f, %bb.c, %bb.a, %.critedge, %.preheader
  %.4 = phi i8 [ 0, %bb.a ], [ 0, %.critedge ], [ 1, %.preheader ], [ 0, %bb.c ], [ 0, %bb.e ], [ 1, %bb.f ]
  ret i8 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819FilteredNormalizer216isNormalizedUTF8ENS_11StringPieceER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr %1, i32 %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.01731 = phi i32 [ 2, %.lr.ph ], [ %.118, %bb.d ] ; 2 uses
  %.02030 = phi i32 [ %2, %.lr.ph ], [ %i.r, %bb.d ] ; 2 uses
  %.02229 = phi ptr [ %1, %.lr.ph ], [ %i.q, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.g = tail call noundef i32 @_ZNK6icu_7810UnicodeSet8spanUTF8EPKci17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.f, ptr noundef %.02229, i32 noundef %.02030, i32 noundef %.01731) #5 ; 3 uses
  %i.h = icmp eq i32 %.01731, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef signext i8 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr %.02229, i32 %i.g, ptr noundef nonnull align 4 dereferenceable(4) %3) #5
  %.not24 = icmp ne i8 %i.m, 0
  %i.n = load i32, ptr %3, align 4
  %i.o = icmp slt i32 %i.n, 1
  %or.cond = select i1 %.not24, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %.118 = phi i32 [ 2, %bb.b ], [ 0, %bb.c ]
  %i.p = sext i32 %i.g to i64
  %i.q = getelementptr inbounds i8, ptr %.02229, i64 %i.p
  %i.r = sub nsw i32 %.02030, %i.g                ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.b, label %.critedge, !llvm.loop !10

.critedge:                                        ; preds = %bb.c, %bb.d, %.preheader, %bb.a
  %.3 = phi i8 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.c ], [ 1, %bb.d ]
  ret i8 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7819FilteredNormalizer210quickCheckERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 1
  %.not3.i = icmp eq i16 %i.e, 0
  br i1 %.not3.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %.loopexit

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i16, ptr %i.f, align 8              ; 4 uses
  %i.m = icmp slt i16 %i.l, 0
  %i.n = ashr i16 %i.l, 5
  %i.o = sext i16 %i.n to i32
  %i.p = load i32, ptr %i.g, align 4
  %i.q = select i1 %i.m, i32 %i.p, i32 %i.o       ; 2 uses
  %.not45.peel.peel = icmp sgt i32 %i.q, 0
  br i1 %.not45.peel.peel, label %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, label %.loopexit

_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel: ; preds = %.preheader
  %i.r = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6
  %i.s = and i16 %i.l, 17
  %.not.i.i.peel.peel = icmp eq i16 %i.s, 0
  %i.t = and i16 %i.l, 2
  %.not2.i.i.peel.peel = icmp eq i16 %i.t, 0
  %i.u = load ptr, ptr %i.j, align 8
  %spec.select53.peel.peel = select i1 %.not2.i.i.peel.peel, ptr %i.u, ptr %i.i
  %.0.i.i.peel.peel = select i1 %.not.i.i.peel.peel, ptr %spec.select53.peel.peel, ptr null
  %i.v = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.r, ptr noundef %.0.i.i.peel.peel, i32 noundef %i.q, i32 noundef 2) #5 ; 2 uses
  %i.w = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.v) #5
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #5 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ab = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %i.ab, 0                      ; 2 uses
  %5 = icmp eq i32 %i.aa, 0
  %or.cond.peel = or i1 %5, %4
  %6 = icmp ne i32 %i.aa, 2
  %7 = or i1 %6, %4
  %spec.select.peel.a = select i1 %7, i32 1, i32 2
  br i1 %or.cond.peel, label %.loopexit, label %.outer

.outer:                                           ; preds = %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit59
  %.036.ph = phi i32 [ %i.bf, %.loopexit59 ], [ %i.v, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ] ; 2 uses
  %.027.ph = phi i32 [ %spec.select, %.loopexit59 ], [ %spec.select.peel.a, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ] ; 3 uses
  %i.ac = load i16, ptr %i.f, align 8             ; 4 uses
  %i.ad = icmp slt i16 %i.ac, 0
  %i.ae = ashr i16 %i.ac, 5
  %i.af = sext i16 %i.ae to i32
  %i.ag = load i32, ptr %i.g, align 4
  %i.ah = select i1 %i.ad, i32 %i.ag, i32 %i.af   ; 2 uses
  %.not45.peel = icmp slt i32 %.036.ph, %i.ah
  br i1 %.not45.peel, label %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel, label %.loopexit

_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel: ; preds = %.outer
  %i.ai = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6
  %i.aj = and i16 %i.ac, 17
  %.not.i.i.peel = icmp eq i16 %i.aj, 0
  %i.ak = and i16 %i.ac, 2
  %.not2.i.i.peel = icmp eq i16 %i.ak, 0
  %i.al = load ptr, ptr %i.j, align 8
  %spec.select53.peel = select i1 %.not2.i.i.peel, ptr %i.al, ptr %i.i
  %.0.i.i.peel = select i1 %.not.i.i.peel, ptr %spec.select53.peel, ptr null
  %.0.i.peel = call i32 @llvm.smax.i32(i32 %.036.ph, i32 0) ; 3 uses
  %i.am = zext nneg i32 %.0.i.peel to i64
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.peel, i64 %i.am
  %i.ao = sub nsw i32 %i.ah, %.0.i.peel
  %i.ap = call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.ai, ptr noundef %i.an, i32 noundef %i.ao, i32 noundef 0) #5
  %i.aq = add nsw i32 %i.ap, %.0.i.peel           ; 4 uses
  %i.ar = load i16, ptr %i.f, align 8             ; 4 uses
  %i.as = icmp slt i16 %i.ar, 0
  %i.at = ashr i16 %i.ar, 5
  %i.au = sext i16 %i.at to i32
  %i.av = load i32, ptr %i.g, align 4
  %i.aw = select i1 %i.as, i32 %i.av, i32 %i.au   ; 2 uses
  %.not45 = icmp slt i32 %i.aq, %i.aw
  br i1 %.not45, label %.loopexit59, label %.loopexit

.loopexit59:                                      ; preds = %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel
  %i.ax = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6
  %i.ay = and i16 %i.ar, 17
  %.not.i.i = icmp eq i16 %i.ay, 0
  %i.az = and i16 %i.ar, 2
  %.not2.i.i = icmp eq i16 %i.az, 0
  %i.ba = load ptr, ptr %i.j, align 8
  %spec.select53 = select i1 %.not2.i.i, ptr %i.ba, ptr %i.i
  %.0.i.i = select i1 %.not.i.i, ptr %spec.select53, ptr null
  %.0.i = call i32 @llvm.smax.i32(i32 %i.aq, i32 0) ; 3 uses
  %i.bb = zext nneg i32 %.0.i to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %i.bb
  %i.bd = sub nsw i32 %i.aw, %.0.i
  %i.be = call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.ax, ptr noundef %i.bc, i32 noundef %i.bd, i32 noundef 2) #5
  %i.bf = add nsw i32 %i.be, %.0.i                ; 2 uses
  %i.bg = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.bh = sub nsw i32 %i.bf, %i.aq
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.aq, i32 noundef %i.bh) #5
  %i.bi = load ptr, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = call noundef i32 %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #5 ; 3 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.bm = load i32, ptr %2, align 4
  %8 = icmp sgt i32 %i.bm, 0                      ; 2 uses
  %9 = icmp eq i32 %i.bl, 0
  %or.cond = or i1 %9, %8
  %10 = icmp ne i32 %i.bl, 2
  %11 = or i1 %10, %8
  %spec.select = select i1 %11, i32 %.027.ph, i32 2
  br i1 %or.cond, label %.loopexit, label %.outer, !llvm.loop !11

.loopexit:                                        ; preds = %.preheader, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit59, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel, %.outer, %bb.c, %bb.a
  %.6 = phi i32 [ 2, %bb.c ], [ 2, %bb.a ], [ 1, %.preheader ], [ %i.aa, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ], [ %i.bl, %.loopexit59 ], [ %.027.ph, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel ], [ %.027.ph, %.outer ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZNK6icu_7819FilteredNormalizer217spanQuickCheckYesERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8
  %i.e = and i16 %i.d, 1
  %.not3.i = icmp eq i16 %i.e, 0
  br i1 %.not3.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %2, align 4
  br label %.thread

.preheader:                                       ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i16, ptr %i.f, align 8              ; 4 uses
  %i.m = icmp slt i16 %i.l, 0
  %i.n = ashr i16 %i.l, 5
  %i.o = sext i16 %i.n to i32
  %i.p = load i32, ptr %i.g, align 4
  %i.q = select i1 %i.m, i32 %i.p, i32 %i.o       ; 3 uses
  %.not36.peel.peel = icmp sgt i32 %i.q, 0
  br i1 %.not36.peel.peel, label %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, label %.thread

_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel: ; preds = %.preheader
  %i.r = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6
  %i.s = and i16 %i.l, 17
  %.not.i.i.peel.peel = icmp eq i16 %i.s, 0
  %i.t = and i16 %i.l, 2
  %.not2.i.i.peel.peel = icmp eq i16 %i.t, 0
  %i.u = load ptr, ptr %i.j, align 8
  %spec.select.peel.peel = select i1 %.not2.i.i.peel.peel, ptr %i.u, ptr %i.i
  %.0.i.i.peel.peel = select i1 %.not.i.i.peel.peel, ptr %spec.select.peel.peel, ptr null
  %i.v = tail call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.r, ptr noundef %.0.i.i.peel.peel, i32 noundef %i.q, i32 noundef 2) #5 ; 3 uses
  %i.w = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.v) #5
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #5 ; 2 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.ab = load i32, ptr %2, align 4
  %i.ac = icmp slt i32 %i.ab, 1
  %i.ad = icmp sge i32 %i.aa, %i.v
  %or.cond.not.peel = and i1 %i.ac, %i.ad
  br i1 %or.cond.not.peel, label %.outer, label %.thread

.outer:                                           ; preds = %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit49
  %.033.ph = phi i32 [ %i.bh, %.loopexit49 ], [ %i.v, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ] ; 2 uses
  %i.ae = load i16, ptr %i.f, align 8             ; 4 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = load i32, ptr %i.g, align 4
  %i.aj = select i1 %i.af, i32 %i.ai, i32 %i.ah   ; 3 uses
  %.not36.peel = icmp slt i32 %.033.ph, %i.aj
  br i1 %.not36.peel, label %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel, label %.thread

_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel: ; preds = %.outer
  %i.ak = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6
  %i.al = and i16 %i.ae, 17
  %.not.i.i.peel = icmp eq i16 %i.al, 0
  %i.am = and i16 %i.ae, 2
  %.not2.i.i.peel = icmp eq i16 %i.am, 0
  %i.an = load ptr, ptr %i.j, align 8
  %spec.select.peel = select i1 %.not2.i.i.peel, ptr %i.an, ptr %i.i
  %.0.i.i.peel = select i1 %.not.i.i.peel, ptr %spec.select.peel, ptr null
  %.0.i.peel = call i32 @llvm.smax.i32(i32 %.033.ph, i32 0) ; 3 uses
  %i.ao = zext nneg i32 %.0.i.peel to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i.peel, i64 %i.ao
  %i.aq = sub nsw i32 %i.aj, %.0.i.peel
  %i.ar = call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.ak, ptr noundef %i.ap, i32 noundef %i.aq, i32 noundef 0) #5
  %i.as = add nsw i32 %i.ar, %.0.i.peel           ; 5 uses
  %i.at = load i16, ptr %i.f, align 8             ; 4 uses
  %i.au = icmp slt i16 %i.at, 0
  %i.av = ashr i16 %i.at, 5
  %i.aw = sext i16 %i.av to i32
  %i.ax = load i32, ptr %i.g, align 4
  %i.ay = select i1 %i.au, i32 %i.ax, i32 %i.aw   ; 3 uses
  %.not36 = icmp slt i32 %i.as, %i.ay
  br i1 %.not36, label %.loopexit49, label %.thread

.loopexit49:                                      ; preds = %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel
  %i.az = load ptr, ptr %i.h, align 8, !nonnull !5, !align !6
  %i.ba = and i16 %i.at, 17
  %.not.i.i = icmp eq i16 %i.ba, 0
  %i.bb = and i16 %i.at, 2
  %.not2.i.i = icmp eq i16 %i.bb, 0
  %i.bc = load ptr, ptr %i.j, align 8
  %spec.select = select i1 %.not2.i.i, ptr %i.bc, ptr %i.i
  %.0.i.i = select i1 %.not.i.i, ptr %spec.select, ptr null
  %.0.i = call i32 @llvm.smax.i32(i32 %i.as, i32 0) ; 3 uses
  %i.bd = zext nneg i32 %.0.i to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.0.i.i, i64 %i.bd
  %i.bf = sub nsw i32 %i.ay, %.0.i
  %i.bg = call noundef i32 @_ZNK6icu_7810UnicodeSet4spanEPKDsi17USetSpanCondition(ptr noundef nonnull align 8 dereferenceable(200) %i.az, ptr noundef %i.be, i32 noundef %i.bf, i32 noundef 2) #5
  %i.bh = add nsw i32 %i.bg, %.0.i                ; 3 uses
  %i.bi = load ptr, ptr %i.k, align 8, !nonnull !5, !align !6 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.bj = sub nsw i32 %i.bh, %i.as
  call void @_ZNK6icu_7813UnicodeString13tempSubStringEii(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.as, i32 noundef %i.bj) #5
  %i.bk = load ptr, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 112
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i32 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %2) #5
  %i.bo = add nsw i32 %i.bn, %i.as                ; 2 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  %i.bp = load i32, ptr %2, align 4
  %i.bq = icmp slt i32 %i.bp, 1
  %i.br = icmp sge i32 %i.bo, %i.bh
  %or.cond.not = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %or.cond.not, label %.outer, label %.thread, !llvm.loop !13

.thread:                                          ; preds = %.preheader, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel, %.loopexit49, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel, %.outer, %bb.c, %bb.a
  %.6 = phi i32 [ 0, %bb.c ], [ 0, %bb.a ], [ %i.q, %.preheader ], [ %i.aa, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel.peel ], [ %i.bo, %.loopexit49 ], [ %i.aj, %.outer ], [ %i.ay, %_ZNK6icu_7810UnicodeSet4spanERKNS_13UnicodeStringEi17USetSpanCondition.exit.peel ]
  ret i32 %.6
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819FilteredNormalizer217hasBoundaryBeforeEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %1) #5
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef signext i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %1) #5
  %i.j = icmp ne i8 %i.i, 0
  %i.k = zext i1 %i.j to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i8 [ 1, %bb.a ], [ %i.k, %bb.b ]
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819FilteredNormalizer216hasBoundaryAfterEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %1) #5
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef signext i8 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %1) #5
  %i.j = icmp ne i8 %i.i, 0
  %i.k = zext i1 %i.j to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i8 [ 1, %bb.a ], [ %i.k, %bb.b ]
  ret i8 %i.l
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819FilteredNormalizer27isInertEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6
  %i.c = tail call noundef signext i8 @_ZNK6icu_7810UnicodeSet8containsEi(ptr noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %1) #5
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
end_hunk_0
