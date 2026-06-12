inline.NumInlined: 78
inline.NumDeleted: 32
begin_hunk_0_@_ZN6icu_7816BytesTrieBuilderD0Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN6icu_7816BytesTrieBuilderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.h) #14, !inline_history !5
  br label %_ZN6icu_7816BytesTrieBuilderD2Ev.exit

_ZN6icu_7816BytesTrieBuilderD2Ev.exit:            ; preds = %bb.d, %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @uprv_free_78(ptr noundef %i.k) #14, !inline_history !5
  tail call void @_ZN6icu_7817StringTrieBuilderD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #14, !inline_history !5
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN6icu_7816BytesTrieBuilder3addENS_11StringPieceEiR10UErrorCode(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(56) %0, ptr %1, i32 %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7816BytesTrieElement5setToENS_11StringPieceEiRNS_10CharStringER10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 30, ptr %4, align 4
  br label %_ZN6icu_7816BytesTrieElement5setToENS_11StringPieceEiRNS_10CharStringER10UErrorCode.exit

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4              ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.k = icmp eq i32 %i.g, 0
  %i.l = shl nsw i32 %i.g, 2
  %.014 = select i1 %i.k, i32 1024, i32 %i.l      ; 3 uses
  %i.m = sext i32 %.014 to i64
  %i.n = icmp slt i32 %.014, 0
  %i.o = shl nsw i64 %i.m, 3
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = tail call noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef %i.p) #14 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.f, align 4              ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = zext nneg i32 %i.s to i64
  %i.x = shl nuw nsw i64 %i.w, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %i.x, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6icu_787UMemorydaEPv(ptr noundef nonnull %i.z) #14
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.i
  store ptr %i.q, ptr %i.y, align 8
  store i32 %.014, ptr %i.h, align 8
  %.pre19 = load i32, ptr %i.f, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  store i32 7, ptr %4, align 4
  br label %_ZN6icu_7816BytesTrieElement5setToENS_11StringPieceEiRNS_10CharStringER10UErrorCode.exit

bb.k:                                             ; preds = %._crit_edge, %.thread
  %i.ab = phi i32 [ %i.g, %._crit_edge ], [ %.pre19, %.thread ] ; 2 uses
  %i.ac = phi ptr [ %.pre, %._crit_edge ], [ %i.q, %.thread ]
  %i.ad = add nsw i32 %i.ab, 1
  store i32 %i.ad, ptr %i.f, align 4
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8            ; 4 uses
  %i.ai = load i32, ptr %4, align 4
  %i.aj = icmp slt i32 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %_ZN6icu_7816BytesTrieElement5setToENS_11StringPieceEiRNS_10CharStringER10UErrorCode.exit

bb.l:                                             ; preds = %bb.k
  %i.ak = icmp sgt i32 %2, 65535
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 8, ptr %4, align 4
  br label %_ZN6icu_7816BytesTrieElement5setToENS_11StringPieceEiRNS_10CharStringER10UErrorCode.exit

bb.n:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.am = load i32, ptr %i.al, align 8            ; 2 uses
  %i.an = icmp sgt i32 %2, 255
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ao = xor i32 %i.am, -1
  %i.ap = lshr i32 %2, 8
  %i.aq = trunc nuw i32 %i.ap to i8
  %i.ar = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ah, i8 noundef signext %i.aq, ptr noundef nonnull align 4 dereferenceable(4) %4) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i = phi i32 [ %i.ao, %bb.o ], [ %i.am, %bb.n ]
  %i.as = trunc i32 %2 to i8
  %i.at = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ah, i8 noundef signext %i.as, ptr noundef nonnull align 4 dereferenceable(4) %4) #14 ; 0 uses
  store i32 %.0.i, ptr %i.af, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %3, ptr %i.au, align 4
  %i.av = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %i.ah, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #14 ; 0 uses
  br label %_ZN6icu_7816BytesTrieElement5setToENS_11StringPieceEiRNS_10CharStringER10UErrorCode.exit

_ZN6icu_7816BytesTrieElement5setToENS_11StringPieceEiRNS_10CharStringER10UErrorCode.exit: ; preds = %bb.p, %bb.m, %bb.k, %bb.j, %bb.a, %bb.c
  ret ptr %0
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynaEm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7816BytesTrieBuilder5buildE22UStringTrieBuildOptionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_7816BytesTrieBuilder10buildBytesE22UStringTrieBuildOptionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 32) #14 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4
  %i.k = sub nsw i32 %i.h, %i.j
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 %i.l ; 2 uses
  store ptr %i.f, ptr %i.c, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 -1, ptr %i.p, align 8
  store ptr null, ptr %i.e, align 8
  store i32 0, ptr %i.g, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.c ], [ %i.c, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7816BytesTrieBuilder10buildBytesE22UStringTrieBuildOptionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::StringPiece", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::StringPiece", align 8 ; 7 uses
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not27 = icmp ne ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  %or.cond = select i1 %.not27, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 8, ptr %2, align 4
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @uprv_sortArray_78(ptr noundef %i.m, i32 noundef %i.j, i32 noundef 8, ptr noundef nonnull @_ZN6icu_78L21compareElementStringsEPKvS1_S1_, ptr noundef %i.o, i8 noundef signext 0, ptr noundef nonnull %2) #14
  %i.p = load i32, ptr %2, align 4
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.r = load ptr, ptr %i.l, align 8
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = load i32, ptr %i.r, align 4              ; 6 uses
  %i.u = icmp sgt i32 %i.t, -1
  %i.v = load ptr, ptr %i.s, align 8              ; 4 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw nsw i32 %i.t, 1
  %i.x = zext nneg i32 %i.t to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  br label %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = xor i32 %i.t, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 8
  %i.ah = sub nsw i32 0, %i.t
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i32
  %i.am = or disjoint i32 %i.ag, %i.al
  %i.an = sub nsw i32 1, %i.t
  br label %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit

_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit: ; preds = %bb.h, %bb.i
  %.012.i = phi i32 [ %i.w, %bb.h ], [ %i.an, %bb.i ]
  %.0.i = phi i32 [ %i.aa, %bb.h ], [ %i.am, %bb.i ]
  %i.ao = zext nneg i32 %.012.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ao
  store ptr %i.ap, ptr %3, align 8
  %.sroa.215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %.0.i, ptr %.sroa.215.0..sroa_idx, align 8
  %i.aq = load i32, ptr %i.i, align 4
  %.not3039 = icmp sgt i32 %i.aq, 1
  br i1 %.not3039, label %.lr.ph, label %.thread38

.lr.ph:                                           ; preds = %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.j

.thread38:                                        ; preds = %bb.m, %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.o

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.ar = load ptr, ptr %i.l, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.n, align 8
  %i.au = load i32, ptr %i.as, align 4            ; 6 uses
  %i.av = icmp sgt i32 %i.au, -1
  %i.aw = load ptr, ptr %i.at, align 8            ; 4 uses
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ax = add nuw nsw i32 %i.au, 1
  %i.ay = zext nneg i32 %i.au to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  br label %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit37

bb.l:                                             ; preds = %bb.j
  %i.bc = xor i32 %i.au, -1
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = zext i8 %i.bf to i32
  %i.bh = shl nuw nsw i32 %i.bg, 8
  %i.bi = sub nsw i32 0, %i.au
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = or disjoint i32 %i.bh, %i.bm
  %i.bo = sub nsw i32 1, %i.au
  br label %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit37

_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit37: ; preds = %bb.k, %bb.l
  %.012.i33 = phi i32 [ %i.ax, %bb.k ], [ %i.bo, %bb.l ]
  %.0.i34 = phi i32 [ %i.bb, %bb.k ], [ %i.bn, %bb.l ]
  %i.bp = zext nneg i32 %.012.i33 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.bp
  store ptr %i.bq, ptr %4, align 8
  store i32 %.0.i34, ptr %.sroa.2.0..sroa_idx, align 8
  %i.br = call noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4) #14
  %.not29 = icmp eq i8 %i.br, 0
  br i1 %.not29, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %3, ptr noundef nonnull align 8 dereferenceable(12) %4, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bs = load i32, ptr %i.i, align 4
  %i.bt = sext i32 %i.bs to i64
  %.not30 = icmp slt i64 %indvars.iv.next, %i.bt
  br i1 %.not30, label %bb.j, label %.thread38, !llvm.loop !6

bb.n:                                             ; preds = %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit37
  store i32 1, ptr %2, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %bb.u

bb.o:                                             ; preds = %.thread38, %bb.c
  store i32 0, ptr %i.e, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.bx = load i32, ptr %i.bw, align 8
  %spec.store.select2 = call i32 @llvm.smax.i32(i32 %i.bx, i32 1024) ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = icmp slt i32 %i.bz, %spec.store.select2
  br i1 %i.ca, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.cb = load ptr, ptr %i.c, align 8
  call void @uprv_free_78(ptr noundef %i.cb) #14
  %i.cc = zext nneg i32 %spec.store.select2 to i64
  %i.cd = call noalias ptr @uprv_malloc_78(i64 noundef %i.cc) #16 ; 2 uses
  store ptr %i.cd, ptr %i.c, align 8
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 7, ptr %2, align 4
  store i32 0, ptr %i.by, align 8
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  store i32 %spec.store.select2, ptr %i.by, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.cg = load i32, ptr %i.cf, align 4
  call void @_ZN6icu_7817StringTrieBuilder5buildE22UStringTrieBuildOptioniR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %2) #14
  %i.ch = load ptr, ptr %i.c, align 8
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 7, ptr %2, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %bb.q, %bb.t, %bb.s, %bb.b, %bb.f, %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local { ptr, i32 } @_ZN6icu_7816BytesTrieBuilder16buildStringPieceE22UStringTrieBuildOptionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6icu_7816BytesTrieBuilder10buildBytesE22UStringTrieBuildOptionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.d, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.3.0 = phi i32 [ 0, %bb.a ], [ %i.h, %bb.b ]
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.k, %bb.b ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.3.0, 1
  ret { ptr, i32 } %.fca.1.insert
}

declare void @uprv_sortArray_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @_ZN6icu_78L21compareElementStringsEPKvS1_S1_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = load i32, ptr %1, align 4                ; 6 uses
  %i.b = icmp sgt i32 %i.a, -1
  %i.c = load ptr, ptr %0, align 8                ; 8 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw nsw i32 %i.a, 1
  %i.e = zext nneg i32 %i.a to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1
  %i.h = zext i8 %i.g to i32
  br label %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit.i

bb.c:                                             ; preds = %bb.a
  %i.i = xor i32 %i.a, -1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 8
  %i.o = sub nsw i32 0, %i.a
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = or disjoint i32 %i.n, %i.s
  %i.u = sub nsw i32 1, %i.a
  br label %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit.i

_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit.i: ; preds = %bb.c, %bb.b
  %.012.i.i = phi i32 [ %i.d, %bb.b ], [ %i.u, %bb.c ]
  %.0.i.i = phi i32 [ %i.h, %bb.b ], [ %i.t, %bb.c ] ; 2 uses
  %i.v = load i32, ptr %2, align 4                ; 6 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit.i
  %i.x = add nuw nsw i32 %i.v, 1
  %i.y = zext nneg i32 %i.v to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = zext i8 %i.aa to i32
  br label %_ZNK6icu_7816BytesTrieElement15compareStringToERKS0_RKNS_10CharStringE.exit

bb.e:                                             ; preds = %_ZNK6icu_7816BytesTrieElement9getStringERKNS_10CharStringE.exit.i
  %i.ac = xor i32 %i.v, -1
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw nsw i32 %i.ag, 8
  %i.ai = sub nsw i32 0, %i.v
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1
  %i.am = zext i8 %i.al to i32
  %i.an = or disjoint i32 %i.ah, %i.am
  %i.ao = sub nsw i32 1, %i.v
  br label %_ZNK6icu_7816BytesTrieElement15compareStringToERKS0_RKNS_10CharStringE.exit

_ZNK6icu_7816BytesTrieElement15compareStringToERKS0_RKNS_10CharStringE.exit: ; preds = %bb.d, %bb.e
  %.012.i12.i = phi i32 [ %i.x, %bb.d ], [ %i.ao, %bb.e ]
  %.0.i13.i = phi i32 [ %i.ab, %bb.d ], [ %i.an, %bb.e ] ; 2 uses
  %i.ap = zext nneg i32 %.012.i.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ap
  %i.ar = zext nneg i32 %.012.i12.i to i64
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ar
  %i.at = sub nsw i32 %.0.i.i, %.0.i13.i          ; 2 uses
  %i.au = icmp slt i32 %i.at, 1
  %spec.select.i = select i1 %i.au, i32 %.0.i.i, i32 %.0.i13.i
  %i.av = zext nneg i32 %spec.select.i to i64
  %i.aw = tail call i32 @memcmp(ptr noundef nonnull %i.aq, ptr noundef %i.as, i64 noundef %i.av) #15 ; 2 uses
  %.not.i = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not.i, i32 %i.at, i32 %i.aw
  ret i32 %i.ax
}

declare noundef signext i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #6

declare void @_ZN6icu_7817StringTrieBuilder5buildE22UStringTrieBuildOptioniR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(56) ptr @_ZN6icu_7816BytesTrieBuilder5clearEv(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(56) initializes((36, 40), (52, 56)) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 0, ptr %i.c, align 8
  %i.d = load ptr, ptr %i.b, align 8
  store i8 0, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.f, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZNK6icu_7816BytesTrieBuilder22getElementStringLengthEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = load i32, ptr %i.d, align 4              ; 4 uses
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = zext nneg i32 %i.g to i64
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32
  br label %_ZNK6icu_7816BytesTrieElement15getStringLengthERKNS_10CharStringE.exit

bb.c:                                             ; preds = %bb.a
  %i.n = xor i32 %i.g, -1
  %i.o = zext nneg i32 %i.n to i64
  %i.p = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i32
  %i.t = shl nuw nsw i32 %i.s, 8
  %i.u = sub nsw i32 0, %i.g
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i32
  %i.z = or disjoint i32 %i.t, %i.y
  br label %_ZNK6icu_7816BytesTrieElement15getStringLengthERKNS_10CharStringE.exit

_ZNK6icu_7816BytesTrieElement15getStringLengthERKNS_10CharStringE.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.m, %bb.b ], [ %i.z, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext range(i16 0, 256) i16 @_ZNK6icu_7816BytesTrieBuilder14getElementUnitEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = load i32, ptr %i.d, align 4
  %.0.p.i.i = tail call i32 @llvm.abs.i32(i32 %i.g, i1 false)
  %.0.i.i = add nuw i32 %.0.p.i.i, 1
  %i.h = load ptr, ptr %i.f, align 8
  %i.i = zext nneg i32 %.0.i.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i16
  ret i16 %i.n
}

end_hunk_0
