inline.NumInlined: 336
inline.NumDeleted: 89
begin_hunk_0_@_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode:bb.a
  store i32 %i.m, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.n, align 4
  %i.o = icmp ne ptr %i.c, null
  %i.p = load i32, ptr %3, align 4
  %i.q = icmp sgt i32 %i.p, 0
  %or.cond = select i1 %i.o, i1 true, i1 %i.q
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7816ReorderingBuffer4initEiR10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(64) initializes((16, 24)) %0, i32 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.f = load i32, ptr %i.e, align 4
  %i.g = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef %1) #11 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.h, align 8
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 7, ptr %2, align 4
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.j = icmp slt i16 %i.d, 0
  %i.k = ashr i16 %i.d, 5
  %i.l = sext i16 %i.k to i32
  %i.m = select i1 %i.j, i32 %i.f, i32 %i.l       ; 3 uses
  %i.n = sext i32 %i.m to i64
  %.idx = shl nsw i64 %i.n, 1
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %.idx ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.o, ptr %i.p, align 8
  %i.q = load ptr, ptr %i.a, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i16, ptr %i.r, align 8
  %i.t = and i16 %i.s, 2
  %.not.i = icmp eq i16 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load i32, ptr %i.u, align 8
  %i.w = select i1 %.not.i, i32 %i.v, i32 27
  %i.x = sub nsw i32 %i.w, %i.m
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.g, ptr %i.z, align 8
  %i.aa = icmp eq i32 %i.m, 0
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %i.ab, align 4
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.o, ptr %i.ac, align 8
  %i.ad = tail call noundef zeroext i8 @_ZN6icu_7816ReorderingBuffer10previousCCEv(ptr noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.ad, ptr %i.ae, align 4
  %i.af = icmp ugt i8 %i.ad, 1
  br i1 %i.af, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.e, %.preheader
  %i.ag = tail call noundef zeroext i8 @_ZN6icu_7816ReorderingBuffer10previousCCEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.ah = icmp ugt i8 %i.ag, 1
  br i1 %i.ah, label %.preheader, label %.loopexit, !llvm.loop !7

.loopexit:                                        ; preds = %.preheader, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8
  store ptr %i.aj, ptr %i.z, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %.loopexit, %bb.b
  %.0 = phi i8 [ 0, %bb.b ], [ 1, %.loopexit ], [ 1, %bb.d ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i8 @_ZN6icu_7816ReorderingBuffer10previousCCEv(ptr noundef nonnull align 8 captures(none) dereferenceable(64) initializes((56, 64)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %.not = icmp ult ptr %i.e, %i.b
  br i1 %.not, label %bb.b, label %_ZNK6icu_7815Normalizer2Impl24getCCFromYesOrMaybeYesCPEi.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds i8, ptr %i.b, i64 -2 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = load i16, ptr %i.f, align 2
  %i.h = zext i16 %i.g to i32                     ; 4 uses
  %i.i = and i32 %i.h, 64512
  %i.j = icmp eq i32 %i.i, 56320
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = icmp ult ptr %i.l, %i.f
  %or.cond = select i1 %i.j, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds i8, ptr %i.b, i64 -4 ; 2 uses
  %i.o = load i16, ptr %i.n, align 2
  %i.p = zext i16 %i.o to i32                     ; 2 uses
  %i.q = and i32 %i.p, 64512
  %i.r = icmp eq i32 %i.q, 55296
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.n, ptr %i.a, align 8
  %i.s = shl nuw nsw i32 %i.p, 10
  %i.t = add nuw nsw i32 %i.h, -56613888
  %i.u = add nsw i32 %i.t, %i.s
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.05 = phi i32 [ %i.u, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 8 uses
  %i.v = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.x = load i16, ptr %i.w, align 2
  %i.y = zext i16 %i.x to i32
  %i.z = icmp samesign ult i32 %.05, %i.y
  %i.aa = and i32 %.05, -1024
  %i.ab = icmp eq i32 %i.aa, 55296
  %or.cond.i = or i1 %i.ab, %i.z
  br i1 %or.cond.i, label %_ZNK6icu_7815Normalizer2Impl24getCCFromYesOrMaybeYesCPEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8            ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = icmp samesign ult i32 %.05, 65536
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ad, align 8
  %i.ai = lshr i32 %.05, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32
  %i.an = and i32 %.05, 63
  %i.ao = add nuw nsw i32 %i.an, %i.am
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ap = icmp samesign ult i32 %.05, 1114112
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ar = load i32, ptr %i.aq, align 8
  %.not.i.i = icmp slt i32 %.05, %i.ar
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.at = load i32, ptr %i.as, align 4
  %i.au = add nsw i32 %i.at, -2
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

bb.k:                                             ; preds = %bb.i
  %i.av = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.ad, i32 noundef %.05) #11
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

bb.l:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = add nsw i32 %i.ax, -1
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i:  ; preds = %bb.l, %bb.k, %bb.j, %bb.g
  %i.az = phi i32 [ %i.ao, %bb.g ], [ %i.ay, %bb.l ], [ %i.au, %bb.j ], [ %i.av, %bb.k ]
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  %.fr.i = freeze i16 %i.bc                       ; 2 uses
  %1 = icmp ugt i16 %.fr.i, -1025
  %2 = lshr i16 %.fr.i, 1
  %3 = trunc i16 %2 to i8
  %spec.select.i = select i1 %1, i8 %3, i8 0
  br label %_ZNK6icu_7815Normalizer2Impl24getCCFromYesOrMaybeYesCPEi.exit

_ZNK6icu_7815Normalizer2Impl24getCCFromYesOrMaybeYesCPEi.exit: ; preds = %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i, %bb.e, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.e ], [ %spec.select.i, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i ]
  ret i8 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7816ReorderingBuffer6equalsEPKDsS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 1
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 1
  %i.n = trunc i64 %i.m to i32
  %i.o = icmp eq i32 %i.i, %i.n
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @u_memcmp_78(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.i) #11
  %i.q = icmp eq i32 %i.p, 0
  %i.r = zext i1 %i.q to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi i8 [ 0, %bb.a ], [ %i.r, %bb.b ]
  ret i8 %i.s
}

declare i32 @u_memcmp_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7816ReorderingBuffer6equalsEPKhS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 1
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = ptrtoint ptr %2 to i64
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = trunc i64 %i.l to i32                    ; 4 uses
  %i.n = icmp slt i32 %i.m, %i.i
  %i.o = sdiv i32 %i.m, 3
  %i.p = icmp sgt i32 %i.o, %i.i
  %or.cond = or i1 %i.n, %i.p
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.l
  %.044 = phi i32 [ %.145, %bb.l ], [ 0, %bb.a ]  ; 4 uses
  %.043 = phi i32 [ %.1, %bb.l ], [ 0, %bb.a ]    ; 7 uses
  %.not = icmp slt i32 %.044, %i.i
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.q = icmp sge i32 %.043, %i.m
  %i.r = zext i1 %i.q to i8
  br label %.loopexit

bb.c:                                             ; preds = %.preheader
  %.not53 = icmp slt i32 %.043, %i.m
  br i1 %.not53, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %.044, 1                     ; 2 uses
  %i.t = sext i32 %.044 to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = and i32 %i.w, 64512
  %i.y = icmp eq i32 %i.x, 55296
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = shl nuw nsw i32 %i.w, 10
  %i.aa = add nsw i32 %.044, 2
  %i.ab = sext i32 %i.s to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = zext i16 %i.ad to i32
  %i.af = add nsw i32 %i.z, -56613888
  %i.ag = add nuw nsw i32 %i.af, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.145 = phi i32 [ %i.aa, %bb.e ], [ %i.s, %bb.d ]
  %.042 = phi i32 [ %i.ag, %bb.e ], [ %i.w, %bb.d ]
  %i.ah = add nsw i32 %.043, 1                    ; 4 uses
  %i.ai = sext i32 %.043 to i64
  %i.aj = getelementptr inbounds i8, ptr %1, i64 %i.ai ; 4 uses
  %i.ak = load i8, ptr %i.aj, align 1             ; 4 uses
  %i.al = zext i8 %i.ak to i32                    ; 4 uses
  %i.am = icmp sgt i8 %i.ak, -1
  br i1 %i.am, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = icmp samesign ult i8 %i.ak, -32
  br i1 %i.an, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ao = shl nuw nsw i32 %i.al, 6
  %i.ap = and i32 %i.ao, 1984
  %i.aq = add nsw i32 %.043, 2
  %i.ar = sext i32 %i.ah to i64
  %i.as = getelementptr inbounds i8, ptr %1, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = and i8 %i.at, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.ap, %i.av
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp samesign ult i8 %i.ak, -16
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = shl nuw nsw i32 %i.al, 12
  %i.az = sext i32 %i.ah to i64
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = and i8 %i.bb, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = shl nuw nsw i32 %i.bd, 6
  %i.bf = getelementptr i8, ptr %i.aj, i64 2
  %i.bg = load i8, ptr %i.bf, align 1
  %i.bh = and i8 %i.bg, 63
  %i.bi = zext nneg i8 %i.bh to i32
  %.masked54 = and i32 %i.ay, 61440
  %.masked = or disjoint i32 %i.be, %.masked54
  %i.bj = or disjoint i32 %.masked, %i.bi
  %i.bk = add nsw i32 %.043, 3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bl = shl nuw nsw i32 %i.al, 18
  %i.bm = and i32 %i.bl, 1835008
  %i.bn = sext i32 %i.ah to i64
  %i.bo = getelementptr inbounds i8, ptr %1, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1
  %i.bq = and i8 %i.bp, 63
  %i.br = zext nneg i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 12
  %i.bt = or disjoint i32 %i.bs, %i.bm
  %i.bu = getelementptr i8, ptr %i.aj, i64 2
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = and i8 %i.bv, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 6
  %i.bz = or disjoint i32 %i.bt, %i.by
  %i.ca = getelementptr i8, ptr %i.aj, i64 3
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = and i8 %i.cb, 63
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = or disjoint i32 %i.bz, %i.cd
  %i.cf = add nsw i32 %.043, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.f
  %.1 = phi i32 [ %i.ah, %bb.f ], [ %i.aq, %bb.h ], [ %i.bk, %bb.j ], [ %i.cf, %bb.k ]
  %.0 = phi i32 [ %i.al, %bb.f ], [ %i.aw, %bb.h ], [ %i.bj, %bb.j ], [ %i.ce, %bb.k ]
  %.not55 = icmp eq i32 %.042, %.0
  br i1 %.not55, label %.preheader, label %.loopexit, !llvm.loop !9

.loopexit:                                        ; preds = %bb.l, %bb.c, %bb.b, %bb.a
  %.3 = phi i8 [ 0, %bb.a ], [ %i.r, %bb.b ], [ 0, %bb.c ], [ 0, %bb.l ]
  ret i8 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7816ReorderingBuffer6appendEPKDsiahhR10UErrorCode:bb.a
  %.not62 = icmp eq i32 %2, 1
  %or.cond66 = or i1 %.not62, %i.ck
  br i1 %or.cond66, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cm = load i16, ptr %i.cl, align 2
  %i.cn = zext i16 %i.cm to i32                   ; 2 uses
  %i.co = and i32 %i.cn, 64512
  %i.cp = icmp eq i32 %i.co, 56320
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cq = shl nuw nsw i32 %i.ci, 10
  %i.cr = add nsw i32 %i.cq, -56613888
  %i.cs = add nuw nsw i32 %i.cr, %i.cn
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.155 = phi i32 [ 1, %bb.j ], [ 2, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %.1 = phi i32 [ %i.ci, %bb.j ], [ %i.cs, %bb.l ], [ %i.ci, %bb.k ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.cu, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds i8, ptr %i.cu, i64 -2 ; 3 uses
  store ptr %i.cx, ptr %i.cv, align 8
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = and i16 %i.cy, -1024
  %i.da = icmp eq i16 %i.cz, -9216
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = icmp ult ptr %i.dc, %i.cx
  %or.cond.i.i = select i1 %i.da, i1 %i.dd, i1 false
  br i1 %or.cond.i.i, label %bb.n, label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader

bb.n:                                             ; preds = %bb.m
  %i.de = getelementptr inbounds i8, ptr %i.cu, i64 -4 ; 2 uses
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = and i16 %i.df, -1024
  %i.dh = icmp eq i16 %i.dg, -10240
  br i1 %i.dh, label %bb.o, label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader

bb.o:                                             ; preds = %bb.n
  store ptr %i.de, ptr %i.cv, align 8
  br label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader

_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.m
  br label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i

_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i: ; preds = %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader, %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i
  %i.di = tail call noundef zeroext i8 @_ZN6icu_7816ReorderingBuffer10previousCCEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.dj = icmp ugt i8 %i.di, %4
  br i1 %i.dj, label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i, label %bb.p, !llvm.loop !10

bb.p:                                             ; preds = %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i
  %i.dk = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.dl = icmp samesign ult i32 %.1, 65536        ; 2 uses
  %i.dm = select i1 %i.dl, i64 1, i64 2
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.dm ; 2 uses
  store ptr %i.dn, ptr %i.ct, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.09.i = phi ptr [ %i.dk, %bb.p ], [ %i.do, %bb.q ] ; 2 uses
  %.0.i68 = phi ptr [ %i.dn, %bb.p ], [ %i.dq, %bb.q ]
  %i.do = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 4 uses
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = getelementptr inbounds i8, ptr %.0.i68, i64 -2 ; 3 uses
  store i16 %i.dp, ptr %i.dq, align 2
  %i.dr = load ptr, ptr %i.cw, align 8
  %.not.i = icmp eq ptr %i.dr, %i.do
  br i1 %.not.i, label %bb.r, label %bb.q, !llvm.loop !11

bb.r:                                             ; preds = %bb.q
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ds = trunc nuw i32 %.1 to i16
  br label %_ZN6icu_7816ReorderingBuffer14writeCodePointEPDsi.exit.i

bb.t:                                             ; preds = %bb.r
  %i.dt = lshr i32 %.1, 10
  %i.du = trunc nuw nsw i32 %i.dt to i16
  %i.dv = add nsw i16 %i.du, -10304
  %i.dw = trunc i32 %.1 to i16
  %i.dx = and i16 %i.dw, 1023
  %i.dy = or disjoint i16 %i.dx, -9216
  store i16 %i.dy, ptr %.09.i, align 2
  br label %_ZN6icu_7816ReorderingBuffer14writeCodePointEPDsi.exit.i

_ZN6icu_7816ReorderingBuffer14writeCodePointEPDsi.exit.i: ; preds = %bb.t, %bb.s
  %.sink.i.i = phi i16 [ %i.ds, %bb.s ], [ %i.dv, %bb.t ]
  store i16 %.sink.i.i, ptr %i.do, align 2
  %i.dz = icmp ult i8 %4, 2
  br i1 %i.dz, label %bb.u, label %_ZN6icu_7816ReorderingBuffer6insertEih.exit

bb.u:                                             ; preds = %_ZN6icu_7816ReorderingBuffer14writeCodePointEPDsi.exit.i
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.dq, ptr %i.ea, align 8
  br label %_ZN6icu_7816ReorderingBuffer6insertEih.exit

_ZN6icu_7816ReorderingBuffer6insertEih.exit:      ; preds = %_ZN6icu_7816ReorderingBuffer14writeCodePointEPDsi.exit.i, %bb.u
  %i.eb = icmp slt i32 %.155, %2
  br i1 %i.eb, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_7816ReorderingBuffer6insertEih.exit
  %.not64 = icmp eq i8 %3, 0
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit
  %.25677 = phi i32 [ %.155, %.lr.ph ], [ %.4, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit ] ; 3 uses
  %i.ec = add nsw i32 %.25677, 1                  ; 4 uses
  %i.ed = sext i32 %.25677 to i64
  %i.ee = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2
  %i.eg = zext i16 %i.ef to i32                   ; 4 uses
  %i.eh = and i32 %i.eg, 64512
  %i.ei = icmp ne i32 %i.eh, 55296
  %.not63 = icmp eq i32 %i.ec, %2
  %or.cond67 = select i1 %i.ei, i1 true, i1 %.not63
  br i1 %or.cond67, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ej = sext i32 %i.ec to i64
  %i.ek = getelementptr inbounds [2 x i8], ptr %1, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  %i.em = zext i16 %i.el to i32                   ; 2 uses
  %i.en = and i32 %i.em, 64512
  %i.eo = icmp eq i32 %i.en, 56320
  br i1 %i.eo, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ep = add nsw i32 %.25677, 2
  %i.eq = shl nuw nsw i32 %i.eg, 10
  %i.er = add nsw i32 %i.eq, -56613888
  %i.es = add nuw nsw i32 %i.er, %i.em
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x, %bb.v
  %.4 = phi i32 [ %i.ec, %bb.v ], [ %i.ep, %bb.x ], [ %i.ec, %bb.w ] ; 2 uses
  %.3 = phi i32 [ %i.eg, %bb.v ], [ %i.es, %bb.x ], [ %i.eg, %bb.w ] ; 16 uses
  %i.et = icmp slt i32 %.4, %2                    ; 2 uses
  br i1 %i.et, label %bb.z, label %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit

bb.z:                                             ; preds = %bb.y
  %i.eu = load ptr, ptr %0, align 8, !nonnull !5, !align !6 ; 5 uses
  br i1 %.not64, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load ptr, ptr %i.ev, align 8            ; 6 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = icmp samesign ult i32 %.3, 65536
  br i1 %i.ez, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fa = load ptr, ptr %i.ew, align 8
  %i.fb = lshr i32 %.3, 6
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.fa, i64 %i.fc
  %i.fe = load i16, ptr %i.fd, align 2
  %i.ff = zext i16 %i.fe to i32
  %i.fg = and i32 %.3, 63
  %i.fh = add nuw nsw i32 %i.fg, %i.ff
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.ac:                                            ; preds = %bb.aa
  %i.fi = icmp samesign ult i32 %.3, 1114112
  br i1 %i.fi, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fk = load i32, ptr %i.fj, align 8
  %.not.i69 = icmp slt i32 %.3, %i.fk
  br i1 %.not.i69, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %i.fm = load i32, ptr %i.fl, align 4
  %i.fn = add nsw i32 %i.fm, -2
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.af:                                            ; preds = %bb.ad
  %i.fo = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.ew, i32 noundef %.3) #11
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.ag:                                            ; preds = %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  %i.fq = load i32, ptr %i.fp, align 4
  %i.fr = add nsw i32 %i.fq, -1
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit: ; preds = %bb.ab, %bb.ae, %bb.af, %bb.ag
  %i.fs = phi i32 [ %i.fh, %bb.ab ], [ %i.fr, %bb.ag ], [ %i.fn, %bb.ae ], [ %i.fo, %bb.af ]
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [2 x i8], ptr %i.ey, i64 %i.ft
  %i.fv = load i16, ptr %i.fu, align 2            ; 2 uses
  %7 = icmp ugt i16 %i.fv, -1025
  %8 = lshr i16 %i.fv, 1
  %9 = trunc i16 %8 to i8
  %i.fw = select i1 %7, i8 %9, i8 0
  br label %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit

bb.ah:                                            ; preds = %bb.z
  %i.fx = and i32 %.3, -1024
  %i.fy = icmp eq i32 %i.fx, 55296
  br i1 %i.fy, label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8            ; 6 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = icmp samesign ult i32 %.3, 65536
  br i1 %i.gd, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ge = load ptr, ptr %i.ga, align 8
  %i.gf = lshr i32 %.3, 6
  %i.gg = zext nneg i32 %i.gf to i64
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr %i.ge, i64 %i.gg
  %i.gi = load i16, ptr %i.gh, align 2
  %i.gj = zext i16 %i.gi to i32
  %i.gk = and i32 %.3, 63
  %i.gl = add nuw nsw i32 %i.gk, %i.gj
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit

bb.ak:                                            ; preds = %bb.ai
  %i.gm = icmp samesign ult i32 %.3, 1114112
  br i1 %i.gm, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.gn = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.go = load i32, ptr %i.gn, align 8
  %.not.i70 = icmp slt i32 %.3, %i.go
  br i1 %.not.i70, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.gq = load i32, ptr %i.gp, align 4
  %i.gr = add nsw i32 %i.gq, -2
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit

bb.an:                                            ; preds = %bb.al
  %i.gs = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.ga, i32 noundef %.3) #11
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit

bb.ao:                                            ; preds = %bb.ak
  %i.gt = getelementptr inbounds nuw i8, ptr %i.ga, i64 20
  %i.gu = load i32, ptr %i.gt, align 4
  %i.gv = add nsw i32 %i.gu, -1
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit

_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit:    ; preds = %bb.aj, %bb.am, %bb.an, %bb.ao
  %i.gw = phi i32 [ %i.gl, %bb.aj ], [ %i.gv, %bb.ao ], [ %i.gr, %bb.am ], [ %i.gs, %bb.an ]
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds [2 x i8], ptr %i.gc, i64 %i.gx
  %i.gz = load i16, ptr %i.gy, align 2            ; 3 uses
  %i.ha = icmp ugt i16 %i.gz, -1025
  br i1 %i.ha, label %bb.ap, label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread

bb.ap:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit
  %i.hb = lshr i16 %i.gz, 1
  %i.hc = trunc i16 %i.hb to i8
  br label %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit

_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread: ; preds = %bb.ah, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit
  %i.hd = phi i16 [ %i.gz, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit ], [ 1, %bb.ah ] ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.eu, i64 18
  %i.hf = load i16, ptr %i.he, align 2
  %i.hg = icmp uge i16 %i.hd, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.eu, i64 26
  %i.hi = load i16, ptr %i.hh, align 2
  %.not.i71 = icmp ugt i16 %i.hi, %i.hd
  %or.cond.i = select i1 %i.hg, i1 %.not.i71, i1 false
  br i1 %or.cond.i, label %bb.aq, label %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit

bb.aq:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = lshr i16 %i.hd, 1
  %i.hm = zext nneg i16 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.hk, i64 %i.hm ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2
  %i.hp = and i16 %i.ho, 128
  %.not.i.i73 = icmp eq i16 %i.hp, 0
  br i1 %.not.i.i73, label %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.hq = getelementptr inbounds i8, ptr %i.hn, i64 -2
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = trunc i16 %i.hr to i8
  br label %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit

_ZNK6icu_7815Normalizer2Impl5getCCEt.exit:        ; preds = %bb.ar, %bb.aq, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread, %bb.ap, %bb.y, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit
  %.058 = phi i8 [ %i.fw, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %5, %bb.y ], [ %i.hc, %bb.ap ], [ 0, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread ], [ %i.hs, %bb.ar ], [ 0, %bb.aq ] ; 2 uses
  %i.ht = icmp samesign ult i32 %.3, 65536
  br i1 %i.ht, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit
  %i.hu = trunc nuw i32 %.3 to i16
  %i.hv = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext %i.hu, i8 noundef zeroext %.058, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.at:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl5getCCEt.exit
  %i.hw = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.3, i8 noundef zeroext %.058, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit: ; preds = %bb.as, %bb.at
  br i1 %i.et, label %bb.v, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit, %_ZN6icu_7816ReorderingBuffer6insertEih.exit, %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit.thread, %.unr-lcssa, %bb.a
  %.0 = phi i8 [ 1, %bb.a ], [ 0, %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit.thread ], [ 1, %.unr-lcssa ], [ 1, %_ZN6icu_7816ReorderingBuffer6insertEih.exit ], [ 1, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEiR10UErrorCode(ptr noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 65536                   ; 2 uses
  %i.b = select i1 %i.a, i32 1, i32 2             ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %i.j                       ; 2 uses
  %i.o = lshr exact i64 %i.n, 1
  %i.p = trunc i64 %i.o to i32                    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !5, !align !6
  tail call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i32 noundef %i.p) #11
  %i.s = add nsw i32 %i.b, %i.p
  %i.t = load ptr, ptr %i.q, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i16, ptr %i.u, align 8
  %i.w = and i16 %i.v, 2
  %.not.i.i = icmp eq i16 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load i32, ptr %i.x, align 8
  %i.z = shl nsw i32 %i.y, 1
  %i.aa = select i1 %.not.i.i, i32 %i.z, i32 54
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %i.aa)
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 256)
  %i.ab = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef %spec.store.select.i) #11 ; 4 uses
  store ptr %i.ab, ptr %i.h, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit.thread, label %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit

_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit.thread: ; preds = %bb.b
  store i32 7, ptr %2, align 4
  br label %bb.g

_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit: ; preds = %bb.b
  %i.ad = ptrtoint ptr %i.g to i64
  %i.ae = sub i64 %i.ad, %i.j
  %sext.i = shl i64 %i.ae, 31
  %i.af = ashr i64 %sext.i, 32
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.af
  store ptr %i.ag, ptr %i.f, align 8
  %sext17.i = shl i64 %i.n, 31
  %i.ah = ashr i64 %sext17.i, 32
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ah
  store ptr %i.ai, ptr %i.k, align 8
  %i.aj = load ptr, ptr %i.q, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i16, ptr %i.ak, align 8
  %i.am = and i16 %i.al, 2
  %.not.i18.i = icmp eq i16 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = select i1 %.not.i18.i, i32 %i.ao, i32 27
  %i.aq = sub nsw i32 %i.ap, %i.p
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit, %bb.a
  %i.ar = phi i32 [ %i.aq, %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit ], [ %i.d, %bb.a ]
  %i.as = sub nsw i32 %i.ar, %i.b
  store i32 %i.as, ptr %i.c, align 8
  br i1 %i.a, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = trunc nuw i32 %1 to i16
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store ptr %i.aw, ptr %i.au, align 8
  store i16 %i.at, ptr %i.av, align 2
  %.pre = load ptr, ptr %i.au, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
end_hunk_1
begin_hunk_2_@_ZNK6icu_7815Normalizer2Impl9decomposeEPKDsS2_PNS_16ReorderingBufferER10UErrorCode:bb.a

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi ptr [ %i.d, %.preheader ], [ %1, %bb.a ] ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.e = load i16, ptr %.0.i, align 2             ; 2 uses
  %i.f = icmp ugt i16 %i.b, %i.e
  %i.g = icmp ne i16 %i.e, 0
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %.preheader, label %bb.b, !llvm.loop !22

bb.b:                                             ; preds = %.preheader
  %i.i = icmp ne ptr %.0.i, %1
  %i.j = icmp ne ptr %3, null
  %or.cond.i = and i1 %i.j, %i.i
  br i1 %or.cond.i, label %bb.c, label %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  br label %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit

_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit: ; preds = %bb.b, %bb.c
  %i.l = load i32, ptr %4, align 4
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit
  %i.n = tail call ptr @u_strchr_78(ptr noundef nonnull %.0.i, i16 noundef zeroext 0) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %.083 = phi ptr [ %i.n, %bb.d ], [ %2, %bb.a ]  ; 5 uses
  %.060 = phi ptr [ %.0.i, %bb.d ], [ %1, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 14 ; 3 uses
  %.not98 = icmp eq ptr %3, null                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 34
  br label %.outer

.outer:                                           ; preds = %bb.t, %bb.e
  %.070.ph = phi i16 [ %.676, %bb.t ], [ 0, %bb.e ]
  %.065.ph = phi ptr [ %spec.select, %bb.t ], [ %.060, %bb.e ]
  %.062.ph = phi i8 [ %i.ch, %bb.t ], [ 0, %bb.e ]
  %.161.ph = phi ptr [ %i.ca, %bb.t ], [ %.060, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.s
  %.070 = phi i16 [ %.676, %bb.s ], [ %.070.ph, %.outer ]
  %.161 = phi ptr [ %i.by, %bb.s ], [ %.161.ph, %.outer ] ; 5 uses
  %.not92137 = icmp eq ptr %.161, %.083
  br i1 %.not92137, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.thread
  %.2139 = phi ptr [ %.5, %.thread ], [ %.161, %bb.f ] ; 6 uses
  %.171138 = phi i16 [ %.575, %.thread ], [ %.070, %bb.f ]
  %i.r = load i16, ptr %.2139, align 2            ; 2 uses
  %i.s = zext i16 %i.r to i32                     ; 8 uses
  %i.t = icmp ult i16 %i.r, %i.b
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.o, align 8              ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8
  %i.y = lshr i32 %i.s, 6
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = zext i16 %i.ab to i32
  %i.ad = and i32 %i.s, 63
  %i.ae = add nuw nsw i32 %i.ad, %i.ac
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2            ; 6 uses
  %i.ai = load i16, ptr %i.p, align 2             ; 2 uses
  %i.aj = icmp uge i16 %i.ah, %i.ai
  %i.ak = and i16 %i.ah, -513
  %i.al = icmp ne i16 %i.ak, -1024
  %narrow.i.not = and i1 %i.al, %i.aj
  br i1 %narrow.i.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.272 = phi i16 [ %.171138, %.lr.ph ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %.2139, i64 2
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.an = and i32 %i.s, 64512
  %i.ao = icmp eq i32 %i.an, 55296
  br i1 %i.ao, label %bb.j, label %._crit_edge

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.2139, i64 2 ; 4 uses
  %.not94 = icmp eq ptr %i.ap, %.083
  br i1 %.not94, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = load i16, ptr %i.ap, align 2
  %i.ar = zext i16 %i.aq to i32                   ; 2 uses
  %i.as = and i32 %i.ar, 64512
  %i.at = icmp eq i32 %i.as, 56320
  br i1 %i.at, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.au = shl nuw nsw i32 %i.s, 10
  %i.av = add nsw i32 %i.au, -56613888
  %i.aw = add nuw nsw i32 %i.av, %i.ar            ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load i32, ptr %i.ax, align 8
  %.not95 = icmp slt i32 %i.aw, %i.ay
  br i1 %.not95, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = add nsw i32 %i.ba, -2
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bc = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.u, i32 noundef %i.aw) #11
  %.pre = load i16, ptr %i.p, align 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bd = phi i16 [ %i.ai, %bb.m ], [ %.pre, %bb.n ]
  %i.be = phi i32 [ %i.bb, %bb.m ], [ %i.bc, %bb.n ]
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2            ; 4 uses
  %i.bi = icmp uge i16 %i.bh, %i.bd
  %i.bj = and i16 %i.bh, -513
  %i.bk = icmp ne i16 %i.bj, -1024
  %narrow.i105.not = and i1 %i.bk, %i.bi
  %i.bl = getelementptr inbounds nuw i8, ptr %.2139, i64 4
  br i1 %narrow.i105.not, label %._crit_edge, label %.thread

.thread:                                          ; preds = %bb.k, %bb.j, %bb.o, %bb.h
  %.481 = phi i32 [ %i.s, %bb.h ], [ %i.s, %bb.k ], [ %i.s, %bb.j ], [ %i.aw, %bb.o ]
  %.575 = phi i16 [ %.272, %bb.h ], [ %i.ah, %bb.k ], [ %i.ah, %bb.j ], [ %i.bh, %bb.o ] ; 2 uses
  %.5 = phi ptr [ %i.am, %bb.h ], [ %i.ap, %bb.k ], [ %i.ap, %bb.j ], [ %i.bl, %bb.o ] ; 3 uses
  %.not92 = icmp eq ptr %.5, %.083
  br i1 %.not92, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.thread, %bb.i, %bb.o
  %.2.lcssa = phi ptr [ %.2139, %bb.o ], [ %.5, %.thread ], [ %.2139, %bb.i ] ; 10 uses
  %.582 = phi i32 [ %i.aw, %bb.o ], [ %.481, %.thread ], [ %i.s, %bb.i ] ; 4 uses
  %.676 = phi i16 [ %i.bh, %bb.o ], [ %.575, %.thread ], [ %i.ah, %bb.i ] ; 7 uses
  %.not97 = icmp eq ptr %.2.lcssa, %.161
  br i1 %.not97, label %bb.r, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  br i1 %.not98, label %.thread111, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %.161, ptr noundef nonnull %.2.lcssa, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %.not99 = icmp eq i8 %i.bm, 0
  %i.bn = icmp eq ptr %.2.lcssa, %.083
  %or.cond122 = or i1 %i.bn, %.not99
  br i1 %or.cond122, label %.loopexit, label %.thread185

.thread185:                                       ; preds = %bb.q
  %i.bo = icmp samesign ult i32 %.582, 65536
  %i.bp = select i1 %i.bo, i64 1, i64 2
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.2.lcssa, i64 %i.bp
  br label %bb.s

.thread111:                                       ; preds = %bb.p
  %i.br = icmp eq ptr %.2.lcssa, %.083
  br i1 %i.br, label %.loopexit, label %.thread116

.thread116:                                       ; preds = %.thread111
  %i.bs = icmp samesign ult i32 %.582, 65536
  %i.bt = select i1 %i.bs, i64 1, i64 2
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.2.lcssa, i64 %i.bt
  br label %.loopexit126

bb.r:                                             ; preds = %._crit_edge
  %i.bv = icmp samesign ult i32 %.582, 65536
  %i.bw = select i1 %i.bv, i64 1, i64 2
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.2.lcssa, i64 %i.bw ; 2 uses
  br i1 %.not98, label %.loopexit126, label %bb.s

bb.s:                                             ; preds = %.thread185, %bb.r
  %i.by = phi ptr [ %i.bq, %.thread185 ], [ %i.bx, %bb.r ] ; 2 uses
  %i.bz = tail call noundef signext i8 @_ZNK6icu_7815Normalizer2Impl9decomposeEitRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, i32 noundef %.582, i16 noundef zeroext %.676, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %.not102 = icmp eq i8 %i.bz, 0
  br i1 %.not102, label %.loopexit, label %bb.f, !llvm.loop !24

.loopexit126:                                     ; preds = %bb.r, %.thread116
  %i.ca = phi ptr [ %i.bu, %.thread116 ], [ %i.bx, %bb.r ] ; 2 uses
  %.166114121 = phi ptr [ %.2.lcssa, %.thread116 ], [ %.065.ph, %bb.r ] ; 3 uses
  %.163115120 = phi i8 [ 0, %.thread116 ], [ %.062.ph, %bb.r ]
  %i.cb = load i16, ptr %i.p, align 2
  %i.cc = icmp uge i16 %.676, %i.cb
  %i.cd = load i16, ptr %i.q, align 2
  %i.ce = icmp ugt i16 %i.cd, %.676
  %narrow.i106.not = select i1 %i.cc, i1 %i.ce, i1 false
  br i1 %narrow.i106.not, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit126
  %5 = icmp ugt i16 %.676, -1025
  %i.cf = lshr i16 %.676, 1
  %i.cg = trunc i16 %i.cf to i8
  %i.ch = select i1 %5, i8 %i.cg, i8 0            ; 4 uses
  %i.ci = icmp ule i8 %.163115120, %i.ch
  %i.cj = icmp eq i8 %i.ch, 0
  %or.cond = or i1 %i.cj, %i.ci
  %i.ck = icmp ult i8 %i.ch, 2
  %spec.select = select i1 %i.ck, ptr %i.ca, ptr %.166114121
  br i1 %or.cond, label %.outer, label %.loopexit

.loopexit:                                        ; preds = %.thread111, %bb.t, %.loopexit126, %bb.f, %bb.s, %bb.q, %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit
  %.1 = phi ptr [ %.0.i, %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit ], [ %i.by, %bb.s ], [ %.161, %bb.f ], [ %.2.lcssa, %bb.q ], [ %.166114121, %bb.t ], [ %.2.lcssa, %.thread111 ], [ %.166114121, %.loopexit126 ]
  ret ptr %.1
}

declare ptr @u_strchr_78(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare i32 @ucptrie_internalSmallIndex_78(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZNK6icu_7815Normalizer2Impl9decomposeEitRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i32 noundef %1, i16 noundef zeroext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [3 x i16], align 2                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2
  %.not = icmp ult i16 %2, %i.c
  %.0.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.0.i.sroa.gep47 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.e = load i16, ptr %i.d, align 2
  %.not43 = icmp ult i16 %2, %i.e
  br i1 %.not43, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %5 = icmp ugt i16 %2, -1025
  %i.f = lshr i16 %2, 1
  %i.g = trunc i16 %i.f to i8
  %i.h = select i1 %5, i8 %i.g, i8 0              ; 2 uses
  %i.i = icmp slt i32 %1, 65536
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i32 %1 to i16
  %i.k = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i16 noundef zeroext %i.j, i8 noundef zeroext %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %1, i8 noundef zeroext %i.h, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.f:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp ult i16 %2, %i.n
  br i1 %i.o, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.p = lshr i16 %2, 3
  %i.q = zext nneg i16 %i.p to i32
  %i.r = add nsw i32 %1, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = load i16, ptr %i.s, align 4
  %i.u = zext i16 %i.t to i32
  %i.v = sub i32 %i.r, %i.u                       ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8              ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ult i32 %i.v, 65536
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = load ptr, ptr %i.x, align 8
  %i.ac = lshr i32 %i.v, 6
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i32
  %i.ah = and i32 %i.v, 63
  %i.ai = add nuw nsw i32 %i.ah, %i.ag
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.i:                                             ; preds = %bb.g
  %i.aj = icmp ult i32 %i.v, 1114112
  br i1 %i.aj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.al = load i32, ptr %i.ak, align 8
  %.not.i = icmp slt i32 %i.v, %i.al
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = add nsw i32 %i.an, -2
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.x, i32 noundef %i.v) #11
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.m:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 20
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = add nsw i32 %i.ar, -1
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit: ; preds = %bb.h, %bb.k, %bb.l, %bb.m
  %i.at = phi i32 [ %i.ai, %bb.h ], [ %i.as, %bb.m ], [ %i.ao, %bb.k ], [ %i.ap, %bb.l ]
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit, %bb.f, %bb.a
  %.034 = phi i16 [ %i.aw, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %2, %bb.f ], [ %2, %bb.a ] ; 6 uses
  %.033 = phi i32 [ %i.v, %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit ], [ %1, %bb.f ], [ %1, %bb.a ] ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ay = load i16, ptr %i.ax, align 2            ; 2 uses
  %i.az = icmp ult i16 %.034, %i.ay
  br i1 %i.az, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ba = icmp slt i32 %.033, 65536
  br i1 %i.ba, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bb = trunc i32 %.033 to i16
  %i.bc = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i16 noundef zeroext %i.bb, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.q:                                             ; preds = %bb.o
  %i.bd = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %.033, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.r:                                             ; preds = %bb.n
  %.not44 = icmp eq i16 %.034, %i.ay
  br i1 %.not44, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bf = load i16, ptr %i.be, align 8
  %i.bg = or i16 %i.bf, 1
  %.not45 = icmp eq i16 %.034, %i.bg
  br i1 %.not45, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.bh = add nsw i32 %.033, -44032               ; 3 uses
  %i.bi = srem i32 %i.bh, 28                      ; 2 uses
  %i.bj = sdiv i32 %i.bh, 28
  %i.bk = sdiv i32 %i.bh, 588
  %i.bl = trunc i32 %i.bk to i16
  %i.bm = add i16 %i.bl, 4352
  store i16 %i.bm, ptr %i.a, align 2
  %i.bn = srem i32 %i.bj, 21
  %i.bo = trunc nsw i32 %i.bn to i16
  %i.bp = add nsw i16 %i.bo, 4449
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = icmp eq i32 %i.bi, 0
  br i1 %i.br, label %_ZN6icu_786Hangul9decomposeEiPDs.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bs = trunc nsw i32 %i.bi to i16
  %i.bt = add nsw i16 %i.bs, 4519
  store i16 %i.bt, ptr %.0.i.sroa.gep47, align 2
  br label %_ZN6icu_786Hangul9decomposeEiPDs.exit

_ZN6icu_786Hangul9decomposeEiPDs.exit:            ; preds = %bb.t, %bb.u
  %.0.i.sroa.phi = phi ptr [ %.0.i.sroa.gep, %bb.u ], [ %.0.i.sroa.gep47, %bb.t ]
  %i.bu = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.a, ptr noundef nonnull %.0.i.sroa.phi, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.v:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bw = load i16, ptr %i.bv, align 2            ; 2 uses
  %.not.i41 = icmp ult i16 %.034, %i.bw
  %narrow.i = sub i16 %.034, %i.bw
  %i.bx = load i16, ptr %i.b, align 2
  %i.by = add i16 %narrow.i, %i.bx
  %.0.i42 = select i1 %.not.i41, i16 %.034, i16 %i.by
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = lshr i16 %.0.i42, 1
  %i.cc = zext nneg i16 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.cc ; 3 uses
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = zext i16 %i.ce to i32                   ; 2 uses
  %i.cg = and i32 %i.cf, 31
  %i.ch = lshr i16 %i.ce, 8
  %i.ci = trunc nuw i16 %i.ch to i8
  %i.cj = and i32 %i.cf, 128
  %.not39 = icmp eq i32 %i.cj, 0
  br i1 %.not39, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds i8, ptr %i.cd, i64 -2
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = lshr i16 %i.cl, 8
  %i.cn = trunc nuw i16 %i.cm to i8
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.032 = phi i8 [ %i.cn, %bb.w ], [ 0, %bb.v ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cd, i64 2
  %i.cp = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer6appendEPKDsiahhR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull %i.co, i32 noundef %i.cg, i8 noundef signext 1, i8 noundef zeroext %.032, i8 noundef zeroext %i.ci, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit: ; preds = %bb.q, %bb.p, %bb.e, %bb.d, %bb.x, %_ZN6icu_786Hangul9decomposeEiPDs.exit
  %.0 = phi i8 [ %i.cp, %bb.x ], [ %i.l, %bb.e ], [ %i.bu, %_ZN6icu_786Hangul9decomposeEiPDs.exit ], [ %i.k, %bb.d ], [ %i.bc, %bb.p ], [ %i.bd, %bb.q ]
  ret i8 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKDsS2_aaRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef readonly captures(address, ret: address, provenance) %1, ptr noundef readnone captures(address) %2, i8 noundef signext %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader, label %.thread61

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.d = icmp ult ptr %1, %2
  br i1 %i.d, label %.lr.ph, label %.thread61

.lr.ph:                                           ; preds = %.preheader
  %.not46 = icmp ne i8 %3, 0                      ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %.not3.i = icmp eq i8 %4, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre88 = load i16, ptr %1, align 2             ; 2 uses
  %i.j = load i16, ptr %i.e, align 2
end_hunk_2
begin_hunk_3_@_ZNK6icu_7815Normalizer2Impl13decomposeUTF8EjPKhS2_PNS_8ByteSinkEPNS_5EditsER10UErrorCode:bb.a
  %.1127229 = phi ptr [ %.6, %bb.ac ], [ %.0126282, %.lr.ph.preheader ] ; 13 uses
  %i.z = load i8, ptr %.1127229, align 1          ; 7 uses
  %i.aa = zext i8 %i.z to i32                     ; 4 uses
  %i.ab = icmp ult i8 %i.z, %.0.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1127229, i64 1 ; 13 uses
  br i1 %i.ab, label %bb.ac, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.ad = icmp sgt i8 %i.z, -1
  br i1 %i.ad, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq ptr %i.ac, %3
  br i1 %.not, label %bb.aa, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp samesign ugt i8 %i.z, -33
  br i1 %i.ae, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i8 %i.z, -16
  br i1 %i.af, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %i.aa, 15                       ; 2 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @.str, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32
  %i.al = load i8, ptr %i.ac, align 1
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %i.an = lshr i32 %i.am, 5
  %i.ao = shl nuw nsw i32 1, %i.an
  %i.ap = and i32 %i.ao, %i.ak
  %.not172 = icmp eq i32 %i.ap, 0
  br i1 %.not172, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %.1127229, i64 2 ; 5 uses
  %.not173 = icmp eq ptr %i.aq, %3
  br i1 %.not173, label %bb.aa, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = load i8, ptr %i.aq, align 1
  %i.as = xor i8 %i.ar, -128                      ; 2 uses
  %i.at = icmp ult i8 %i.as, 64
  br i1 %i.at, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.au = zext nneg i8 %i.as to i32
  %i.av = load ptr, ptr %i.j, align 8
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = shl nuw nsw i32 %i.ag, 6
  %i.ay = and i32 %i.am, 63
  %i.az = or disjoint i32 %i.ay, %i.ax
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = zext i16 %i.bc to i32
  %i.be = add nuw nsw i32 %i.bd, %i.au
  br label %bb.z

bb.n:                                             ; preds = %bb.i
  %i.bf = add nsw i32 %i.aa, -240                 ; 2 uses
  %i.bg = icmp samesign ult i8 %i.z, -11
  br i1 %i.bg, label %bb.o, label %bb.aa

bb.o:                                             ; preds = %bb.n
  %i.bh = load i8, ptr %i.ac, align 1
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1
  %i.bn = sext i8 %i.bm to i32
  %i.bo = shl nuw nsw i32 1, %i.bf
  %i.bp = and i32 %i.bo, %i.bn
  %.not168 = icmp eq i32 %i.bp, 0
  br i1 %.not168, label %bb.aa, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = shl nuw nsw i32 %i.bf, 6
  %i.br = and i32 %i.bi, 63
  %i.bs = or disjoint i32 %i.br, %i.bq            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.1127229, i64 2 ; 4 uses
  %.not169 = icmp eq ptr %i.bt, %3
  br i1 %.not169, label %bb.aa, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = xor i8 %i.bu, -128                      ; 2 uses
  %i.bw = icmp ult i8 %i.bv, 64
  br i1 %i.bw, label %bb.r, label %bb.aa

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %.1127229, i64 3 ; 6 uses
  %.not170 = icmp eq ptr %i.bx, %3
  br i1 %.not170, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = xor i8 %i.by, -128                      ; 2 uses
  %i.ca = icmp ult i8 %i.bz, 64
  br i1 %i.ca, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.cb = load ptr, ptr %i.j, align 8             ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 28
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = zext i16 %i.cd to i32
  %.not171 = icmp samesign ult i32 %i.bs, %i.ce
  br i1 %.not171, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = add nsw i32 %i.cg, -2
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.ci = call i32 @ucptrie_internalSmallU8Index_78(ptr noundef nonnull %i.cb, i32 noundef %i.bs, i8 noundef zeroext %i.bv, i8 noundef zeroext %i.bz) #11
  br label %bb.z

bb.w:                                             ; preds = %bb.h
  %i.cj = icmp samesign ugt i8 %i.z, -63
  br i1 %i.cj, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ck = load i8, ptr %i.ac, align 1
  %i.cl = xor i8 %i.ck, -128                      ; 2 uses
  %i.cm = icmp ult i8 %i.cl, 64
  br i1 %i.cm, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cn = zext nneg i8 %i.cl to i32
  %i.co = load ptr, ptr %i.j, align 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = and i32 %i.aa, 31
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2
  %i.cu = zext i16 %i.ct to i32
  %i.cv = add nuw nsw i32 %i.cu, %i.cn
  br label %bb.z

bb.z:                                             ; preds = %bb.u, %bb.v, %bb.m, %bb.y
  %.0129 = phi i32 [ %i.be, %bb.m ], [ %i.cv, %bb.y ], [ %i.ch, %bb.u ], [ %i.ci, %bb.v ]
  %.2128 = phi ptr [ %i.aq, %bb.m ], [ %i.ac, %bb.y ], [ %i.bx, %bb.u ], [ %i.bx, %bb.v ]
  %i.cw = getelementptr inbounds nuw i8, ptr %.2128, i64 1
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x, %bb.w, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.l, %bb.k, %bb.j, %bb.g
  %.3 = phi ptr [ %i.aq, %bb.l ], [ %i.aq, %bb.k ], [ %i.ac, %bb.j ], [ %i.bx, %bb.s ], [ %i.bx, %bb.r ], [ %i.bt, %bb.q ], [ %i.bt, %bb.p ], [ %i.ac, %bb.o ], [ %i.ac, %bb.n ], [ %i.ac, %bb.x ], [ %i.ac, %bb.w ], [ %i.ac, %bb.g ]
  %i.cx = load ptr, ptr %i.j, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 20
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = add nsw i32 %i.cz, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.f
  %.2131 = phi i32 [ %i.aa, %bb.f ], [ %.0129, %bb.z ], [ %i.da, %bb.aa ]
  %.5 = phi ptr [ %i.ac, %bb.f ], [ %i.cw, %bb.z ], [ %.3, %bb.aa ] ; 14 uses
  %i.db = load ptr, ptr %i.j, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = sext i32 %.2131 to i64
  %i.df = getelementptr inbounds [2 x i8], ptr %i.dd, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2            ; 11 uses
  %i.dh = load i16, ptr %i.k, align 2
  %i.di = icmp uge i16 %i.dg, %i.dh
  %i.dj = and i16 %i.dg, -513
  %i.dk = icmp ne i16 %i.dj, -1024
  %narrow.i.not = and i1 %i.dk, %i.di
  br i1 %narrow.i.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.ab
  %.6 = phi ptr [ %.5, %bb.ab ], [ %i.ac, %.lr.ph ] ; 3 uses
  %i.dl = icmp eq ptr %.6, %3
  br i1 %i.dl, label %._crit_edge, label %.lr.ph, !llvm.loop !25

bb.ad:                                            ; preds = %bb.ab
  %.not175 = icmp eq ptr %.1127229, %.0126282     ; 3 uses
  %brmerge = or i1 %.not175, %.not176
  %.0143.mux = select i1 %.not175, i8 %.0143280, i8 0
  %.0135.mux = select i1 %.not175, ptr %.0135281, ptr %.1127229
  br i1 %brmerge, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dm = call noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef %.0135281, ptr noundef nonnull %.1127229, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %1, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #11
  %.not177 = icmp eq i8 %i.dm, 0
  br i1 %.not177, label %.thread202, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %.1144 = phi i8 [ %.0143.mux, %bb.ad ], [ 0, %bb.ae ] ; 7 uses
  %.1136 = phi ptr [ %.0135.mux, %bb.ad ], [ %.1127229, %bb.ae ] ; 8 uses
  %i.dn = load i16, ptr %i.l, align 2
  %.not225 = icmp ult i16 %i.dg, %i.dn
  br i1 %.not225, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %9 = icmp ugt i16 %i.dg, -1025
  %i.do = lshr i16 %i.dg, 1
  %i.dp = trunc i16 %i.do to i8                   ; 2 uses
  %i.dq = select i1 %9, i8 %i.dp, i8 0            ; 5 uses
  %i.dr = icmp ugt i8 %.1144, %i.dq
  %i.ds = icmp ne i8 %i.dq, 0
  %or.cond4.not = and i1 %i.ds, %i.dr
  br i1 %or.cond4.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = icmp ugt i8 %i.dq, 1                    ; 3 uses
  %brmerge272 = or i1 %i.dt, %.not176
  %.mux = select i1 %i.dt, i8 %i.dp, i8 %i.dq
  %.1136.mux = select i1 %i.dt, ptr %.1136, ptr %.5
  br i1 %brmerge272, label %.backedge, label %bb.ai, !llvm.loop !26

bb.ai:                                            ; preds = %bb.ah
  %i.du = call noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef %.1136, ptr noundef nonnull %.5, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %1, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #11
  %.not180 = icmp eq i8 %i.du, 0
  br i1 %.not180, label %.thread202, label %.backedge

bb.aj:                                            ; preds = %bb.ag, %bb.af
  br i1 %.not176, label %.thread202, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not183 = icmp eq ptr %.1136, %.1127229
  br i1 %.not183, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dv = load i16, ptr %i.m, align 2
  %i.dw = icmp ult i16 %i.dg, %i.dv
  br i1 %i.dw, label %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dx = load i16, ptr %i.n, align 2
  %.not.i = icmp ult i16 %i.dg, %i.dx
  br i1 %.not.i, label %bb.an, label %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit

bb.an:                                            ; preds = %bb.am
  %i.dy = load ptr, ptr %i.o, align 8
  %i.dz = lshr i16 %i.dg, 1
  %i.ea = zext nneg i16 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  %i.ec = load i16, ptr %i.eb, align 2
  %i.ed = and i16 %i.ec, 128
  %i.ee = icmp eq i16 %i.ed, 0
  br i1 %i.ee, label %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 -2
  %i.eg = load i16, ptr %i.ef, align 2
  %i.eh = icmp ult i16 %i.eg, 256
  br i1 %i.eh, label %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread, label %bb.ap

_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit: ; preds = %bb.am
  %i.ei = icmp ult i16 %i.dg, -1023
  %i.ej = icmp eq i16 %i.dg, -512
  %i.ek = or i1 %i.ei, %i.ej
  br i1 %i.ek, label %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread, label %bb.ap

_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread: ; preds = %bb.ao, %bb.an, %bb.al, %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit
  %i.el = call noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef %.1136, ptr noundef nonnull %.1127229, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %1, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #11
  %.not185 = icmp eq i8 %i.el, 0
  br i1 %.not185, label %.thread202, label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread, %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit, %bb.ak
  %.5140 = phi ptr [ %.1136, %bb.ak ], [ %.1136, %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit ], [ %.1127229, %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread ], [ %.1136, %bb.ao ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  store ptr %0, ptr %8, align 8
  store ptr %7, ptr %i.p, align 8
  %i.em = call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 8) #11 ; 4 uses
  store ptr %i.em, ptr %i.q, align 8
  store ptr %i.em, ptr %i.r, align 8
  store ptr %i.em, ptr %i.s, align 8
  %i.en = load ptr, ptr %i.p, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load i16, ptr %i.eo, align 8
  %i.eq = and i16 %i.ep, 2
  %.not.i.i = icmp eq i16 %i.eq, 0
  %i.er = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.es = load i32, ptr %i.er, align 8
  %i.et = select i1 %.not.i.i, i32 %i.es, i32 27
  store i32 %i.et, ptr %i.t, align 8
  store i8 0, ptr %i.u, align 4
  %i.eu = icmp ne ptr %i.em, null
  %i.ev = load i32, ptr %6, align 4               ; 2 uses
  %i.ew = icmp sgt i32 %i.ev, 0
  %or.cond.i = select i1 %i.eu, i1 true, i1 %i.ew
  br i1 %or.cond.i, label %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit, label %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit.thread

_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit.thread: ; preds = %bb.ap
  store i32 7, ptr %6, align 4
  br label %bb.ba

_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit: ; preds = %bb.ap
  %i.ex = icmp slt i32 %i.ev, 1
  br i1 %i.ex, label %bb.aq, label %bb.ba

bb.aq:                                            ; preds = %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit
  %i.ey = call noundef ptr @_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKhS2_NS0_6StopAtEaRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %.5140, ptr noundef nonnull %.5, i32 noundef 0, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  %i.ez = load i8, ptr %i.u, align 4
  %i.fa = icmp ugt i8 %i.ez, 1
  br i1 %i.fa, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fb = call noundef ptr @_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKhS2_NS0_6StopAtEaRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %.5, ptr noundef %3, i32 noundef 1, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.7 = phi ptr [ %i.fb, %bb.ar ], [ %.5, %bb.aq ] ; 10 uses
  %i.fc = load i32, ptr %6, align 4
  %i.fd = icmp slt i32 %i.fc, 1
  br i1 %i.fd, label %bb.at, label %bb.ba

bb.at:                                            ; preds = %bb.as
  %i.fe = ptrtoint ptr %.7 to i64
  %i.ff = ptrtoint ptr %.1127229 to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = icmp sgt i64 %i.fg, 2147483647
  br i1 %i.fh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 8, ptr %6, align 4
  br label %bb.ba

bb.av:                                            ; preds = %bb.at
  %i.fi = load i16, ptr %i.l, align 2
  %.not226 = icmp ult i16 %i.dg, %i.fi
  br i1 %.not226, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fj = call noundef signext i8 @_ZNK6icu_7816ReorderingBuffer6equalsEPKhS2_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %.5140, ptr noundef %.7)
  %.not189 = icmp eq i8 %i.fj, 0
  br i1 %.not189, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fk = call noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef %.5140, ptr noundef %.7, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %1, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #11
  %.not191 = icmp eq i8 %i.fk, 0
  br i1 %.not191, label %bb.ba, label %bb.az

bb.ay:                                            ; preds = %bb.aw, %bb.av
  %i.fl = load ptr, ptr %i.q, align 8             ; 2 uses
  %i.fm = load ptr, ptr %i.s, align 8
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = lshr exact i64 %i.fp, 1
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = call noundef signext i8 @_ZN6icu_7812ByteSinkUtil12appendChangeEPKhS2_PKDsiRNS_8ByteSinkEPNS_5EditsER10UErrorCode(ptr noundef %.5140, ptr noundef %.7, ptr noundef %i.fl, i32 noundef %i.fr, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) #11
  %.not190 = icmp eq i8 %i.fs, 0
  br i1 %.not190, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br label %bb.ba

bb.ba:                                            ; preds = %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit.thread, %bb.ay, %bb.ax, %bb.as, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit, %bb.az, %bb.au
  %.4147 = phi i8 [ %.1144, %bb.ax ], [ %.1144, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit ], [ %.1144, %bb.au ], [ 0, %bb.az ], [ %.1144, %bb.as ], [ %.1144, %bb.ay ], [ %.1144, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit.thread ]
  %.6141 = phi ptr [ %.5140, %bb.ax ], [ %.5140, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit ], [ %.5140, %bb.au ], [ %.7, %bb.az ], [ %.5140, %bb.as ], [ %.5140, %bb.ay ], [ %.5140, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit.thread ]
  %i.ft = phi i1 [ true, %bb.ax ], [ true, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit ], [ true, %bb.au ], [ false, %bb.az ], [ true, %bb.as ], [ true, %bb.ay ], [ true, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit.thread ]
  %.8 = phi ptr [ %.7, %bb.ax ], [ %.5, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit ], [ %.7, %bb.au ], [ %.7, %bb.az ], [ %.7, %bb.as ], [ %.7, %bb.ay ], [ %.5, %_ZN6icu_7816ReorderingBufferC2ERKNS_15Normalizer2ImplERNS_13UnicodeStringER10UErrorCode.exit.thread ] ; 2 uses
  %i.fu = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not.i194 = icmp eq ptr %i.fu, null
  br i1 %.not.i194, label %_ZN6icu_7816ReorderingBufferD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fv = load ptr, ptr %i.p, align 8, !nonnull !5, !align !6
  %i.fw = load ptr, ptr %i.s, align 8
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy
  %i.ga = lshr exact i64 %i.fz, 1
  %i.gb = trunc i64 %i.ga to i32
  call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %i.fv, i32 noundef %i.gb) #11
  br label %_ZN6icu_7816ReorderingBufferD2Ev.exit

_ZN6icu_7816ReorderingBufferD2Ev.exit:            ; preds = %bb.ba, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  br i1 %i.ft, label %.thread202, label %.backedge

.backedge:                                        ; preds = %bb.ai, %bb.ah, %_ZN6icu_7816ReorderingBufferD2Ev.exit
  %.0143.be = phi i8 [ %.4147, %_ZN6icu_7816ReorderingBufferD2Ev.exit ], [ %.mux, %bb.ah ], [ %i.dq, %bb.ai ]
  %.0135.be = phi ptr [ %.6141, %_ZN6icu_7816ReorderingBufferD2Ev.exit ], [ %.1136.mux, %bb.ah ], [ %.5, %bb.ai ] ; 2 uses
  %.0126.be = phi ptr [ %.8, %_ZN6icu_7816ReorderingBufferD2Ev.exit ], [ %.5, %bb.ah ], [ %.5, %bb.ai ] ; 3 uses
  %i.gc = icmp eq ptr %.0126.be, %3
  br i1 %i.gc, label %._crit_edge, label %.lr.ph.preheader

.thread202:                                       ; preds = %bb.ai, %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread, %bb.ae, %bb.aj, %_ZN6icu_7816ReorderingBufferD2Ev.exit, %bb.e, %._crit_edge
  %.2 = phi ptr [ %.1127.lcssa, %._crit_edge ], [ %.1127.lcssa, %bb.e ], [ %.8, %_ZN6icu_7816ReorderingBufferD2Ev.exit ], [ %.5, %bb.ae ], [ %.1136, %bb.aj ], [ %.5, %_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt.exit.thread ], [ %.5, %bb.ai ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #11
  ret ptr %.2
}

declare noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare i32 @ucptrie_internalSmallU8Index_78(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7815Normalizer2Impl29norm16HasDecompBoundaryBeforeEt(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, i16 noundef zeroext %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.b = load i16, ptr %i.a, align 2
  %i.c = icmp ult i16 %1, %i.b
  br i1 %i.c, label %bb.f, label %bb.b
end_hunk_3
begin_hunk_4_@_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKhS2_NS0_6StopAtEaRNS_16ReorderingBufferER10UErrorCode:bb.a
  %.0.i180.sroa.gep232 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  br i1 %i.c, label %.preheader, label %.thread195

.preheader:                                       ; preds = %bb.a
  %i.d = icmp ult ptr %1, %2
  br i1 %i.d, label %.lr.ph, label %.thread195

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.h = icmp eq i32 %3, 1                        ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 3 uses
  %.not154 = icmp eq i32 %3, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not152 = icmp ne i32 %3, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.not3.i = icmp eq i8 %4, 0
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph
  %.0111205 = phi ptr [ %1, %.lr.ph ], [ %.4115, %.backedge.backedge ] ; 29 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0111205, i64 1 ; 24 uses
  %i.r = load i8, ptr %.0111205, align 1          ; 6 uses
  %i.s = zext i8 %i.r to i32                      ; 4 uses
  %i.t = icmp sgt i8 %i.r, -1
  br i1 %i.t, label %bb.w, label %bb.b

bb.b:                                             ; preds = %.backedge
  %.not144 = icmp eq ptr %i.q, %2
  br i1 %.not144, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i8 %i.r, -33
  br i1 %i.u, label %bb.d, label %bb.r

bb.d:                                             ; preds = %bb.c
  %i.v = icmp samesign ult i8 %i.r, -16
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.w = and i32 %i.s, 15                         ; 2 uses
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = load i8, ptr %i.q, align 1
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = lshr i32 %i.ac, 5
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = and i32 %i.ae, %i.aa
  %.not149 = icmp eq i32 %i.af, 0
  br i1 %.not149, label %bb.v, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.0111205, i64 2 ; 5 uses
  %.not150 = icmp eq ptr %i.ag, %2
  br i1 %.not150, label %bb.v, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = xor i8 %i.ah, -128                      ; 2 uses
  %i.aj = icmp ult i8 %i.ai, 64
  br i1 %i.aj, label %bb.h, label %bb.v

bb.h:                                             ; preds = %bb.g
  %i.ak = zext nneg i8 %i.ai to i32
  %i.al = load ptr, ptr %i.e, align 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = shl nuw nsw i32 %i.w, 6
  %i.ao = and i32 %i.ac, 63
  %i.ap = or disjoint i32 %i.ao, %i.an
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = zext i16 %i.as to i32
  %i.au = add nuw nsw i32 %i.at, %i.ak
  br label %bb.u

bb.i:                                             ; preds = %bb.d
  %i.av = add nsw i32 %i.s, -240                  ; 2 uses
  %i.aw = icmp samesign ult i8 %i.r, -11
  br i1 %i.aw, label %bb.j, label %bb.v

bb.j:                                             ; preds = %bb.i
  %i.ax = load i8, ptr %i.q, align 1
  %i.ay = zext i8 %i.ax to i32                    ; 2 uses
  %i.az = lshr i32 %i.ay, 4
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @.str.1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1
  %i.bd = sext i8 %i.bc to i32
  %i.be = shl nuw nsw i32 1, %i.av
  %i.bf = and i32 %i.be, %i.bd
  %.not145 = icmp eq i32 %i.bf, 0
  br i1 %.not145, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = shl nuw nsw i32 %i.av, 6
  %i.bh = and i32 %i.ay, 63
  %i.bi = or disjoint i32 %i.bh, %i.bg            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0111205, i64 2 ; 4 uses
  %.not146 = icmp eq ptr %i.bj, %2
  br i1 %.not146, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = xor i8 %i.bk, -128                      ; 2 uses
  %i.bm = icmp ult i8 %i.bl, 64
  br i1 %i.bm, label %bb.m, label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.0111205, i64 3 ; 6 uses
  %.not147 = icmp eq ptr %i.bn, %2
  br i1 %.not147, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load i8, ptr %i.bn, align 1
  %i.bp = xor i8 %i.bo, -128                      ; 2 uses
  %i.bq = icmp ult i8 %i.bp, 64
  br i1 %i.bq, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28
  %i.bt = load i16, ptr %i.bs, align 4
  %i.bu = zext i16 %i.bt to i32
  %.not148 = icmp samesign ult i32 %i.bi, %i.bu
  br i1 %.not148, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 20
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = add nsw i32 %i.bw, -2
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %i.by = call i32 @ucptrie_internalSmallU8Index_78(ptr noundef nonnull %i.br, i32 noundef %i.bi, i8 noundef zeroext %i.bl, i8 noundef zeroext %i.bp) #11
  br label %bb.u

bb.r:                                             ; preds = %bb.c
  %i.bz = icmp samesign ugt i8 %i.r, -63
  br i1 %i.bz, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ca = load i8, ptr %i.q, align 1
  %i.cb = xor i8 %i.ca, -128                      ; 2 uses
  %i.cc = icmp ult i8 %i.cb, 64
  br i1 %i.cc, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cd = zext nneg i8 %i.cb to i32
  %i.ce = load ptr, ptr %i.e, align 8
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = and i32 %i.s, 31
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = load i16, ptr %i.ci, align 2
  %i.ck = zext i16 %i.cj to i32
  %i.cl = add nuw nsw i32 %i.ck, %i.cd
  br label %bb.u

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.h, %bb.t
  %.0117 = phi i32 [ %i.au, %bb.h ], [ %i.cl, %bb.t ], [ %i.bx, %bb.p ], [ %i.by, %bb.q ]
  %.1112 = phi ptr [ %i.ag, %bb.h ], [ %i.q, %bb.t ], [ %i.bn, %bb.p ], [ %i.bn, %bb.q ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.1112, i64 1
  br label %bb.w

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.e, %bb.b
  %.2113 = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %bb.f ], [ %i.q, %bb.e ], [ %i.bn, %bb.n ], [ %i.bn, %bb.m ], [ %i.bj, %bb.l ], [ %i.bj, %bb.k ], [ %i.q, %bb.j ], [ %i.q, %bb.i ], [ %i.q, %bb.s ], [ %i.q, %bb.r ], [ %i.q, %bb.b ]
  %i.cn = load ptr, ptr %i.e, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = add nsw i32 %i.cp, -1
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %.backedge
  %.2119 = phi i32 [ %i.s, %.backedge ], [ %.0117, %bb.u ], [ %i.cq, %bb.v ]
  %.4115 = phi ptr [ %i.q, %.backedge ], [ %i.cm, %bb.u ], [ %.2113, %bb.v ] ; 15 uses
  %i.cr = load ptr, ptr %i.e, align 8             ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = sext i32 %.2119 to i64
  %i.cv = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.cu
  %i.cw = load i16, ptr %i.cv, align 2            ; 9 uses
  %i.cx = load i16, ptr %i.f, align 2
  %.not151 = icmp ult i16 %i.cw, %i.cx
  br i1 %.not151, label %bb.au, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cy = load i16, ptr %i.g, align 2
  %.not = icmp ult i16 %i.cw, %i.cy
  br i1 %.not, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.x
  %7 = icmp ugt i16 %i.cw, -1025
  %i.cz = lshr i16 %i.cw, 1
  %i.da = trunc i16 %i.cz to i8
  %i.db = select i1 %7, i8 %i.da, i8 0            ; 3 uses
  %i.dc = icmp eq i8 %i.db, 0
  %or.cond = and i1 %i.h, %i.dc
  br i1 %or.cond, label %.thread195, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = load i8, ptr %.0111205, align 1         ; 4 uses
  %i.de = ptrtoint ptr %.4115 to i64
  %i.df = ptrtoint ptr %.0111205 to i64
  %i.dg = sub i64 %i.de, %i.df
  switch i64 %i.dg, label %bb.ad [
    i64 1, label %bb.aa
    i64 2, label %bb.ab
    i64 3, label %bb.ac
    i64 4, label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit
  ]

bb.aa:                                            ; preds = %bb.z
  %i.dh = zext i8 %i.dd to i32
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.thread

bb.ab:                                            ; preds = %bb.z
  %i.di = and i8 %i.dd, 31
  %i.dj = zext nneg i8 %i.di to i32
  %i.dk = shl nuw nsw i32 %i.dj, 6
  %i.dl = load i8, ptr %i.q, align 1
  %i.dm = and i8 %i.dl, 63
  %i.dn = zext nneg i8 %i.dm to i32
  %i.do = or disjoint i32 %i.dk, %i.dn
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.thread

bb.ac:                                            ; preds = %bb.z
  %i.dp = zext i8 %i.dd to i32
  %i.dq = shl nuw nsw i32 %i.dp, 12
  %i.dr = load i8, ptr %i.q, align 1
  %i.ds = and i8 %i.dr, 63
  %i.dt = zext nneg i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, 6
  %i.dv = getelementptr inbounds nuw i8, ptr %.0111205, i64 2
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = and i8 %i.dw, 63
  %i.dy = zext nneg i8 %i.dx to i32
  %.masked13.i = and i32 %i.dq, 61440
  %.masked.i = or disjoint i32 %i.du, %.masked13.i
  %i.dz = or disjoint i32 %.masked.i, %i.dy
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.thread

bb.ad:                                            ; preds = %bb.z
  call void @abort() #12
  unreachable

_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit: ; preds = %bb.z
  %i.ea = and i8 %i.dd, 7
  %i.eb = zext nneg i8 %i.ea to i32
  %i.ec = shl nuw nsw i32 %i.eb, 18
  %i.ed = load i8, ptr %i.q, align 1
  %i.ee = and i8 %i.ed, 63
  %i.ef = zext nneg i8 %i.ee to i32
  %i.eg = shl nuw nsw i32 %i.ef, 12
  %i.eh = or disjoint i32 %i.eg, %i.ec            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.0111205, i64 2
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = and i8 %i.ej, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = shl nuw nsw i32 %i.el, 6
  %i.en = getelementptr inbounds nuw i8, ptr %.0111205, i64 3
  %i.eo = load i8, ptr %i.en, align 1
  %i.ep = and i8 %i.eo, 63
  %i.eq = zext nneg i8 %i.ep to i32
  %i.er = or disjoint i32 %i.em, %i.eq
  %i.es = or disjoint i32 %i.er, %i.eh            ; 2 uses
  %i.et = icmp samesign ult i32 %i.eh, 65536
  br i1 %i.et, label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.thread, label %bb.ae

_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.thread: ; preds = %bb.ac, %bb.ab, %bb.aa, %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit
  %.0.i185 = phi i32 [ %i.es, %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit ], [ %i.dz, %bb.ac ], [ %i.do, %bb.ab ], [ %i.dh, %bb.aa ]
  %i.eu = trunc nuw i32 %.0.i185 to i16
  %i.ev = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, i16 noundef zeroext %i.eu, i8 noundef zeroext %i.db, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

bb.ae:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit
  %i.ew = call noundef signext i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %i.es, i8 noundef zeroext %i.db, ptr noundef nonnull align 4 dereferenceable(4) %6)
  br label %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit

_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit: ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.thread, %bb.ae
  %i.ex = phi i8 [ %i.ev, %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.thread ], [ %i.ew, %bb.ae ]
  %.not162 = icmp eq i8 %i.ex, 0
  br i1 %.not162, label %.thread195, label %bb.af

bb.af:                                            ; preds = %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit
  %i.ey = load i8, ptr %i.i, align 4
  %i.ez = icmp ult i8 %i.ey, 2
  %or.cond200 = select i1 %i.h, i1 %i.ez, i1 false
  br i1 %or.cond200, label %..thread195.loopexit_crit_edge225, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, !llvm.loop !27

bb.ag:                                            ; preds = %bb.x
  %i.fa = load i16, ptr %i.j, align 2
  %i.fb = icmp ult i16 %i.cw, %i.fa
  br i1 %i.fb, label %bb.ah, label %bb.av

bb.ah:                                            ; preds = %bb.ag
  br i1 %.not154, label %bb.ai, label %.thread195

bb.ai:                                            ; preds = %bb.ah
  %i.fc = load i8, ptr %.0111205, align 1         ; 4 uses
  %i.fd = ptrtoint ptr %.4115 to i64
  %i.fe = ptrtoint ptr %.0111205 to i64
  %i.ff = sub i64 %i.fd, %i.fe
  switch i64 %i.ff, label %bb.an [
    i64 1, label %bb.aj
    i64 2, label %bb.ak
    i64 3, label %bb.al
    i64 4, label %bb.am
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.fg = zext i8 %i.fc to i32
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit170

bb.ak:                                            ; preds = %bb.ai
  %i.fh = and i8 %i.fc, 31
  %i.fi = zext nneg i8 %i.fh to i32
  %i.fj = shl nuw nsw i32 %i.fi, 6
  %i.fk = load i8, ptr %i.q, align 1
  %i.fl = and i8 %i.fk, 63
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fj, %i.fm
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit170

bb.al:                                            ; preds = %bb.ai
  %i.fo = zext i8 %i.fc to i32
  %i.fp = shl nuw nsw i32 %i.fo, 12
  %i.fq = load i8, ptr %i.q, align 1
  %i.fr = and i8 %i.fq, 63
  %i.fs = zext nneg i8 %i.fr to i32
  %i.ft = shl nuw nsw i32 %i.fs, 6
  %i.fu = getelementptr inbounds nuw i8, ptr %.0111205, i64 2
  %i.fv = load i8, ptr %i.fu, align 1
  %i.fw = and i8 %i.fv, 63
  %i.fx = zext nneg i8 %i.fw to i32
  %.masked13.i168 = and i32 %i.fp, 61440
  %.masked.i169 = or disjoint i32 %i.ft, %.masked13.i168
  %i.fy = or disjoint i32 %.masked.i169, %i.fx
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit170

bb.am:                                            ; preds = %bb.ai
  %i.fz = and i8 %i.fc, 7
  %i.ga = zext nneg i8 %i.fz to i32
  %i.gb = shl nuw nsw i32 %i.ga, 18
  %i.gc = load i8, ptr %i.q, align 1
  %i.gd = and i8 %i.gc, 63
  %i.ge = zext nneg i8 %i.gd to i32
  %i.gf = shl nuw nsw i32 %i.ge, 12
  %i.gg = or disjoint i32 %i.gf, %i.gb
  %i.gh = getelementptr inbounds nuw i8, ptr %.0111205, i64 2
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = and i8 %i.gi, 63
  %i.gk = zext nneg i8 %i.gj to i32
  %i.gl = shl nuw nsw i32 %i.gk, 6
  %i.gm = or disjoint i32 %i.gg, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %.0111205, i64 3
  %i.go = load i8, ptr %i.gn, align 1
  %i.gp = and i8 %i.go, 63
  %i.gq = zext nneg i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.gm, %i.gq
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit170

bb.an:                                            ; preds = %bb.ai
  call void @abort() #12
  unreachable

_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit170: ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am
  %.0.i167 = phi i32 [ %i.fg, %bb.aj ], [ %i.fn, %bb.ak ], [ %i.fy, %bb.al ], [ %i.gr, %bb.am ]
  %i.gs = lshr i16 %i.cw, 3
  %i.gt = zext nneg i16 %i.gs to i32
  %i.gu = add nuw nsw i32 %.0.i167, %i.gt
  %i.gv = load i16, ptr %i.k, align 4
  %i.gw = zext i16 %i.gv to i32
  %i.gx = sub nsw i32 %i.gu, %i.gw                ; 7 uses
  %i.gy = icmp ult i32 %i.gx, 65536
  br i1 %i.gy, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit170
  %i.gz = load ptr, ptr %i.cr, align 8
  %i.ha = lshr i32 %i.gx, 6
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.gz, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2
  %i.he = zext i16 %i.hd to i32
  %i.hf = and i32 %i.gx, 63
  %i.hg = add nuw nsw i32 %i.hf, %i.he
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.ap:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit170
  %i.hh = icmp ult i32 %i.gx, 1114112
  br i1 %i.hh, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.hi = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.hj = load i32, ptr %i.hi, align 8
  %.not.i = icmp slt i32 %i.gx, %i.hj
end_hunk_4
begin_hunk_5_@_ZNK6icu_7815Normalizer2Impl13addCompositesEPKtRNS_10UnicodeSetE:bb.a
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = zext i16 %i.ac to i32
  %i.ae = and i32 %i.s, 63
  %i.af = add nuw nsw i32 %i.ae, %i.ad
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.h:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %.014, 2228224
  br i1 %i.ag, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ai = load i32, ptr %i.ah, align 8
  %.not.i = icmp slt i32 %i.s, %i.ai
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = add nsw i32 %i.ak, -2
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.k:                                             ; preds = %bb.i
  %i.am = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.u, i32 noundef %i.s) #11
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

bb.l:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = add nsw i32 %i.ao, -1
  br label %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit

_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit: ; preds = %bb.g, %bb.j, %bb.k, %bb.l
  %i.aq = phi i32 [ %i.af, %bb.g ], [ %i.ap, %bb.l ], [ %i.al, %bb.j ], [ %i.am, %bb.k ]
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [2 x i8], ptr %i.w, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2            ; 3 uses
  %i.au = load i16, ptr %i.b, align 2             ; 2 uses
  %.not.i.i = icmp ult i16 %i.at, %i.au
  %narrow.i.i = sub i16 %i.at, %i.au
  %i.av = load i16, ptr %i.c, align 2
  %i.aw = add i16 %narrow.i.i, %i.av
  %.0.i.i = select i1 %.not.i.i, i16 %i.at, i16 %i.aw
  %i.ax = load ptr, ptr %i.d, align 8
  %i.ay = lshr i16 %.0.i.i, 1
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.ba, align 2
  %i.bd = and i16 %i.bc, 31
  %i.be = zext nneg i16 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.bb, i64 %i.be
  tail call void @_ZNK6icu_7815Normalizer2Impl13addCompositesEPKtRNS_10UnicodeSetE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %i.bf, ptr noundef nonnull align 8 dereferenceable(200) %2)
  br label %bb.m

bb.m:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl12getRawNorm16Ei.exit, %bb.e
  %i.bg = tail call noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200) %2, i32 noundef %i.s) #11 ; 0 uses
  %i.bh = icmp sgt i16 %i.e, -1
  br i1 %i.bh, label %bb.b, label %bb.n, !llvm.loop !33

bb.n:                                             ; preds = %bb.m
  ret void
}

declare noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet3addEi(ptr noundef nonnull align 8 dereferenceable(200), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7815Normalizer2Impl9recomposeERNS_16ReorderingBufferEia(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef nonnull align 8 captures(none) dereferenceable(64) %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.at, label %.preheader180

.preheader180:                                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not158 = icmp eq i8 %3, 0
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.backedge, %.preheader180
  %.0141.ph.ph = phi ptr [ null, %.preheader180 ], [ %i.ix, %.outer.outer.backedge ]
  %.0129.ph.ph = phi i8 [ 0, %.preheader180 ], [ %i.bd, %.outer.outer.backedge ]
  %.0126.ph.ph = phi i8 [ 0, %.preheader180 ], [ %.0126.ph.ph.be, %.outer.outer.backedge ]
  %.0121.ph.ph = phi ptr [ null, %.preheader180 ], [ %.0121.ph.ph.be, %.outer.outer.backedge ] ; 9 uses
  %.0114.ph.ph = phi ptr [ %i.f, %.preheader180 ], [ %.0114, %.outer.outer.backedge ]
  %.0.ph.ph = phi ptr [ %i.d, %.preheader180 ], [ %.2, %.outer.outer.backedge ]
  %.0121.ph313 = ptrtoint ptr %.0121.ph.ph to i64 ; 2 uses
  %i.l = getelementptr i8, ptr %.0121.ph.ph, i64 4 ; 2 uses
  %i.m = getelementptr i8, ptr %.0121.ph.ph, i64 2 ; 5 uses
  %i.n = add i64 %.0121.ph313, 6
  %invariant.op = sub i64 -5, %.0121.ph313
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.0141.ph = phi ptr [ %.0141.ph.ph, %.outer.outer ], [ %.0141.ph.be, %.outer.backedge ]
  %.0129.ph = phi i8 [ %.0129.ph.ph, %.outer.outer ], [ %i.bd, %.outer.backedge ] ; 2 uses
  %.0126.ph = phi i8 [ %.0126.ph.ph, %.outer.outer ], [ %.0126.ph184, %.outer.backedge ]
  %.0114.ph = phi ptr [ %.0114.ph.ph, %.outer.outer ], [ %.0114, %.outer.backedge ]
  %.0.ph = phi ptr [ %.0.ph.ph, %.outer.outer ], [ %.2, %.outer.backedge ]
  %i.o = icmp eq i8 %.0129.ph, 0
  br label %.outer182

.outer182:                                        ; preds = %.outer182.backedge, %.outer
  %.0141.ph183 = phi ptr [ %.0141.ph, %.outer ], [ %.0141.ph183.be, %.outer182.backedge ]
  %.0126.ph184 = phi i8 [ %.0126.ph, %.outer ], [ %.1127, %.outer182.backedge ] ; 2 uses
  %.0114.ph186 = phi ptr [ %.0114.ph, %.outer ], [ %.3117356, %.outer182.backedge ]
  %.0.ph187 = phi ptr [ %.0.ph, %.outer ], [ %.6357, %.outer182.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.outer182, %.loopexit
  %.0141 = phi ptr [ null, %.loopexit ], [ %.0141.ph183, %.outer182 ] ; 6 uses
  %.0114 = phi ptr [ %.2116, %.loopexit ], [ %.0114.ph186, %.outer182 ] ; 16 uses
  %.0 = phi ptr [ %.5, %.loopexit ], [ %.0.ph187, %.outer182 ] ; 3 uses
  %.0114462 = ptrtoint ptr %.0114 to i64          ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 2 ; 4 uses
  %i.q = load i16, ptr %.0, align 2
  %i.r = zext i16 %i.q to i32                     ; 7 uses
  %i.s = and i32 %i.r, 63488
  %i.t = icmp eq i32 %i.s, 55296
  br i1 %i.t, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = lshr i32 %i.r, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = zext i16 %i.z to i32
  %i.ab = and i32 %i.r, 63
  %i.ac = add nuw nsw i32 %i.ab, %i.aa
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.ad = and i32 %i.r, 1024
  %i.ae = icmp ne i32 %i.ad, 0
  %.not = icmp eq ptr %i.p, %.0114
  %or.cond163 = select i1 %i.ae, i1 true, i1 %.not
  br i1 %or.cond163, label %._crit_edge321, label %bb.e

._crit_edge321:                                   ; preds = %bb.d
  %.pre = load ptr, ptr %i.h, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.af = load i16, ptr %i.p, align 2
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, 64512
  %i.ai = icmp eq i32 %i.ah, 56320
  %.pre322 = load ptr, ptr %i.h, align 8          ; 5 uses
  br i1 %i.ai, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 4 ; 2 uses
  %i.ak = shl nuw nsw i32 %i.r, 10
  %i.al = add nsw i32 %i.ak, -56613888
  %i.am = add nuw nsw i32 %i.al, %i.ag            ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.pre322, i64 24
  %i.ao = load i32, ptr %i.an, align 8
  %.not156 = icmp slt i32 %i.am, %i.ao
  br i1 %.not156, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.pre322, i64 20
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = add nsw i32 %i.aq, -2
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.as = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %.pre322, i32 noundef %i.am) #11
  %.pre323 = load ptr, ptr %i.h, align 8
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge321, %bb.e
  %i.at = phi ptr [ %.pre, %._crit_edge321 ], [ %.pre322, %bb.e ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = add nsw i32 %i.av, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.c
  %i.ax = phi ptr [ %i.u, %bb.c ], [ %i.at, %bb.i ], [ %.pre323, %bb.h ], [ %.pre322, %bb.g ]
  %.1140 = phi i32 [ %i.r, %bb.c ], [ %i.r, %bb.i ], [ %i.am, %bb.h ], [ %i.am, %bb.g ] ; 8 uses
  %.1125 = phi i32 [ %i.ac, %bb.c ], [ %i.aw, %bb.i ], [ %i.as, %bb.h ], [ %i.ar, %bb.g ]
  %.2 = phi ptr [ %i.p, %bb.c ], [ %i.p, %bb.i ], [ %i.aj, %bb.h ], [ %i.aj, %bb.g ] ; 26 uses
  %.2463 = ptrtoint ptr %.2 to i64                ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = sext i32 %.1125 to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2            ; 9 uses
  %4 = icmp ugt i16 %i.bc, -1025
  %5 = lshr i16 %i.bc, 1
  %6 = trunc i16 %5 to i8
  %i.bd = select i1 %4, i8 %6, i8 0               ; 4 uses
  %i.be = load i16, ptr %i.i, align 2             ; 3 uses
  %i.bf = icmp ule i16 %i.be, %i.bc
  %i.bg = icmp ult i16 %i.bc, -511
  %i.bh = and i1 %i.bg, %i.bf
  %i.bi = icmp ne ptr %.0141, null
  %or.cond = select i1 %i.bh, i1 %i.bi, i1 false
  %i.bj = icmp ult i8 %.0129.ph, %i.bd
  %or.cond4 = or i1 %i.o, %i.bj
  %or.cond261 = and i1 %or.cond, %or.cond4
  br i1 %or.cond261, label %bb.k, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

bb.k:                                             ; preds = %bb.j
  %.not176 = icmp eq i16 %i.bc, -512
  br i1 %.not176, label %bb.l, label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.bk = icmp samesign ult i32 %.1140, 4519
  br i1 %i.bk, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bl = load i16, ptr %.0121.ph.ph, align 2
  %i.bm = add i16 %i.bl, -4352                    ; 2 uses
  %i.bn = icmp ult i16 %i.bm, 19
  br i1 %i.bn, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bo = getelementptr inbounds i8, ptr %.2, i64 -2 ; 10 uses
  %narrow = mul nuw nsw i16 %i.bm, 21
  %i.bp = trunc nuw nsw i32 %.1140 to i16
  %i.bq = add nsw i16 %i.bp, -4449
  %i.br = add nsw i16 %i.bq, %narrow
  %i.bs = mul i16 %i.br, 28
  %i.bt = add i16 %i.bs, -21504                   ; 3 uses
  %.not162 = icmp eq ptr %.2, %.0114
  br i1 %.not162, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bu = load i16, ptr %.2, align 2
  %i.bv = add i16 %i.bu, -4519                    ; 2 uses
  %i.bw = icmp ult i16 %i.bv, 28
  br i1 %i.bw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %.2, i64 2
  %i.by = add i16 %i.bv, %i.bt
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.0119 = phi i16 [ %i.by, %bb.p ], [ %i.bt, %bb.o ], [ %i.bt, %bb.n ]
  %.3 = phi ptr [ %i.bx, %bb.p ], [ %.2, %bb.o ], [ %.2, %bb.n ] ; 9 uses
  %.3480 = ptrtoaddr ptr %.3 to i64
  store i16 %.0119, ptr %.0121.ph.ph, align 2
  %i.bz = icmp ult ptr %.3, %.0114
  br i1 %i.bz, label %iter.check501, label %.thread

iter.check501:                                    ; preds = %bb.q
  %.3482 = ptrtoint ptr %.3 to i64                ; 2 uses
  %i.ca = add i64 %.3482, 2
  %umax483 = tail call i64 @llvm.umax.i64(i64 %.0114462, i64 %i.ca)
  %i.cb = xor i64 %.3482, -1
  %i.cc = add i64 %umax483, %i.cb                 ; 3 uses
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = add nuw i64 %i.cd, 1                    ; 5 uses
  %min.iters.check484 = icmp ult i64 %i.cc, 6
  br i1 %min.iters.check484, label %.lr.ph.preheader, label %vector.memcheck479

vector.memcheck479:                               ; preds = %iter.check501
  %i.cf = add i64 %.2463, -2
  %i.cg = sub i64 %i.cf, %.3480
  %diff.check481 = icmp ult i64 %i.cg, 32
  br i1 %diff.check481, label %.lr.ph.preheader, label %vector.main.loop.iter.check485

vector.main.loop.iter.check485:                   ; preds = %vector.memcheck479
  %min.iters.check486 = icmp ult i64 %i.cc, 30
  br i1 %min.iters.check486, label %vec.epilog.ph505, label %vector.ph487

vector.ph487:                                     ; preds = %vector.main.loop.iter.check485
  %n.mod.vf488 = and i64 %i.ce, 12
  %n.vec489 = and i64 %i.ce, -16                  ; 4 uses
  %i.ch = shl i64 %n.vec489, 1                    ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bo, i64 %i.ch  ; 2 uses
  %i.cj = getelementptr i8, ptr %.3, i64 %i.ch
  br label %vector.body490

vector.body490:                                   ; preds = %vector.body490, %vector.ph487
  %index491 = phi i64 [ 0, %vector.ph487 ], [ %index.next496, %vector.body490 ] ; 2 uses
  %i.ck = shl i64 %index491, 1                    ; 2 uses
  %next.gep492 = getelementptr i8, ptr %i.bo, i64 %i.ck ; 2 uses
  %next.gep493 = getelementptr i8, ptr %.3, i64 %i.ck ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep493, i64 16
  %wide.load494 = load <8 x i16>, ptr %next.gep493, align 2
  %wide.load495 = load <8 x i16>, ptr %i.cl, align 2
  %i.cm = getelementptr i8, ptr %next.gep492, i64 16
  store <8 x i16> %wide.load494, ptr %next.gep492, align 2
  store <8 x i16> %wide.load495, ptr %i.cm, align 2
  %index.next496 = add nuw i64 %index491, 16      ; 2 uses
  %i.cn = icmp eq i64 %index.next496, %n.vec489
  br i1 %i.cn, label %middle.block497, label %vector.body490, !llvm.loop !34

middle.block497:                                  ; preds = %vector.body490
  %cmp.n498 = icmp eq i64 %i.ce, %n.vec489
  br i1 %cmp.n498, label %.loopexit, label %vec.epilog.iter.check503

vec.epilog.iter.check503:                         ; preds = %middle.block497
  %min.epilog.iters.check504 = icmp eq i64 %n.mod.vf488, 0
  br i1 %min.epilog.iters.check504, label %.lr.ph.preheader, label %vec.epilog.ph505, !prof !37

vec.epilog.ph505:                                 ; preds = %vector.main.loop.iter.check485, %vec.epilog.iter.check503
  %vec.epilog.resume.val499 = phi i64 [ %n.vec489, %vec.epilog.iter.check503 ], [ 0, %vector.main.loop.iter.check485 ]
  %n.vec507 = and i64 %i.ce, -4                   ; 3 uses
  %i.co = shl i64 %n.vec507, 1                    ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bo, i64 %i.co  ; 2 uses
  %i.cq = getelementptr i8, ptr %.3, i64 %i.co
  br label %vec.epilog.vector.body508

vec.epilog.vector.body508:                        ; preds = %vec.epilog.vector.body508, %vec.epilog.ph505
  %index509 = phi i64 [ %vec.epilog.resume.val499, %vec.epilog.ph505 ], [ %index.next513, %vec.epilog.vector.body508 ] ; 2 uses
  %i.cr = shl i64 %index509, 1                    ; 2 uses
  %next.gep510 = getelementptr i8, ptr %i.bo, i64 %i.cr
  %next.gep511 = getelementptr i8, ptr %.3, i64 %i.cr
  %wide.load512 = load <4 x i16>, ptr %next.gep511, align 2
  store <4 x i16> %wide.load512, ptr %next.gep510, align 2
  %index.next513 = add nuw i64 %index509, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next513, %n.vec507
  br i1 %i.cs, label %vec.epilog.middle.block514, label %vec.epilog.vector.body508, !llvm.loop !38

vec.epilog.middle.block514:                       ; preds = %vec.epilog.vector.body508
  %cmp.n515 = icmp eq i64 %i.ce, %n.vec507
  br i1 %cmp.n515, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck479, %iter.check501, %vec.epilog.iter.check503, %vec.epilog.middle.block514
  %.0131248.ph = phi ptr [ %i.bo, %iter.check501 ], [ %i.bo, %vector.memcheck479 ], [ %i.ci, %vec.epilog.iter.check503 ], [ %i.cp, %vec.epilog.middle.block514 ]
  %.0135247.ph = phi ptr [ %.3, %iter.check501 ], [ %.3, %vector.memcheck479 ], [ %i.cj, %vec.epilog.iter.check503 ], [ %i.cq, %vec.epilog.middle.block514 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0131248 = phi ptr [ %i.cv, %.lr.ph ], [ %.0131248.ph, %.lr.ph.preheader ] ; 2 uses
  %.0135247 = phi ptr [ %i.ct, %.lr.ph ], [ %.0135247.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.0135247, i64 2 ; 2 uses
  %i.cu = load i16, ptr %.0135247, align 2
  %i.cv = getelementptr inbounds nuw i8, ptr %.0131248, i64 2 ; 2 uses
  store i16 %i.cu, ptr %.0131248, align 2
  %i.cw = icmp ult ptr %i.ct, %.0114
  br i1 %i.cw, label %.lr.ph, label %.loopexit, !llvm.loop !39

.loopexit:                                        ; preds = %.lr.ph, %middle.block497, %vec.epilog.middle.block514, %bb.m, %bb.l
  %.2116 = phi ptr [ %.0114, %bb.l ], [ %.0114, %bb.m ], [ %i.cp, %vec.epilog.middle.block514 ], [ %i.ci, %middle.block497 ], [ %i.cv, %.lr.ph ] ; 3 uses
  %.5 = phi ptr [ %.2, %bb.l ], [ %.2, %bb.m ], [ %i.bo, %vec.epilog.middle.block514 ], [ %i.bo, %middle.block497 ], [ %i.bo, %.lr.ph ] ; 2 uses
  %i.cx = icmp eq ptr %.5, %.2116
  br i1 %i.cx, label %.thread, label %bb.b, !llvm.loop !40

bb.r:                                             ; preds = %bb.k
  %.2461.le = ptrtoaddr ptr %.2 to i64
  %.2.lcssa315317 = ptrtoint ptr %.2 to i64
  %i.cy = icmp samesign ult i32 %.1140, 13312
  br i1 %i.cy, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cz = shl nuw nsw i32 %.1140, 1               ; 3 uses
  %i.da = load i16, ptr %.0141, align 2
  %i.db = zext i16 %i.da to i32                   ; 3 uses
  %i.dc = icmp samesign ugt i32 %i.cz, %i.db
  br i1 %i.dc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %i.dd = phi i32 [ %i.dj, %.lr.ph.i ], [ %i.db, %bb.s ]
  %.02949.i = phi ptr [ %i.dh, %.lr.ph.i ], [ %.0141, %bb.s ]
  %i.de = and i32 %i.dd, 1
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %.02949.i, i64 %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 4 ; 3 uses
  %i.di = load i16, ptr %i.dh, align 2
  %i.dj = zext i16 %i.di to i32                   ; 3 uses
  %i.dk = icmp samesign ugt i32 %i.cz, %i.dj
  br i1 %i.dk, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !31

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.s
  %.029.lcssa.i = phi ptr [ %.0141, %bb.s ], [ %i.dh, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.db, %bb.s ], [ %i.dj, %.lr.ph.i ] ; 2 uses
  %i.dl = and i32 %.lcssa.i, 32766
  %i.dm = icmp eq i32 %i.cz, %i.dl
  br i1 %i.dm, label %bb.t, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread

bb.t:                                             ; preds = %._crit_edge.i
  %i.dn = and i32 %.lcssa.i, 1
  %.not42.i = icmp eq i32 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %.029.lcssa.i, i64 2
  %i.dp = load i16, ptr %i.do, align 2
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  br i1 %.not42.i, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit.thread169, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit

bb.u:                                             ; preds = %bb.r
  %i.dr = lshr i32 %.1140, 9
  %i.ds = add nuw nsw i32 %i.dr, 13312
  %i.dt = shl nuw nsw i32 %.1140, 6
  %i.du = and i32 %i.ds, 65534                    ; 2 uses
  %i.dv = and i32 %i.dt, 65472                    ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %bb.u
end_hunk_5
