Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/normalizer2impl?download=true
inline.NumInlined: 333
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7816ReorderingBuffer10previousCCEv:bb.a
bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.u, %bb.d ], [ %i.h, %bb.c ], [ %i.h, %bb.b ] ; 8 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !35, !nonnull !23, !align !24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 10
  %i.x = load i16, ptr %i.w, align 2, !tbaa !46
  %i.y = zext i16 %i.x to i32
  %i.z = icmp samesign ult i32 %.0, %i.y
  %i.aa = and i32 %.0, -1024
  %i.ab = icmp eq i32 %i.aa, 55296
  %or.cond.i = or i1 %i.ab, %i.z
  br i1 %or.cond.i, label %_ZNK6icu_7815Normalizer2Impl24getCCFromYesOrMaybeYesCPEi.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !25
  %i.ag = icmp samesign ult i32 %.0, 65536
  br i1 %i.ag, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !49
  %i.ai = lshr i32 %.0, 6
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !50
  %i.am = zext i16 %i.al to i32
  %i.an = and i32 %.0, 63
  %i.ao = add nuw nsw i32 %i.an, %i.am
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ap = icmp samesign ult i32 %.0, 1114112
  br i1 %i.ap, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !51
  %.not.i.i = icmp slt i32 %.0, %i.ar
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !52
  %i.au = add nsw i32 %i.at, -2
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

bb.k:                                             ; preds = %bb.i
  %i.av = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.ad, i32 noundef %.0)
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

bb.l:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !52
  %i.ay = add nsw i32 %i.ax, -1
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i

_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i:  ; preds = %bb.l, %bb.k, %bb.j, %bb.g
  %i.az = phi i32 [ %i.ao, %bb.g ], [ %i.ay, %bb.l ], [ %i.au, %bb.j ], [ %i.av, %bb.k ]
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [2 x i8], ptr %i.af, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !50
  %.fr.i = freeze i16 %i.bc                       ; 2 uses
  %i.bd = icmp ugt i16 %.fr.i, -1025
  %i.be = lshr i16 %.fr.i, 1
  %i.bf = trunc i16 %i.be to i8
  %spec.select.i = select i1 %i.bd, i8 %i.bf, i8 0
  br label %_ZNK6icu_7815Normalizer2Impl24getCCFromYesOrMaybeYesCPEi.exit

_ZNK6icu_7815Normalizer2Impl24getCCFromYesOrMaybeYesCPEi.exit: ; preds = %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i, %bb.e, %bb.a
  %.05 = phi i8 [ 0, %bb.a ], [ 0, %bb.e ], [ %spec.select.i, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.i ]
  ret i8 %.05
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7816ReorderingBuffer6equalsEPKDsS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 2 uses
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
  %i.p = tail call i32 @u_memcmp_78(ptr noundef %i.d, ptr noundef %1, i32 noundef %i.i)
  %i.q = icmp eq i32 %i.p, 0
  %i.r = zext i1 %i.q to i8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = phi i8 [ 0, %bb.a ], [ %i.r, %bb.b ]
  ret i8 %i.s
}

declare i32 @u_memcmp_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7816ReorderingBuffer6equalsEPKhS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19   ; 3 uses
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
  %i.v = load i16, ptr %i.u, align 2, !tbaa !34
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = and i32 %i.w, 64512
  %i.y = icmp eq i32 %i.x, 55296
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = shl nuw nsw i32 %i.w, 10
  %i.aa = add nsw i32 %.044, 2
  %i.ab = sext i32 %i.s to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !34
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
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25  ; 4 uses
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
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25
  %i.au = and i8 %i.at, 63
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = or disjoint i32 %i.ap, %i.av
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ax = icmp samesign ult i8 %i.ak, -16
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %3 = shl nuw nsw i32 %i.al, 12
  %i.ay = sext i32 %i.ah to i64
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = and i8 %i.ba, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = shl nuw nsw i32 %i.bc, 6
  %i.be = getelementptr i8, ptr %i.aj, i64 2
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !25
  %i.bg = and i8 %i.bf, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %.masked54 = and i32 %3, 61440
  %.masked = or disjoint i32 %i.bd, %.masked54
  %i.bi = or disjoint i32 %.masked, %i.bh
  %i.bj = add nsw i32 %.043, 3
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bk = shl nuw nsw i32 %i.al, 18
  %i.bl = and i32 %i.bk, 1835008
  %i.bm = sext i32 %i.ah to i64
  %i.bn = getelementptr inbounds i8, ptr %1, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !25
  %i.bp = and i8 %i.bo, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = shl nuw nsw i32 %i.bq, 12
  %i.bs = or disjoint i32 %i.br, %i.bl
  %i.bt = getelementptr i8, ptr %i.aj, i64 2
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !25
  %i.bv = and i8 %i.bu, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 6
  %i.by = or disjoint i32 %i.bs, %i.bx
  %i.bz = getelementptr i8, ptr %i.aj, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.cb = and i8 %i.ca, 63
  %i.cc = zext nneg i8 %i.cb to i32
  %i.cd = or disjoint i32 %i.by, %i.cc
  %i.ce = add nsw i32 %.043, 4
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.f
  %.1 = phi i32 [ %i.ah, %bb.f ], [ %i.aq, %bb.h ], [ %i.bj, %bb.j ], [ %i.ce, %bb.k ]
  %.0 = phi i32 [ %i.al, %bb.f ], [ %i.aw, %bb.h ], [ %i.bi, %bb.j ], [ %i.cd, %bb.k ]
  %.not55 = icmp eq i32 %.042, %.0
  br i1 %.not55, label %.preheader, label %.loopexit, !llvm.loop !93

.loopexit:                                        ; preds = %bb.l, %bb.c, %bb.b, %bb.a
  %.3 = phi i8 [ 0, %bb.a ], [ %i.r, %bb.b ], [ 0, %bb.c ], [ 0, %bb.l ]
  ret i8 %.3
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7816ReorderingBuffer19appendSupplementaryEihR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i32 noundef %1, i8 noundef zeroext %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !26
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.h                       ; 2 uses
  %i.m = lshr exact i64 %i.l, 1
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22, !nonnull !23, !align !24
  tail call void @_ZN6icu_7813UnicodeString13releaseBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %i.p, i32 noundef %i.n)
  %i.q = add nsw i32 %i.n, 2
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !22, !nonnull !23, !align !24 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i16, ptr %i.s, align 8, !tbaa !25
  %i.u = and i16 %i.t, 2
  %.not.i.i = icmp eq i16 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load i32, ptr %i.v, align 8
  %i.x = shl nsw i32 %i.w, 1
  %i.y = select i1 %.not.i.i, i32 %i.x, i32 54
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %i.y)
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 256)
  %i.z = tail call noundef ptr @_ZN6icu_7813UnicodeString9getBufferEi(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i32 noundef %spec.store.select.i) ; 4 uses
  store ptr %i.z, ptr %i.f, align 8, !tbaa !19
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit.thread, label %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit

_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit.thread: ; preds = %bb.b
  store i32 7, ptr %3, align 4, !tbaa !29
  br label %bb.j

_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit: ; preds = %bb.b
  %i.ab = ptrtoint ptr %i.e to i64
  %i.ac = sub i64 %i.ab, %i.h
  %sext.i = shl i64 %i.ac, 31
  %i.ad = ashr i64 %sext.i, 32
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.ad
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !20
  %sext17.i = shl i64 %i.l, 31
  %i.af = ashr i64 %sext17.i, 32
  %i.ag = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.af
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !21
  %i.ah = load ptr, ptr %i.o, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load i16, ptr %i.ai, align 8, !tbaa !25
  %i.ak = and i16 %i.aj, 2
  %.not.i18.i = icmp eq i16 %i.ak, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load i32, ptr %i.al, align 8
  %i.an = select i1 %.not.i18.i, i32 %i.am, i32 27
  %i.ao = sub nsw i32 %i.an, %i.n
  store i32 %i.ao, ptr %i.a, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7816ReorderingBuffer6resizeEiR10UErrorCode.exit, %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 4, !tbaa !27
  %i.ar = icmp ule i8 %i.aq, %2
  %i.as = icmp eq i8 %2, 0
  %or.cond = or i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = lshr i32 %1, 10
  %i.au = trunc i32 %i.at to i16
  %i.av = add i16 %i.au, -10304
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 3 uses
  store i16 %i.av, ptr %i.ax, align 2, !tbaa !34
  %i.ay = trunc i32 %1 to i16
  %i.az = and i16 %i.ay, 1023
  %i.ba = or disjoint i16 %i.az, -9216
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  store ptr %i.bc, ptr %i.aw, align 8, !tbaa !21
  store i8 %2, ptr %i.ap, align 4, !tbaa !27
  %i.bd = icmp ult i8 %2, 2
  br i1 %i.bd, label %_ZN6icu_7816ReorderingBuffer6insertEih.exit.sink.split, label %_ZN6icu_7816ReorderingBuffer6insertEih.exit

bb.e:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !21 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.bf, ptr %i.bh, align 8, !tbaa !32
  %i.bi = getelementptr inbounds i8, ptr %i.bf, i64 -2 ; 3 uses
  store ptr %i.bi, ptr %i.bg, align 8, !tbaa !30
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !34
  %i.bk = and i16 %i.bj, -1024
  %i.bl = icmp eq i16 %i.bk, -9216
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp ult ptr %i.bn, %i.bi
  %or.cond.i.i = select i1 %i.bl, i1 %i.bo, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds i8, ptr %i.bf, i64 -4 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !34
  %i.br = and i16 %i.bq, -1024
  %i.bs = icmp eq i16 %i.br, -10240
  br i1 %i.bs, label %bb.g, label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader

bb.g:                                             ; preds = %bb.f
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !30
  br label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader

_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader: ; preds = %bb.g, %bb.f, %bb.e
  br label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i

_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i: ; preds = %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i.preheader, %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i
  %i.bt = tail call noundef zeroext i8 @_ZN6icu_7816ReorderingBuffer10previousCCEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.bu = icmp ugt i8 %i.bt, %2
  br i1 %i.bu, label %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i, label %iter.check, !llvm.loop !0

iter.check:                                       ; preds = %_ZN6icu_7816ReorderingBuffer12skipPreviousEv.exit.i
  %i.bv = load ptr, ptr %i.be, align 8, !tbaa !21 ; 7 uses
  %i.bw = ptrtoaddr ptr %i.bv to i64
  %i.bx = icmp ult i32 %1, 65536
  %i.by = select i1 %i.bx, i64 1, i64 2
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.by ; 6 uses
  store ptr %i.bz, ptr %i.be, align 8, !tbaa !21
  %i.ca = load ptr, ptr %i.bh, align 8, !tbaa !32 ; 2 uses
  %i.cb = add i64 %i.bw, -2
  %i.cc = ptrtoaddr ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc                    ; 3 uses
  %i.ce = lshr i64 %i.cd, 1
  %i.cf = add nuw i64 %i.ce, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.cd, 14
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check23 = icmp ult i64 %i.cd, 30
  br i1 %min.iters.check23, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cg = and i64 %i.cf, 8
  %n.vec = and i64 %i.cf, -16                     ; 4 uses
  %i.ch = mul i64 %n.vec, -2                      ; 2 uses
  %i.ci = getelementptr i8, ptr %i.bv, i64 %i.ch  ; 3 uses
  %i.cj = getelementptr i8, ptr %i.bz, i64 %i.ch  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_7815Normalizer2Impl7composeEPKDsS2_aaRNS_16ReorderingBufferER10UErrorCode:bb.a
bb.ax:                                            ; preds = %bb.aw
  %i.id = getelementptr inbounds nuw i8, ptr %.pre664, i64 20
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !52
  %i.if = add nsw i32 %i.ie, -2
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %i.ig = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %.pre664, i32 noundef %i.ia)
  %.pre.i416 = load ptr, ptr %i.bv, align 8, !tbaa !47
  br label %bb.ba

bb.az:                                            ; preds = %._crit_edge662, %bb.av
  %i.ih = phi ptr [ %.pre663, %._crit_edge662 ], [ %.pre664, %bb.av ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 20
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !52
  %i.ik = add nsw i32 %i.ij, -1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.at
  %i.il = phi ptr [ %i.hj, %bb.at ], [ %i.ih, %bb.az ], [ %.pre664, %bb.ax ], [ %.pre.i416, %bb.ay ]
  %.1.i409 = phi i32 [ %i.hr, %bb.at ], [ %i.ik, %bb.az ], [ %i.if, %bb.ax ], [ %i.ig, %bb.ay ]
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !25
  %i.io = sext i32 %.1.i409 to i64
  %i.ip = getelementptr inbounds [2 x i8], ptr %i.in, i64 %i.io
  %i.iq = load i16, ptr %i.ip, align 2, !tbaa !50 ; 3 uses
  %i.ir = load i16, ptr %i.by, align 2, !tbaa !73
  %i.is = icmp ult i16 %i.iq, %i.ir
  br i1 %i.is, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit408.thread470, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit417

_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit417: ; preds = %bb.ba
  %i.it = load i16, ptr %i.bz, align 2, !tbaa !67
  %.not.i.i.i410 = icmp ugt i16 %i.it, %i.iq
  %i.iu = load i16, ptr %i.bx, align 2
  %i.iv = icmp uge i16 %i.iq, %i.iu
  %narrow.i.i.i411.not = select i1 %.not.i.i.i410, i1 true, i1 %i.iv
  br i1 %narrow.i.i.i411.not, label %.thread506, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit408.thread470

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit408.thread470: ; preds = %bb.ba, %bb.ar, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit408.thread, %bb.aq, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit417, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit408
  %.not362 = icmp eq ptr %.1269634, %.2295630
  br i1 %.not362, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit408.thread470
  %i.iw = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %.1269634, ptr noundef nonnull %.2295630, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not363 = icmp eq i8 %i.iw, 0
  br i1 %.not363, label %.thread573, label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit408.thread470
  %i.ix = load ptr, ptr %i.cf, align 8, !tbaa !58
  %i.iy = lshr i16 %.2, 1
  %i.iz = zext nneg i16 %i.iy to i64
  %i.ja = getelementptr inbounds nuw [2 x i8], ptr %i.ix, i64 %i.iz ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 2 ; 2 uses
  %i.jc = load i16, ptr %i.ja, align 2, !tbaa !34
  %i.jd = and i16 %i.jc, 31
  %i.je = zext nneg i16 %i.jd to i64
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %i.jb, i64 %i.je
  %i.jg = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.jb, ptr noundef nonnull %i.jf, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not364 = icmp eq i8 %i.jg, 0
  br i1 %.not364, label %.thread573, label %.thread491

bb.bd:                                            ; preds = %bb.ao
  %i.jh = load i16, ptr %i.ce, align 8, !tbaa !66
  %.not355 = icmp ult i16 %.2, %i.jh
  br i1 %.not355, label %.thread506, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ji = icmp eq ptr %.6299, %.0306
  br i1 %i.ji, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jj = load i16, ptr %.6299, align 2, !tbaa !34 ; 2 uses
  %i.jk = zext i16 %i.jj to i32                   ; 5 uses
  %i.jl = load i16, ptr %i.a, align 2, !tbaa !46
  %i.jm = icmp ult i16 %i.jj, %i.jl
  br i1 %i.jm, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.jn = getelementptr inbounds nuw i8, ptr %.6299, i64 2 ; 2 uses
  %i.jo = and i32 %i.jk, 63488
  %i.jp = icmp eq i32 %i.jo, 55296
  br i1 %i.jp, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jq = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !49
  %i.js = lshr i32 %i.jk, 6
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.jt
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !50
  %i.jw = zext i16 %i.jv to i32
  %i.jx = and i32 %i.jk, 63
  %i.jy = add nuw nsw i32 %i.jx, %i.jw
  br label %bb.bo

bb.bi:                                            ; preds = %bb.bg
  %i.jz = and i32 %i.jk, 1024
  %i.ka = icmp ne i32 %i.jz, 0
  %.not.i422 = icmp eq ptr %i.jn, %.0306
  %or.cond.i423 = select i1 %i.ka, i1 true, i1 %.not.i422
  br i1 %or.cond.i423, label %._crit_edge659, label %bb.bj

._crit_edge659:                                   ; preds = %bb.bi
  %.pre660 = load ptr, ptr %i.bv, align 8, !tbaa !47
  br label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.kb = load i16, ptr %i.jn, align 2, !tbaa !34
  %i.kc = zext i16 %i.kb to i32                   ; 2 uses
  %i.kd = and i32 %i.kc, 64512
  %i.ke = icmp eq i32 %i.kd, 56320
  %.pre661 = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 5 uses
  br i1 %i.ke, label %bb.bk, label %bb.bn

bb.bk:                                            ; preds = %bb.bj
  %i.kf = shl nuw nsw i32 %i.jk, 10
  %i.kg = add nsw i32 %i.kf, -56613888
  %i.kh = add nuw nsw i32 %i.kg, %i.kc            ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.pre661, i64 24
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !51
  %.not25.i424 = icmp slt i32 %i.kh, %i.kj
  br i1 %.not25.i424, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kk = getelementptr inbounds nuw i8, ptr %.pre661, i64 20
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !52
  %i.km = add nsw i32 %i.kl, -2
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  %i.kn = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %.pre661, i32 noundef %i.kh)
  %.pre.i425 = load ptr, ptr %i.bv, align 8, !tbaa !47
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge659, %bb.bj
  %i.ko = phi ptr [ %.pre660, %._crit_edge659 ], [ %.pre661, %bb.bj ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 20
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !52
  %i.kr = add nsw i32 %i.kq, -1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bh
  %i.ks = phi ptr [ %i.jq, %bb.bh ], [ %i.ko, %bb.bn ], [ %.pre661, %bb.bl ], [ %.pre.i425, %bb.bm ]
  %.1.i418 = phi i32 [ %i.jy, %bb.bh ], [ %i.kr, %bb.bn ], [ %i.km, %bb.bl ], [ %i.kn, %bb.bm ]
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 8
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !25
  %i.kv = sext i32 %.1.i418 to i64
  %i.kw = getelementptr inbounds [2 x i8], ptr %i.ku, i64 %i.kv
  %i.kx = load i16, ptr %i.kw, align 2, !tbaa !50 ; 3 uses
  %i.ky = load i16, ptr %i.by, align 2, !tbaa !73
  %i.kz = icmp ult i16 %i.kx, %i.ky
  br i1 %i.kz, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426

_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426: ; preds = %bb.bo
  %i.la = load i16, ptr %i.bz, align 2, !tbaa !67
  %.not.i.i.i419 = icmp ugt i16 %i.la, %i.kx
  %i.lb = load i16, ptr %i.bx, align 2
  %i.lc = icmp uge i16 %i.kx, %i.lb
  %narrow.i.i.i420.not = select i1 %.not.i.i.i419, i1 true, i1 %i.lc
  br i1 %narrow.i.i.i420.not, label %bb.bp, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread

bb.bp:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426
  %i.ld = tail call noundef signext i8 @_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKDsS2_a(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %.1269634, ptr noundef nonnull %.2295630, i8 noundef signext %3)
  %.not357 = icmp eq i8 %i.ld, 0
  br i1 %.not357, label %.thread506, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread

_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread: ; preds = %bb.bo, %bb.bf, %bb.be, %bb.bp, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426
  %.not358 = icmp eq ptr %.1269634, %.2295630
  br i1 %.not358, label %.thread491, label %bb.bq, !llvm.loop !129

bb.bq:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread
  %i.le = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %.1269634, ptr noundef nonnull %.2295630, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not359 = icmp eq i8 %i.le, 0
  br i1 %.not359, label %.thread573, label %.thread491, !llvm.loop !129

bb.br:                                            ; preds = %bb.v
  %i.lf = icmp ne i16 %.2, -512
  %.not333 = icmp eq ptr %.1269634, %.2295630     ; 2 uses
  %or.cond383 = select i1 %i.lf, i1 true, i1 %.not333
  br i1 %or.cond383, label %bb.cp, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lg = getelementptr inbounds i8, ptr %.2295630, i64 -2 ; 5 uses
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !34 ; 3 uses
  %i.li = icmp samesign ult i32 %.2256, 4519
  br i1 %i.li, label %bb.bt, label %bb.ck

bb.bt:                                            ; preds = %bb.bs
  %i.lj = add i16 %i.lh, -4352                    ; 2 uses
  %i.lk = icmp ult i16 %i.lj, 19
  br i1 %i.lk, label %bb.bu, label %.thread506

bb.bu:                                            ; preds = %bb.bt
  br i1 %.not343, label %.thread573, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.not348 = icmp eq ptr %.6299, %.0306
  br i1 %.not348, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ll = load i16, ptr %.6299, align 2, !tbaa !34 ; 3 uses
  %i.lm = add i16 %i.ll, -4520
  %or.cond7 = icmp ult i16 %i.lm, 27
  %7 = zext i16 %i.ll to i32                      ; 6 uses
  br i1 %or.cond7, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %8 = add nsw i32 %7, -4519
  %i.ln = getelementptr inbounds nuw i8, ptr %.6299, i64 2
  br label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread

bb.by:                                            ; preds = %bb.bw
  %i.lo = load i16, ptr %i.a, align 2, !tbaa !46
  %i.lp = icmp ult i16 %i.ll, %i.lo
  br i1 %i.lp, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lq = getelementptr inbounds nuw i8, ptr %.6299, i64 2 ; 2 uses
  %i.lr = and i32 %7, 63488
  %i.ls = icmp eq i32 %i.lr, 55296
  br i1 %i.ls, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lt = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !49
  %i.lv = lshr i32 %7, 6
  %i.lw = zext nneg i32 %i.lv to i64
  %i.lx = getelementptr inbounds nuw [2 x i8], ptr %i.lu, i64 %i.lw
  %i.ly = load i16, ptr %i.lx, align 2, !tbaa !50
  %i.lz = zext i16 %i.ly to i32
  %i.ma = and i32 %7, 63
  %i.mb = add nuw nsw i32 %i.ma, %i.lz
  br label %bb.ch

bb.cb:                                            ; preds = %bb.bz
  %i.mc = and i32 %7, 1024
  %i.md = icmp ne i32 %i.mc, 0
  %.not.i431 = icmp eq ptr %i.lq, %.0306
  %or.cond.i432 = select i1 %i.md, i1 true, i1 %.not.i431
  br i1 %or.cond.i432, label %._crit_edge649, label %bb.cc

._crit_edge649:                                   ; preds = %bb.cb
  %.pre650 = load ptr, ptr %i.bv, align 8, !tbaa !47
  br label %bb.cg

bb.cc:                                            ; preds = %bb.cb
  %i.me = load i16, ptr %i.lq, align 2, !tbaa !34
  %i.mf = zext i16 %i.me to i32                   ; 2 uses
  %i.mg = and i32 %i.mf, 64512
  %i.mh = icmp eq i32 %i.mg, 56320
  %.pre651 = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 5 uses
  br i1 %i.mh, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.mi = shl nuw nsw i32 %7, 10
  %i.mj = add nsw i32 %i.mi, -56613888
  %i.mk = add nuw nsw i32 %i.mj, %i.mf            ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.pre651, i64 24
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !51
  %.not25.i433 = icmp slt i32 %i.mk, %i.mm
  br i1 %.not25.i433, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.mn = getelementptr inbounds nuw i8, ptr %.pre651, i64 20
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !52
  %i.mp = add nsw i32 %i.mo, -2
  br label %bb.ch

bb.cf:                                            ; preds = %bb.cd
  %i.mq = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %.pre651, i32 noundef %i.mk)
  %.pre.i434 = load ptr, ptr %i.bv, align 8, !tbaa !47
  br label %bb.ch

bb.cg:                                            ; preds = %._crit_edge649, %bb.cc
  %i.mr = phi ptr [ %.pre650, %._crit_edge649 ], [ %.pre651, %bb.cc ] ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 20
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !52
  %i.mu = add nsw i32 %i.mt, -1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.ca
  %i.mv = phi ptr [ %i.lt, %bb.ca ], [ %i.mr, %bb.cg ], [ %.pre651, %bb.ce ], [ %.pre.i434, %bb.cf ]
  %.1.i427 = phi i32 [ %i.mb, %bb.ca ], [ %i.mu, %bb.cg ], [ %i.mp, %bb.ce ], [ %i.mq, %bb.cf ]
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !25
  %i.my = sext i32 %.1.i427 to i64
  %i.mz = getelementptr inbounds [2 x i8], ptr %i.mx, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !50 ; 3 uses
  %i.nb = load i16, ptr %i.by, align 2, !tbaa !73
  %i.nc = icmp ult i16 %i.na, %i.nb
  br i1 %i.nc, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435

_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435: ; preds = %bb.ch
  %i.nd = load i16, ptr %i.bz, align 2, !tbaa !67
  %.not.i.i.i428 = icmp ugt i16 %i.nd, %i.na
  %i.ne = load i16, ptr %i.bx, align 2
  %i.nf = icmp uge i16 %i.na, %i.ne
  %narrow.i.i.i429.not = select i1 %.not.i.i.i428, i1 true, i1 %i.nf
  %cond.fr = freeze i1 %narrow.i.i.i429.not
  br i1 %cond.fr, label %.thread506, label %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread

_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread: ; preds = %bb.bv, %bb.ch, %bb.by, %bb.bx, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435
  %.7300.ph = phi ptr [ %.6299, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435 ], [ %i.ln, %bb.bx ], [ %.6299, %bb.by ], [ %.6299, %bb.ch ], [ %.6299, %bb.bv ] ; 2 uses
  %.0251.ph = phi i32 [ 0, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435 ], [ %8, %bb.bx ], [ 0, %bb.by ], [ 0, %bb.ch ], [ 0, %bb.bv ]
  %narrow = mul nuw nsw i16 %i.lj, 21
  %9 = zext nneg i16 %narrow to i32
  %10 = add nuw nsw i32 %.2256, 61087
  %11 = add nuw nsw i32 %10, %9
  %12 = mul nuw nsw i32 %11, 28
  %13 = add nuw nsw i32 %12, 44032
  %14 = add nuw nsw i32 %13, %.0251.ph
  %.not350 = icmp eq ptr %.1269634, %i.lg
  br i1 %.not350, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread
  %i.ng = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %.1269634, ptr noundef nonnull %i.lg, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not351 = icmp eq i8 %i.ng, 0
  br i1 %.not351, label %.thread573, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit435.thread
  %i.nh = trunc i32 %14 to i16
  %i.ni = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, i16 noundef zeroext %i.nh, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not352 = icmp eq i8 %i.ni, 0
  br i1 %.not352, label %.thread573, label %.thread491

bb.ck:                                            ; preds = %bb.bs
  %i.nj = zext i16 %i.lh to i32
  %i.nk = add nsw i32 %i.nj, -44032               ; 2 uses
  %or.cond.i436 = icmp ult i32 %i.nk, 11172
  %.lhs.trunc.i = trunc nuw nsw i32 %i.nk to i16
  %i.nl = urem i16 %.lhs.trunc.i, 28
  %.not606 = icmp eq i16 %i.nl, 0
  %or.cond616 = select i1 %or.cond.i436, i1 %.not606, i1 false
  br i1 %or.cond616, label %bb.cl, label %.thread506

bb.cl:                                            ; preds = %bb.ck
  br i1 %.not343, label %.thread573, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.not344 = icmp eq ptr %.1269634, %i.lg
  br i1 %.not344, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.nm = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %.1269634, ptr noundef nonnull %i.lg, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not345 = icmp eq i8 %i.nm, 0
  br i1 %.not345, label %.thread573, label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.nn = trunc i32 %.2256 to i16
  %i.no = add i16 %i.nn, -4519
  %i.np = add i16 %i.no, %i.lh
  %i.nq = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer9appendBMPEDshR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, i16 noundef zeroext %i.np, i8 noundef zeroext 0, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not346 = icmp eq i8 %i.nq, 0
  br i1 %.not346, label %.thread573, label %.thread491

bb.cp:                                            ; preds = %bb.br
  %i.nr = icmp ugt i16 %.2, -512
  br i1 %i.nr, label %bb.cq, label %.thread506

bb.cq:                                            ; preds = %bb.cp
  %i.ns = lshr i16 %.2, 1
  %i.nt = trunc i16 %i.ns to i8                   ; 2 uses
  %brmerge = select i1 %.not334, i1 true, i1 %.not333
  br i1 %brmerge, label %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.nu = ptrtoint ptr %.2295630 to i64
  %i.nv = ptrtoint ptr %.1269634 to i64
  %i.nw = sub i64 %i.nu, %i.nv                    ; 2 uses
  %i.nx = lshr exact i64 %i.nw, 1                 ; 2 uses
  %i.ny = shl i64 %i.nw, 31
  %sext.i = add i64 %i.ny, -4294967296
  %i.nz = ashr i64 %sext.i, 32
  %i.oa = getelementptr inbounds [2 x i8], ptr %.1269634, i64 %i.nz
  %i.ob = load i16, ptr %i.oa, align 2, !tbaa !34
  %i.oc = zext i16 %i.ob to i32                   ; 4 uses
  %i.od = and i32 %i.oc, 64512
  %i.oe = icmp eq i32 %i.od, 56320
  %i.of = trunc i64 %i.nx to i32
  %i.og = icmp sgt i32 %i.of, 1
  %or.cond.i437 = select i1 %i.oe, i1 %i.og, i1 false
  br i1 %or.cond.i437, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %bb.cr
  %i.oh = add nuw i64 %i.nx, 4294967294
  %i.oi = and i64 %i.oh, 4294967295
  %i.oj = getelementptr inbounds nuw [2 x i8], ptr %.1269634, i64 %i.oi
  %i.ok = load i16, ptr %i.oj, align 2, !tbaa !34
  %i.ol = zext i16 %i.ok to i32                   ; 2 uses
  %i.om = and i32 %i.ol, 64512
  %i.on = icmp eq i32 %i.om, 55296
  br i1 %i.on, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.oo = shl nuw nsw i32 %i.ol, 10
  %i.op = add nuw nsw i32 %i.oc, -56613888
  %i.oq = add nsw i32 %i.op, %i.oo
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %.1.i438 = phi i32 [ %i.oc, %bb.cr ], [ %i.oq, %bb.ct ], [ %i.oc, %bb.cs ] ; 5 uses
  %i.or = load i16, ptr %i.ca, align 8, !tbaa !74
  %i.os = zext i16 %i.or to i32
  %i.ot = icmp samesign ult i32 %.1.i438, %i.os
  br i1 %i.ot, label %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ou = icmp samesign ult i32 %.1.i438, 65536
  br i1 %i.ou, label %bb.cw, label %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit

bb.cw:                                            ; preds = %bb.cv
  %i.ov = load ptr, ptr %i.cb, align 8, !tbaa !72
  %i.ow = lshr i32 %.1.i438, 8
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ox
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !25  ; 2 uses
  %i.pa = icmp eq i8 %i.oz, 0
  %i.pb = zext i8 %i.oz to i32
  %i.pc = lshr i32 %.1.i438, 5
  %i.pd = and i32 %i.pc, 7
  %i.pe = shl nuw nsw i32 1, %i.pd
  %i.pf = and i32 %i.pe, %i.pb
  %.not6.i.i = icmp eq i32 %i.pf, 0
  %.not.i.i439 = select i1 %i.pa, i1 true, i1 %.not6.i.i
  br i1 %.not.i.i439, label %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader, label %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit

_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit: ; preds = %bb.cv, %bb.cw
  %i.pg = tail call noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull readonly align 8 dereferenceable(80) %0, i32 noundef %.1.i438)
  %i.ph = trunc i16 %i.pg to i8
  %i.pi = icmp ugt i8 %i.ph, %i.nt
  br i1 %i.pi, label %bb.cx, label %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader

_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader: ; preds = %bb.cq, %bb.cw, %bb.cu, %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit
  br label %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread

bb.cx:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit
  br i1 %.not343, label %.thread573, label %.thread506

_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread: ; preds = %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader, %bb.dj
  %.12305 = phi ptr [ %.1248, %bb.dj ], [ %.6299, %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader ] ; 6 uses
  %.0249 = phi i8 [ %i.rb, %bb.dj ], [ %i.nt, %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread.preheader ]
  %i.pj = icmp eq ptr %.12305, %.0306
  br i1 %i.pj, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread
  br i1 %.not343, label %.thread573, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.pk = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %.1269634, ptr noundef %.0306, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  br label %.thread573

bb.da:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl18getPreviousTrailCCEPKDsS2_.exit.thread
  %i.pl = getelementptr inbounds nuw i8, ptr %.12305, i64 2 ; 4 uses
  %i.pm = load i16, ptr %.12305, align 2, !tbaa !34
  %i.pn = zext i16 %i.pm to i32                   ; 5 uses
  %i.po = and i32 %i.pn, 63488
  %i.pp = icmp eq i32 %i.po, 55296
  br i1 %i.pp, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pq = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 2 uses
  %i.pr = load ptr, ptr %i.pq, align 8, !tbaa !49
  %i.ps = lshr i32 %i.pn, 6
  %i.pt = zext nneg i32 %i.ps to i64
  %i.pu = getelementptr inbounds nuw [2 x i8], ptr %i.pr, i64 %i.pt
  %i.pv = load i16, ptr %i.pu, align 2, !tbaa !50
  %i.pw = zext i16 %i.pv to i32
  %i.px = and i32 %i.pn, 63
  %i.py = add nuw nsw i32 %i.px, %i.pw
  br label %bb.di

bb.dc:                                            ; preds = %bb.da
  %i.pz = and i32 %i.pn, 1024
  %i.qa = icmp ne i32 %i.pz, 0
  %.not335 = icmp eq ptr %i.pl, %.0306
  %or.cond388 = select i1 %i.qa, i1 true, i1 %.not335
  br i1 %or.cond388, label %._crit_edge652, label %bb.dd

._crit_edge652:                                   ; preds = %bb.dc
  %.pre653 = load ptr, ptr %i.bv, align 8, !tbaa !47
  br label %bb.dh

bb.dd:                                            ; preds = %bb.dc
  %i.qb = load i16, ptr %i.pl, align 2, !tbaa !34
  %i.qc = zext i16 %i.qb to i32                   ; 2 uses
  %i.qd = and i32 %i.qc, 64512
  %i.qe = icmp eq i32 %i.qd, 56320
  %.pre654 = load ptr, ptr %i.bv, align 8, !tbaa !47 ; 5 uses
  br i1 %i.qe, label %bb.de, label %bb.dh

bb.de:                                            ; preds = %bb.dd
  %i.qf = getelementptr inbounds nuw i8, ptr %.12305, i64 4 ; 2 uses
  %i.qg = shl nuw nsw i32 %i.pn, 10
  %i.qh = add nsw i32 %i.qg, -56613888
  %i.qi = add nuw nsw i32 %i.qh, %i.qc            ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %.pre654, i64 24
  %i.qk = load i32, ptr %i.qj, align 8, !tbaa !51
  %.not336 = icmp slt i32 %i.qi, %i.qk
  br i1 %.not336, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ql = getelementptr inbounds nuw i8, ptr %.pre654, i64 20
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !52
  %i.qn = add nsw i32 %i.qm, -2
  br label %bb.di

bb.dg:                                            ; preds = %bb.de
  %i.qo = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %.pre654, i32 noundef %i.qi)
  %.pre655 = load ptr, ptr %i.bv, align 8, !tbaa !47
  br label %bb.di

bb.dh:                                            ; preds = %._crit_edge652, %bb.dd
  %i.qp = phi ptr [ %.pre653, %._crit_edge652 ], [ %.pre654, %bb.dd ] ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 20
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !52
  %i.qs = add nsw i32 %i.qr, -1
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg, %bb.df, %bb.db
  %i.qt = phi ptr [ %i.pq, %bb.db ], [ %i.qp, %bb.dh ], [ %.pre655, %bb.dg ], [ %.pre654, %bb.df ]
  %.1248 = phi ptr [ %i.pl, %bb.db ], [ %i.pl, %bb.dh ], [ %i.qf, %bb.dg ], [ %i.qf, %bb.df ] ; 2 uses
  %.1246 = phi i32 [ %i.py, %bb.db ], [ %i.qs, %bb.dh ], [ %i.qo, %bb.dg ], [ %i.qn, %bb.df ]
end_hunk_1
