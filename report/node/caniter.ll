inline.NumInlined: 117
inline.NumDeleted: 38
begin_hunk_0_@_ZN6icu_7817CanonicalIterator7permuteERNS_13UnicodeStringEaPNS_9HashtableER10UErrorCodei:bb.a
bb.h:                                             ; preds = %bb.f
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %0) #10
  %i.r = load ptr, ptr %2, align 8
  %i.s = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %0) #10
  br label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.h, %bb.i
  %i.u = tail call noundef ptr @uhash_put_78(ptr noundef %i.r, ptr noundef %i.s, ptr noundef nonnull %i.p, ptr noundef nonnull align 4 dereferenceable(4) %3) #10 ; 0 uses
  br label %bb.u

bb.j:                                             ; preds = %bb.e
  %.pre = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store ptr null, ptr %5, align 8
  %i.v = icmp slt i32 %.pre, 1
  br i1 %i.v, label %bb.k, label %_ZN6icu_789HashtableD2Ev.exit

bb.k:                                             ; preds = %.thread, %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.x = call ptr @uhash_init_78(ptr noundef nonnull %i.w, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %3) #10 ; 0 uses
  %i.y = load i32, ptr %3, align 4
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.loopexit65, label %_ZN6icu_789HashtableC2ER10UErrorCode.exit

_ZN6icu_789HashtableC2ER10UErrorCode.exit:        ; preds = %bb.k
  store ptr %i.w, ptr %5, align 8
  %i.aa = call ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.w, ptr noundef nonnull @uprv_deleteUObject_78) #10 ; 0 uses
  %.pre70 = load i32, ptr %3, align 4
  %i.ab = icmp slt i32 %.pre70, 1
  br i1 %i.ab, label %bb.l, label %.loopexit65

bb.l:                                             ; preds = %_ZN6icu_789HashtableC2ER10UErrorCode.exit
  %i.ac = load ptr, ptr %5, align 8
  %i.ad = call noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.ac, ptr noundef nonnull @uprv_deleteUObject_78) #10 ; 0 uses
  %i.ae = load i16, ptr %i.e, align 8             ; 2 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = load i32, ptr %i.j, align 4
  %i.aj = select i1 %i.af, i32 %i.ai, i32 %i.ah
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph69, label %.loopexit65

.lr.ph69:                                         ; preds = %bb.l
  %i.al = icmp ne i8 %1, 0
  %i.am = add nsw i32 %4, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph69, %.loopexit
  %.04368 = phi i32 [ 0, %.lr.ph69 ], [ %i.bu, %.loopexit ] ; 4 uses
  %i.an = call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.04368) #10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %0) #10
  %i.ao = icmp ne i32 %.04368, 0
  %or.cond = and i1 %i.al, %i.ao
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = call zeroext i8 @u_getCombiningClass_78(i32 noundef %i.an) #10
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = load ptr, ptr %5, align 8
  call void @uhash_removeAll_78(ptr noundef %i.ar) #10
  %i.as = icmp ult i32 %i.an, 65536
  %i.at = select i1 %i.as, i32 1, i32 2
  %i.au = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef %.04368, i32 noundef %i.at, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  call void @_ZN6icu_7817CanonicalIterator7permuteERNS_13UnicodeStringEaPNS_9HashtableER10UErrorCodei(ptr noundef nonnull align 8 dereferenceable(64) %i.au, i8 noundef signext %1, ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef %i.am)
  %i.av = load i32, ptr %3, align 4
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.p, label %.thread63

bb.p:                                             ; preds = %bb.o
  %i.ax = load ptr, ptr %5, align 8
  %i.ay = call noundef ptr @uhash_nextElement_78(ptr noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #10 ; 2 uses
  %.not5366 = icmp eq ptr %i.ay, null
  br i1 %.not5366, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %bb.s
  %.04467 = phi ptr [ %i.br, %bb.s ], [ %i.ay, %bb.p ]
  %i.az = getelementptr inbounds nuw i8, ptr %.04467, i64 8
  %i.ba = load ptr, ptr %i.az, align 8            ; 3 uses
  %i.bb = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 5 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %.thread60, label %bb.q

.thread60:                                        ; preds = %.lr.ph
  store i32 7, ptr %3, align 4
  br label %.thread63

bb.q:                                             ; preds = %.lr.ph
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, i32 noundef %i.an) #10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load i16, ptr %i.bd, align 8            ; 2 uses
  %i.bf = icmp slt i16 %i.be, 0
  %i.bg = ashr i16 %i.be, 5
  %i.bh = sext i16 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bj = load i32, ptr %i.bi, align 4
  %i.bk = select i1 %i.bf, i32 %i.bj, i32 %i.bh
  %i.bl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.ba, i32 noundef 0, i32 noundef %i.bk) #10 ; 0 uses
  %i.bm = load ptr, ptr %2, align 8
  %i.bn = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bn, ptr noundef nonnull align 8 dereferenceable(64) %i.bb) #10
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bp = call noundef ptr @uhash_put_78(ptr noundef %i.bm, ptr noundef %i.bn, ptr noundef nonnull %i.bb, ptr noundef nonnull align 4 dereferenceable(4) %3) #10 ; 0 uses
  %i.bq = load ptr, ptr %5, align 8
  %i.br = call noundef ptr @uhash_nextElement_78(ptr noundef %i.bq, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #10 ; 2 uses
  %.not53 = icmp eq ptr %i.br, null
  br i1 %.not53, label %.loopexit, label %.lr.ph, !llvm.loop !20

.thread63:                                        ; preds = %bb.o, %.thread60
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit65

.loopexit:                                        ; preds = %bb.s, %bb.n, %bb.p
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.bs = icmp ult i32 %i.an, 65536
  %i.bt = select i1 %i.bs, i32 1, i32 2
  %i.bu = add nuw nsw i32 %i.bt, %.04368          ; 2 uses
  %i.bv = load i16, ptr %i.e, align 8             ; 2 uses
  %i.bw = icmp slt i16 %i.bv, 0
  %i.bx = ashr i16 %i.bv, 5
  %i.by = sext i16 %i.bx to i32
  %i.bz = load i32, ptr %i.j, align 4
  %i.ca = select i1 %i.bw, i32 %i.bz, i32 %i.by
  %i.cb = icmp slt i32 %i.bu, %i.ca
  br i1 %i.cb, label %bb.m, label %.loopexit65, !llvm.loop !21

.loopexit65:                                      ; preds = %.loopexit, %bb.k, %bb.l, %.thread63, %_ZN6icu_789HashtableC2ER10UErrorCode.exit
  %.pr = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN6icu_789HashtableD2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.loopexit65
  call void @uhash_close_78(ptr noundef nonnull %.pr) #10
  br label %_ZN6icu_789HashtableD2Ev.exit

_ZN6icu_789HashtableD2Ev.exit:                    ; preds = %bb.j, %.loopexit65, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.g, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, %_ZN6icu_789HashtableD2Ev.exit, %bb.a
  ret void
}

declare noundef i32 @_ZNK6icu_7813UnicodeString11countChar32Eii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = tail call ptr @uhash_put_78(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %2, ptr noundef nonnull %3) #10
  ret ptr %i.d
}

declare void @uprv_deleteUObject_78(ptr noundef) #2

declare zeroext i8 @u_getCombiningClass_78(i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString7extractENS_9Char16PtrEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7817CanonicalIterator15getEquivalents2EPNS_9HashtableEPKDsiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef readonly captures(ret: address, provenance) %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeSet", align 8 ; 6 uses
  %7 = alloca %"class.icu_78::UnicodeSetIterator", align 8 ; 9 uses
  %8 = alloca %"class.icu_78::Hashtable", align 8 ; 10 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.ad

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %2, i32 noundef %3) #10
  %i.d = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %5) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8
  %i.g = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %5) #10
  br label %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit

_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit: ; preds = %bb.d, %bb.e
  %i.i = call noundef ptr @uhash_put_78(ptr noundef %i.f, ptr noundef %i.g, ptr noundef %i.d, ptr noundef nonnull align 4 dereferenceable(4) %4) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %6) #10
  %.not7896 = icmp sgt i32 %3, 0
  br i1 %.not7896, label %.lr.ph99, label %.critedge

.lr.ph99:                                         ; preds = %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph99, %bb.ab
  %.05997 = phi i32 [ 0, %.lr.ph99 ], [ %i.ce, %bb.ab ] ; 6 uses
  %i.o = zext nneg i32 %.05997 to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.o ; 2 uses
  %i.q = load i16, ptr %i.p, align 2
  %i.r = zext i16 %i.q to i32                     ; 9 uses
  %i.s = and i32 %i.r, 63488
  %i.t = icmp eq i32 %i.s, 55296
  br i1 %i.t, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %i.r, 1024
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.w = add nuw nsw i32 %.05997, 1               ; 2 uses
  %.not72 = icmp eq i32 %i.w, %3
  br i1 %.not72, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32                    ; 2 uses
  %i.ab = and i32 %i.aa, 64512
  %i.ac = icmp eq i32 %i.ab, 56320
  br i1 %i.ac, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ad = shl nuw nsw i32 %i.r, 10
  %i.ae = add nsw i32 %i.ad, -56613888
  %i.af = add nuw nsw i32 %i.ae, %i.aa
  br label %bb.n

bb.k:                                             ; preds = %bb.g
  %.not71 = icmp eq i32 %.05997, 0
  br i1 %.not71, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.p, i64 -2
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = and i32 %i.ai, 64512
  %i.ak = icmp eq i32 %i.aj, 55296
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.al = shl nuw nsw i32 %i.ai, 10
  %i.am = add nuw nsw i32 %i.r, -56613888
  %i.an = add nsw i32 %i.am, %i.al
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.m, %bb.l, %bb.k, %bb.f
  %.156 = phi i32 [ %i.r, %bb.f ], [ %i.af, %bb.j ], [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %i.an, %bb.m ], [ %i.r, %bb.l ], [ %i.r, %bb.k ] ; 2 uses
  %i.ao = load ptr, ptr %i.j, align 8
  %i.ap = call noundef signext i8 @_ZNK6icu_7815Normalizer2Impl16getCanonStartSetEiRNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(80) %i.ao, i32 noundef %.156, ptr noundef nonnull align 8 dereferenceable(200) %6) #10
  %.not73 = icmp eq i8 %i.ap, 0
  br i1 %.not73, label %bb.ab, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN6icu_7818UnicodeSetIteratorC1ERKNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(200) %6) #10
  %i.aq = call noundef signext i8 @_ZN6icu_7818UnicodeSetIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #10
  %.not7493 = icmp eq i8 %i.aq, 0
  br i1 %.not7493, label %.thread88, label %.lr.ph95

.thread88:                                        ; preds = %.backedge, %bb.o
  call void @_ZN6icu_7818UnicodeSetIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ab

.lr.ph95:                                         ; preds = %bb.o, %.backedge
  %i.ar = load i32, ptr %i.k, align 8             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store ptr null, ptr %8, align 8
  %i.as = load i32, ptr %4, align 4
  %i.at = icmp slt i32 %i.as, 1
  br i1 %i.at, label %bb.p, label %_ZN6icu_789HashtableC2ER10UErrorCode.exit

bb.p:                                             ; preds = %.lr.ph95
  %i.au = call ptr @uhash_init_78(ptr noundef nonnull %i.l, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %4) #10 ; 0 uses
  %i.av = load i32, ptr %4, align 4
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %_ZN6icu_789HashtableC2ER10UErrorCode.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.l, ptr %8, align 8
  %i.ax = call ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.l, ptr noundef nonnull @uprv_deleteUObject_78) #10 ; 0 uses
  br label %_ZN6icu_789HashtableC2ER10UErrorCode.exit

_ZN6icu_789HashtableC2ER10UErrorCode.exit:        ; preds = %.lr.ph95, %bb.p, %bb.q
  %i.ay = load ptr, ptr %8, align 8
  %i.az = call noundef ptr @uhash_setValueDeleter_78(ptr noundef %i.ay, ptr noundef nonnull @uprv_deleteUObject_78) #10 ; 0 uses
  %i.ba = call noundef ptr @_ZN6icu_7817CanonicalIterator7extractEPNS_9HashtableEiPKDsiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %8, i32 noundef %i.ar, ptr noundef %2, i32 noundef %3, i32 noundef %.05997, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN6icu_789HashtableC2ER10UErrorCode.exit
  %i.bc = load i32, ptr %4, align 4
  %i.bd = icmp slt i32 %i.bc, 1
  %. = select i1 %i.bd, i32 7, i32 1
  br label %bb.y, !llvm.loop !22

bb.s:                                             ; preds = %_ZN6icu_789HashtableC2ER10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %9, ptr noundef %2, i32 noundef %.05997) #10
  %i.be = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef %i.ar) #10 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  %i.bf = load ptr, ptr %8, align 8
  %i.bg = call noundef ptr @uhash_nextElement_78(ptr noundef %i.bf, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #10 ; 2 uses
  %.not7591 = icmp eq ptr %i.bg, null
  br i1 %.not7591, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.v
  %.05792 = phi ptr [ %i.bx, %bb.v ], [ %i.bg, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.bh = getelementptr inbounds nuw i8, ptr %.05792, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %i.bi) #10
  %i.bj = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 5 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.thread85, label %bb.t

.thread85:                                        ; preds = %.lr.ph
  store i32 7, ptr %4, align 4
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.x

bb.t:                                             ; preds = %.lr.ph
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %9) #10
  %i.bl = load i16, ptr %i.m, align 8             ; 2 uses
  %i.bm = icmp slt i16 %i.bl, 0
  %i.bn = ashr i16 %i.bl, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.n, align 4
  %i.bq = select i1 %i.bm, i32 %i.bp, i32 %i.bo
  %i.br = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %i.bj, ptr noundef nonnull align 8 dereferenceable(64) %10, i32 noundef 0, i32 noundef %i.bq) #10 ; 0 uses
  %i.bs = load ptr, ptr %1, align 8
  %i.bt = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #10 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 8 dereferenceable(64) %i.bj) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bv = call noundef ptr @uhash_put_78(ptr noundef %i.bs, ptr noundef %i.bt, ptr noundef nonnull %i.bj, ptr noundef nonnull align 4 dereferenceable(4) %4) #10 ; 0 uses
  %i.bw = load ptr, ptr %8, align 8
  %i.bx = call noundef ptr @uhash_nextElement_78(ptr noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #10 ; 2 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %10) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  %.not75 = icmp eq ptr %i.bx, null
  br i1 %.not75, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.v, %bb.s
  %i.by = load ptr, ptr %1, align 8
  %i.bz = call noundef i32 @uhash_count_78(ptr noundef %i.by) #10
  %i.ca = icmp sgt i32 %i.bz, 4096
  br i1 %i.ca, label %bb.w, label %bb.x

bb.w:                                             ; preds = %._crit_edge
  store i32 16, ptr %4, align 4
  br label %bb.x

bb.x:                                             ; preds = %.thread85, %bb.w, %._crit_edge
  %.262 = phi i32 [ 1, %.thread85 ], [ 1, %bb.w ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %9) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %bb.x
  %.363 = phi i32 [ %., %bb.r ], [ %.262, %bb.x ]
  %i.cb = load ptr, ptr %8, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.cb, null
  br i1 %.not.i, label %_ZN6icu_789HashtableD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @uhash_close_78(ptr noundef nonnull %i.cb) #10
  br label %_ZN6icu_789HashtableD2Ev.exit

_ZN6icu_789HashtableD2Ev.exit:                    ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  switch i32 %.363, label %bb.aa [
    i32 0, label %.backedge
    i32 7, label %.backedge
  ]

.backedge:                                        ; preds = %_ZN6icu_789HashtableD2Ev.exit, %_ZN6icu_789HashtableD2Ev.exit
  %11 = call noundef signext i8 @_ZN6icu_7818UnicodeSetIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(64) %7) #10
  %.not74 = icmp eq i8 %11, 0
  br i1 %.not74, label %.thread88, label %.lr.ph95, !llvm.loop !22

bb.aa:                                            ; preds = %_ZN6icu_789HashtableD2Ev.exit
  call void @_ZN6icu_7818UnicodeSetIteratorD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.ac

bb.ab:                                            ; preds = %.thread88, %bb.n
  %i.cc = icmp ult i32 %.156, 65536
  %i.cd = select i1 %i.cc, i32 1, i32 2
  %i.ce = add nuw nsw i32 %i.cd, %.05997          ; 2 uses
  %.not78 = icmp slt i32 %i.ce, %3
  br i1 %.not78, label %bb.f, label %.critedge, !llvm.loop !24

.critedge:                                        ; preds = %bb.ab, %_ZN6icu_789Hashtable3putERKNS_13UnicodeStringEPvR10UErrorCode.exit
  %i.cf = load i32, ptr %4, align 4
  %i.cg = icmp slt i32 %i.cf, 1
  %.80 = select i1 %i.cg, ptr %1, ptr null
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %.critedge
  %.10 = phi ptr [ %.80, %.critedge ], [ null, %bb.aa ]
  call void @_ZN6icu_7810UnicodeSetD1Ev(ptr noundef nonnull align 8 dereferenceable(200) %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.ad

bb.ad:                                            ; preds = %bb.a, %bb.ac
  %.11 = phi ptr [ %.10, %bb.ac ], [ null, %bb.a ]
  ret ptr %.11
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1EPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) unnamed_addr #2

declare void @_ZN6icu_7810UnicodeSetC1Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7815Normalizer2Impl16getCanonStartSetEiRNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef, ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #2

declare void @_ZN6icu_7818UnicodeSetIteratorC1ERKNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7818UnicodeSetIterator4nextEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7817CanonicalIterator7extractEPNS_9HashtableEiPKDsiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 align 2 {
bb.a:
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %11 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = load i32, ptr %6, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.aa

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @_ZN6icu_7813UnicodeStringC1Ei(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %2) #10
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i16 2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6) #10 ; 0 uses
  %i.r = load i32, ptr %6, align 4
  %i.s = icmp slt i32 %i.r, 1
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.t = load i16, ptr %i.k, align 8              ; 5 uses
  %i.u = and i16 %i.t, 1
  %.not89 = icmp eq i16 %i.u, 0
  br i1 %.not89, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %6, align 4
  br label %.critedge

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %bb.c
  %i.v = and i16 %i.t, 16
  %.not.i = icmp eq i16 %i.v, 0
  call void @llvm.assume(i1 %.not.i)
  %i.w = and i16 %i.t, 2
  %.not2.i = icmp eq i16 %i.w, 0                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 10
  %.0.i = select i1 %.not2.i, ptr %i.y, ptr %i.z  ; 3 uses
  %i.aa = icmp slt i16 %i.t, 0
  %i.ab = ashr i16 %i.t, 5
  %i.ac = sext i16 %i.ab to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = select i1 %i.aa, i32 %i.ae, i32 %i.ac   ; 3 uses
  %i.ag = load i16, ptr %.0.i, align 2
  %i.ah = zext i16 %i.ag to i32                   ; 4 uses
  %i.ai = and i32 %i.ah, 64512
  %i.aj = icmp ne i32 %i.ai, 55296
  %.not90 = icmp eq i32 %i.af, 1
  %or.cond = or i1 %.not90, %i.aj
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %.sroa.gep109 = getelementptr inbounds nuw i8, ptr %8, i64 12
  %.0.i.sroa.sel = select i1 %.not2.i, ptr %.sroa.gep, ptr %.sroa.gep109
  %i.ak = load i16, ptr %.0.i.sroa.sel, align 2
  %i.al = zext i16 %i.ak to i32                   ; 2 uses
  %i.am = and i32 %i.al, 64512
  %i.an = icmp eq i32 %i.am, 56320
  br i1 %i.an, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ao = shl nuw nsw i32 %i.ah, 10
  %i.ap = add nsw i32 %i.ao, -56613888
  %i.aq = add nuw nsw i32 %i.ap, %i.al
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %.174 = phi i32 [ 1, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ], [ 2, %bb.f ], [ 1, %bb.e ]
  %.170 = phi i32 [ %i.ah, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ], [ %i.aq, %bb.f ], [ %i.ah, %bb.e ]
  %.not94104 = icmp slt i32 %5, %4
  br i1 %.not94104, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.g, %bb.p
  %.065107 = phi i32 [ %.267, %bb.p ], [ %5, %bb.g ] ; 3 uses
  %.271106 = phi i32 [ %.4, %bb.p ], [ %.170, %bb.g ] ; 2 uses
  %.275105 = phi i32 [ %.477, %bb.p ], [ %.174, %bb.g ] ; 5 uses
  %i.ar = add nsw i32 %.065107, 1                 ; 4 uses
  %i.as = sext i32 %.065107 to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %3, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32                   ; 4 uses
  %i.aw = and i32 %i.av, 64512
  %i.ax = icmp ne i32 %i.aw, 55296
  %.not91 = icmp eq i32 %i.ar, %4
  %or.cond96 = select i1 %i.ax, i1 true, i1 %.not91
  br i1 %or.cond96, label %bb.j, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ay = sext i32 %i.ar to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2
  %i.bb = zext i16 %i.ba to i32                   ; 2 uses
  %i.bc = and i32 %i.bb, 64512
  %i.bd = icmp eq i32 %i.bc, 56320
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = add nsw i32 %.065107, 2
  %i.bf = shl nuw nsw i32 %i.av, 10
  %i.bg = add nsw i32 %i.bf, -56613888
  %i.bh = add nuw nsw i32 %i.bg, %i.bb
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %.lr.ph
  %.179 = phi i32 [ %i.av, %.lr.ph ], [ %i.bh, %bb.i ], [ %i.av, %bb.h ] ; 2 uses
  %.267 = phi i32 [ %i.ar, %.lr.ph ], [ %i.be, %bb.i ], [ %i.ar, %bb.h ] ; 4 uses
  %i.bi = icmp eq i32 %.179, %.271106
  br i1 %i.bi, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bj = icmp eq i32 %.275105, %i.af
  br i1 %i.bj, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = add nsw i32 %.275105, 1                 ; 4 uses
  %i.bl = sext i32 %.275105 to i64
  %i.bm = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.bl
  %i.bn = load i16, ptr %i.bm, align 2
  %i.bo = zext i16 %i.bn to i32                   ; 4 uses
  %i.bp = and i32 %i.bo, 64512
  %i.bq = icmp ne i32 %i.bp, 55296
  %.not92 = icmp eq i32 %i.bk, %i.af
  %or.cond97 = select i1 %i.bq, i1 true, i1 %.not92
  br i1 %or.cond97, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = sext i32 %i.bk to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %.0.i, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2
  %i.bu = zext i16 %i.bt to i32                   ; 2 uses
  %i.bv = and i32 %i.bu, 64512
  %i.bw = icmp eq i32 %i.bv, 56320
  br i1 %i.bw, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bx = add nsw i32 %.275105, 2
  %i.by = shl nuw nsw i32 %i.bo, 10
  %i.bz = add nsw i32 %i.by, -56613888
  %i.ca = add nuw nsw i32 %i.bz, %i.bu
  br label %bb.p

bb.o:                                             ; preds = %bb.j
  %i.cb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef %.179) #10 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.l, %bb.o
  %.477 = phi i32 [ %.275105, %bb.o ], [ %i.bk, %bb.l ], [ %i.bx, %bb.n ], [ %i.bk, %bb.m ]
  %.4 = phi i32 [ %.271106, %bb.o ], [ %i.bo, %bb.l ], [ %i.ca, %bb.n ], [ %i.bo, %bb.m ]
  %.not94 = icmp slt i32 %.267, %4
  br i1 %.not94, label %.lr.ph, label %.critedge, !llvm.loop !25

bb.q:                                             ; preds = %bb.k
  %i.cc = sext i32 %.267 to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %3, i64 %i.cc ; 2 uses
  %i.ce = sub nsw i32 %4, %.267
  %i.cf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.cd, i32 noundef 0, i32 noundef %i.ce) #10 ; 0 uses
end_hunk_0
