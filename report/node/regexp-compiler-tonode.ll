inline.NumInlined: 1437
inline.NumDeleted: 593
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN2v88internal12_GLOBAL__N_115AddClassNegatedEPKiiPNS0_8ZoneListINS0_14CharacterRangeEEEPNS0_4ZoneE:.lr.ph
bb.b:                                             ; preds = %._crit_edge
  %i.m = shl nsw i32 %i.j, 1
  %i.n = or disjoint i32 %i.m, 1                  ; 2 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = zext nneg i32 %i.n to i64
  %i.q = shl nuw nsw i64 %i.p, 3                  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = sub i64 %i.s, %i.u
  %i.w = icmp ugt i64 %i.q, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i, !prof !5

bb.e:                                             ; preds = %bb.d
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.q) #20
  %.pre.i.i.i.i.i.i = load i64, ptr %i.t, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = phi i64 [ %.pre.i.i.i.i.i.i, %bb.e ], [ %i.u, %bb.d ] ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 5 uses
  %i.z = add i64 %i.x, %i.q
  store i64 %i.z, ptr %i.t, align 8
  %i.aa = load i32, ptr %i.g, align 4             ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %bb.f, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.f:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  %i.ac = load ptr, ptr %2, align 8               ; 3 uses
  switch i32 %i.aa, label %bb.i [
    i32 2, label %bb.h
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.ac, align 1
  store i64 %i.ad, ptr %i.y, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.y, ptr noundef nonnull align 1 dereferenceable(16) %i.ac, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.i:                                             ; preds = %bb.f
  %i.ae = zext nneg i32 %i.aa to i64
  %i.af = shl nuw nsw i64 %i.ae, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.ac, i64 %i.af, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  store ptr %i.y, ptr %2, align 8
  store i32 %i.n, ptr %i.i, align 8
  %i.ag = load i32, ptr %i.g, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit: ; preds = %bb.a, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i
  %.sink36 = phi i32 [ %i.h, %bb.a ], [ %i.ag, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ] ; 2 uses
  %.sink33 = phi ptr [ %i.l, %bb.a ], [ %i.y, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ]
  %.mask = and i32 %i.bo, 65535
  %.sroa.0.0.insert.ext.i = zext nneg i32 %.mask to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.0.0.insert.ext.i, 4785070309113856
  %i.ah = add nsw i32 %.sink36, 1
  store i32 %i.ah, ptr %i.g, align 4
  %i.ai = sext i32 %.sink36 to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %.sink33, i64 %i.ai
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.aj, align 4
  ret void

bb.j:                                             ; preds = %.lr.ph, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit19
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit19 ] ; 2 uses
  %.01324 = phi i64 [ 0, %.lr.ph ], [ %i.bp, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit19 ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = add nsw i32 %i.al, -1
  %.sroa.2.0.insert.ext.i = zext i32 %i.am to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i14 = and i64 %.01324, 65535
  %.sroa.0.0.insert.insert.i15 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i14
  %i.an = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ao = load i32, ptr %i.c, align 8             ; 3 uses
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %2, align 8
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit19

bb.l:                                             ; preds = %bb.j
  %i.ar = shl nsw i32 %i.ao, 1
  %i.as = or disjoint i32 %i.ar, 1                ; 2 uses
  %i.at = icmp sgt i32 %i.ao, -1
  br i1 %i.at, label %bb.n, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #21
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.au = zext nneg i32 %i.as to i64
  %i.av = shl nuw nsw i64 %i.au, 3                ; 3 uses
  %i.aw = load i64, ptr %i.d, align 8
  %i.ax = load i64, ptr %i.e, align 8             ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = icmp ugt i64 %i.av, %i.ay
  br i1 %i.az, label %bb.o, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i16, !prof !5

bb.o:                                             ; preds = %bb.n
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %3, i64 noundef %i.av) #20
  %.pre.i.i.i.i.i.i18 = load i64, ptr %i.e, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i16

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i16: ; preds = %bb.o, %bb.n
  %i.ba = phi i64 [ %.pre.i.i.i.i.i.i18, %bb.o ], [ %i.ax, %bb.n ] ; 2 uses
  %i.bb = inttoptr i64 %i.ba to ptr               ; 5 uses
  %i.bc = add i64 %i.ba, %i.av
  store i64 %i.bc, ptr %i.e, align 8
  %i.bd = load i32, ptr %i.b, align 4             ; 3 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %bb.p, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17

bb.p:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i16
  %i.bf = load ptr, ptr %2, align 8               ; 3 uses
  switch i32 %i.bd, label %bb.s [
    i32 2, label %bb.r
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.bg = load i64, ptr %i.bf, align 1
  store i64 %i.bg, ptr %i.bb, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bb, ptr noundef nonnull align 1 dereferenceable(16) %i.bf, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17

bb.s:                                             ; preds = %bb.p
  %i.bh = zext nneg i32 %i.bd to i64
  %i.bi = shl nuw nsw i64 %i.bh, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bb, ptr align 1 %i.bf, i64 %i.bi, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17: ; preds = %bb.s, %bb.r, %bb.q, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i16
  store ptr %i.bb, ptr %2, align 8
  store i32 %i.as, ptr %i.c, align 8
  %i.bj = load i32, ptr %i.b, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit19

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit19: ; preds = %bb.k, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17
  %.sink42 = phi i32 [ %i.an, %bb.k ], [ %i.bj, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17 ] ; 2 uses
  %.sink38 = phi ptr [ %i.aq, %bb.k ], [ %i.bb, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i17 ]
  %i.bk = add nsw i32 %.sink42, 1
  store i32 %i.bk, ptr %i.b, align 4
  %i.bl = sext i32 %.sink42 to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %.sink38, i64 %i.bl
  store i64 %.sroa.0.0.insert.insert.i15, ptr %i.bm, align 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.bo = load i32, ptr %i.bn, align 4            ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.bq, label %bb.j, label %._crit_edge, !llvm.loop !60
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal14CharacterRange18AddCaseEquivalentsEPNS0_7IsolateEPNS0_4ZoneEPNS0_8ZoneListIS1_EEb(ptr nofree noundef readnone captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeSet", align 8 ; 15 uses
  %5 = alloca %"class.icu_78::UnicodeSet", align 8 ; 5 uses
  tail call void @_ZN2v88internal14CharacterRange12CanonicalizeEPNS0_8ZoneListIS1_EE(ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %4) #20
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %wide.trip.count56 = zext nneg i32 %i.b to i64  ; 2 uses
  br i1 %3, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.f
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  %i.d = load ptr, ptr %2, align 8
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv53
  %i.f = load i64, ptr %i.e, align 4              ; 4 uses
  %.sroa.043.0.extract.trunc.us = trunc i64 %i.f to i32 ; 4 uses
  %i.g = icmp ugt i32 %.sroa.043.0.extract.trunc.us, 65535
  br i1 %i.g, label %bb.f, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us
  %.sroa.5.0.extract.shift.us = lshr i64 %i.f, 32
  %.sroa.5.0.extract.trunc.us = trunc nuw i64 %.sroa.5.0.extract.shift.us to i32 ; 2 uses
  %i.h = icmp samesign ugt i32 %.sroa.043.0.extract.trunc.us, 55295
  %i.i = icmp ult i64 %i.f, 246290604621824
  %or.cond.us = and i1 %i.h, %i.i
  br i1 %or.cond.us, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.us
  %6 = call i32 @llvm.umin.i32(i32 %.sroa.5.0.extract.trunc.us, i32 65535)
  %i.j = call noundef zeroext i1 @_ZN2v88internal30RangeContainsLatin1EquivalentsENS0_14CharacterRangeE(i64 %i.f) #20
  br i1 %i.j, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp samesign ugt i32 %.sroa.043.0.extract.trunc.us, 255
  br i1 %i.k, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %spec.store.select.us = call i32 @llvm.umin.i32(i32 %.sroa.5.0.extract.trunc.us, i32 255)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.030.us = phi i32 [ %6, %bb.b ], [ %spec.store.select.us, %bb.d ]
  %i.l = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef %.sroa.043.0.extract.trunc.us, i32 noundef %.030.us) #20 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %.lr.ph.i.i.us, %.lr.ph.split.us
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !61

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @_ZN6icu_7810UnicodeSetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %5, ptr noundef nonnull align 8 dereferenceable(200) %4) #20
  %i.m = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN2v88internal17RegExpCaseFolding9IgnoreSetEv() #20
  %i.n = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %i.m) #20 ; 0 uses
  %i.o = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9closeOverEi(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef 2) #20 ; 0 uses
  %i.p = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN2v88internal17RegExpCaseFolding9IgnoreSetEv() #20
  %i.q = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %i.p) #20 ; 0 uses
  %i.r = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200) %4, ptr noundef nonnull align 8 dereferenceable(200) %5) #20 ; 0 uses
  %i.s = call noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeCountEv(ptr noundef nonnull align 8 dereferenceable(200) %4) #20
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph49, label %._crit_edge50

.lr.ph49:                                         ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  br label %bb.i

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %i.x = load ptr, ptr %2, align 8
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.z = load i64, ptr %i.y, align 4              ; 3 uses
  %.sroa.043.0.extract.trunc = trunc i64 %i.z to i32 ; 3 uses
  %i.aa = icmp ugt i32 %.sroa.043.0.extract.trunc, 65535
  br i1 %i.aa, label %bb.h, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.split
  %i.ab = icmp samesign ugt i32 %.sroa.043.0.extract.trunc, 55295
  %i.ac = icmp ult i64 %i.z, 246290604621824
  %or.cond = and i1 %i.ab, %i.ac
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %.sroa.5.0.extract.shift = lshr i64 %i.z, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %7 = call i32 @llvm.umin.i32(i32 %.sroa.5.0.extract.trunc, i32 65535)
  %i.ad = call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEii(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef %.sroa.043.0.extract.trunc, i32 noundef %7) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i.i, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count56
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !61

._crit_edge50:                                    ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit, %._crit_edge
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret void

bb.i:                                             ; preds = %.lr.ph49, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit
  %.047 = phi i32 [ 0, %.lr.ph49 ], [ %i.ce, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit ] ; 3 uses
  %i.ae = call noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeStartEi(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef %.047) #20 ; 3 uses
  %i.af = call noundef i32 @_ZNK6icu_7810UnicodeSet11getRangeEndEi(ptr noundef nonnull align 8 dereferenceable(200) %4, i32 noundef %.047) #20 ; 2 uses
  %i.ag = icmp eq i32 %i.ae, %i.af
  br i1 %i.ag, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %.sroa.2.0.insert.ext.i = zext i32 %i.ae to i64
  %.sroa.0.0.insert.insert.i = mul nuw i64 %.sroa.2.0.insert.ext.i, 4294967297 ; 2 uses
  %i.ah = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ai = load i32, ptr %i.u, align 8             ; 3 uses
  %i.aj = icmp slt i32 %i.ah, %i.ai
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %2, align 8
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

bb.l:                                             ; preds = %bb.j
  %i.al = shl nsw i32 %i.ai, 1
  %i.am = or disjoint i32 %i.al, 1                ; 2 uses
  %i.an = icmp sgt i32 %i.ai, -1
  br i1 %i.an, label %bb.n, label %bb.m, !prof !6

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #21
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %i.am to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 3 uses
  %i.aq = load i64, ptr %i.v, align 8
  %i.ar = load i64, ptr %i.w, align 8             ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = icmp ugt i64 %i.ap, %i.as
  br i1 %i.at, label %bb.o, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i, !prof !5

bb.o:                                             ; preds = %bb.n
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.ap) #20
  %.pre.i.i.i.i.i.i = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i: ; preds = %bb.o, %bb.n
  %i.au = phi i64 [ %.pre.i.i.i.i.i.i, %bb.o ], [ %i.ar, %bb.n ] ; 2 uses
  %i.av = inttoptr i64 %i.au to ptr               ; 5 uses
  %i.aw = add i64 %i.au, %i.ap
  store i64 %i.aw, ptr %i.w, align 8
  %i.ax = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.p:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  %i.az = load ptr, ptr %2, align 8               ; 3 uses
  switch i32 %i.ax, label %bb.s [
    i32 2, label %bb.r
    i32 1, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.ba = load i64, ptr %i.az, align 1
  store i64 %i.ba, ptr %i.av, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.av, ptr noundef nonnull align 1 dereferenceable(16) %i.az, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

bb.s:                                             ; preds = %bb.p
  %i.bb = zext nneg i32 %i.ax to i64
  %i.bc = shl nuw nsw i64 %i.bb, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %i.az, i64 %i.bc, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i: ; preds = %bb.s, %bb.r, %bb.q, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i
  store ptr %i.av, ptr %2, align 8
  store i32 %i.am, ptr %i.u, align 8
  %i.bd = load i32, ptr %i.a, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

bb.t:                                             ; preds = %bb.i
  %.sroa.2.0.insert.ext.i34 = zext i32 %i.af to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i34, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ae to i64
  %.sroa.0.0.insert.insert.i35 = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i ; 2 uses
  %i.be = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bf = load i32, ptr %i.u, align 8             ; 3 uses
  %i.bg = icmp slt i32 %i.be, %i.bf
  br i1 %i.bg, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bh = load ptr, ptr %2, align 8
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

bb.v:                                             ; preds = %bb.t
  %i.bi = shl nsw i32 %i.bf, 1
  %i.bj = or disjoint i32 %i.bi, 1                ; 2 uses
  %i.bk = icmp sgt i32 %i.bf, -1
  br i1 %i.bk, label %bb.x, label %bb.w, !prof !6

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #21
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bl = zext nneg i32 %i.bj to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3                ; 3 uses
  %i.bn = load i64, ptr %i.v, align 8
  %i.bo = load i64, ptr %i.w, align 8             ; 2 uses
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ugt i64 %i.bm, %i.bp
  br i1 %i.bq, label %bb.y, label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i36, !prof !5

bb.y:                                             ; preds = %bb.x
  call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %1, i64 noundef %i.bm) #20
  %.pre.i.i.i.i.i.i38 = load i64, ptr %i.w, align 8
  br label %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i36

_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i36: ; preds = %bb.y, %bb.x
  %i.br = phi i64 [ %.pre.i.i.i.i.i.i38, %bb.y ], [ %i.bo, %bb.x ] ; 2 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 5 uses
  %i.bt = add i64 %i.br, %i.bm
  store i64 %i.bt, ptr %i.w, align 8
  %i.bu = load i32, ptr %i.a, align 4             ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %bb.z, label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37

bb.z:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i36
  %i.bw = load ptr, ptr %2, align 8               ; 3 uses
  switch i32 %i.bu, label %bb.ac [
    i32 2, label %bb.ab
    i32 1, label %bb.aa
  ]

bb.aa:                                            ; preds = %bb.z
  %i.bx = load i64, ptr %i.bw, align 1
  store i64 %i.bx, ptr %i.bs, align 1
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37

bb.ab:                                            ; preds = %bb.z
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bs, ptr noundef nonnull align 1 dereferenceable(16) %i.bw, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37

bb.ac:                                            ; preds = %bb.z
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = shl nuw nsw i64 %i.by, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 1 %i.bw, i64 %i.bz, i1 false)
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37: ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZN2v88internal4Zone13AllocateArrayINS0_14CharacterRangeEA_S3_EEPT_m.exit.i.i.i.i36
  store ptr %i.bs, ptr %2, align 8
  store i32 %i.bj, ptr %i.u, align 8
  %i.ca = load i32, ptr %i.a, align 4
  br label %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit

_ZN2v88internal8ZoneListINS0_14CharacterRangeEE3AddERKS2_PNS0_4ZoneE.exit: ; preds = %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37, %bb.u, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i, %bb.k
  %.sink74 = phi i32 [ %i.ca, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37 ], [ %i.be, %bb.u ], [ %i.bd, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ], [ %i.ah, %bb.k ] ; 2 uses
  %.sink71 = phi ptr [ %i.bs, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37 ], [ %i.bh, %bb.u ], [ %i.av, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ], [ %i.ak, %bb.k ]
  %.sroa.0.0.insert.insert.i35.sink = phi i64 [ %.sroa.0.0.insert.insert.i35, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i37 ], [ %.sroa.0.0.insert.insert.i35, %bb.u ], [ %.sroa.0.0.insert.insert.i, %_ZN2v88internal8ZoneListINS0_14CharacterRangeEE9ResizeAddERKS2_PNS0_4ZoneE.exit.i ], [ %.sroa.0.0.insert.insert.i, %bb.k ]
  %i.cb = add nsw i32 %.sink74, 1
  store i32 %i.cb, ptr %i.a, align 4
  %i.cc = sext i32 %.sink74 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %.sink71, i64 %i.cc
  store i64 %.sroa.0.0.insert.insert.i35.sink, ptr %i.cd, align 4
  %i.ce = add nuw nsw i32 %.047, 1                ; 2 uses
  %i.cf = call noundef i32 @_ZNK6icu_7810UnicodeSet13getRangeCountEv(ptr noundef nonnull align 8 dereferenceable(200) %4) #20
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %bb.i, label %._crit_edge50, !llvm.loop !62
}

declare noundef zeroext i1 @_ZN2v88internal30RangeContainsLatin1EquivalentsENS0_14CharacterRangeE(i64) local_unnamed_addr #2

declare void @_ZN6icu_7810UnicodeSetC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet9removeAllERKS0_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN2v88internal17RegExpCaseFolding9IgnoreSetEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal14CharacterRange11IsCanonicalEPKNS0_8ZoneListIS1_EE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %.critedge20, label %bb.b

end_hunk_0
