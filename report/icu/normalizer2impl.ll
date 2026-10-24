Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/normalizer2impl?download=true
inline.NumInlined: 333
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_7815Normalizer2Impl11composePairEii:bb.a
bb.m:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.am = load i16, ptr %i.al, align 2, !tbaa !64 ; 2 uses
  %.not47 = icmp eq i16 %i.ac, %i.am
  br i1 %.not47, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.an = add i32 %2, -4520
  %or.cond43 = icmp ult i32 %i.an, 27
  br i1 %or.cond43, label %bb.o, label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.ao = add i32 %1, -4519
  %i.ap = add i32 %i.ao, %2
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread

bb.p:                                             ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !58
  %i.as = lshr i16 %i.ac, 1
  %i.at = zext nneg i16 %i.as to i64
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.ar, i64 %i.at ; 3 uses
  %i.av = icmp ugt i16 %i.ac, %i.am
  br i1 %i.av, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.aw = load i16, ptr %i.au, align 2, !tbaa !50
  %i.ax = and i16 %i.aw, 31
  %i.ay = zext nneg i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  br label %bb.u

bb.r:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bc = load i16, ptr %i.bb, align 8, !tbaa !69
  %i.bd = icmp ult i16 %i.ac, %i.bc
  %i.be = icmp ugt i16 %i.ac, -1025
  %or.cond = or i1 %i.be, %i.bd
  br i1 %or.cond, label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !58
  %i.bh = zext i16 %i.ac to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !68
  %i.bk = zext i16 %i.bj to i32
  %i.bl = sub nsw i32 %i.bh, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !67
  %i.bo = zext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bl, %i.bo
  %i.bq = ashr i32 %i.bp, 1
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.bg, i64 %i.br ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !70
  %i.bv = icmp ult i16 %i.ac, %i.bu
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bw = load i16, ptr %i.bs, align 2, !tbaa !50
  %i.bx = and i16 %i.bw, 31
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.bs, i64 %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  br label %bb.u

bb.u:                                             ; preds = %bb.q, %bb.p, %bb.s, %bb.t
  %.0 = phi ptr [ %i.ba, %bb.q ], [ %i.au, %bb.p ], [ %i.ca, %bb.t ], [ %i.bs, %bb.s ] ; 4 uses
  %or.cond4 = icmp ugt i32 %2, 1114111
  br i1 %or.cond4, label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = icmp samesign ult i32 %2, 13312
  br i1 %i.cb, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.cc = shl nuw nsw i32 %2, 1                   ; 3 uses
  %i.cd = load i16, ptr %.0, align 2, !tbaa !50
  %i.ce = zext i16 %i.cd to i32                   ; 3 uses
  %i.cf = icmp samesign ugt i32 %i.cc, %i.ce
  br i1 %i.cf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %i.cg = phi i32 [ %i.cm, %.lr.ph.i ], [ %i.ce, %bb.w ]
  %.03049.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.0, %bb.w ]
  %i.ch = and i32 %i.cg, 1
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.03049.i, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 3 uses
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !50
  %i.cm = zext i16 %i.cl to i32                   ; 3 uses
  %i.cn = icmp samesign ugt i32 %i.cc, %i.cm
  br i1 %i.cn, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.w
  %.030.lcssa.i = phi ptr [ %.0, %bb.w ], [ %i.ck, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.ce, %bb.w ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  %i.co = and i32 %.lcssa.i, 32766
  %i.cp = icmp eq i32 %i.cc, %i.co
  br i1 %i.cp, label %bb.x, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit

bb.x:                                             ; preds = %._crit_edge.i
  %i.cq = and i32 %.lcssa.i, 1
  %.not42.i = icmp eq i32 %i.cq, 0
  %i.cr = getelementptr inbounds nuw i8, ptr %.030.lcssa.i, i64 2
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !50
  %i.ct = zext i16 %i.cs to i32                   ; 2 uses
  br i1 %.not42.i, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cu = shl nuw i32 %i.ct, 16
  br label %.thread.sink.split.i

bb.z:                                             ; preds = %bb.v
  %i.cv = lshr i32 %2, 9
  %i.cw = add nuw nsw i32 %i.cv, 13312
  %i.cx = shl nuw nsw i32 %2, 6
  %i.cy = and i32 %i.cw, 32766                    ; 2 uses
  %i.cz = and i32 %i.cx, 65472                    ; 2 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.backedge, %bb.z
  %.131.i = phi ptr [ %.0, %bb.z ], [ %.131.i.be, %.backedge ] ; 5 uses
  %i.da = load i16, ptr %.131.i, align 2, !tbaa !50 ; 2 uses
  %i.db = zext i16 %i.da to i32                   ; 3 uses
  %i.dc = icmp samesign ugt i32 %i.cy, %i.db
  br i1 %i.dc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dd = and i32 %i.db, 1
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %.131.i, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  br label %.backedge

bb.ac:                                            ; preds = %bb.aa
  %i.dh = and i32 %i.db, 32766
  %i.di = icmp eq i32 %i.cy, %i.dh
  br i1 %i.di, label %bb.ad, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %.131.i, i64 2
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !50
  %i.dl = zext i16 %i.dk to i32                   ; 3 uses
  %i.dm = icmp samesign ugt i32 %i.cz, %i.dl
  br i1 %i.dm, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.not.i44 = icmp sgt i16 %i.da, -1
  br i1 %.not.i44, label %bb.af, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit

bb.af:                                            ; preds = %bb.ae
  %i.dn = getelementptr inbounds nuw i8, ptr %.131.i, i64 6
  br label %.backedge

.backedge:                                        ; preds = %bb.af, %bb.ab
  %.131.i.be = phi ptr [ %i.dg, %bb.ab ], [ %i.dn, %bb.af ]
  br label %bb.aa, !llvm.loop !3

bb.ag:                                            ; preds = %bb.ad
  %i.do = and i32 %i.dl, 65472
  %i.dp = icmp eq i32 %i.cz, %i.do
  br i1 %i.dp, label %bb.ah, label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit

bb.ah:                                            ; preds = %bb.ag
  %i.dq = shl nuw i32 %i.dl, 16
  %i.dr = and i32 %i.dq, 4128768
  br label %.thread.sink.split.i

.thread.sink.split.i:                             ; preds = %bb.ah, %bb.y
  %.131.lcssa69.sink.i = phi ptr [ %.131.i, %bb.ah ], [ %.030.lcssa.i, %bb.y ]
  %.sink.i = phi i32 [ %i.dr, %bb.ah ], [ %i.cu, %bb.y ]
  %i.ds = getelementptr inbounds nuw i8, ptr %.131.lcssa69.sink.i, i64 4
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !50
  %i.du = zext i16 %i.dt to i32
  %i.dv = or disjoint i32 %.sink.i, %i.du
  br label %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit

_ZN6icu_7815Normalizer2Impl7combineEPKti.exit:    ; preds = %bb.ac, %bb.ae, %._crit_edge.i, %bb.x, %bb.ag, %.thread.sink.split.i
  %.1.i = phi i32 [ -1, %bb.ag ], [ %i.ct, %bb.x ], [ %i.dv, %.thread.sink.split.i ], [ -1, %._crit_edge.i ], [ -1, %bb.ae ], [ -1, %bb.ac ]
  %i.dw = ashr i32 %.1.i, 1
  br label %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread

_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit.thread: ; preds = %bb.a, %bb.u, %bb.r, %bb.n, %bb.k, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit, %bb.o, %bb.l
  %.034 = phi i32 [ %i.dw, %_ZN6icu_7815Normalizer2Impl7combineEPKti.exit ], [ -1, %_ZNK6icu_7815Normalizer2Impl9getNorm16Ei.exit ], [ %i.ak, %bb.l ], [ -1, %bb.k ], [ -1, %bb.u ], [ %i.ap, %bb.o ], [ -1, %bb.n ], [ -1, %bb.r ], [ -1, %bb.a ]
  ret i32 %.034
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7815Normalizer2Impl7composeEPKDsS2_aaRNS_16ReorderingBufferER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr noundef %1, ptr noundef %2, i8 noundef signext %3, i8 noundef signext %4, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 5 uses
  %i.b = load i16, ptr %i.a, align 2, !tbaa !46   ; 2 uses
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %.preheader, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0.i = phi ptr [ %i.d, %.preheader ], [ %1, %bb.a ] ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.0.i, i64 2
  %i.e = load i16, ptr %.0.i, align 2, !tbaa !34  ; 2 uses
  %i.f = icmp ugt i16 %i.b, %i.e
  %i.g = icmp ne i16 %i.e, 0
  %i.h = and i1 %i.g, %i.f
  br i1 %i.h, label %.preheader, label %bb.b, !llvm.loop !1

bb.b:                                             ; preds = %.preheader
  %.not = icmp ne i8 %4, 0
  %i.i = icmp ne ptr %.0.i, %1                    ; 2 uses
  %or.cond.i = and i1 %.not, %i.i
  br i1 %or.cond.i, label %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %7 = load i32, ptr %6, align 4, !tbaa !29
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %bb.d, label %.thread573

_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit: ; preds = %bb.b
  %9 = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %1, ptr noundef nonnull %.0.i, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  %i.j = load i32, ptr %6, align 4, !tbaa !29
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %.thread704, label %.thread573

.thread704:                                       ; preds = %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit
  %10 = tail call ptr @u_strchr_78(ptr noundef nonnull %.0.i, i16 noundef zeroext 0)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @u_strchr_78(ptr noundef nonnull %.0.i, i16 noundef zeroext 0) ; 2 uses
  br i1 %i.i, label %bb.e, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread

bb.e:                                             ; preds = %.thread704, %bb.d
  %11 = phi ptr [ %10, %.thread704 ], [ %i.l, %bb.d ] ; 5 uses
  %i.m = getelementptr inbounds i8, ptr %.0.i, i64 -2 ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !34
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %i.p = and i32 %i.o, 64512
  %i.q = icmp eq i32 %i.p, 55296
  br i1 %i.q, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !47   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.w = lshr i32 %i.o, 6
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.v, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !50
  %i.aa = zext i16 %i.z to i32
  %i.ab = and i32 %i.o, 63
  %i.ac = add nuw nsw i32 %i.ab, %i.aa
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !50 ; 6 uses
  %i.ag = and i16 %i.af, 1
  %.not.i2.i = icmp eq i16 %i.ag, 0
  br i1 %.not.i2.i, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread453, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not3.i.i = icmp eq i8 %3, 0
  %.not.i.i.i = icmp eq i16 %i.af, 1
  %or.cond597 = or i1 %.not3.i.i, %.not.i.i.i
  br i1 %or.cond597, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !67
  %.not.i.i.i.i = icmp ugt i16 %i.ai, %i.af
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = icmp uge i16 %i.af, %i.ak
  %narrow.i.not.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.al
  br i1 %narrow.i.not.i.i.i, label %.split, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit

.split:                                           ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !58
  %i.ao = lshr i16 %i.af, 1
  %i.ap = zext nneg i16 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !50
  %i.as = icmp ult i16 %i.ar, 512
  br i1 %i.as, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread453

_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit: ; preds = %bb.h
  %i.at = and i16 %i.af, 6
  %i.au = icmp samesign ult i16 %i.at, 3
  br i1 %i.au, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread453

_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread453: ; preds = %.split, %bb.f, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !21 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !19 ; 3 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp sgt i64 %i.bb, 2
  br i1 %i.bc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread453
  %i.bd = getelementptr inbounds i8, ptr %i.aw, i64 -2 ; 2 uses
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !26
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 8, !tbaa !26
  br label %_ZN6icu_7816ReorderingBuffer12removeSuffixEi.exit

bb.j:                                             ; preds = %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread453
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !21
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i16, ptr %i.bj, align 8, !tbaa !25
  %i.bl = and i16 %i.bk, 2
  %.not.i.i = icmp eq i16 %i.bl, 0
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = select i1 %.not.i.i, i32 %i.bn, i32 27
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !26
  br label %_ZN6icu_7816ReorderingBuffer12removeSuffixEi.exit

_ZN6icu_7816ReorderingBuffer12removeSuffixEi.exit: ; preds = %bb.i, %bb.j
  %i.bq = phi ptr [ %i.ay, %bb.j ], [ %i.bd, %bb.i ]
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i8 0, ptr %i.br, align 4, !tbaa !27
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !20
  br label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread

_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread: ; preds = %.split, %bb.e, %bb.g, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit, %bb.d, %_ZN6icu_7816ReorderingBuffer12removeSuffixEi.exit, %bb.a
  %.0306 = phi ptr [ %2, %bb.a ], [ %11, %_ZN6icu_7816ReorderingBuffer12removeSuffixEi.exit ], [ %i.l, %bb.d ], [ %11, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit ], [ %11, %bb.e ], [ %11, %bb.g ], [ %11, %.split ] ; 20 uses
  %.0293 = phi ptr [ %1, %bb.a ], [ %i.m, %_ZN6icu_7816ReorderingBuffer12removeSuffixEi.exit ], [ %1, %bb.d ], [ %.0.i, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit ], [ %.0.i, %bb.e ], [ %.0.i, %bb.g ], [ %.0.i, %.split ] ; 4 uses
  %i.bt = icmp eq ptr %.0293, %.0306
  br i1 %i.bt, label %._crit_edge, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 25 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 30 ; 8 uses
  %.not343 = icmp eq i8 %4, 0                     ; 8 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 8 uses
  %.not334 = icmp eq i8 %3, 0                     ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 44
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.thread491
  %.1269634 = phi ptr [ %.0293, %.lr.ph.lr.ph ], [ %.12, %.thread491 ] ; 22 uses
  %.1294633 = phi ptr [ %.0293, %.lr.ph.lr.ph ], [ %.19, %.thread491 ]
  br label %bb.l

._crit_edge:                                      ; preds = %.thread491, %.thread, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread
  %.1269.lcssa = phi ptr [ %.1269634, %.thread ], [ %.0293, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEia.exit.thread ], [ %.12, %.thread491 ] ; 2 uses
  %i.cl = icmp ne ptr %.1269.lcssa, %.0306
  %i.cm = icmp ne i8 %4, 0
  %or.cond = and i1 %i.cm, %i.cl
  br i1 %or.cond, label %bb.k, label %.thread573

bb.k:                                             ; preds = %._crit_edge
  %i.cn = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %.1269.lcssa, ptr noundef %.0306, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  br label %.thread573

bb.l:                                             ; preds = %.lr.ph, %.thread
  %.2295630 = phi ptr [ %.1294633, %.lr.ph ], [ %.5298, %.thread ] ; 23 uses
  %i.co = load i16, ptr %.2295630, align 2, !tbaa !34 ; 2 uses
  %i.cp = zext i16 %i.co to i32                   ; 5 uses
  %i.cq = icmp ult i16 %i.co, %i.b
  br i1 %i.cq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %i.cu = load ptr, ptr %i.cr, align 8, !tbaa !49
  %i.cv = lshr i32 %i.cp, 6
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !50
  %i.cz = zext i16 %i.cy to i32
  %i.da = and i32 %i.cp, 63
  %i.db = add nuw nsw i32 %i.da, %i.cz
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !50 ; 2 uses
  %i.df = load i16, ptr %i.bv, align 2, !tbaa !57 ; 2 uses
  %.not604 = icmp ult i16 %i.de, %i.df
  br i1 %.not604, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dg = getelementptr inbounds nuw i8, ptr %.2295630, i64 2
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.dh = getelementptr inbounds nuw i8, ptr %.2295630, i64 2 ; 5 uses
  %i.di = and i32 %i.cp, 64512
  %i.dj = icmp eq i32 %i.di, 55296
  br i1 %i.dj, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %.not329 = icmp eq ptr %i.dh, %.0306
  br i1 %.not329, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dk = load i16, ptr %i.dh, align 2, !tbaa !34
  %i.dl = zext i16 %i.dk to i32                   ; 2 uses
  %i.dm = and i32 %i.dl, 64512
  %i.dn = icmp eq i32 %i.dm, 56320
  br i1 %i.dn, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.2295630, i64 4 ; 2 uses
  %i.dp = shl nuw nsw i32 %i.cp, 10
  %i.dq = add nsw i32 %i.dp, -56613888
  %i.dr = add nuw nsw i32 %i.dq, %i.dl            ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !51
  %.not330 = icmp slt i32 %i.dr, %i.dt
  br i1 %.not330, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %i.cr, i64 20
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !52
  %i.dw = add nsw i32 %i.dv, -2
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.dx = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.cr, i32 noundef %i.dr)
  %.pre = load i16, ptr %i.bv, align 2, !tbaa !57
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dy = phi i16 [ %i.df, %bb.s ], [ %.pre, %bb.t ]
  %i.dz = phi i32 [ %i.dw, %bb.s ], [ %i.dx, %bb.t ]
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [2 x i8], ptr %i.ct, i64 %i.ea
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !50 ; 2 uses
  %.not605 = icmp ult i16 %i.ec, %i.dy
  br i1 %.not605, label %.thread, label %bb.v

.thread:                                          ; preds = %bb.p, %bb.q, %bb.u, %bb.n
  %.5298 = phi ptr [ %i.dg, %bb.n ], [ %i.dh, %bb.p ], [ %i.dh, %bb.q ], [ %i.do, %bb.u ] ; 2 uses
  %i.ed = icmp eq ptr %.5298, %.0306
  br i1 %i.ed, label %._crit_edge, label %bb.l, !llvm.loop !128

bb.v:                                             ; preds = %bb.u, %bb.o
  %.6299 = phi ptr [ %i.dh, %bb.o ], [ %i.do, %bb.u ] ; 39 uses
  %.2256 = phi i32 [ %i.cp, %bb.o ], [ %i.dr, %bb.u ] ; 4 uses
  %.2 = phi i16 [ %i.de, %bb.o ], [ %i.ec, %bb.u ] ; 18 uses
  %i.ee = load i16, ptr %i.bw, align 2, !tbaa !68
  %i.ef = icmp ult i16 %.2, %i.ee
  br i1 %i.ef, label %bb.w, label %bb.br

bb.w:                                             ; preds = %bb.v
  br i1 %.not343, label %.thread573, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eg = load i16, ptr %i.by, align 2, !tbaa !67
  %.not.i.not = icmp ugt i16 %i.eg, %.2
  br i1 %.not.i.not, label %bb.ao, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eh = and i16 %.2, 1
  %.not.i396 = icmp eq i16 %i.eh, 0
  br i1 %.not.i396, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not.i.i397 = icmp eq i16 %.2, 1
  %or.cond598 = or i1 %.not334, %.not.i.i397
  br i1 %or.cond598, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread463, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit: ; preds = %bb.z
  %i.ei = and i16 %.2, 6
  %i.ej = icmp samesign ult i16 %i.ei, 3
  %i.ek = icmp eq ptr %.6299, %.0306
  %or.cond599 = select i1 %i.ej, i1 true, i1 %i.ek
  br i1 %or.cond599, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread463, label %bb.aa

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread: ; preds = %bb.y
  %.old = icmp eq ptr %.6299, %.0306
  br i1 %.old, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread463, label %bb.aa

bb.aa:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread
  %i.el = load i16, ptr %.6299, align 2, !tbaa !34 ; 2 uses
  %i.em = zext i16 %i.el to i32                   ; 5 uses
  %i.en = load i16, ptr %i.a, align 2, !tbaa !46
  %i.eo = icmp ult i16 %i.el, %i.en
  br i1 %i.eo, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit.thread463, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ep = getelementptr inbounds nuw i8, ptr %.6299, i64 2 ; 2 uses
  %i.eq = and i32 %i.em, 63488
  %i.er = icmp eq i32 %i.eq, 55296
  br i1 %i.er, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.es = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !49
  %i.eu = lshr i32 %i.em, 6
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.et, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !50
  %i.ey = zext i16 %i.ex to i32
  %i.ez = and i32 %i.em, 63
  %i.fa = add nuw nsw i32 %i.ez, %i.ey
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %i.fb = and i32 %i.em, 1024
  %i.fc = icmp ne i32 %i.fb, 0
  %.not.i400 = icmp eq ptr %i.ep, %.0306
  %or.cond.i401 = select i1 %i.fc, i1 true, i1 %.not.i400
  br i1 %or.cond.i401, label %._crit_edge657, label %bb.ae

._crit_edge657:                                   ; preds = %bb.ad
  %.pre658 = load ptr, ptr %i.bu, align 8, !tbaa !47
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.fd = load i16, ptr %i.ep, align 2, !tbaa !34
  %i.fe = zext i16 %i.fd to i32                   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK6icu_7815Normalizer2Impl7composeEPKDsS2_aaRNS_16ReorderingBufferER10UErrorCode:bb.a
_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443: ; preds = %bb.dl
  %i.rs = load i16, ptr %i.by, align 2, !tbaa !67
  %.not.i.i441 = icmp ugt i16 %i.rs, %.2
  %i.rt = load i16, ptr %i.bw, align 2
  %i.ru = icmp uge i16 %.2, %i.rt
  %narrow.i.i442.not = select i1 %.not.i.i441, i1 true, i1 %i.ru
  br i1 %narrow.i.i442.not, label %bb.dm, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread

bb.dm:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443
  %i.rv = getelementptr inbounds i8, ptr %.2295630, i64 -2 ; 4 uses
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !34
  %i.rx = zext i16 %i.rw to i32                   ; 5 uses
  %i.ry = and i32 %i.rx, 63488
  %i.rz = icmp eq i32 %i.ry, 55296
  br i1 %i.rz, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.sa = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 2 uses
  %i.sb = load ptr, ptr %i.sa, align 8, !tbaa !49
  %i.sc = lshr i32 %i.rx, 6
  %i.sd = zext nneg i32 %i.sc to i64
  %i.se = getelementptr inbounds nuw [2 x i8], ptr %i.sb, i64 %i.sd
  %i.sf = load i16, ptr %i.se, align 2, !tbaa !50
  %i.sg = zext i16 %i.sf to i32
  %i.sh = and i32 %i.rx, 63
  %i.si = add nuw nsw i32 %i.sh, %i.sg
  br label %bb.du

bb.do:                                            ; preds = %bb.dm
  %i.sj = and i32 %i.rx, 1024
  %.not369 = icmp eq i32 %i.sj, 0
  %.not370 = icmp eq ptr %i.rv, %.1269634
  %or.cond390 = or i1 %.not370, %.not369
  br i1 %or.cond390, label %._crit_edge666, label %bb.dp

._crit_edge666:                                   ; preds = %bb.do
  %.pre667 = load ptr, ptr %i.bu, align 8, !tbaa !47
  br label %bb.dt

bb.dp:                                            ; preds = %bb.do
  %i.sk = getelementptr inbounds i8, ptr %.2295630, i64 -4 ; 3 uses
  %i.sl = load i16, ptr %i.sk, align 2, !tbaa !34
  %i.sm = zext i16 %i.sl to i32                   ; 2 uses
  %i.sn = and i32 %i.sm, 64512
  %i.so = icmp eq i32 %i.sn, 55296
  %.pre668 = load ptr, ptr %i.bu, align 8, !tbaa !47 ; 5 uses
  br i1 %i.so, label %bb.dq, label %bb.dt

bb.dq:                                            ; preds = %bb.dp
  %i.sp = shl nuw nsw i32 %i.sm, 10
  %i.sq = add nuw nsw i32 %i.rx, -56613888
  %i.sr = add nsw i32 %i.sq, %i.sp                ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.pre668, i64 24
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !51
  %.not371 = icmp slt i32 %i.sr, %i.st
  br i1 %.not371, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.su = getelementptr inbounds nuw i8, ptr %.pre668, i64 20
  %i.sv = load i32, ptr %i.su, align 4, !tbaa !52
  %i.sw = add nsw i32 %i.sv, -2
  br label %bb.du

bb.ds:                                            ; preds = %bb.dq
  %i.sx = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %.pre668, i32 noundef %i.sr)
  %.pre669 = load ptr, ptr %i.bu, align 8, !tbaa !47
  br label %bb.du

bb.dt:                                            ; preds = %._crit_edge666, %bb.dp
  %i.sy = phi ptr [ %.pre667, %._crit_edge666 ], [ %.pre668, %bb.dp ] ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 20
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !52
  %i.tb = add nsw i32 %i.ta, -1
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %bb.ds, %bb.dr, %bb.dn
  %i.tc = phi ptr [ %i.sa, %bb.dn ], [ %i.sy, %bb.dt ], [ %.pre669, %bb.ds ], [ %.pre668, %bb.dr ]
  %.1244 = phi ptr [ %i.rv, %bb.dn ], [ %i.rv, %bb.dt ], [ %i.sk, %bb.ds ], [ %i.sk, %bb.dr ]
  %.1 = phi i32 [ %i.si, %bb.dn ], [ %i.tb, %bb.dt ], [ %i.sx, %bb.ds ], [ %i.sw, %bb.dr ]
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !25
  %i.tf = sext i32 %.1 to i64
  %i.tg = getelementptr inbounds [2 x i8], ptr %i.te, i64 %i.tf
  %i.th = load i16, ptr %i.tg, align 2, !tbaa !50
  %.fr = freeze i16 %i.th                         ; 6 uses
  %i.ti = and i16 %.fr, 1
  %.not.i444 = icmp eq i16 %i.ti, 0
  br i1 %.not.i444, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450.thread, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %.not.i.i446 = icmp eq i16 %.fr, 1
  %or.cond603 = or i1 %.not334, %.not.i.i446
  br i1 %or.cond603, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.tj = load i16, ptr %i.by, align 2, !tbaa !67
  %.not.i.i.i447 = icmp ugt i16 %i.tj, %.fr
  %i.tk = load i16, ptr %i.bw, align 2
  %i.tl = icmp uge i16 %.fr, %i.tk
  %narrow.i.not.i.i448 = select i1 %.not.i.i.i447, i1 true, i1 %i.tl
  br i1 %narrow.i.not.i.i448, label %.split704, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450

.split704:                                        ; preds = %bb.dw
  %i.tm = load ptr, ptr %i.ce, align 8, !tbaa !58
  %i.tn = lshr i16 %.fr, 1
  %i.to = zext nneg i16 %i.tn to i64
  %i.tp = getelementptr inbounds nuw [2 x i8], ptr %i.tm, i64 %i.to
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !50
  %.fr719 = freeze i16 %i.tq
  %i.tr = icmp ult i16 %.fr719, 512
  br i1 %i.tr, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450.thread

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450: ; preds = %bb.dw
  %i.ts = and i16 %.fr, 6
  %i.tt = icmp samesign ult i16 %i.ts, 3
  br i1 %i.tt, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450.thread

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450.thread: ; preds = %.split704, %bb.du, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450
  br label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread

_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread: ; preds = %.split704, %bb.dv, %bb.dl, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450.thread, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443, %.thread506
  %.7 = phi ptr [ %.2295630, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443 ], [ %.2295630, %bb.dv ], [ %.2295630, %.thread506 ], [ %.1244, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450.thread ], [ %.2295630, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit450 ], [ %.2295630, %bb.dl ], [ %.2295630, %.split704 ] ; 5 uses
  %.not374 = icmp eq ptr %.1269634, %.7
  %or.cond392 = or i1 %.not343, %.not374
  br i1 %or.cond392, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread
  %i.tu = tail call noundef signext i8 @_ZN6icu_7816ReorderingBuffer12appendZeroCCEPKDsS2_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %.1269634, ptr noundef %.7, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %.not375 = icmp eq i8 %i.tu, 0
  br i1 %.not375, label %.thread573, label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit443.thread
  %i.tv = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.tw = load ptr, ptr %i.cg, align 8, !tbaa !19
  %i.tx = ptrtoint ptr %i.tv to i64
  %i.ty = ptrtoint ptr %i.tw to i64
  %i.tz = sub i64 %i.tx, %i.ty
  %i.ua = lshr exact i64 %i.tz, 1
  %i.ub = trunc i64 %i.ua to i32
  %i.uc = tail call noundef ptr @_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKDsS2_aaRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %.7, ptr noundef nonnull %.18, i8 noundef signext 0, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  %i.ud = tail call noundef ptr @_ZNK6icu_7815Normalizer2Impl14decomposeShortEPKDsS2_aaRNS_16ReorderingBufferER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %.18, ptr noundef %.0306, i8 noundef signext 1, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 5 uses
  %i.ue = load i32, ptr %6, align 4, !tbaa !29
  %i.uf = icmp slt i32 %i.ue, 1
  br i1 %i.uf, label %bb.dz, label %.thread573

bb.dz:                                            ; preds = %bb.dy
  %i.ug = ptrtoint ptr %i.ud to i64
  %i.uh = ptrtoint ptr %.7 to i64
  %i.ui = sub i64 %i.ug, %i.uh                    ; 2 uses
  %i.uj = icmp sgt i64 %i.ui, 4294967294
  br i1 %i.uj, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 8, ptr %6, align 4, !tbaa !29
  br label %.thread573

bb.eb:                                            ; preds = %bb.dz
  tail call void @_ZNK6icu_7815Normalizer2Impl9recomposeERNS_16ReorderingBufferEia(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %i.ub, i8 noundef signext %3)
  br i1 %.not343, label %bb.ec, label %.thread491

bb.ec:                                            ; preds = %bb.eb
  %i.uk = load ptr, ptr %i.cf, align 8, !tbaa !21
  %i.ul = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 2 uses
  %i.um = ptrtoint ptr %i.uk to i64
  %i.un = ptrtoint ptr %i.ul to i64
  %i.uo = sub i64 %i.um, %i.un
  %i.up = lshr exact i64 %i.uo, 1
  %i.uq = trunc i64 %i.up to i32                  ; 2 uses
  %i.ur = lshr exact i64 %i.ui, 1
  %i.us = trunc i64 %i.ur to i32
  %i.ut = icmp eq i32 %i.uq, %i.us
  br i1 %i.ut, label %_ZNK6icu_7816ReorderingBuffer6equalsEPKDsS2_.exit, label %.thread573

_ZNK6icu_7816ReorderingBuffer6equalsEPKDsS2_.exit: ; preds = %bb.ec
  %i.uu = tail call i32 @u_memcmp_78(ptr noundef %i.ul, ptr noundef %.7, i32 noundef %i.uq)
  %.not614 = icmp eq i32 %i.uu, 0
  br i1 %.not614, label %bb.ed, label %.thread573

bb.ed:                                            ; preds = %_ZNK6icu_7816ReorderingBuffer6equalsEPKDsS2_.exit
  %i.uv = load ptr, ptr %i.cg, align 8, !tbaa !19 ; 2 uses
  store ptr %i.uv, ptr %i.cf, align 8, !tbaa !21
  store ptr %i.uv, ptr %i.ch, align 8, !tbaa !20
  %i.uw = load ptr, ptr %i.ci, align 8, !tbaa !22, !nonnull !23, !align !24 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.uy = load i16, ptr %i.ux, align 8, !tbaa !25
  %i.uz = and i16 %i.uy, 2
  %.not.i.i451 = icmp eq i16 %i.uz, 0
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.vb = load i32, ptr %i.va, align 8
  %i.vc = select i1 %.not.i.i451, i32 %i.vb, i32 27
  store i32 %i.vc, ptr %i.cj, align 8, !tbaa !26
  store i8 0, ptr %i.ck, align 4, !tbaa !27
  br label %.thread491

.thread491:                                       ; preds = %bb.cj, %bb.co, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit.thread, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread, %bb.bq, %bb.bc, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit, %bb.ed, %bb.eb
  %.19 = phi ptr [ %.6299, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread ], [ %i.ud, %bb.ed ], [ %.6299, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit ], [ %spec.select, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit.thread ], [ %.7300.ph, %bb.cj ], [ %i.ud, %bb.eb ], [ %.6299, %bb.bc ], [ %.6299, %bb.bq ], [ %.6299, %bb.co ] ; 2 uses
  %.12 = phi ptr [ %.6299, %_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_.exit426.thread ], [ %i.ud, %bb.ed ], [ %.6299, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit ], [ %.1269634, %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit.thread ], [ %.7300.ph, %bb.cj ], [ %i.ud, %bb.eb ], [ %.6299, %bb.bc ], [ %.6299, %bb.bq ], [ %.6299, %bb.co ] ; 2 uses
  %i.vd = icmp eq ptr %.19, %.0306
  br i1 %i.vd, label %._crit_edge, label %.lr.ph

.thread573:                                       ; preds = %bb.cj, %bb.co, %bb.ci, %bb.cn, %bb.dk, %bb.cl, %bb.ak, %bb.dx, %bb.bq, %bb.bb, %bb.dy, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit, %bb.bc, %bb.ec, %bb.bu, %bb.cx, %_ZNK6icu_7816ReorderingBuffer6equalsEPKDsS2_.exit, %bb.w, %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit, %bb.cy, %bb.cz, %bb.ea, %._crit_edge, %bb.k, %bb.c
  %.12292 = phi i8 [ 1, %bb.ea ], [ 1, %._crit_edge ], [ 0, %bb.c ], [ 1, %bb.k ], [ 1, %bb.cz ], [ 1, %bb.cy ], [ 0, %_ZNK6icu_7815Normalizer2Impl30copyLowPrefixFromNulTerminatedEPKDsiPNS_16ReorderingBufferER10UErrorCode.exit ], [ 1, %bb.cj ], [ 1, %bb.co ], [ 1, %bb.ci ], [ 1, %bb.cn ], [ 0, %bb.dk ], [ 1, %bb.dx ], [ 1, %bb.bq ], [ 1, %bb.bb ], [ 1, %bb.dy ], [ 1, %_ZN6icu_7816ReorderingBuffer6appendEihR10UErrorCode.exit ], [ 1, %bb.bc ], [ 0, %bb.cl ], [ 0, %bb.w ], [ 0, %_ZNK6icu_7816ReorderingBuffer6equalsEPKDsS2_.exit ], [ 0, %bb.cx ], [ 0, %bb.bu ], [ 1, %bb.ak ], [ 0, %bb.ec ]
  ret i8 %.12292
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKDsS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %1, align 2, !tbaa !34     ; 2 uses
  %i.c = zext i16 %i.b to i32                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i16, ptr %i.d, align 2, !tbaa !46
  %i.f = icmp ult i16 %i.b, %i.e
  br i1 %i.f, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.h = and i32 %i.c, 63488
  %i.i = icmp eq i32 %i.h, 55296
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47   ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  %i.m = lshr i32 %i.c, 6
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.n
  %i.p = load i16, ptr %i.o, align 2, !tbaa !50
  %i.q = zext i16 %i.p to i32
  %i.r = and i32 %i.c, 63
  %i.s = add nuw nsw i32 %i.r, %i.q
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.t = and i32 %i.c, 1024
  %i.u = icmp ne i32 %i.t, 0
  %.not = icmp eq ptr %i.g, %2
  %or.cond = select i1 %i.u, i1 true, i1 %.not
  br i1 %or.cond, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i16, ptr %i.g, align 2, !tbaa !34
  %i.w = zext i16 %i.v to i32                     ; 2 uses
  %i.x = and i32 %i.w, 64512
  %i.y = icmp eq i32 %i.x, 56320
  br i1 %i.y, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.z = shl nuw nsw i32 %i.c, 10
  %i.aa = add nsw i32 %i.z, -56613888
  %i.ab = add nuw nsw i32 %i.aa, %i.w             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !51
  %.not25 = icmp slt i32 %i.ab, %i.af
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !52
  %i.ai = add nsw i32 %i.ah, -2
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aj = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.ad, i32 noundef %i.ab)
  %.pre = load ptr, ptr %i.ac, align 8, !tbaa !47
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !52
  %i.ao = add nsw i32 %i.an, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.d
  %i.ap = phi ptr [ %i.k, %bb.d ], [ %i.al, %bb.j ], [ %i.ad, %bb.h ], [ %.pre, %bb.i ]
  %.1 = phi i32 [ %i.s, %bb.d ], [ %i.ao, %bb.j ], [ %i.ai, %bb.h ], [ %i.aj, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !25
  %i.as = sext i32 %.1 to i64
  %i.at = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !50 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !73
  %i.ax = icmp ult i16 %i.au, %i.aw
  br i1 %i.ax, label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !67
  %.not.i.i = icmp ule i16 %i.az, %i.au
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp ult i16 %i.au, %i.bb
  %narrow.i.i = select i1 %.not.i.i, i1 %i.bc, i1 false
  %i.bd = zext i1 %narrow.i.i to i8
  br label %_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit

_ZNK6icu_7815Normalizer2Impl27norm16HasCompBoundaryBeforeEt.exit: ; preds = %bb.l, %bb.k, %bb.a, %bb.b
  %.019 = phi i8 [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.k ], [ %i.bd, %bb.l ]
  ret i8 %.019
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKDsS2_a(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readonly captures(address) %2, i8 noundef signext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %2
  br i1 %i.a, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds i8, ptr %2, i64 -2 ; 2 uses
  %i.c = load i16, ptr %i.b, align 2, !tbaa !34
  %i.d = zext i16 %i.c to i32                     ; 5 uses
  %i.e = and i32 %i.d, 63488
  %i.f = icmp eq i32 %i.e, 55296
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.j = lshr i32 %i.d, 6
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %i.i, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !50
  %i.n = zext i16 %i.m to i32
  %i.o = and i32 %i.d, 63
  %i.p = add nuw nsw i32 %i.o, %i.n
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.q = and i32 %i.d, 1024
  %.not = icmp eq i32 %i.q, 0
  %.not24 = icmp eq ptr %i.b, %1
  %or.cond = or i1 %.not24, %.not
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %2, i64 -4
  %i.s = load i16, ptr %i.r, align 2, !tbaa !34
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 64512
  %i.v = icmp eq i32 %i.u, 55296
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = shl nuw nsw i32 %i.t, 10
  %i.x = add nuw nsw i32 %i.d, -56613888
  %i.y = add nsw i32 %i.x, %i.w                   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !47  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !51
  %.not25 = icmp slt i32 %i.y, %i.ac
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !52
  %i.af = add nsw i32 %i.ae, -2
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.ag = tail call i32 @ucptrie_internalSmallIndex_78(ptr noundef nonnull %i.aa, i32 noundef %i.y)
  %.pre = load ptr, ptr %i.z, align 8, !tbaa !47
  br label %bb.j

bb.i:                                             ; preds = %bb.e, %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !47 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !52
  %i.al = add nsw i32 %i.ak, -1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.c
  %i.am = phi ptr [ %i.h, %bb.c ], [ %i.ai, %bb.i ], [ %i.aa, %bb.g ], [ %.pre, %bb.h ]
  %.1 = phi i32 [ %i.p, %bb.c ], [ %i.al, %bb.i ], [ %i.af, %bb.g ], [ %i.ag, %bb.h ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = sext i32 %.1 to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.ao, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !50 ; 6 uses
  %i.as = and i16 %i.ar, 1
  %.not.i = icmp eq i16 %i.as, 0
  br i1 %.not.i, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not3.i = icmp eq i8 %3, 0
  br i1 %.not3.i, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not.i.i = icmp eq i16 %i.ar, 1
  br i1 %.not.i.i, label %_ZNK6icu_7815Normalizer2Impl31isTrailCC01ForCompBoundaryAfterEt.exit.i, label %bb.m
end_hunk_1
begin_hunk_2_@_ZNK6icu_7815Normalizer2Impl11composeUTF8EjaPKhS2_PNS_8ByteSinkEPNS_5EditsER10UErrorCode:bb.a
  %i.gn = or disjoint i32 %i.gi, %i.gm
  br label %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.i

bb.at:                                            ; preds = %bb.ao
  call void @abort() #16
  unreachable

_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.i: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.0.i.i = phi i32 [ %i.fc, %bb.ap ], [ %i.fj, %bb.aq ], [ %i.fu, %bb.ar ], [ %i.gn, %bb.as ]
  %i.go = add nsw i32 %.0.i.i, %i.eb              ; 10 uses
  %i.gp = icmp ult i32 %i.go, 128
  br i1 %i.gp, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.i
  %i.gq = trunc nuw nsw i32 %i.go to i8
  store i8 %i.gq, ptr %i.b, align 1, !tbaa !25
  br label %bb.bc

bb.av:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_122codePointFromValidUTF8EPKhS2_.exit.i
  %i.gr = icmp ult i32 %i.go, 2048
  br i1 %i.gr, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gs = lshr i32 %i.go, 6
  %i.gt = trunc nuw nsw i32 %i.gs to i8
  %i.gu = or disjoint i8 %i.gt, -64
  store i8 %i.gu, ptr %i.b, align 1, !tbaa !25
  br label %bb.bb

bb.ax:                                            ; preds = %bb.av
  %i.gv = icmp ult i32 %i.go, 65536
  br i1 %i.gv, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.gw = lshr i32 %i.go, 12
  %i.gx = trunc nuw nsw i32 %i.gw to i8
  %i.gy = or disjoint i8 %i.gx, -32
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.gz = lshr i32 %i.go, 18
  %i.ha = trunc i32 %i.gz to i8
  %i.hb = or i8 %i.ha, -16
  %i.hc = lshr i32 %i.go, 12
  %i.hd = trunc i32 %i.hc to i8
  %i.he = and i8 %i.hd, 63
  %i.hf = or disjoint i8 %i.he, -128
  store i8 %i.hf, ptr %i.w, align 1, !tbaa !25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.sink.i = phi i8 [ %i.gy, %bb.ay ], [ %i.hb, %bb.az ]
  %.1.i = phi i32 [ 1, %bb.ay ], [ 2, %bb.az ]    ; 2 uses
  store i8 %.sink.i, ptr %i.b, align 1, !tbaa !25
  %i.hg = lshr i32 %i.go, 6
  %i.hh = trunc i32 %i.hg to i8
  %i.hi = and i8 %i.hh, 63
  %i.hj = or disjoint i8 %i.hi, -128
  %i.hk = add nuw nsw i32 %.1.i, 1
  %i.hl = zext nneg i32 %.1.i to i64
  %i.hm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hl
  store i8 %i.hj, ptr %i.hm, align 1, !tbaa !25
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.aw
  %.2.i = phi i32 [ 1, %bb.aw ], [ %i.hk, %bb.ba ] ; 2 uses
  %i.hn = trunc i32 %i.go to i8
  %i.ho = and i8 %i.hn, 63
  %i.hp = or disjoint i8 %i.ho, -128
  %i.hq = add nuw nsw i32 %.2.i, 1
  %i.hr = zext nneg i32 %.2.i to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hr
  store i8 %i.hp, ptr %i.hs, align 1, !tbaa !25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.au, %.preheader.preheader.i, %bb.am
  %.5.i = phi i32 [ 1, %bb.am ], [ %i.ez, %.preheader.preheader.i ], [ 1, %bb.au ], [ %i.hq, %bb.bb ] ; 2 uses
  br i1 %.not.i478, label %.noexc, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZN6icu_785Edits10addReplaceEii(ptr noundef nonnull align 8 dereferenceable(232) %6, i32 noundef %i.ef, i32 noundef %.5.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bd, %bb.bc
  %i.ht = load ptr, ptr %5, align 8, !tbaa !60
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  %i.hv = load ptr, ptr %i.hu, align 8
  invoke void %i.hv(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, i32 noundef %.5.i)
          to label %_ZN6icu_7812_GLOBAL__N_120appendCodePointDeltaEPKhS2_iRNS_8ByteSinkEPNS_5EditsE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !134

_ZN6icu_7812_GLOBAL__N_120appendCodePointDeltaEPKhS2_iRNS_8ByteSinkEPNS_5EditsE.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.backedge

bb.be:                                            ; preds = %bb.af
  %i.hw = load i16, ptr %i.x, align 4, !tbaa !87
  %i.hx = icmp ult i16 %i.dm, %i.hw
  br i1 %i.hx, label %bb.bf, label %bb.bm

bb.bf:                                            ; preds = %bb.be
  %i.hy = and i16 %i.dm, 1
  %.not.i480 = icmp eq i16 %i.hy, 0
  br i1 %.not.i480, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i482 = icmp eq i16 %i.dm, 1
  %or.cond646 = or i1 %.not417, %.not.i.i482
  br i1 %or.cond646, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread525, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486: ; preds = %bb.bg
  %i.hz = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ia = lshr i16 %i.dm, 1
  %i.ib = zext nneg i16 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [2 x i8], ptr %i.hz, i64 %i.ib
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !50
  %i.ie = icmp ult i16 %i.id, 512
  br i1 %i.ie, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread525, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread: ; preds = %bb.bf, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486
  %i.if = invoke noundef signext i8 @_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKhS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %.5358, ptr noundef %4)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread
  %.not447 = icmp eq i8 %i.if, 0
  br i1 %.not447, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531, label %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread525

_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread525: ; preds = %bb.bg, %bb.bh, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486
  %.not448 = icmp eq ptr %.0315693, %.1354688
  br i1 %.not448, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread525
  %i.ig = invoke noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef %.0315693, ptr noundef nonnull %.1354688, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bj:                                            ; preds = %bb.bi
  %.not449 = icmp eq i8 %i.ig, 0
  br i1 %.not449, label %.thread624, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZNK6icu_7815Normalizer2Impl26norm16HasCompBoundaryAfterEta.exit486.thread525
  %i.ih = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.ii = lshr i16 %i.dm, 1
  %i.ij = zext nneg i16 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [2 x i8], ptr %i.ih, i64 %i.ij ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 2
  %i.im = load i16, ptr %i.ik, align 2, !tbaa !50
  %i.in = and i16 %i.im, 31
  %i.io = zext nneg i16 %i.in to i32
  %i.ip = invoke noundef signext i8 @_ZN6icu_7812ByteSinkUtil12appendChangeEPKhS2_PKDsiRNS_8ByteSinkEPNS_5EditsER10UErrorCode(ptr noundef nonnull %.1354688, ptr noundef nonnull %.5358, ptr noundef nonnull %i.il, i32 noundef %i.io, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk
  %.not450 = icmp eq i8 %i.ip, 0
  br i1 %.not450, label %.thread624, label %.backedge

bb.bm:                                            ; preds = %bb.be
  %i.iq = load i16, ptr %i.y, align 8, !tbaa !66
  %.not440 = icmp ult i16 %i.dm, %i.iq
  br i1 %.not440, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ir = invoke noundef signext i8 @_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKhS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %.5358, ptr noundef %4)
          to label %bb.bo unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bo:                                            ; preds = %bb.bn
  %.not441 = icmp ne i8 %i.ir, 0
  %i.is = icmp eq ptr %.0315693, %.1354688        ; 2 uses
  %or.cond647 = select i1 %.not441, i1 true, i1 %i.is
  br i1 %or.cond647, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread534, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.it = getelementptr inbounds i8, ptr %.1354688, i64 -1 ; 2 uses
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !25  ; 2 uses
  %i.iv = zext i8 %i.iu to i32                    ; 2 uses
  %i.iw = icmp sgt i8 %i.iu, -1
  br i1 %i.iw, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ix = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.iy = invoke i32 @ucptrie_internalU8PrevIndex_78(ptr noundef %i.ix, i32 noundef %i.iv, ptr noundef %.0315693, ptr noundef nonnull %i.it)
          to label %.noexc490 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc490:                                        ; preds = %bb.bq
  %i.iz = ashr i32 %i.iy, 3
  br label %bb.br

bb.br:                                            ; preds = %.noexc490, %bb.bp
  %.0.i487 = phi i32 [ %i.iv, %bb.bp ], [ %i.iz, %.noexc490 ]
  %i.ja = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !25
  %i.jd = sext i32 %.0.i487 to i64
  %i.je = getelementptr inbounds [2 x i8], ptr %i.jc, i64 %i.jd
  %i.jf = load i16, ptr %i.je, align 2, !tbaa !50 ; 6 uses
  %i.jg = and i16 %i.jf, 1
  %.not.i.i488 = icmp eq i16 %i.jg, 0
  br i1 %.not.i.i488, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %.not.i.i.i489 = icmp eq i16 %i.jf, 1
  %or.cond648 = or i1 %.not417, %.not.i.i.i489
  br i1 %or.cond648, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jh = load i16, ptr %i.t, align 2, !tbaa !67
  %.not.i.i.i.i = icmp ugt i16 %i.jh, %i.jf
  %i.ji = load i16, ptr %i.o, align 2
  %i.jj = icmp uge i16 %i.jf, %i.ji
  %narrow.i.not.i.i.i = select i1 %.not.i.i.i.i, i1 true, i1 %i.jj
  br i1 %narrow.i.not.i.i.i, label %.split, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit

.split:                                           ; preds = %bb.bt
  %i.jk = load ptr, ptr %i.z, align 8, !tbaa !58
  %i.jl = lshr i16 %i.jf, 1
  %i.jm = zext nneg i16 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.jk, i64 %i.jm
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !50
  %i.jp = icmp ult i16 %i.jo, 512
  br i1 %i.jp, label %bb.bu, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531

_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit: ; preds = %bb.bt
  %i.jq = and i16 %i.jf, 6
  %i.jr = icmp samesign ult i16 %i.jq, 3
  br i1 %i.jr, label %bb.bu, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531

_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread534: ; preds = %bb.bo
  br i1 %i.is, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit, %bb.bs, %.split, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread534
  %i.js = invoke noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef %.0315693, ptr noundef nonnull %.1354688, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bv:                                            ; preds = %bb.bu
  %.not444 = icmp eq i8 %i.js, 0
  br i1 %.not444, label %.thread624, label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread534
  br i1 %.not.i478, label %.backedge, label %bb.bx, !llvm.loop !135

bb.bx:                                            ; preds = %bb.bw
  %i.jt = ptrtoint ptr %.5358 to i64
  %i.ju = ptrtoint ptr %.1354688 to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = trunc i64 %i.jv to i32
  invoke void @_ZN6icu_785Edits10addReplaceEii(ptr noundef nonnull align 8 dereferenceable(232) %6, i32 noundef %i.jw, i32 noundef 0)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !135

bb.by:                                            ; preds = %bb.ad
  %.not652 = icmp eq i16 %i.dm, -512
  br i1 %.not652, label %bb.bz, label %bb.dd

bb.bz:                                            ; preds = %bb.by
  %i.jx = ptrtoint ptr %.1354688 to i64           ; 2 uses
  %i.jy = ptrtoint ptr %.0315693 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  %i.ka = icmp sgt i64 %i.jz, 2
  br i1 %i.ka, label %bb.ca, label %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit

bb.ca:                                            ; preds = %bb.bz
  %i.kb = getelementptr inbounds i8, ptr %.1354688, i64 -3
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !25  ; 3 uses
  %i.kd = add i8 %i.kc, 31
  %or.cond.i492 = icmp ult i8 %i.kd, 13
  br i1 %or.cond.i492, label %bb.cb, label %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit

bb.cb:                                            ; preds = %bb.ca
  %i.ke = getelementptr inbounds i8, ptr %.1354688, i64 -2
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !25
  %i.kg = xor i8 %i.kf, -128                      ; 3 uses
  %i.kh = zext nneg i8 %i.kg to i32
  %i.ki = icmp ult i8 %i.kg, 64
  br i1 %i.ki, label %bb.cc, label %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit

bb.cc:                                            ; preds = %bb.cb
  %i.kj = getelementptr inbounds i8, ptr %.1354688, i64 -1
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !25
  %i.kl = xor i8 %i.kk, -128                      ; 2 uses
  %i.km = zext nneg i8 %i.kl to i32
  %i.kn = icmp ult i8 %i.kl, 64
  br i1 %i.kn, label %bb.cd, label %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit

bb.cd:                                            ; preds = %bb.cc
  %i.ko = icmp samesign ult i8 %i.kc, -19
  %i.kp = icmp samesign ult i8 %i.kg, 32
  %or.cond5.i = or i1 %i.ko, %i.kp
  br i1 %or.cond5.i, label %bb.ce, label %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit

bb.ce:                                            ; preds = %bb.cd
  %i.kq = and i8 %i.kc, 15
  %i.kr = zext nneg i8 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 12
  %i.kt = shl nuw nsw i32 %i.kh, 6
  %i.ku = or disjoint i32 %i.kt, %i.ks
  %i.kv = or disjoint i32 %i.ku, %i.km
  br label %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit

_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit: ; preds = %bb.bz, %bb.ca, %bb.cb, %bb.cc, %bb.cd, %bb.ce
  %.1.i491 = phi i32 [ %i.kv, %bb.ce ], [ -1, %bb.bz ], [ -1, %bb.cd ], [ -1, %bb.cc ], [ -1, %bb.cb ], [ -1, %bb.ca ] ; 3 uses
  %i.kw = load i8, ptr %i.ai, align 1, !tbaa !25  ; 2 uses
  %i.kx = icmp eq i8 %i.kw, -123
  br i1 %i.kx, label %bb.cf, label %bb.cs

bb.cf:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit
  %i.ky = add nsw i32 %.1.i491, -4352             ; 2 uses
  %i.kz = icmp ult i32 %i.ky, 19
  br i1 %i.kz, label %bb.cg, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531

bb.cg:                                            ; preds = %bb.cf
  br i1 %i.r, label %.thread624, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.la = ptrtoint ptr %.5358 to i64
  %i.lb = sub i64 %i.u, %i.la
  %i.lc = icmp sgt i64 %i.lb, 2
  br i1 %i.lc, label %bb.ci, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread

bb.ci:                                            ; preds = %bb.ch
  %i.ld = load i8, ptr %.5358, align 1, !tbaa !25
  %i.le = icmp eq i8 %i.ld, -31
  br i1 %i.le, label %bb.cj, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread

bb.cj:                                            ; preds = %bb.ci
  %i.lf = getelementptr inbounds nuw i8, ptr %.5358, i64 1
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !25
  switch i8 %i.lg, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread [
    i8 -122, label %bb.ck
    i8 -121, label %bb.cl
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.lh = getelementptr inbounds nuw i8, ptr %.5358, i64 2
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !25  ; 2 uses
  %i.lj = add i8 %i.li, 64
  %or.cond.i494 = icmp ult i8 %i.lj, -24
  %i.lk = zext i8 %i.li to i32
  %i.ll = add nsw i32 %i.lk, -167
  br i1 %or.cond.i494, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit

bb.cl:                                            ; preds = %bb.cj
  %i.lm = getelementptr inbounds nuw i8, ptr %.5358, i64 2
  %i.ln = load i8, ptr %i.lm, align 1, !tbaa !25  ; 2 uses
  %i.lo = icmp sgt i8 %i.ln, -126
  %i.lp = zext i8 %i.ln to i32
  %i.lq = add nsw i32 %i.lp, -103
  br i1 %i.lo, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit

_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit: ; preds = %bb.ck, %bb.cl
  %.2.i493 = phi i32 [ %i.lq, %bb.cl ], [ %i.ll, %bb.ck ] ; 2 uses
  %i.lr = icmp sgt i32 %.2.i493, -1
  br i1 %i.lr, label %bb.cm, label %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread

bb.cm:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit
  %i.ls = getelementptr inbounds nuw i8, ptr %.5358, i64 3
  %i.lt = add nuw nsw i32 %.2.i493, 44032
  br label %bb.co

_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread: ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit
  %i.lu = invoke noundef signext i8 @_ZNK6icu_7815Normalizer2Impl21hasCompBoundaryBeforeEPKhS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %.5358, ptr noundef %4)
          to label %bb.cn unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cn:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_117getJamoTMinusBaseEPKhS2_.exit.thread
  %.not433 = icmp eq i8 %i.lu, 0
  br i1 %.not433, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531, label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  %.7360.ph = phi ptr [ %.5358, %bb.cn ], [ %i.ls, %bb.cm ] ; 3 uses
  %.0299.ph = phi i32 [ 44032, %bb.cn ], [ %i.lt, %bb.cm ]
  %i.lv = mul nuw nsw i32 %i.ky, 21
  %i.lw = getelementptr inbounds nuw i8, ptr %.1354688, i64 2
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !25
  %i.ly = zext i8 %i.lx to i32
  %i.lz = add nsw i32 %i.lv, -161
  %i.ma = add nsw i32 %i.lz, %i.ly
  %i.mb = mul nsw i32 %i.ma, 28
  %i.mc = add nsw i32 %.0299.ph, %i.mb
  %i.md = getelementptr inbounds i8, ptr %.1354688, i64 -3 ; 3 uses
  %.not434 = icmp eq ptr %.0315693, %i.md
  br i1 %.not434, label %bb.cr, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.me = invoke noundef signext i8 @_ZN6icu_7812ByteSinkUtil15appendUnchangedEPKhS2_RNS_8ByteSinkEjPNS_5EditsER10UErrorCode(ptr noundef %.0315693, ptr noundef nonnull %i.md, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %1, ptr noundef %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cp
  %.not435 = icmp eq i8 %i.me, 0
  br i1 %.not435, label %.thread624, label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.co
  %i.mf = ptrtoint ptr %.7360.ph to i64
  %i.mg = ptrtoint ptr %i.md to i64
  %i.mh = sub i64 %i.mf, %i.mg
  %i.mi = trunc i64 %i.mh to i32
  invoke void @_ZN6icu_7812ByteSinkUtil15appendCodePointEiiRNS_8ByteSinkEPNS_5EditsE(i32 noundef %i.mi, i32 noundef %i.mc, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6)
          to label %.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cs:                                            ; preds = %_ZN6icu_7812_GLOBAL__N_120previousHangulOrJamoEPKhS2_.exit
  %i.mj = add nsw i32 %.1.i491, -44032            ; 2 uses
  %or.cond.i496 = icmp ult i32 %i.mj, 11172
  %.lhs.trunc.i = trunc nuw nsw i32 %i.mj to i16
  %i.mk = urem i16 %.lhs.trunc.i, 28
  %.not653 = icmp eq i16 %i.mk, 0
  %or.cond657 = select i1 %or.cond.i496, i1 %.not653, i1 false
  br i1 %or.cond657, label %bb.ct, label %_ZNK6icu_7815Normalizer2Impl20hasCompBoundaryAfterEPKhS2_a.exit.thread531

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.r, label %.thread624, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ml = ptrtoint ptr %.5358 to i64              ; 2 uses
  %i.mm = sub i64 %i.ml, %i.jx
  %i.mn = icmp sgt i64 %i.mm, 2
  br i1 %i.mn, label %bb.cv, label %bb.cz

bb.cv:                                            ; preds = %bb.cu
  %i.mo = load i8, ptr %.1354688, align 1, !tbaa !25
  %i.mp = icmp eq i8 %i.mo, -31
  br i1 %i.mp, label %bb.cw, label %bb.cz

bb.cw:                                            ; preds = %bb.cv
  switch i8 %i.kw, label %bb.cz [
    i8 -122, label %bb.cx
    i8 -121, label %bb.cy
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.mq = getelementptr inbounds nuw i8, ptr %.1354688, i64 2
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !25  ; 2 uses
  %i.ms = add i8 %i.mr, 64
  %or.cond.i498 = icmp ult i8 %i.ms, -24
end_hunk_2
