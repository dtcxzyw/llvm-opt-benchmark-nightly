inline.NumInlined: 51
inline.NumDeleted: 22
begin_hunk_0_@_ZN6icu_7813StringMatcher7matchesERKNS_11ReplaceableERiia:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %.not.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit63.us, label %.lr.ph.split

_ZNK6icu_7813UnicodeString6charAtEi.exit63.us:    ; preds = %.lr.ph, %bb.e
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.p = phi i16 [ %i.am, %bb.e ], [ %i.f, %.lr.ph ]
  %i.q = and i16 %i.p, 2
  %.not.i.i.i62.us = icmp eq i16 %i.q, 0
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = select i1 %.not.i.i.i62.us, ptr %i.r, ptr %i.m
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv87
  %i.u = load i16, ptr %i.t, align 2              ; 2 uses
  %i.v = load ptr, ptr %i.o, align 8
  %i.w = zext i16 %i.u to i32
  %i.x = call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.v, i32 noundef %i.w) #7 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit63.us
  %i.z = load ptr, ptr %i.x, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %3, i8 noundef signext 0) #7 ; 2 uses
  %.not57.us = icmp eq i32 %i.ac, 2
  br i1 %.not57.us, label %bb.e, label %.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit63.us
  %i.ad = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ae = icmp slt i32 %i.ad, %3
  br i1 %i.ae, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %1, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef zeroext i16 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.ad) #7, !inline_history !9
  %i.aj = icmp eq i16 %i.u, %i.ai
  br i1 %i.aj, label %.thread70.us, label %.thread

.thread70.us:                                     ; preds = %bb.d
  %i.ak = load i32, ptr %i.a, align 4
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %.thread70.us, %bb.b
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %i.am = load i16, ptr %i.d, align 8             ; 3 uses
  %i.an = icmp slt i16 %i.am, 0
  %i.ao = ashr i16 %i.am, 5
  %i.ap = sext i16 %i.ao to i32
  %i.aq = load i32, ptr %i.e, align 4
  %i.ar = select i1 %i.an, i32 %i.aq, i32 %i.ap
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next88, %i.as
  br i1 %i.at, label %_ZNK6icu_7813UnicodeString6charAtEi.exit63.us, label %._crit_edge.loopexit, !llvm.loop !10

bb.f:                                             ; preds = %bb.a
  %i.au = load i16, ptr %i.d, align 8             ; 2 uses
  %i.av = icmp slt i16 %i.au, 0
  %i.aw = ashr i16 %i.au, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4
  %i.ba = select i1 %i.av, i32 %i.az, i32 %i.ax   ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = zext nneg i32 %i.ba to i64
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph80, %.backedge
  %indvars.iv89 = phi i64 [ %i.bf, %.lr.ph80 ], [ %indvars.iv.next90, %.backedge ] ; 2 uses
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, -1 ; 3 uses
  %i.bg = load i16, ptr %i.d, align 8             ; 3 uses
  %i.bh = icmp slt i16 %i.bg, 0
  %i.bi = ashr i16 %i.bg, 5
  %i.bj = sext i16 %i.bi to i32
  %i.bk = load i32, ptr %i.ay, align 4
  %i.bl = select i1 %i.bh, i32 %i.bk, i32 %i.bj
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp ult i64 %indvars.iv.next90, %i.bm
  br i1 %i.bn, label %bb.h, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.h:                                             ; preds = %bb.g
  %i.bo = and i16 %i.bg, 2
  %.not.i.i.i = icmp eq i16 %i.bo, 0
  %i.bp = load ptr, ptr %i.bd, align 8
  %i.bq = select i1 %.not.i.i.i, ptr %i.bp, ptr %i.bc
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bq, i64 %indvars.iv.next90
  %i.bs = load i16, ptr %i.br, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.g, %bb.h
  %.0.i.i = phi i16 [ %i.bs, %bb.h ], [ -1, %bb.g ] ; 2 uses
  %i.bt = load ptr, ptr %i.be, align 8
  %i.bu = zext i16 %.0.i.i to i32
  %i.bv = call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.bt, i32 noundef %i.bu) #7 ; 3 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.bx = load i32, ptr %i.a, align 4             ; 2 uses
  %i.by = icmp sgt i32 %i.bx, %3
  br i1 %i.by, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %1, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call noundef zeroext i16 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.bx) #7, !inline_history !9
  %i.cd = icmp eq i16 %.0.i.i, %i.cc
  br i1 %i.cd, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.ce = load i32, ptr %i.a, align 4
  %i.cf = add nsw i32 %i.ce, -1
  store i32 %i.cf, ptr %i.a, align 4
  br label %.backedge

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.cg = load ptr, ptr %i.bv, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef i32 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %i.bv, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %3, i8 noundef signext %4) #7 ; 2 uses
  %.not58 = icmp eq i32 %i.cj, 2
  br i1 %.not58, label %.backedge, label %.thread

.backedge:                                        ; preds = %bb.l, %bb.k
  %i.ck = icmp samesign ugt i64 %indvars.iv89, 1
  br i1 %i.ck, label %bb.g, label %._crit_edge81.loopexit, !llvm.loop !12

._crit_edge81.loopexit:                           ; preds = %.backedge
  %.pre94.pre = load i32, ptr %i.a, align 4
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %._crit_edge81.loopexit, %bb.f
  %.pre94.a = phi i32 [ %.pre94.pre, %._crit_edge81.loopexit ], [ %i.b, %bb.f ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %bb.m, label %bb.r

bb.m:                                             ; preds = %._crit_edge81
  %i.co = add nsw i32 %.pre94.a, 1
  store i32 %i.co, ptr %i.cl, align 4
  %i.cp = load i32, ptr %2, align 4
  %i.cq = add nsw i32 %i.cp, 1
  br label %.sink.split

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %i.cr = phi i32 [ %i.dq, %bb.q ], [ %i.b, %.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.q ], [ 0, %.lr.ph ] ; 2 uses
  %i.cs = phi i16 [ %i.dr, %bb.q ], [ %i.f, %.lr.ph ]
  %i.ct = icmp eq i32 %i.cr, %3
  br i1 %i.ct, label %.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit63

_ZNK6icu_7813UnicodeString6charAtEi.exit63:       ; preds = %.lr.ph.split
  %i.cu = and i16 %i.cs, 2
  %.not.i.i.i62 = icmp eq i16 %i.cu, 0
  %i.cv = load ptr, ptr %i.n, align 8
  %i.cw = select i1 %.not.i.i.i62, ptr %i.cv, ptr %i.m
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cw, i64 %indvars.iv
  %i.cy = load i16, ptr %i.cx, align 2            ; 2 uses
  %i.cz = load ptr, ptr %i.o, align 8
  %i.da = zext i16 %i.cy to i32
  %i.db = call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.cz, i32 noundef %i.da) #7 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit63
  %i.dd = load i32, ptr %i.a, align 4             ; 2 uses
  %i.de = icmp slt i32 %i.dd, %3
  br i1 %i.de, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.df = load ptr, ptr %1, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = call noundef zeroext i16 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.dd) #7, !inline_history !9
  %i.dj = icmp eq i16 %i.cy, %i.di
  br i1 %i.dj, label %.thread70, label %.thread

.thread70:                                        ; preds = %bb.o
  %i.dk = load i32, ptr %i.a, align 4
  %i.dl = add nsw i32 %i.dk, 1                    ; 2 uses
  store i32 %i.dl, ptr %i.a, align 4
  br label %bb.q

bb.p:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit63
  %i.dm = load ptr, ptr %i.db, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef i32 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %3, i8 noundef signext %4) #7 ; 2 uses
  %.not57 = icmp eq i32 %i.dp, 2
  %.pre = load i32, ptr %i.a, align 4
  br i1 %.not57, label %bb.q, label %.thread

bb.q:                                             ; preds = %.thread70, %bb.p
  %i.dq = phi i32 [ %i.dl, %.thread70 ], [ %.pre, %bb.p ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dr = load i16, ptr %i.d, align 8             ; 3 uses
  %i.ds = icmp slt i16 %i.dr, 0
  %i.dt = ashr i16 %i.dr, 5
  %i.du = sext i16 %i.dt to i32
  %i.dv = load i32, ptr %i.e, align 4
  %i.dw = select i1 %i.ds, i32 %i.dv, i32 %i.du
  %i.dx = sext i32 %i.dw to i64
  %i.dy = icmp slt i64 %indvars.iv.next, %i.dx
  br i1 %i.dy, label %.lr.ph.split, label %._crit_edge, !llvm.loop !10

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre93 = load i32, ptr %i.a, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.q, %._crit_edge.loopexit, %.preheader
  %i.dz = phi i32 [ %i.b, %.preheader ], [ %.pre93, %._crit_edge.loopexit ], [ %i.dq, %bb.q ] ; 2 uses
  %i.ea = load i32, ptr %2, align 4
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.ea, ptr %i.eb, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge, %bb.m
  %.sink = phi i32 [ %i.cq, %bb.m ], [ %i.dz, %._crit_edge ]
  %.ph = phi i32 [ %.pre94.a, %bb.m ], [ %i.dz, %._crit_edge ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.sink, ptr %i.ec, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %._crit_edge81
  %i.ed = phi i32 [ %.pre94.a, %._crit_edge81 ], [ %.ph, %.sink.split ]
  store i32 %i.ed, ptr %2, align 4
  br label %.thread

.thread:                                          ; preds = %bb.p, %.lr.ph.split, %bb.n, %bb.o, %bb.d, %bb.c, %bb.b, %bb.j, %bb.i, %bb.l, %bb.r
  %.8 = phi i32 [ %i.cj, %bb.l ], [ 2, %bb.r ], [ %i.ac, %bb.b ], [ 0, %bb.i ], [ 0, %bb.j ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.n ], [ 1, %.lr.ph.split ], [ %i.dp, %bb.p ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.8
}

declare noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168), i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @_ZThn8_N6icu_7813StringMatcher7matchesERKNS_11ReplaceableERiia(ptr nofree noundef captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2, i32 noundef %3, i8 noundef signext %4) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef i32 @_ZN6icu_7813StringMatcher7matchesERKNS_11ReplaceableERiia(ptr noundef nonnull align 8 dereferenceable(108) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, i8 noundef signext %4)
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813StringMatcher9toPatternERNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(108) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %3 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8              ; 4 uses
  %i.e = trunc i16 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeString7unBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %1) #7
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i16 %i.d, 0
  %i.g = ashr i16 %i.d, 5
  %i.h = sext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %_ZN6icu_7813UnicodeString8truncateEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i16 %i.d, 30
  store i16 %i.l, ptr %i.c, align 8
  br label %_ZN6icu_7813UnicodeString8truncateEi.exit

_ZN6icu_7813UnicodeString8truncateEi.exit:        ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %3, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i16 2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i16 2, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7813UnicodeString8truncateEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 40, ptr %i.b, align 2
  %i.r = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN6icu_7813UnicodeString8truncateEi.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.u = load i16, ptr %i.s, align 8              ; 3 uses
  %i.v = icmp slt i16 %i.u, 0
  %i.w = ashr i16 %i.u, 5
  %i.x = sext i16 %i.w to i32
  %i.y = load i32, ptr %i.t, align 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %i.x
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, label %._crit_edge

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph:   ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

._crit_edge:                                      ; preds = %bb.i, %bb.f
  %i.ae = load i32, ptr %i.o, align 8
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %bb.j, label %bb.k

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ag = phi i16 [ %i.u, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %i.au, %bb.i ]
  %i.ah = and i16 %i.ag, 2
  %.not.i.i.i = icmp eq i16 %i.ah, 0
  %i.ai = load ptr, ptr %i.ac, align 8
  %i.aj = select i1 %.not.i.i.i, ptr %i.ai, ptr %i.ab
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = zext i16 %i.al to i32                   ; 2 uses
  %i.an = load ptr, ptr %i.ad, align 8
  %i.ao = call noundef ptr @_ZNK6icu_7823TransliterationRuleData13lookupMatcherEi(ptr noundef nonnull align 8 dereferenceable(1168) %i.an, i32 noundef %i.am) #7 ; 3 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  call void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringEiaaS2_(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %i.am, i8 noundef signext 0, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #7
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.aq = load ptr, ptr %i.ao, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef nonnull align 8 dereferenceable(64) ptr %i.as(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext %2) #7
  call void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringERKS1_aaS2_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.at, i8 noundef signext 1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.au = load i16, ptr %i.s, align 8             ; 3 uses
  %i.av = icmp slt i16 %i.au, 0
  %i.aw = ashr i16 %i.au, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.t, align 4
  %i.az = select i1 %i.av, i32 %i.ay, i32 %i.ax
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %._crit_edge, !llvm.loop !13

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 41, ptr %i.a, align 2
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge
  call void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringEiaaS2_(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef -1, i8 noundef signext 1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %4) #7
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  ret ptr %1
}

declare void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringEiaaS2_(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i8 noundef signext, i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6icu_7811ICU_Utility12appendToRuleERNS_13UnicodeStringERKS1_aaS2_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, i8 noundef signext, ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef nonnull ptr @_ZThn8_NK6icu_7813StringMatcher9toPatternERNS_13UnicodeStringEa(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1, i8 noundef signext %2) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7813StringMatcher9toPatternERNS_13UnicodeStringEa(ptr noundef nonnull align 8 dereferenceable(108) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext i8 @_ZNK6icu_7813StringMatcher17matchesIndexValueEh(ptr noundef nonnull align 8 dereferenceable(108) %0, i8 noundef zeroext %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
end_hunk_0
