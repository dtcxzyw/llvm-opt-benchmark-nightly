Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/uniset?download=true
inline.NumInlined: 259
inline.NumDeleted: 43
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6icu_7810UnicodeSet7matchesERKNS_11ReplaceableERiia:bb.a
  br i1 %i.ay, label %.lr.ph, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread

.lr.ph:                                           ; preds = %bb.h
  %.not68 = icmp eq i8 %4, 0
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.s
  %i.az = phi ptr [ %i.av, %.lr.ph ], [ %i.cp, %bb.s ]
  %.05292 = phi i32 [ 0, %.lr.ph ], [ %.456.ph, %bb.s ] ; 6 uses
  %.05791 = phi i32 [ 0, %.lr.ph ], [ %i.co, %bb.s ] ; 2 uses
  %i.ba = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.az, i32 noundef %.05791) ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !44 ; 6 uses
  %i.bd = icmp ugt i16 %i.bc, 31
  br i1 %i.bd, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  br i1 %i.aq, label %._crit_edge, label %bb.k

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  %.pre97 = ashr i16 %i.bc, 5
  %.pre98 = sext i16 %.pre97 to i32
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.be = icmp slt i16 %i.bc, 0
  %i.bf = ashr i16 %i.bc, 5
  %i.bg = sext i16 %i.bf to i32                   ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = select i1 %i.be, i32 %i.bi, i32 %i.bg
  %i.bk = add nsw i32 %i.bj, -1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.k
  %.pre-phi99 = phi i32 [ %.pre98, %._crit_edge ], [ %i.bg, %bb.k ]
  %i.bl = phi i32 [ %.pre, %._crit_edge ], [ %i.bi, %bb.k ]
  %i.bm = phi i32 [ 0, %._crit_edge ], [ %i.bk, %bb.k ] ; 2 uses
  %i.bn = icmp slt i16 %i.bc, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bp = select i1 %i.bn, i32 %i.bl, i32 %.pre-phi99
  %i.bq = icmp ult i32 %i.bm, %i.bp
  br i1 %i.bq, label %bb.m, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.m:                                             ; preds = %bb.l
  %i.br = and i16 %i.bc, 2
  %.not.i.i.i = icmp eq i16 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = select i1 %.not.i.i.i, ptr %i.bu, ptr %i.bs
  %i.bw = sext i32 %i.bm to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !43
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.l, %bb.m
  %.0.i.i = phi i16 [ %i.by, %bb.m ], [ -1, %bb.l ] ; 2 uses
  %i.bz = icmp ugt i16 %.0.i.i, %i.au
  %or.cond = and i1 %i.aq, %i.bz
  br i1 %or.cond, label %.thread82, label %bb.n

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.not67 = icmp eq i16 %.0.i.i, %i.au
  br i1 %.not67, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ca = load i32, ptr %2, align 4, !tbaa !37
  %i.cb = tail call noundef i32 @_ZN6icu_7810UnicodeSet9matchRestERKNS_11ReplaceableEiiRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ca, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(64) %i.ba) ; 4 uses
  br i1 %.not68, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = load i32, ptr %2, align 4, !tbaa !37    ; 2 uses
  %i.cd = sub nsw i32 %3, %i.cc
  %i.ce = sub nsw i32 %i.cc, %3
  %i.cf = select i1 %i.aq, i32 %i.cd, i32 %i.ce
  %.not69 = icmp eq i32 %i.cb, %i.cf
  br i1 %.not69, label %.thread86, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cg = load i16, ptr %i.bb, align 8, !tbaa !44 ; 2 uses
  %i.ch = icmp slt i16 %i.cg, 0
  %i.ci = ashr i16 %i.cg, 5
  %i.cj = sext i16 %i.ci to i32
  %i.ck = load i32, ptr %i.bo, align 4
  %i.cl = select i1 %i.ch, i32 %i.ck, i32 %i.cj
  %i.cm = icmp eq i32 %i.cb, %i.cl
  br i1 %i.cm, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.cb, i32 %.05292) ; 2 uses
  %i.cn = icmp sgt i32 %.05292, %i.cb
  %or.cond73 = select i1 %i.aq, i1 %i.cn, i1 false
  br i1 %or.cond73, label %.thread82, label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.n, %bb.q, %bb.r
  %.456.ph = phi i32 [ %spec.select, %bb.r ], [ %.05292, %bb.q ], [ %.05292, %bb.n ], [ %.05292, %bb.i ] ; 2 uses
  %i.co = add nuw nsw i32 %.05791, 1              ; 2 uses
  %i.cp = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !28
  %i.cs = icmp slt i32 %i.co, %i.cr
  br i1 %i.cs, label %bb.i, label %.thread82, !llvm.loop !68

.thread82:                                        ; preds = %bb.s, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.r
  %.5 = phi i32 [ %.05292, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %.456.ph, %bb.s ], [ %spec.select, %bb.r ] ; 3 uses
  %.not70 = icmp eq i32 %.5, 0
  br i1 %.not70, label %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, label %bb.t

bb.t:                                             ; preds = %.thread82
  %i.ct = sub nsw i32 0, %.5
  %i.cu = select i1 %i.aq, i32 %.5, i32 %i.ct
  %i.cv = load i32, ptr %2, align 4, !tbaa !37
  %i.cw = add nsw i32 %i.cv, %i.cu
  store i32 %i.cw, ptr %2, align 4, !tbaa !37
  br label %.thread86

_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread: ; preds = %bb.h, %bb.g, %.thread82, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit
  %i.cx = tail call noundef i32 @_ZN6icu_7813UnicodeFilter7matchesERKNS_11ReplaceableERiia(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i8 noundef signext %4)
  br label %.thread86

.thread86:                                        ; preds = %bb.p, %bb.t, %_ZNK6icu_7810UnicodeSet8containsEi.exit, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread, %bb.f
  %.8 = phi i32 [ %i.al, %bb.f ], [ 0, %_ZNK6icu_7810UnicodeSet8containsEi.exit ], [ %i.cx, %_ZNK6icu_7810UnicodeSet10hasStringsEv.exit.thread ], [ 2, %bb.t ], [ 1, %bb.p ]
  ret i32 %.8
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6icu_7810UnicodeSet9matchRestERKNS_11ReplaceableEiiRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %3) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 3 uses
  %i.i = icmp slt i32 %1, %2
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = sub nsw i32 %2, %1
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 4 uses
  %i.k = icmp sgt i32 %spec.select, 1
  br i1 %i.k, label %.lr.ph53, label %.loopexit

.lr.ph53:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  %wide.trip.count62 = zext nneg i32 %spec.select to i64
  br label %bb.d

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %.loopexit, label %bb.d, !llvm.loop !69

bb.d:                                             ; preds = %.lr.ph53, %bb.c
  %indvars.iv59 = phi i64 [ 1, %.lr.ph53 ], [ %indvars.iv.next60, %bb.c ] ; 4 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !30
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = trunc i64 %indvars.iv59 to i32
  %i.r = add i32 %1, %i.q
  %i.s = tail call noundef zeroext i16 %i.p(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.r), !inline_history !2
  %i.t = load i16, ptr %i.a, align 8, !tbaa !44   ; 3 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = load i32, ptr %i.f, align 4
  %i.y = select i1 %i.u, i32 %i.x, i32 %i.w
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %indvars.iv59, %i.z
  br i1 %i.aa, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.e:                                             ; preds = %bb.d
  %i.ab = and i16 %i.t, 2
  %.not.i.i.i = icmp eq i16 %i.ab, 0
  %i.ac = load ptr, ptr %i.m, align 8
  %i.ad = select i1 %.not.i.i.i, ptr %i.ac, ptr %i.l
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv59
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !43
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.d, %bb.e
  %.0.i.i = phi i16 [ %i.af, %bb.e ], [ -1, %bb.d ]
  %.not43 = icmp eq i16 %i.s, %.0.i.i
  br i1 %.not43, label %bb.c, label %.loopexit

bb.f:                                             ; preds = %bb.a
  %i.ag = sub nsw i32 %1, %2
  %spec.select44 = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.h) ; 4 uses
  %i.ah = icmp sgt i32 %spec.select44, 1
  br i1 %i.ah, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %4 = sext i32 %i.h to i64
  %wide.trip.count = zext nneg i32 %spec.select44 to i64
  br label %bb.h

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit47
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.h, !llvm.loop !70

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = trunc i64 %indvars.iv to i32
  %i.ao = sub i32 %1, %i.an
  %i.ap = tail call noundef zeroext i16 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.ao), !inline_history !2
  %5 = xor i64 %indvars.iv, -1
  %6 = add nsw i64 %4, %5                         ; 2 uses
  %i.aq = load i16, ptr %i.a, align 8, !tbaa !44  ; 3 uses
  %i.ar = icmp slt i16 %i.aq, 0
  %i.as = ashr i16 %i.aq, 5
  %i.at = sext i16 %i.as to i32
  %i.au = load i32, ptr %i.f, align 4
  %i.av = select i1 %i.ar, i32 %i.au, i32 %i.at
  %7 = trunc nsw i64 %6 to i32
  %8 = icmp ugt i32 %i.av, %7
  br i1 %8, label %bb.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit47

bb.i:                                             ; preds = %bb.h
  %i.aw = and i16 %i.aq, 2
  %.not.i.i.i46 = icmp eq i16 %i.aw, 0
  %i.ax = load ptr, ptr %i.aj, align 8
  %i.ay = select i1 %.not.i.i.i46, ptr %i.ax, ptr %i.ai
  %i.az = getelementptr inbounds [2 x i8], ptr %i.ay, i64 %6
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !43
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit47

_ZNK6icu_7813UnicodeString6charAtEi.exit47:       ; preds = %bb.h, %bb.i
  %.0.i.i45 = phi i16 [ %i.ba, %bb.i ], [ -1, %bb.h ]
  %.not = icmp eq i16 %i.ap, %.0.i.i45
  br i1 %.not, label %bb.g, label %.loopexit

.loopexit:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit47, %bb.g, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.c, %bb.f, %bb.b
  %.034 = phi i32 [ %spec.select44, %bb.f ], [ %spec.select, %bb.c ], [ %spec.select, %bb.b ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit47 ], [ %spec.select44, %bb.g ]
  ret i32 %.034
}

declare noundef i32 @_ZN6icu_7813UnicodeFilter7matchesERKNS_11ReplaceableERiia(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, i8 noundef signext) unnamed_addr #8

; Function Attrs: uwtable
define noundef i32 @_ZThn8_N6icu_7810UnicodeSet7matchesERKNS_11ReplaceableERiia(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i8 noundef signext %4) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN6icu_7810UnicodeSet7matchesERKNS_11ReplaceableERiia(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i8 noundef signext %4)
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7810UnicodeSet13addMatchSetToERS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %1) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7810UnicodeSet3addEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %i.e, i32 noundef %i.b, i8 noundef signext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %.not14.i = icmp eq ptr %i.g, null
  br i1 %.not14.i, label %_ZN6icu_7810UnicodeSet6addAllERKS0_.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i, label %_ZN6icu_7810UnicodeSet6addAllERKS0_.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %i.l = phi ptr [ %i.g, %.lr.ph.i ], [ %i.r, %bb.f ]
  %.017.i = phi i32 [ 0, %.lr.ph.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.m = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i32 noundef %.017.i) ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread.i, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.i

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.i: ; preds = %bb.e
  %i.o = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i32 noundef 0)
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread.i, label %bb.f

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread.i: ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.i, %bb.e
  tail call void @_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread.i, %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.i
  %i.q = add nuw nsw i32 %.017.i, 1               ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %i.u = icmp slt i32 %i.q, %i.t
  br i1 %i.u, label %bb.e, label %_ZN6icu_7810UnicodeSet6addAllERKS0_.exit, !llvm.loop !3

_ZN6icu_7810UnicodeSet6addAllERKS0_.exit:         ; preds = %bb.f, %bb.d, %.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(200) ptr @_ZN6icu_7810UnicodeSet6addAllERKS0_(ptr nofree noundef nonnull returned align 8 captures(address, ret: address, provenance) dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7810UnicodeSet3addEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull %i.e, i32 noundef %i.b, i8 noundef signext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %.not14 = icmp eq ptr %i.g, null
  br i1 %.not14, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.r, %bb.f ]
  %.017 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.f ] ; 2 uses
  %i.m = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i32 noundef %.017) ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit: ; preds = %bb.e
  %i.o = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i32 noundef 0)
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread, label %bb.f

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.e, %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit
  tail call void @_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
  br label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit
  %i.q = add nuw nsw i32 %.017, 1                 ; 2 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !28
  %i.u = icmp slt i32 %i.q, %i.t
  br i1 %i.u, label %bb.e, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.d
  ret ptr %0
}

; Function Attrs: uwtable
define void @_ZThn8_NK6icu_7810UnicodeSet13addMatchSetToERS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(200) %1) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !33   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6icu_7810UnicodeSet3addEPKiia(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull %i.e, i32 noundef %i.b, i8 noundef signext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25   ; 3 uses
  %.not14.i.i = icmp eq ptr %i.g, null
  br i1 %.not14.i.i, label %_ZNK6icu_7810UnicodeSet13addMatchSetToERS0_.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !28
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i, label %_ZNK6icu_7810UnicodeSet13addMatchSetToERS0_.exit

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.l = phi ptr [ %i.g, %.lr.ph.i.i ], [ %i.r, %bb.f ]
  %.017.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.m = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i32 noundef %.017.i.i) ; 2 uses
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !25   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread.i.i, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.i.i

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.i.i: ; preds = %bb.e
  %i.o = tail call noundef i32 @_ZNK6icu_787UVector7indexOfEPvi(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i32 noundef 0)
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread.i.i, label %bb.f

_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.thread.i.i: ; preds = %_ZNK6icu_7810UnicodeSet15stringsContainsERKNS_13UnicodeStringE.exit.i.i, %bb.e
  tail call void @_ZN6icu_7810UnicodeSet4_addERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(200) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.m)
  br label %bb.f

end_hunk_0
