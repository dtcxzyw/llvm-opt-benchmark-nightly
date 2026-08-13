inline.NumInlined: 1001
inline.NumDeleted: 333
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN2v88internal10DateParser19DateStringTokenizerIKhE4ScanEv:bb.a
  br i1 %i.ac, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i52, label %bb.j, !prof !59

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i52:      ; preds = %bb.i
  %i.ad = trunc nuw nsw i64 %i.ab to i32
  %i.ae = icmp slt i32 %i.c, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i52
  %i.af = sext i32 %i.c to i64
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.af
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i32
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i52, %bb.k
  %i.ak = phi i32 [ %i.aj, %bb.k ], [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i52 ]
  store i32 %i.ak, ptr %i.d, align 8
  %i.al = add nsw i32 %i.c, 1
  store i32 %i.al, ptr %i.b, align 8
  br label %bb.aa

bb.m:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 2147483648
  br i1 %i.ap, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i55, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i55:      ; preds = %bb.m
  %i.aq = trunc nuw nsw i64 %i.ao to i32
  %i.ar = icmp slt i32 %i.c, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i55
  %i.as = sext i32 %i.c to i64
  %i.at = load ptr, ptr %i.am, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i55, %bb.o
  %i.ax = phi i32 [ %i.aw, %bb.o ], [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i55 ]
  store i32 %i.ax, ptr %i.d, align 8
  %i.ay = add nsw i32 %i.c, 1
  store i32 %i.ay, ptr %i.b, align 8
  br label %bb.aa

bb.q:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 2147483648
  br i1 %i.bc, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i58, label %bb.r, !prof !59

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i58:      ; preds = %bb.q
  %i.bd = trunc nuw nsw i64 %i.bb to i32
  %i.be = icmp slt i32 %i.c, %i.bd
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i58
  %i.bf = sext i32 %i.c to i64
  %i.bg = load ptr, ptr %i.az, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i58, %bb.s
  %i.bk = phi i32 [ %i.bj, %bb.s ], [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.i58 ]
  store i32 %i.bk, ptr %i.d, align 8
  %i.bl = add nsw i32 %i.c, 1
  store i32 %i.bl, ptr %i.b, align 8
  br label %bb.aa

_ZN2v88internal10DateParser11InputReaderIKhE4SkipEj.exit60: ; preds = %bb.d
  %i.bm = tail call noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKhE4SkipEj(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i32 noundef 41)
  br i1 %i.bm, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal10DateParser11InputReaderIKhE4SkipEj.exit60
  %i.bn = load ptr, ptr %0, align 8               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8            ; 4 uses
  %i.bq = icmp ugt i32 %i.bp, 64
  br i1 %i.bq, label %bb.v, label %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.br = icmp ult i32 %i.bp, 256
  br i1 %i.br, label %.split, label %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit

.split:                                           ; preds = %bb.v
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = and i8 %i.bu, 4
  %.not = icmp eq i8 %i.bv, 0
  br i1 %.not, label %bb.w, label %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit._crit_edge

_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit: ; preds = %bb.v
  %i.bw = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.bp) #16
  %.pre71 = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %i.bw, label %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %.split, %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit
  %i.bx = phi ptr [ %i.bn, %.split ], [ %.pre71, %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.by = call noundef i32 @_ZN2v88internal10DateParser11InputReaderIKhE8ReadWordEPji(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, ptr noundef nonnull %i.a, i32 noundef 3) ; 2 uses
  %i.bz = call noundef i32 @_ZN2v88internal10DateParser12KeywordTable6LookupEPKji(ptr noundef nonnull %i.a, i32 noundef %i.by) #16
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = sext i8 %i.cg to i32
  %.sroa.2.0.insert.ext.i61 = zext i32 %i.by to i64
  %.sroa.2.0.insert.shift.i62 = shl nuw i64 %.sroa.2.0.insert.ext.i61, 32
  %.sroa.0.0.insert.ext.i = and i64 %i.ce, 4294967295
  %.sroa.0.0.insert.insert.i63 = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.2.0.insert.shift.i62
  %.fca.0.insert.i64 = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert.i63, 0
  %.fca.1.insert.i65 = insertvalue { i64, i32 } %.fca.0.insert.i64, i32 %i.ch, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.aa

_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit._crit_edge: ; preds = %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit, %.split, %bb.u
  %i.ci = phi ptr [ %i.bn, %bb.u ], [ %i.bn, %.split ], [ %.pre71, %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit ]
  %i.cj = tail call noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKhE14SkipWhiteSpaceEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ci)
  %i.ck = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit._crit_edge
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = sub nsw i32 %i.cl, %i.c
  %.sroa.2.0.insert.ext.i66 = zext i32 %i.cm to i64
  %.sroa.2.0.insert.shift.i67 = shl nuw i64 %.sroa.2.0.insert.ext.i66, 32
  %.sroa.0.0.insert.insert.i68 = or disjoint i64 %.sroa.2.0.insert.shift.i67, 4294967292
  %.fca.0.insert.i69 = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert.i68, 0
  %.fca.1.insert.i70 = insertvalue { i64, i32 } %.fca.0.insert.i69, i32 -1, 1
  br label %bb.aa

bb.y:                                             ; preds = %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit._crit_edge
  %i.cn = tail call noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKhE15SkipParenthesesEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ck)
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal10DateParser11InputReaderIKhE4NextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.co)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %_ZN2v88internal10DateParser11InputReaderIKhE4SkipEj.exit60, %bb.a, %bb.z, %bb.x, %bb.w, %bb.t, %bb.p, %bb.l, %bb.h, %bb.c
  %.pn = phi { i64, i32 } [ %.fca.1.insert.i65, %bb.w ], [ %.fca.1.insert.i, %bb.c ], [ { i64 8589934590, i32 58 }, %bb.h ], [ { i64 8589934590, i32 45 }, %bb.l ], [ { i64 8589934590, i32 43 }, %bb.p ], [ { i64 8589934590, i32 46 }, %bb.t ], [ { i64 4294967295, i32 -1 }, %bb.a ], [ %.fca.1.insert.i70, %bb.x ], [ { i64 8589934590, i32 41 }, %_ZN2v88internal10DateParser11InputReaderIKhE4SkipEj.exit60 ], [ { i64 8589934587, i32 -1 }, %bb.z ], [ { i64 8589934587, i32 -1 }, %bb.y ]
  ret { i64, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal10DateParser11InputReaderIKhE19ReadUnsignedNumeralEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted = load i32, ptr %i.a, align 8        ; 2 uses
  %i.b = icmp eq i32 %.promoted, 48
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp ult i64 %i.e, 2147483648
  %i.g = load ptr, ptr %i.c, align 8
  br i1 %i.f, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.preheader, label %bb.b, !prof !59

_ZNK2v84base6VectorIKhE6lengthEv.exit.i.preheader: ; preds = %.lr.ph
  %.promoted9 = load i32, ptr %0, align 8         ; 2 uses
  %i.h = sext i32 %.promoted9 to i64              ; 2 uses
  %i.i = icmp sgt i64 %i.e, %i.h
  br i1 %i.i, label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit, label %._crit_edge.sink.split

.preheader:                                       ; preds = %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit, %bb.a
  %i.j = phi i32 [ %.promoted, %bb.a ], [ %i.u, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit ] ; 2 uses
  %i.k = add i32 %i.j, -48
  %i.l = icmp ult i32 %i.k, 10
  br i1 %i.l, label %.lr.ph12, label %._crit_edge

.lr.ph12:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %0, align 8
  %.pre16 = load i64, ptr %i.n, align 8           ; 2 uses
  %i.o = icmp ult i64 %.pre16, 2147483648
  %i.p = trunc nuw nsw i64 %.pre16 to i32
  br label %bb.c

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit
  %i.q = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.q, label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i..preheader.thread_crit_edge, !llvm.loop !70

_ZNK2v84base6VectorIKhE6lengthEv.exit.i..preheader.thread_crit_edge: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.r = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge.sink.split

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.preheader, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %indvars.iv30 = phi i64 [ %indvars.iv.next, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ], [ %i.h, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv30
  %i.t = load i8, ptr %i.s, align 1               ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  store i32 %i.u, ptr %i.a, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv30, 1 ; 4 uses
  %i.v = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.v, ptr %0, align 8
  %i.w = icmp eq i8 %i.t, 48
  br i1 %i.w, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %.preheader, !llvm.loop !70

bb.c:                                             ; preds = %.lr.ph12, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6
  %1 = phi i32 [ %.pre, %.lr.ph12 ], [ %i.ae, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6 ] ; 4 uses
  %2 = phi i32 [ %i.j, %.lr.ph12 ], [ %i.ad, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6 ]
  %.011 = phi i32 [ 0, %.lr.ph12 ], [ %3, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6 ] ; 2 uses
  %.0410 = phi i32 [ 0, %.lr.ph12 ], [ %.1, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6 ] ; 2 uses
  %i.x = icmp samesign ult i32 %.011, 9
  %i.y = mul nsw i32 %.0410, 10
  %i.z = add i32 %i.y, -48
  %i.aa = add i32 %i.z, %2
  %.1 = select i1 %i.x, i32 %i.aa, i32 %.0410     ; 3 uses
  %3 = add nuw nsw i32 %.011, 1
  br i1 %i.o, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i5, label %bb.d, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i5:         ; preds = %bb.c
  %4 = icmp slt i32 %1, %i.p
  br i1 %4, label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6, label %._crit_edge.sink.split

_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i5
  %5 = sext i32 %1 to i64
  %6 = load ptr, ptr %i.m, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 %5
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %i.ad = zext i8 %i.ac to i32                    ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8
  %i.ae = add nsw i32 %1, 1                       ; 2 uses
  store i32 %i.ae, ptr %0, align 8
  %i.af = add i8 %i.ac, -48
  %i.ag = icmp ult i8 %i.af, 10
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !71

._crit_edge.sink.split:                           ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i5, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.preheader, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i..preheader.thread_crit_edge
  %.sink.in = phi i32 [ %.promoted9, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.preheader ], [ %i.r, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i..preheader.thread_crit_edge ], [ %1, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i5 ]
  %.04.lcssa.ph = phi i32 [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i.preheader ], [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i..preheader.thread_crit_edge ], [ %.1, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i5 ]
  store i32 0, ptr %i.a, align 8
  %.sink = add i32 %.sink.in, 1
  store i32 %.sink, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6, %._crit_edge.sink.split, %.preheader
  %.04.lcssa = phi i32 [ 0, %.preheader ], [ %.04.lcssa.ph, %._crit_edge.sink.split ], [ %.1, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit6 ]
  ret i32 %.04.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKhE4SkipEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, %1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 2147483648
  br i1 %i.h, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %i.g to i32
  %i.j = icmp slt i32 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.k = sext i32 %i.d to i64
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext i8 %i.n to i32
  br label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit

_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ 0, %_ZNK2v84base6VectorIKhE6lengthEv.exit.i ]
  store i32 %i.p, ptr %i.a, align 8
  %i.q = add nsw i32 %i.d, 1
  store i32 %i.q, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal10DateParser11InputReaderIKhE8ReadWordEPji(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit ] ; 6 uses
  %i.g = phi i32 [ %i.b, %.lr.ph ], [ %i.ab, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit ] ; 3 uses
  %i.h = icmp ult i32 %i.g, 256
  br i1 %i.h, label %.split, label %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit

.split:                                           ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 4
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %.critedge.loopexit

_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit: ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.g) #16
  br i1 %i.m, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.split, %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit
  %i.n = icmp slt i64 %indvars.iv, %i.f
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 8
  %i.p = or i32 %i.o, 32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.p, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = load i32, ptr %0, align 8                ; 4 uses
  %i.s = load i64, ptr %i.e, align 8              ; 2 uses
  %i.t = icmp ult i64 %i.s, 2147483648
  br i1 %i.t, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.f, !prof !59

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.e
  %i.u = trunc nuw nsw i64 %i.s to i32
  %i.v = icmp slt i32 %i.r, %i.u
  br i1 %i.v, label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit, label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit.thread

_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit.thread: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  store i32 0, ptr %i.a, align 8
  %i.w = add nuw nsw i32 %i.r, 1
  store i32 %i.w, ptr %0, align 8
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv, 1
  br label %.critedge.loopexit

_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.x = sext i32 %i.r to i64
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  %i.aa = load i8, ptr %i.z, align 1              ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  store i32 %i.ab, ptr %i.a, align 8
  %i.ac = add nsw i32 %i.r, 1
  store i32 %i.ac, ptr %0, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = icmp ugt i8 %i.aa, 64
  br i1 %i.ad, label %bb.b, label %.critedge.loopexit, !llvm.loop !72

.critedge.loopexit:                               ; preds = %.split, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit, %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit.thread
  %.012.lcssa.ph.in = phi i64 [ %indvars.iv.next29, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit.thread ], [ %indvars.iv, %.split ], [ %indvars.iv.next, %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit ], [ %indvars.iv, %_ZNK2v88internal10DateParser11InputReaderIKhE16IsWhiteSpaceCharEv.exit ]
  %.012.lcssa.ph = trunc i64 %.012.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.012.lcssa.ph, %.critedge.loopexit ] ; 4 uses
  %i.ae = icmp slt i32 %.012.lcssa, %2
  br i1 %i.ae, label %.lr.ph18.preheader, label %._crit_edge

.lr.ph18.preheader:                               ; preds = %.critedge
  %i.af = zext i32 %.012.lcssa to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.ag
  %i.ah = xor i32 %.012.lcssa, -1
  %i.ai = add i32 %2, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph18.preheader, %.critedge
  ret i32 %.012.lcssa
}

declare noundef i32 @_ZN2v88internal10DateParser12KeywordTable6LookupEPKji(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKhE14SkipWhiteSpaceEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i32 %i.b, 256
  br i1 %i.c, label %.split, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit

.split:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit: ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.b) #16
  %i.i = and i32 %i.b, -2
  %switch.i = icmp eq i32 %i.i, 8232
  %or.cond.i = or i1 %switch.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.split, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit
  %i.j = load i32, ptr %0, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, 2147483648
  br i1 %i.n, label %_ZNK2v84base6VectorIKhE6lengthEv.exit.i, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKhE6lengthEv.exit.i:          ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %i.m to i32
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKhE6lengthEv.exit.i
  %i.q = sext i32 %i.j to i64
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  %i.t = load i8, ptr %i.s, align 1
  %i.u = zext i8 %i.t to i32
  br label %_ZN2v88internal10DateParser11InputReaderIKhE4NextEv.exit
end_hunk_0
begin_hunk_1_@_ZN2v88internal10DateParser19DateStringTokenizerIKtE4ScanEv:bb.a
  br i1 %i.ac, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i52, label %bb.j, !prof !59

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i52:      ; preds = %bb.i
  %i.ad = trunc nuw nsw i64 %i.ab to i32
  %i.ae = icmp slt i32 %i.c, %i.ad
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i52
  %i.af = sext i32 %i.c to i64
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = zext i16 %i.ai to i32
  br label %bb.l

bb.l:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i52, %bb.k
  %i.ak = phi i32 [ %i.aj, %bb.k ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i52 ]
  store i32 %i.ak, ptr %i.d, align 8
  %i.al = add nsw i32 %i.c, 1
  store i32 %i.al, ptr %i.b, align 8
  br label %bb.aa

bb.m:                                             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 2147483648
  br i1 %i.ap, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i55, label %bb.n, !prof !59

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i55:      ; preds = %bb.m
  %i.aq = trunc nuw nsw i64 %i.ao to i32
  %i.ar = icmp slt i32 %i.c, %i.aq
  br i1 %i.ar, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i55
  %i.as = sext i32 %i.c to i64
  %i.at = load ptr, ptr %i.am, align 8
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.as
  %i.av = load i16, ptr %i.au, align 2
  %i.aw = zext i16 %i.av to i32
  br label %bb.p

bb.p:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i55, %bb.o
  %i.ax = phi i32 [ %i.aw, %bb.o ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i55 ]
  store i32 %i.ax, ptr %i.d, align 8
  %i.ay = add nsw i32 %i.c, 1
  store i32 %i.ay, ptr %i.b, align 8
  br label %bb.aa

bb.q:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bb = load i64, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp ult i64 %i.bb, 2147483648
  br i1 %i.bc, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i58, label %bb.r, !prof !59

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i58:      ; preds = %bb.q
  %i.bd = trunc nuw nsw i64 %i.bb to i32
  %i.be = icmp slt i32 %i.c, %i.bd
  br i1 %i.be, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i58
  %i.bf = sext i32 %i.c to i64
  %i.bg = load ptr, ptr %i.az, align 8
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = zext i16 %i.bi to i32
  br label %bb.t

bb.t:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i58, %bb.s
  %i.bk = phi i32 [ %i.bj, %bb.s ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.i58 ]
  store i32 %i.bk, ptr %i.d, align 8
  %i.bl = add nsw i32 %i.c, 1
  store i32 %i.bl, ptr %i.b, align 8
  br label %bb.aa

_ZN2v88internal10DateParser11InputReaderIKtE4SkipEj.exit60: ; preds = %bb.d
  %i.bm = tail call noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKtE4SkipEj(ptr noundef nonnull align 8 dereferenceable(28) %i.b, i32 noundef 41)
  br i1 %i.bm, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal10DateParser11InputReaderIKtE4SkipEj.exit60
  %i.bn = load ptr, ptr %0, align 8               ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load i32, ptr %i.bo, align 8            ; 4 uses
  %i.bq = icmp ugt i32 %i.bp, 64
  br i1 %i.bq, label %bb.v, label %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit._crit_edge

bb.v:                                             ; preds = %bb.u
  %i.br = icmp ult i32 %i.bp, 256
  br i1 %i.br, label %.split, label %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit

.split:                                           ; preds = %bb.v
  %i.bs = zext nneg i32 %i.bp to i64
  %i.bt = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = and i8 %i.bu, 4
  %.not = icmp eq i8 %i.bv, 0
  br i1 %.not, label %bb.w, label %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit._crit_edge

_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit: ; preds = %bb.v
  %i.bw = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.bp) #16
  %.pre71 = load ptr, ptr %0, align 8             ; 2 uses
  br i1 %i.bw, label %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit._crit_edge, label %bb.w

bb.w:                                             ; preds = %.split, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit
  %i.bx = phi ptr [ %i.bn, %.split ], [ %.pre71, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, i8 0, i64 12, i1 false)
  %i.by = call noundef i32 @_ZN2v88internal10DateParser11InputReaderIKtE8ReadWordEPji(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, ptr noundef nonnull %i.a, i32 noundef 3) ; 2 uses
  %i.bz = call noundef i32 @_ZN2v88internal10DateParser12KeywordTable6LookupEPKji(ptr noundef nonnull %i.a, i32 noundef %i.by) #16
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [5 x i8], ptr @_ZN2v88internal10DateParser12KeywordTable5arrayE, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = sext i8 %i.cg to i32
  %.sroa.2.0.insert.ext.i61 = zext i32 %i.by to i64
  %.sroa.2.0.insert.shift.i62 = shl nuw i64 %.sroa.2.0.insert.ext.i61, 32
  %.sroa.0.0.insert.ext.i = and i64 %i.ce, 4294967295
  %.sroa.0.0.insert.insert.i63 = or disjoint i64 %.sroa.0.0.insert.ext.i, %.sroa.2.0.insert.shift.i62
  %.fca.0.insert.i64 = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert.i63, 0
  %.fca.1.insert.i65 = insertvalue { i64, i32 } %.fca.0.insert.i64, i32 %i.ch, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.aa

_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit._crit_edge: ; preds = %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit, %.split, %bb.u
  %i.ci = phi ptr [ %i.bn, %bb.u ], [ %i.bn, %.split ], [ %.pre71, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit ]
  %i.cj = tail call noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKtE14SkipWhiteSpaceEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ci)
  %i.ck = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.cj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit._crit_edge
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = sub nsw i32 %i.cl, %i.c
  %.sroa.2.0.insert.ext.i66 = zext i32 %i.cm to i64
  %.sroa.2.0.insert.shift.i67 = shl nuw i64 %.sroa.2.0.insert.ext.i66, 32
  %.sroa.0.0.insert.insert.i68 = or disjoint i64 %.sroa.2.0.insert.shift.i67, 4294967292
  %.fca.0.insert.i69 = insertvalue { i64, i32 } poison, i64 %.sroa.0.0.insert.insert.i68, 0
  %.fca.1.insert.i70 = insertvalue { i64, i32 } %.fca.0.insert.i69, i32 -1, 1
  br label %bb.aa

bb.y:                                             ; preds = %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit._crit_edge
  %i.cn = tail call noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKtE15SkipParenthesesEv(ptr noundef nonnull align 8 dereferenceable(28) %i.ck)
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal10DateParser11InputReaderIKtE4NextEv(ptr noundef nonnull align 8 dereferenceable(28) %i.co)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %_ZN2v88internal10DateParser11InputReaderIKtE4SkipEj.exit60, %bb.a, %bb.z, %bb.x, %bb.w, %bb.t, %bb.p, %bb.l, %bb.h, %bb.c
  %.pn = phi { i64, i32 } [ %.fca.1.insert.i65, %bb.w ], [ %.fca.1.insert.i, %bb.c ], [ { i64 8589934590, i32 58 }, %bb.h ], [ { i64 8589934590, i32 45 }, %bb.l ], [ { i64 8589934590, i32 43 }, %bb.p ], [ { i64 8589934590, i32 46 }, %bb.t ], [ { i64 4294967295, i32 -1 }, %bb.a ], [ %.fca.1.insert.i70, %bb.x ], [ { i64 8589934590, i32 41 }, %_ZN2v88internal10DateParser11InputReaderIKtE4SkipEj.exit60 ], [ { i64 8589934587, i32 -1 }, %bb.z ], [ { i64 8589934587, i32 -1 }, %bb.y ]
  ret { i64, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal10DateParser11InputReaderIKtE19ReadUnsignedNumeralEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted = load i32, ptr %i.a, align 8        ; 2 uses
  %i.b = icmp eq i32 %.promoted, 48
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp ult i64 %i.e, 2147483648
  %i.g = load ptr, ptr %i.c, align 8
  br i1 %i.f, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.preheader, label %bb.b, !prof !59

_ZNK2v84base6VectorIKtE6lengthEv.exit.i.preheader: ; preds = %.lr.ph
  %.promoted9 = load i32, ptr %0, align 8         ; 2 uses
  %i.h = sext i32 %.promoted9 to i64              ; 2 uses
  %i.i = icmp sgt i64 %i.e, %i.h
  br i1 %i.i, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit, label %._crit_edge.sink.split

.preheader:                                       ; preds = %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit, %bb.a
  %i.j = phi i32 [ %.promoted, %bb.a ], [ %i.u, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit ] ; 2 uses
  %i.k = add i32 %i.j, -48
  %i.l = icmp ult i32 %i.k, 10
  br i1 %i.l, label %.lr.ph12, label %._crit_edge

.lr.ph12:                                         ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load i32, ptr %0, align 8
  %.pre16 = load i64, ptr %i.n, align 8           ; 2 uses
  %i.o = icmp ult i64 %.pre16, 2147483648
  %i.p = trunc nuw nsw i64 %.pre16 to i32
  br label %bb.c

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit
  %i.q = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.q, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i..preheader.thread_crit_edge, !llvm.loop !74

_ZNK2v84base6VectorIKtE6lengthEv.exit.i..preheader.thread_crit_edge: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.r = trunc i64 %indvars.iv.next to i32
  br label %._crit_edge.sink.split

bb.b:                                             ; preds = %.lr.ph
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.preheader, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %indvars.iv30 = phi i64 [ %indvars.iv.next, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ], [ %i.h, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.preheader ] ; 2 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv30
  %i.t = load i16, ptr %i.s, align 2              ; 2 uses
  %i.u = zext i16 %i.t to i32                     ; 2 uses
  store i32 %i.u, ptr %i.a, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv30, 1 ; 4 uses
  %i.v = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.v, ptr %0, align 8
  %i.w = icmp eq i16 %i.t, 48
  br i1 %i.w, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %.preheader, !llvm.loop !74

bb.c:                                             ; preds = %.lr.ph12, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6
  %1 = phi i32 [ %.pre, %.lr.ph12 ], [ %i.ae, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6 ] ; 4 uses
  %2 = phi i32 [ %i.j, %.lr.ph12 ], [ %i.ad, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6 ]
  %.011 = phi i32 [ 0, %.lr.ph12 ], [ %3, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6 ] ; 2 uses
  %.0410 = phi i32 [ 0, %.lr.ph12 ], [ %.1, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6 ] ; 2 uses
  %i.x = icmp samesign ult i32 %.011, 9
  %i.y = mul nsw i32 %.0410, 10
  %i.z = add i32 %i.y, -48
  %i.aa = add i32 %i.z, %2
  %.1 = select i1 %i.x, i32 %i.aa, i32 %.0410     ; 3 uses
  %3 = add nuw nsw i32 %.011, 1
  br i1 %i.o, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i5, label %bb.d, !prof !59

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i5:         ; preds = %bb.c
  %4 = icmp slt i32 %1, %i.p
  br i1 %4, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6, label %._crit_edge.sink.split

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i5
  %5 = sext i32 %1 to i64
  %6 = load ptr, ptr %i.m, align 8
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %6, i64 %5
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  store i32 %i.ad, ptr %i.a, align 8
  %i.ae = add nsw i32 %1, 1                       ; 2 uses
  store i32 %i.ae, ptr %0, align 8
  %i.af = add i16 %i.ac, -48
  %i.ag = icmp ult i16 %i.af, 10
  br i1 %i.ag, label %bb.c, label %._crit_edge, !llvm.loop !75

._crit_edge.sink.split:                           ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i5, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.preheader, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i..preheader.thread_crit_edge
  %.sink.in = phi i32 [ %.promoted9, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.preheader ], [ %i.r, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i..preheader.thread_crit_edge ], [ %1, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i5 ]
  %.04.lcssa.ph = phi i32 [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i.preheader ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i..preheader.thread_crit_edge ], [ %.1, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i5 ]
  store i32 0, ptr %i.a, align 8
  %.sink = add i32 %.sink.in, 1
  store i32 %.sink, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6, %._crit_edge.sink.split, %.preheader
  %.04.lcssa = phi i32 [ 0, %.preheader ], [ %.04.lcssa.ph, %._crit_edge.sink.split ], [ %.1, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit6 ]
  ret i32 %.04.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKtE4SkipEj(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, %1                     ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp ult i64 %i.g, 2147483648
  br i1 %i.h, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.b
  %i.i = trunc nuw nsw i64 %i.g to i32
  %i.j = icmp slt i32 %i.d, %i.i
  br i1 %i.j, label %bb.d, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.k = sext i32 %i.d to i64
  %i.l = load ptr, ptr %i.e, align 8
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.k
  %i.n = load i16, ptr %i.m, align 2
  %i.o = zext i16 %i.n to i32
  br label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, %bb.d
  %i.p = phi i32 [ %i.o, %bb.d ], [ 0, %_ZNK2v84base6VectorIKtE6lengthEv.exit.i ]
  store i32 %i.p, ptr %i.a, align 8
  %i.q = add nsw i32 %i.d, 1
  store i32 %i.q, ptr %0, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN2v88internal10DateParser11InputReaderIKtE8ReadWordEPji(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp ugt i32 %i.b, 64
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sext i32 %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit ] ; 6 uses
  %i.g = phi i32 [ %i.b, %.lr.ph ], [ %i.ab, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit ] ; 3 uses
  %i.h = icmp ult i32 %i.g, 256
  br i1 %i.h, label %.split, label %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit

.split:                                           ; preds = %bb.b
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = and i8 %i.k, 4
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.c, label %.critedge.loopexit

_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit: ; preds = %bb.b
  %i.m = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.g) #16
  br i1 %i.m, label %.critedge.loopexit, label %bb.c

bb.c:                                             ; preds = %.split, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit
  %i.n = icmp slt i64 %indvars.iv, %i.f
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.a, align 8
  %i.p = or i32 %i.o, 32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  store i32 %i.p, ptr %i.q, align 4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.r = load i32, ptr %0, align 8                ; 4 uses
  %i.s = load i64, ptr %i.e, align 8              ; 2 uses
  %i.t = icmp ult i64 %i.s, 2147483648
  br i1 %i.t, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.f, !prof !59

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.e
  %i.u = trunc nuw nsw i64 %i.s to i32
  %i.v = icmp slt i32 %i.r, %i.u
  br i1 %i.v, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  store i32 0, ptr %i.a, align 8
  %i.w = add nuw nsw i32 %i.r, 1
  store i32 %i.w, ptr %0, align 8
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv, 1
  br label %.critedge.loopexit

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.x = sext i32 %i.r to i64
  %i.y = load ptr, ptr %i.d, align 8
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.y, i64 %i.x
  %i.aa = load i16, ptr %i.z, align 2             ; 2 uses
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  store i32 %i.ab, ptr %i.a, align 8
  %i.ac = add nsw i32 %i.r, 1
  store i32 %i.ac, ptr %0, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = icmp ugt i16 %i.aa, 64
  br i1 %i.ad, label %bb.b, label %.critedge.loopexit, !llvm.loop !76

.critedge.loopexit:                               ; preds = %.split, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread
  %.012.lcssa.ph.in = phi i64 [ %indvars.iv.next29, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit.thread ], [ %indvars.iv, %.split ], [ %indvars.iv.next, %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit ], [ %indvars.iv, %_ZNK2v88internal10DateParser11InputReaderIKtE16IsWhiteSpaceCharEv.exit ]
  %.012.lcssa.ph = trunc i64 %.012.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %.012.lcssa.ph, %.critedge.loopexit ] ; 4 uses
  %i.ae = icmp slt i32 %.012.lcssa, %2
  br i1 %i.ae, label %.lr.ph18.preheader, label %._crit_edge

.lr.ph18.preheader:                               ; preds = %.critedge
  %i.af = zext i32 %.012.lcssa to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  %scevgep = getelementptr i8, ptr %1, i64 %i.ag
  %i.ah = xor i32 %.012.lcssa, -1
  %i.ai = add i32 %2, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = add nuw nsw i64 %i.ak, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.al, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph18.preheader, %.critedge
  ret i32 %.012.lcssa
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN2v88internal10DateParser11InputReaderIKtE14SkipWhiteSpaceEv(ptr noundef nonnull align 8 dereferenceable(28) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp ult i32 %i.b, 256
  br i1 %i.c, label %.split, label %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit

.split:                                           ; preds = %bb.a
  %i.d = zext nneg i32 %i.b to i64
  %i.e = getelementptr inbounds nuw i8, ptr @_ZN2v88internalL17kOneByteCharFlagsE, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1
  %i.g = and i8 %i.f, 8
  %.not = icmp eq i8 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.b

_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit: ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_ZN2v88internal16IsWhiteSpaceSlowEj(i32 noundef %i.b) #16
  %i.i = and i32 %i.b, -2
  %switch.i = icmp eq i32 %i.i, 8232
  %or.cond.i = or i1 %switch.i, %i.h
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.split, %_ZN2v88internal28IsWhiteSpaceOrLineTerminatorEj.exit
  %i.j = load i32, ptr %0, align 8                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp ult i64 %i.m, 2147483648
  br i1 %i.n, label %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, label %bb.c, !prof !59

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.34) #17
  unreachable

_ZNK2v84base6VectorIKtE6lengthEv.exit.i:          ; preds = %bb.b
  %i.o = trunc nuw nsw i64 %i.m to i32
  %i.p = icmp slt i32 %i.j, %i.o
  br i1 %i.p, label %bb.d, label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit

bb.d:                                             ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i
  %i.q = sext i32 %i.j to i64
  %i.r = load ptr, ptr %i.k, align 8
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.q
  %i.t = load i16, ptr %i.s, align 2
  %i.u = zext i16 %i.t to i32
  br label %_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit

_ZN2v88internal10DateParser11InputReaderIKtE4NextEv.exit: ; preds = %_ZNK2v84base6VectorIKtE6lengthEv.exit.i, %bb.d
end_hunk_1
