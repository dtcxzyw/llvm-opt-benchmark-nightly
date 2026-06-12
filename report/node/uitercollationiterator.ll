inline.NumInlined: 52
inline.NumDeleted: 19
begin_hunk_0_@_ZN6icu_7825FCDUIterCollationIterator13nextCodePointER10UErrorCode:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull %i.i) #4 ; 11 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ugt i32 %i.l, 191
  br i1 %i.n, label %bb.d, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i32 %i.l, 5
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812CollationFCD9tcccIndexE, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.r, 0
  br i1 %.not.i, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit

_ZN6icu_7812CollationFCD7hasTcccEi.exit:          ; preds = %bb.d
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812CollationFCD8tcccBitsE, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.l, 31
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.u, %i.w
  %.not22 = icmp eq i32 %i.x, 0
  br i1 %.not22, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7812CollationFCD7hasTcccEi.exit
  %i.y = and i32 %i.l, 2096897
  %.not33 = icmp eq i32 %i.y, 3841
  br i1 %.not33, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull %i.z) #4 ; 3 uses
  %i.ad = icmp sgt i32 %i.ac, 767
  br i1 %i.ad, label %bb.g, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ae = lshr i32 %i.ac, 5
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812CollationFCD9lcccIndexE, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1             ; 2 uses
  %.not.i27 = icmp eq i8 %i.ah, 0
  br i1 %.not.i27, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit

_ZN6icu_7812CollationFCD7hasLcccEi.exit:          ; preds = %bb.g
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812CollationFCD8lcccBitsE, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ac, 31
  %i.am = shl nuw i32 1, %i.al
  %i.an = and i32 %i.ak, %i.am
  %.not24 = icmp eq i32 %i.an, 0
  br i1 %.not24, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZN6icu_7812CollationFCD7hasLcccEi.exit, %bb.e
  %i.ao = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef i32 %i.aq(ptr noundef nonnull %i.ao) #4 ; 0 uses
  %i.as = tail call noundef signext i8 @_ZN6icu_7825FCDUIterCollationIterator11nextSegmentER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.not26 = icmp eq i8 %i.as, 0
  br i1 %.not26, label %.thread, label %.backedge.backedge

_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread:   ; preds = %bb.f, %bb.g, %bb.c, %bb.d, %_ZN6icu_7812CollationFCD7hasLcccEi.exit, %_ZN6icu_7812CollationFCD7hasTcccEi.exit
  %i.at = and i32 %i.l, 2147482624
  %i.au = icmp eq i32 %i.at, 55296
  br i1 %i.au, label %bb.i, label %.thread

bb.i:                                             ; preds = %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread
  %i.av = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull %i.av) #4 ; 3 uses
  %i.az = and i32 %i.ay, -1024
  %.not25 = icmp eq i32 %i.az, 56320
  br i1 %.not25, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = icmp sgt i32 %i.ay, -1
  br i1 %i.ba, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull %i.bb) #4 ; 0 uses
  br label %.thread

bb.l:                                             ; preds = %bb.i
  %i.bf = shl nuw nsw i32 %i.l, 10
  %i.bg = add nsw i32 %i.bf, -56613888
  %i.bh = add nuw nsw i32 %i.bg, %i.ay
  br label %.thread

bb.m:                                             ; preds = %.backedge
  %i.bi = load i32, ptr %i.b, align 8
  %i.bj = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.bi, %i.bj
  br i1 %.not, label %_ZN6icu_7825FCDUIterCollationIterator15switchToForwardEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.bl = tail call i32 @uiter_next32_78(ptr noundef nonnull %i.bk) #4 ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 65536
  %i.bn = select i1 %i.bm, i32 1, i32 2
  %i.bo = load i32, ptr %i.b, align 8
  %i.bp = add nsw i32 %i.bn, %i.bo
  store i32 %i.bp, ptr %i.b, align 8
  br label %.thread

bb.o:                                             ; preds = %.backedge
  %i.bq = icmp sgt i32 %i.h, 2
  br i1 %i.bq, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.br = load i32, ptr %i.b, align 8             ; 2 uses
  %i.bs = load i16, ptr %i.e, align 8             ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = ashr i16 %i.bs, 5
  %i.bv = sext i16 %i.bu to i32
  %i.bw = load i32, ptr %i.f, align 4
  %i.bx = select i1 %i.bt, i32 %i.bw, i32 %i.bv
  %.not21 = icmp eq i32 %i.br, %i.bx
  br i1 %.not21, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bz = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.by, i32 noundef %i.br) #4 ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 65536
  %i.cb = select i1 %i.ca, i32 1, i32 2
  %i.cc = load i32, ptr %i.b, align 8
  %i.cd = add nsw i32 %i.cb, %i.cc
  store i32 %i.cd, ptr %i.b, align 8
  br label %.thread

bb.r:                                             ; preds = %bb.p, %bb.o
  switch i32 %i.h, label %bb.u [
    i32 1, label %bb.s
    i32 4, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  %i.ce = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = tail call noundef i32 %i.cg(ptr noundef nonnull %i.ce, i32 noundef 1) #4, !inline_history !12 ; 3 uses
  store i32 %i.ch, ptr %i.b, align 8
  store i32 %i.ch, ptr %i.g, align 4
  %i.ci = load i32, ptr %i.c, align 4
  %i.cj = icmp eq i32 %i.ch, %i.ci
  %..i = select i1 %i.cj, i32 0, i32 2
  br label %_ZN6icu_7825FCDUIterCollationIterator15switchToForwardEv.exit

bb.t:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 40
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load i32, ptr %i.c, align 4
  %i.co = load i32, ptr %i.g, align 4
  %i.cp = sub nsw i32 %i.cn, %i.co
  %i.cq = tail call noundef i32 %i.cm(ptr noundef nonnull %i.ck, i32 noundef %i.cp, i32 noundef 1) #4, !inline_history !12 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.cr = load i32, ptr %i.c, align 4
  store i32 %i.cr, ptr %i.g, align 4
  br label %_ZN6icu_7825FCDUIterCollationIterator15switchToForwardEv.exit

_ZN6icu_7825FCDUIterCollationIterator15switchToForwardEv.exit: ; preds = %bb.m, %bb.s, %bb.u
  %.sink.i = phi i32 [ %..i, %bb.s ], [ 0, %bb.m ], [ 0, %bb.u ]
  store i32 %.sink.i, ptr %i.a, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN6icu_7825FCDUIterCollationIterator15switchToForwardEv.exit, %bb.h
  br label %.backedge, !llvm.loop !15

.thread:                                          ; preds = %bb.h, %bb.b, %bb.j, %bb.k, %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, %bb.l, %bb.q, %bb.n
  %.1 = phi i32 [ %i.bz, %bb.q ], [ %i.l, %bb.k ], [ %i.l, %bb.j ], [ %i.bh, %bb.l ], [ %i.bl, %bb.n ], [ %i.l, %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread ], [ -1, %bb.h ], [ %i.l, %bb.b ]
  ret i32 %.1
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN6icu_7825FCDUIterCollationIterator17previousCodePointER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.f = load i32, ptr %i.a, align 8              ; 3 uses
  switch i32 %i.f, label %bb.r [
    i32 1, label %bb.b
    i32 2, label %bb.p
  ]

bb.b:                                             ; preds = %.backedge
  %i.g = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull %i.g) #4 ; 12 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8
  store i32 0, ptr %i.c, align 4
  store i32 2, ptr %i.a, align 8
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i32 %i.j, 767
  br i1 %i.l, label %bb.e, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %i.j, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812CollationFCD9lcccIndexE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1               ; 2 uses
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit

_ZN6icu_7812CollationFCD7hasLcccEi.exit:          ; preds = %bb.e
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812CollationFCD8lcccBitsE, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  %i.t = and i32 %i.j, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812CollationFCD7hasLcccEi.exit
  %i.w = and i32 %i.j, 2096897
  %.not43.not = icmp eq i32 %i.w, 3841
  %i.x = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 3 uses
  br i1 %.not43.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull %i.x) #4 ; 6 uses
  %i.ab = icmp sgt i32 %i.aa, 191
  br i1 %i.ab, label %bb.h, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = lshr i32 %i.aa, 5
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812CollationFCD9tcccIndexE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1             ; 2 uses
  %.not.i32 = icmp eq i8 %i.af, 0
  br i1 %.not.i32, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit

_ZN6icu_7812CollationFCD7hasTcccEi.exit:          ; preds = %bb.h
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812CollationFCD8tcccBitsE, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.aa, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ai, %i.ak
  %.not30 = icmp eq i32 %i.al, 0
  br i1 %.not30, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7812CollationFCD7hasTcccEi.exit
  %i.am = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull %i.am) #4 ; 0 uses
  %i.aq = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i
  %.sink73 = phi ptr [ %i.aq, %bb.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink73, i64 72
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull %.sink73) #4 ; 0 uses
  %i.au = tail call noundef signext i8 @_ZN6icu_7825FCDUIterCollationIterator15previousSegmentER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.not31 = icmp eq i8 %i.au, 0
  br i1 %.not31, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread, label %.backedge.backedge

_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread:   ; preds = %bb.g, %bb.h, %_ZN6icu_7812CollationFCD7hasTcccEi.exit
  %i.av = and i32 %i.j, 2147482624
  %i.aw = icmp eq i32 %i.av, 56320
  br i1 %i.aw, label %bb.j, label %bb.n

bb.j:                                             ; preds = %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread
  %i.ax = icmp slt i32 %i.aa, 0
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ay = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull %i.ay) #4
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1 = phi i32 [ %i.bb, %bb.k ], [ %i.aa, %bb.j ] ; 3 uses
  %i.bc = and i32 %.1, -1024
  %i.bd = icmp eq i32 %i.bc, 55296
  br i1 %i.bd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.be = shl nuw nsw i32 %.1, 10
  %i.bf = add nuw nsw i32 %i.j, -56613888
  %i.bg = add nsw i32 %i.bf, %i.be
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.n:                                             ; preds = %bb.l, %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread
  %.2 = phi i32 [ %.1, %bb.l ], [ %i.aa, %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread ]
  %i.bh = icmp sgt i32 %.2, -1
  br i1 %i.bh, label %bb.o, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull %i.bi) #4 ; 0 uses
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.p:                                             ; preds = %.backedge
  %i.bm = load i32, ptr %i.b, align 8
  %i.bn = load i32, ptr %i.c, align 4
  %.not = icmp eq i32 %i.bm, %i.bn
  br i1 %.not, label %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6
  %i.bp = tail call i32 @uiter_previous32_78(ptr noundef nonnull %i.bo) #4 ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 65536
  %.neg27 = select i1 %i.bq, i32 -1, i32 -2
  %i.br = load i32, ptr %i.b, align 8
  %i.bs = add i32 %.neg27, %i.br
  store i32 %i.bs, ptr %i.b, align 8
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.r:                                             ; preds = %.backedge
  %2 = icmp slt i32 %i.f, 3
  %i.bt = load i32, ptr %i.b, align 8             ; 2 uses
  %.not26 = icmp eq i32 %i.bt, 0
  %or.cond = select i1 %2, i1 true, i1 %.not26
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bv = add nsw i32 %i.bt, -1
  %i.bw = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bu, i32 noundef %i.bv) #4 ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 65536
  %.neg = select i1 %i.bx, i32 -1, i32 -2
  %i.by = load i32, ptr %i.b, align 8
  %i.bz = add i32 %.neg, %i.by
  store i32 %i.bz, ptr %i.b, align 8
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.t:                                             ; preds = %bb.r
  switch i32 %i.f, label %bb.w [
    i32 0, label %bb.u
    i32 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.ca = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef i32 %i.cc(ptr noundef nonnull %i.ca, i32 noundef 1) #4, !inline_history !16 ; 3 uses
  store i32 %i.cd, ptr %i.b, align 8
  store i32 %i.cd, ptr %i.e, align 4
  %i.ce = load i32, ptr %i.c, align 4
  %i.cf = icmp eq i32 %i.cd, %i.ce
  %..i = select i1 %i.cf, i32 1, i32 2
  br label %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit

bb.v:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr %i.d, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load i32, ptr %i.c, align 4
  %i.ck = load i32, ptr %i.e, align 4
  %i.cl = sub nsw i32 %i.cj, %i.ck
  %i.cm = tail call noundef i32 %i.ci(ptr noundef nonnull %i.cg, i32 noundef %i.cl, i32 noundef 1) #4, !inline_history !16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.t
  %i.cn = load i32, ptr %i.c, align 4
  store i32 %i.cn, ptr %i.e, align 4
  br label %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit

_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit: ; preds = %bb.p, %bb.u, %bb.w
  %.sink.i = phi i32 [ %..i, %bb.u ], [ 1, %bb.p ], [ 1, %bb.w ]
  store i32 %.sink.i, ptr %i.a, align 8
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit, %.critedge
  br label %.backedge, !llvm.loop !17

_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread:   ; preds = %.critedge, %bb.d, %bb.e, %_ZN6icu_7812CollationFCD7hasLcccEi.exit, %bb.o, %bb.n, %bb.m, %bb.s, %bb.q, %bb.c
  %.221 = phi i32 [ -1, %bb.c ], [ %i.j, %bb.o ], [ %i.bw, %bb.s ], [ %i.bp, %bb.q ], [ %i.bg, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %bb.e ], [ %i.j, %_ZN6icu_7812CollationFCD7hasLcccEi.exit ], [ -1, %.critedge ], [ %i.j, %bb.d ]
  ret i32 %.221
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7825FCDUIterCollationIterator15previousSegmentER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull %i.d, i32 noundef 1) #4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  store i32 %i.g, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i16 2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  %.024 = phi i8 [ 0, %bb.b ], [ %i.cz, %bb.p ]   ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.l = call i32 @uiter_previous32_78(ptr noundef nonnull %i.k) #4 ; 8 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %select.unfold, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8
  %i.q = zext i16 %i.p to i32
  %i.r = icmp samesign ult i32 %i.l, %i.q
  br i1 %i.r, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp samesign ult i32 %i.l, 65536
  br i1 %i.s, label %bb.f, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = lshr i32 %i.l, 8
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1               ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  %i.aa = zext i8 %i.y to i32
  %i.ab = lshr i32 %i.l, 5
  %i.ac = and i32 %i.ab, 7
  %i.ad = shl nuw nsw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %i.aa
  %.not6.i = icmp eq i32 %i.ae, 0
  %.not.i = select i1 %i.z, i1 true, i1 %.not6.i
  br i1 %.not.i, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit:     ; preds = %bb.e, %bb.f
  %i.af = call noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i32 noundef %i.l) #4 ; 5 uses
  %i.ag = and i16 %i.af, 255                      ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread, label %bb.h

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread: ; preds = %bb.f, %bb.d, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit
  %.0.i43 = phi i16 [ %i.af, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit ], [ 0, %bb.d ], [ 0, %bb.f ]
  %i.ai = load i16, ptr %i.i, align 8
  %i.aj = icmp ugt i16 %i.ai, 31
  br i1 %i.aj, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread
  %i.ak = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.l) #4 ; 0 uses
  br label %bb.p

bb.g:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread
  %i.al = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.am = call i32 @uiter_next32_78(ptr noundef nonnull %i.al) #4 ; 0 uses
  br label %select.unfold

bb.h:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit
  %i.an = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.l) #4 ; 0 uses
  %.not33 = icmp ne i8 %.024, 0
  %i.ao = zext i8 %.024 to i16
  %i.ap = icmp samesign ugt i16 %i.ag, %i.ao
  %or.cond = select i1 %.not33, i1 %i.ap, i1 false
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i16 %i.af, label %bb.p [
    i16 -32380, label %.lr.ph.preheader
    i16 -32382, label %.lr.ph.preheader
  ]

bb.j:                                             ; preds = %bb.h
  %i.aq = icmp ugt i16 %i.af, 255
  br i1 %i.aq, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.i, %bb.i, %bb.j
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.n
  %i.ar = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.as = call i32 @uiter_previous32_78(ptr noundef nonnull %i.ar) #4 ; 7 uses
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.au = load ptr, ptr %i.j, align 8, !nonnull !5, !align !6 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i16, ptr %i.av, align 8
  %i.ax = zext i16 %i.aw to i32
  %i.ay = icmp samesign ult i32 %i.as, %i.ax
  br i1 %i.ay, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = icmp samesign ult i32 %i.as, 65536
  br i1 %i.az, label %bb.m, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40

bb.m:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = lshr i32 %i.as, 8
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = zext i8 %i.bf to i32
  %i.bi = lshr i32 %i.as, 5
  %i.bj = and i32 %i.bi, 7
  %i.bk = shl nuw nsw i32 1, %i.bj
  %i.bl = and i32 %i.bk, %i.bh
  %.not6.i38 = icmp eq i32 %i.bl, 0
  %.not.i39 = select i1 %i.bg, i1 true, i1 %.not6.i38
  br i1 %.not.i39, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40.thread, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40:   ; preds = %bb.l, %bb.m
  %i.bm = call noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80) %i.au, i32 noundef %i.as) #4 ; 2 uses
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40.thread, label %bb.n

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40.thread: ; preds = %bb.m, %bb.k, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40
  %i.bo = load ptr, ptr %i.c, align 8, !nonnull !5, !align !6
  %i.bp = call i32 @uiter_next32_78(ptr noundef nonnull %i.bo) #4 ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40
  %i.bq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.as) #4 ; 0 uses
  %i.br = icmp ugt i16 %i.bm, 255
  br i1 %i.br, label %.lr.ph, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %bb.j, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit40.thread
  %i.bs = load i16, ptr %i.i, align 8             ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = ashr i16 %i.bs, 5
end_hunk_0
