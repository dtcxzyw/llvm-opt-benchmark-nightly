Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uitercollationiterator?download=true
inline.NumInlined: 50
inline.NumDeleted: 19
begin_hunk_0_@_ZN6icu_7825FCDUIterCollationIterator13nextCodePointER10UErrorCode:bb.a
  store i32 %.sink.i, ptr %i.a, align 8, !tbaa !46
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN6icu_7825FCDUIterCollationIterator15switchToForwardEv.exit, %bb.h
  br label %.backedge, !llvm.loop !71

.thread:                                          ; preds = %bb.h, %bb.b, %bb.j, %bb.k, %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, %bb.l, %bb.q, %bb.n
  %.1 = phi i32 [ %i.bz, %bb.q ], [ %i.l, %bb.k ], [ %i.l, %bb.j ], [ %i.bh, %bb.l ], [ %i.bl, %bb.n ], [ %i.l, %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread ], [ -1, %bb.h ], [ %i.l, %bb.b ]
  ret i32 %.1
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7825FCDUIterCollationIterator17previousCodePointER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.f = load i32, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  switch i32 %i.f, label %bb.r [
    i32 1, label %bb.b
    i32 2, label %bb.p
  ]

bb.b:                                             ; preds = %.backedge
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = tail call noundef i32 %i.i(ptr noundef nonnull %i.g) ; 12 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !47
  store i32 0, ptr %i.c, align 4, !tbaa !45
  store i32 2, ptr %i.a, align 8, !tbaa !46
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = icmp samesign ugt i32 %i.j, 767
  br i1 %i.l, label %bb.e, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = lshr i32 %i.j, 5
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812CollationFCD9lcccIndexE, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !49    ; 2 uses
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit

_ZN6icu_7812CollationFCD7hasLcccEi.exit:          ; preds = %bb.e
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812CollationFCD8lcccBitsE, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = and i32 %i.j, 31
  %i.u = shl nuw i32 1, %i.t
  %i.v = and i32 %i.s, %i.u
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_7812CollationFCD7hasLcccEi.exit
  %i.w = and i32 %i.j, 2096897
  %.not43.not = icmp eq i32 %i.w, 3841
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21 ; 3 uses
  br i1 %.not43.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !36
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull %i.x) ; 6 uses
  %i.ab = icmp sgt i32 %i.aa, 191
  br i1 %i.ab, label %bb.h, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = lshr i32 %i.aa, 5
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr @_ZN6icu_7812CollationFCD9tcccIndexE, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !49  ; 2 uses
  %.not.i32 = icmp eq i8 %i.af, 0
  br i1 %.not.i32, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit

_ZN6icu_7812CollationFCD7hasTcccEi.exit:          ; preds = %bb.h
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr @_ZN6icu_7812CollationFCD8tcccBitsE, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !26
  %i.aj = and i32 %i.aa, 31
  %i.ak = shl nuw i32 1, %i.aj
  %i.al = and i32 %i.ai, %i.ak
  %.not30 = icmp eq i32 %i.al, 0
  br i1 %.not30, label %_ZN6icu_7812CollationFCD7hasTcccEi.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZN6icu_7812CollationFCD7hasTcccEi.exit
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull %i.am) ; 0 uses
  %i.aq = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.i
  %.sink73 = phi ptr [ %i.aq, %bb.i ], [ %i.x, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sink73, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !25
  %i.at = tail call noundef i32 %i.as(ptr noundef nonnull %.sink73) ; 0 uses
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
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 80
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bb = tail call noundef i32 %i.ba(ptr noundef nonnull %i.ay)
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
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !25
  %i.bl = tail call noundef i32 %i.bk(ptr noundef nonnull %i.bi) ; 0 uses
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.p:                                             ; preds = %.backedge
  %i.bm = load i32, ptr %i.b, align 8, !tbaa !47
  %i.bn = load i32, ptr %i.c, align 4, !tbaa !45
  %.not = icmp eq i32 %i.bm, %i.bn
  br i1 %.not, label %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.bp = tail call i32 @uiter_previous32_78(ptr noundef nonnull %i.bo) ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 65536
  %.neg27 = select i1 %i.bq, i32 -1, i32 -2
  %i.br = load i32, ptr %i.b, align 8, !tbaa !47
  %i.bs = add i32 %.neg27, %i.br
  store i32 %i.bs, ptr %i.b, align 8, !tbaa !47
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.r:                                             ; preds = %.backedge
  %i.bt = icmp sgt i32 %i.f, 2
  br i1 %i.bt, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.bu = load i32, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  %.not26 = icmp eq i32 %i.bu, 0
  br i1 %.not26, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.bw = add nsw i32 %i.bu, -1
  %i.bx = tail call noundef i32 @_ZNK6icu_7813UnicodeString8char32AtEi(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, i32 noundef %i.bw) ; 2 uses
  %i.by = icmp ult i32 %i.bx, 65536
  %.neg = select i1 %i.by, i32 -1, i32 -2
  %i.bz = load i32, ptr %i.b, align 8, !tbaa !47
  %i.ca = add i32 %.neg, %i.bz
  store i32 %i.ca, ptr %i.b, align 8, !tbaa !47
  br label %_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread

bb.u:                                             ; preds = %bb.s, %bb.r
  switch i32 %i.f, label %bb.x [
    i32 0, label %bb.v
    i32 3, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.cb = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !24
  %i.ce = tail call noundef i32 %i.cd(ptr noundef nonnull %i.cb, i32 noundef 1), !inline_history !72 ; 3 uses
  store i32 %i.ce, ptr %i.b, align 8, !tbaa !47
  store i32 %i.ce, ptr %i.e, align 4, !tbaa !48
  %i.cf = load i32, ptr %i.c, align 4, !tbaa !45
  %i.cg = icmp eq i32 %i.ce, %i.cf
  %..i = select i1 %i.cg, i32 1, i32 2
  br label %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit

bb.w:                                             ; preds = %bb.u
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23
  %i.ck = load i32, ptr %i.c, align 4, !tbaa !45
  %i.cl = load i32, ptr %i.e, align 4, !tbaa !48
  %i.cm = sub nsw i32 %i.ck, %i.cl
  %i.cn = tail call noundef i32 %i.cj(ptr noundef nonnull %i.ch, i32 noundef %i.cm, i32 noundef 1), !inline_history !72 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %i.co = load i32, ptr %i.c, align 4, !tbaa !45
  store i32 %i.co, ptr %i.e, align 4, !tbaa !48
  br label %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit

_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit: ; preds = %bb.p, %bb.v, %bb.x
  %.sink.i = phi i32 [ %..i, %bb.v ], [ 1, %bb.p ], [ 1, %bb.x ]
  store i32 %.sink.i, ptr %i.a, align 8, !tbaa !46
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv.exit, %.critedge
  br label %.backedge

_ZN6icu_7812CollationFCD7hasLcccEi.exit.thread:   ; preds = %.critedge, %bb.d, %bb.e, %_ZN6icu_7812CollationFCD7hasLcccEi.exit, %bb.o, %bb.n, %bb.m, %bb.t, %bb.q, %bb.c
  %.221 = phi i32 [ -1, %bb.c ], [ %i.j, %bb.o ], [ %i.bx, %bb.t ], [ %i.bp, %bb.q ], [ %i.bg, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %bb.e ], [ %i.j, %_ZN6icu_7812CollationFCD7hasLcccEi.exit ], [ -1, %.critedge ], [ %i.j, %bb.d ]
  ret i32 %.221
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7825FCDUIterCollationIterator15previousSegmentER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !55
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull %i.d, i32 noundef 1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 4 uses
  store i32 %i.g, ptr %i.h, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !tbaa !39
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i16 2, ptr %i.i, align 8, !tbaa !49
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.x, %bb.b
  %.029 = phi i8 [ 0, %bb.b ], [ %i.cz, %bb.x ]   ; 2 uses
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.l = invoke i32 @uiter_previous32_78(ptr noundef nonnull %i.k)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.d:                                             ; preds = %bb.c
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !56, !nonnull !20, !align !21 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !64
  %i.q = zext i16 %i.p to i32
  %i.r = icmp samesign ult i32 %i.l, %i.q
  br i1 %i.r, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp samesign ult i32 %i.l, 65536
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = lshr i32 %i.l, 8
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !49    ; 2 uses
  %i.z = icmp eq i8 %i.y, 0
  %i.aa = zext i8 %i.y to i32
  %i.ab = lshr i32 %i.l, 5
  %i.ac = and i32 %i.ab, 7
  %i.ad = shl nuw nsw i32 1, %i.ac
  %i.ae = and i32 %i.ad, %i.aa
  %.not6.i = icmp eq i32 %i.ae, 0
  %.not.i = select i1 %i.z, i1 true, i1 %.not6.i
  br i1 %.not.i, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.af = invoke noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80) %i.n, i32 noundef %i.l)
          to label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit:     ; preds = %bb.h
  %i.ag = and i16 %i.af, 255                      ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread, label %bb.j

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread: ; preds = %bb.g, %bb.e, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit
  %.0.i58 = phi i16 [ %i.af, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit ], [ 0, %bb.e ], [ 0, %bb.g ]
  %i.ai = load i16, ptr %i.i, align 8, !tbaa !49
  %i.aj = icmp ugt i16 %i.ai, 31
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.al = invoke i32 @uiter_next32_78(ptr noundef nonnull %i.ak)
          to label %select.unfold unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.o, %bb.u, %bb.t, %bb.h, %bb.c, %bb.j, %_ZN6icu_7813UnicodeString7reverseEv.exit, %.loopexit, %select.unfold, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53.thread, %bb.i
  %lpad.loopexit.split-lp86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  resume { ptr, i32 } %lpad.loopexit.split-lp86

bb.j:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit
  %i.am = phi i1 [ true, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread ], [ false, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit ]
  %i.an = phi i16 [ 0, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread ], [ %i.ag, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit ]
  %.0.i57 = phi i16 [ %.0.i58, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit.thread ], [ %i.af, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit ] ; 3 uses
  %i.ao = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.l)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.k:                                             ; preds = %bb.j
  br i1 %i.am, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not41 = icmp ne i8 %.029, 0
  %i.ap = zext i8 %.029 to i16
  %i.aq = icmp samesign ugt i16 %i.an, %i.ap
  %or.cond = select i1 %.not41, i1 %i.aq, i1 false
  br i1 %or.cond, label %.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i16 %.0.i57, label %bb.x [
    i16 -32380, label %.preheader
    i16 -32382, label %.preheader
  ]

.preheader:                                       ; preds = %bb.m, %bb.m, %bb.l
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.u
  %.0 = phi i16 [ %i.bn, %bb.u ], [ %.0.i57, %.preheader ]
  %i.ar = icmp ugt i16 %.0, 255
  br i1 %i.ar, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.at = invoke i32 @uiter_previous32_78(ptr noundef nonnull %i.as)
          to label %bb.p unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 7 uses

bb.p:                                             ; preds = %bb.o
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load ptr, ptr %i.j, align 8, !tbaa !56, !nonnull !20, !align !21 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i16, ptr %i.aw, align 8, !tbaa !64
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp samesign ult i32 %i.at, %i.ay
  br i1 %i.az, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = icmp samesign ult i32 %i.at, 65536
  br i1 %i.ba, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !65
  %i.bd = lshr i32 %i.at, 8
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !49  ; 2 uses
  %i.bh = icmp eq i8 %i.bg, 0
  %i.bi = zext i8 %i.bg to i32
  %i.bj = lshr i32 %i.at, 5
  %i.bk = and i32 %i.bj, 7
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = and i32 %i.bl, %i.bi
  %.not6.i50 = icmp eq i32 %i.bm, 0
  %.not.i51 = select i1 %i.bh, i1 true, i1 %.not6.i50
  br i1 %.not.i51, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53.thread, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bn = invoke noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80) %i.av, i32 noundef %i.at)
          to label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53:   ; preds = %bb.t
  %i.bo = icmp eq i16 %i.bn, 0
  br i1 %i.bo, label %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53.thread, label %bb.u

_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53.thread: ; preds = %bb.s, %bb.q, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21
  %i.bq = invoke i32 @uiter_next32_78(ptr noundef nonnull %i.bp)
          to label %.loopexit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.u:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53
  %i.br = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.at)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !73 ; 0 uses

.loopexit:                                        ; preds = %bb.p, %bb.n, %_ZNK6icu_7815Normalizer2Impl8getFCD16Ei.exit53.thread
  %i.bs = load i16, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.bt = icmp slt i16 %i.bs, 0
  %i.bu = ashr i16 %i.bs, 5
  %i.bv = sext i16 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = select i1 %i.bt, i32 %i.bx, i32 %i.bv
  %i.bz = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReverseEii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.by)
          to label %_ZN6icu_7813UnicodeString7reverseEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString7reverseEv.exit:         ; preds = %.loopexit
  %i.ca = load ptr, ptr %i.j, align 8, !tbaa !56, !nonnull !20, !align !21
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.cc = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815Normalizer2Impl9decomposeERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.cb, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %_ZN6icu_7813UnicodeString7reverseEv.exit
  %i.cd = load i32, ptr %1, align 4, !tbaa !55
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.thread64, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cf = load i32, ptr %i.h, align 8, !tbaa !47  ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !48
  %i.ch = load i16, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.ci = icmp slt i16 %i.ch, 0
  %i.cj = ashr i16 %i.ch, 5
  %i.ck = sext i16 %i.cj to i32
  %i.cl = load i32, ptr %i.bw, align 4
  %i.cm = select i1 %i.ci, i32 %i.cl, i32 %i.ck
  %i.cn = sub nsw i32 %i.cf, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !45
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 4, ptr %i.cp, align 8, !tbaa !46
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.cr = load i16, ptr %i.cq, align 8, !tbaa !49 ; 2 uses
  %i.cs = icmp slt i16 %i.cr, 0
  %i.ct = ashr i16 %i.cr, 5
  %i.cu = sext i16 %i.ct to i32
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = select i1 %i.cs, i32 %i.cw, i32 %i.cu
  store i32 %i.cx, ptr %i.h, align 8, !tbaa !47
  br label %.thread64

bb.x:                                             ; preds = %bb.m, %bb.k
  %i.cy = lshr i16 %.0.i57, 8                     ; 2 uses
  %i.cz = trunc nuw i16 %i.cy to i8
  %i.da = icmp eq i16 %i.cy, 0
  br i1 %i.da, label %select.unfold, label %bb.c

select.unfold:                                    ; preds = %bb.x, %bb.d, %bb.i
  %i.db = load i32, ptr %i.h, align 8, !tbaa !47
  %i.dc = load i16, ptr %i.i, align 8, !tbaa !49  ; 2 uses
  %i.dd = icmp slt i16 %i.dc, 0
  %i.de = ashr i16 %i.dc, 5
  %i.df = sext i16 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = select i1 %i.dd, i32 %i.dh, i32 %i.df   ; 2 uses
  %i.dj = sub nsw i32 %i.db, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 404
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !45
  %i.dl = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !23
  %i.do = invoke noundef i32 %i.dn(ptr noundef nonnull %i.dl, i32 noundef %i.di, i32 noundef 1)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %select.unfold
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 2, ptr %i.dp, align 8, !tbaa !46
  br label %.thread64

.thread64:                                        ; preds = %bb.v, %bb.w, %bb.y
  %.3 = phi i8 [ 1, %bb.y ], [ 0, %bb.v ], [ 1, %bb.w ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %.thread64
  %.4 = phi i8 [ %.3, %.thread64 ], [ 0, %bb.a ]
  ret i8 %.4
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(488) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  switch i32 %i.b, label %bb.d [
    i32 0, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull %i.d, i32 noundef 1) ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i32 %i.g, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.g, ptr %i.i, align 4, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.k = load i32, ptr %i.j, align 4, !tbaa !45
  %i.l = icmp eq i32 %i.g, %i.k
  %. = select i1 %i.l, i32 1, i32 2
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19, !nonnull !20, !align !21 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.r = load i32, ptr %i.q, align 4, !tbaa !45
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.t = load i32, ptr %i.s, align 4, !tbaa !48
  %i.u = sub nsw i32 %i.r, %i.t
  %i.v = tail call noundef i32 %i.p(ptr noundef nonnull %i.n, i32 noundef %i.u, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.x = load i32, ptr %i.w, align 4, !tbaa !45
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.x, ptr %i.y, align 4, !tbaa !48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sink = phi i32 [ %., %bb.b ], [ 1, %bb.a ], [ 1, %bb.d ]
  store i32 %.sink, ptr %i.a, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825FCDUIterCollationIterator20forwardNumCodePointsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = tail call noundef i32 @_ZN6icu_7825FCDUIterCollationIterator13nextCodePointER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = add nsw i32 %.03, -1
  %i.e = icmp sgt i32 %.03, 1
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !74

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7825FCDUIterCollationIterator21backwardNumCodePointsEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #2 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03 = phi i32 [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.b = tail call noundef i32 @_ZN6icu_7825FCDUIterCollationIterator17previousCodePointER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.c = icmp sgt i32 %i.b, -1
  %i.d = add nsw i32 %.03, -1
  %i.e = icmp sgt i32 %.03, 1
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge, !llvm.loop !75

.critedge:                                        ; preds = %.lr.ph, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7825FCDUIterCollationIterator9normalizeERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(488) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56, !nonnull !20, !align !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815Normalizer2Impl9decomposeERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !55
  %i.f = icmp slt i32 %i.e, 1
  %i.g = zext i1 %i.f to i8
  ret i8 %i.g
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815Normalizer2Impl9decomposeERKNS_13UnicodeStringERS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef zeroext i1 @_ZNK6icu_7817CollationIteratoreqERKS0_(ptr noundef nonnull align 8 dereferenceable(389), ptr noundef nonnull align 8 dereferenceable(389)) unnamed_addr #3

declare noundef signext i8 @_ZN6icu_7817CollationIterator18foundNULTerminatorEv(ptr noundef nonnull align 8 dereferenceable(389)) unnamed_addr #3

declare noundef signext i8 @_ZNK6icu_7817CollationIterator25forbidSurrogateCodePointsEv(ptr noundef nonnull align 8 dereferenceable(389)) unnamed_addr #3

declare noundef i32 @_ZNK6icu_7817CollationIterator11getDataCE32Ei(ptr noundef nonnull align 8 dereferenceable(389), i32 noundef) unnamed_addr #3

declare noundef i32 @_ZN6icu_7817CollationIterator22getCE32FromBuilderDataEjR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(389), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #3

declare noundef zeroext i16 @_ZNK6icu_7815Normalizer2Impl20getFCD16FromNormDataEi(ptr noundef nonnull align 8 dereferenceable(80), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReverseEii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"_ZTSN6icu_787UObjectE"}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 _ZTS6UTrie2", !9, i64 0}
!11 = !{!"p1 _ZTSN6icu_7813CollationDataE", !9, i64 0}
!12 = !{!"p1 long", !9, i64 0}
!13 = !{!"_ZTSN6icu_7815MaybeStackArrayIlLi40EEE", !12, i64 0, !5, i64 8, !4, i64 12, !4, i64 16}
!14 = !{!"_ZTSN6icu_7817CollationIterator8CEBufferE", !5, i64 0, !13, i64 8}
!15 = !{!"p1 _ZTSN6icu_7812SkippedStateE", !9, i64 0}
!16 = !{!"_ZTSN6icu_7817CollationIteratorE", !8, i64 0, !10, i64 8, !11, i64 16, !14, i64 24, !5, i64 368, !15, i64 376, !5, i64 384, !4, i64 388}
!17 = !{!"p1 _ZTS13UCharIterator", !9, i64 0}
!18 = !{!"_ZTSN6icu_7822UIterCollationIteratorE", !16, i64 0, !17, i64 392}
!19 = !{!18, !17, i64 392}
!20 = !{}
!21 = !{i64 8}
!22 = !{!"_ZTS13UCharIterator", !9, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !9, i64 88, !9, i64 96, !9, i64 104}
!23 = !{!22, !9, i64 40}
!24 = !{!22, !9, i64 32}
!25 = !{!22, !9, i64 72}
!26 = !{!5, !5, i64 0}
!27 = !{!16, !10, i64 8}
!28 = !{!"p1 short", !9, i64 0}
!29 = !{!"p1 int", !9, i64 0}
!30 = !{!"short", !4, i64 0}
!31 = !{!"p1 _ZTS9UNewTrie2", !9, i64 0}
!32 = !{!"_ZTS6UTrie2", !28, i64 0, !28, i64 8, !29, i64 16, !5, i64 24, !5, i64 28, !30, i64 32, !30, i64 34, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !9, i64 56, !5, i64 64, !4, i64 68, !4, i64 69, !30, i64 70, !31, i64 72}
!33 = !{!32, !29, i64 16}
!34 = !{!32, !28, i64 0}
!35 = !{!30, !30, i64 0}
!36 = !{!22, !9, i64 80}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"vtable pointer", !3, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"_ZTSN6icu_7825FCDUIterCollationIterator5StateE", !4, i64 0}
!41 = !{!"p1 _ZTSN6icu_7815Normalizer2ImplE", !9, i64 0}
!42 = !{!"_ZTSN6icu_7811ReplaceableE", !8, i64 0}
!43 = !{!"_ZTSN6icu_7813UnicodeStringE", !42, i64 0, !4, i64 8}
!44 = !{!"_ZTSN6icu_7825FCDUIterCollationIteratorE", !18, i64 0, !40, i64 400, !5, i64 404, !5, i64 408, !5, i64 412, !41, i64 416, !43, i64 424}
!45 = !{!44, !5, i64 404}
!46 = !{!44, !40, i64 400}
!47 = !{!44, !5, i64 408}
!48 = !{!44, !5, i64 412}
!49 = !{!4, !4, i64 0}
!50 = !{!22, !9, i64 64}
!51 = !{!"char16_t", !4, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{ptr @_ZN6icu_7825FCDUIterCollationIterator15switchToForwardEv}
!54 = !{!"_ZTS10UErrorCode", !4, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!44, !41, i64 416}
!57 = !{!"p1 _ZTS7UCPTrie", !9, i64 0}
!58 = !{!"p1 omnipotent char", !9, i64 0}
!59 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!60 = !{!"_ZTSSt6atomicIiE", !59, i64 0}
!61 = !{!"_ZTSN6icu_789UInitOnceE", !60, i64 0, !54, i64 4}
!62 = !{!"p1 _ZTSN6icu_7813CanonIterDataE", !9, i64 0}
!63 = !{!"_ZTSN6icu_7815Normalizer2ImplE", !8, i64 0, !51, i64 8, !51, i64 10, !51, i64 12, !30, i64 14, !30, i64 16, !30, i64 18, !30, i64 20, !30, i64 22, !30, i64 24, !30, i64 26, !30, i64 28, !30, i64 30, !30, i64 32, !30, i64 34, !57, i64 40, !28, i64 48, !58, i64 56, !61, i64 64, !62, i64 72}
!64 = !{!63, !51, i64 8}
!65 = !{!63, !58, i64 56}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = !{ptr @_ZN6icu_7822UIterCollationIterator13resetToOffsetEi}
!69 = distinct !{!69, !37}
!70 = distinct !{!70, !37}
!71 = distinct !{!71, !37}
!72 = !{ptr @_ZN6icu_7825FCDUIterCollationIterator16switchToBackwardEv}
!73 = distinct !{!73, !37}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !37}
end_hunk_0
