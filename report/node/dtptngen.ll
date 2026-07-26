inline.NumInlined: 824
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions:bb.a
  %.not87 = icmp ne i32 %i.aq, 0
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4432
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 4440
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 4444
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 12
  br label %bb.d

._crit_edge:                                      ; preds = %bb.aa, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  ret void

bb.d:                                             ; preds = %.lr.ph116, %bb.aa
  %i.aw = phi ptr [ %i.y, %.lr.ph116 ], [ %i.gh, %bb.aa ]
  %storemerge115 = phi i32 [ 0, %.lr.ph116 ], [ %i.gg, %bb.aa ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = sext i32 %storemerge115 to i64
  %i.az = getelementptr inbounds [64 x i8], ptr %i.ax, i64 %i.ay
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.az) #25
  %i.ba = load i16, ptr %i.ac, align 8            ; 5 uses
  %i.bb = icmp slt i16 %i.ba, 0
  %i.bc = ashr i16 %i.ba, 5
  %i.bd = sext i16 %i.bc to i32
  %i.be = load i32, ptr %i.ad, align 4
  %i.bf = select i1 %i.bb, i32 %i.be, i32 %i.bd   ; 9 uses
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %.thread, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.d
  %i.bg = and i16 %i.ba, 2
  %.not.i.i.i.i = icmp eq i16 %i.bg, 0
  %i.bh = load ptr, ptr %i.af, align 8
  %i.bi = select i1 %.not.i.i.i.i, ptr %i.bh, ptr %i.ae ; 3 uses
  %i.bj = load i16, ptr %i.bi, align 2            ; 5 uses
  %.not = icmp eq i16 %i.bj, 39
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8
  store i16 2, ptr %i.au, align 8
  %i.bk = load ptr, ptr %i.f, align 8
  call void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %i.bk, ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull %i.d)
  %i.bl = load i16, ptr %i.au, align 8            ; 2 uses
  %i.bm = icmp slt i16 %i.bl, 0
  %i.bn = ashr i16 %i.bl, 5
  %i.bo = sext i16 %i.bn to i32
  %i.bp = load i32, ptr %i.av, align 4
  %i.bq = select i1 %i.bm, i32 %i.bp, i32 %i.bo
  %i.br = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %8, i32 noundef 0, i32 noundef %i.bq) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.aa

bb.f:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %i.bs = icmp sgt i32 %i.bf, 0
  br i1 %i.bs, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.f
  %i.bt = load ptr, ptr %i.f, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %wide.trip.count.i = zext nneg i32 %i.bf to i64 ; 2 uses
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i
  %i.bw = load i16, ptr %i.bv, align 2
  switch i16 %i.bw, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i [
    i16 92, label %.thread.i
    i16 58, label %.thread.i
    i16 45, label %.thread.i
    i16 44, label %.thread.i
    i16 39, label %.thread.i
    i16 34, label %.thread.i
    i16 32, label %.thread.i
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bu, i64 %indvars.iv.i ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i16, ptr %i.by, align 8            ; 3 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = ashr i16 %i.bz, 5
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = select i1 %i.ca, i32 %i.ce, i32 %i.cc
  %.not.i99 = icmp eq i32 %i.cf, 0
  br i1 %.not.i99, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.cg = and i16 %i.bz, 2
  %.not.i.i.i39.i = icmp eq i16 %i.cg, 0
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = select i1 %.not.i.i.i39.i, ptr %i.cj, ptr %i.ch
  %i.cl = load i16, ptr %i.ck, align 2
  %i.cm = icmp eq i16 %i.cl, 46
  br i1 %i.cm, label %.thread.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i

.thread.i:                                        ; preds = %bb.g, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, !llvm.loop !47

.thread:                                          ; preds = %.thread.i, %bb.d, %bb.f
  %i.cn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bf) #25 ; 0 uses
  br label %bb.aa

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i:     ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i, %bb.g
  %.not3043.i.i.not = icmp eq i32 %i.bf, 1
  br i1 %.not3043.i.i.not, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i

.critedge.outer.i.i.preheader:                    ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  br label %.critedge.outer.i.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i
  br i1 %exitcond.not.i.i, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, !llvm.loop !35

_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i:   ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i ] ; 2 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i.i
  %i.cp = load i16, ptr %i.co, align 2
  %.not.i.i = icmp eq i16 %i.bj, %i.cp
  br i1 %.not.i.i, label %bb.h, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.critedge.i.i
  %indvars.iv56.i.i = phi i64 [ %i.da, %.lr.ph.preheader.i.i ], [ %indvars.iv.next57.i.i, %.critedge.i.i ] ; 6 uses
  %.in.i.i = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %indvars.iv56.i.i
  %i.cq = load i16, ptr %.in.i.i, align 16
  %.not33.i.i = icmp eq i16 %i.cq, %i.bj
  br i1 %.not33.i.i, label %bb.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %i.cr = and i64 %indvars.iv.next57.i.i, 4294967295
  %exitcond59.i.i = icmp eq i64 %i.cr, 86
  br i1 %exitcond59.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.i.i, !llvm.loop !36

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.cs = trunc nsw i64 %indvars.iv56.i.i to i32  ; 7 uses
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.cu ; 2 uses
  %i.cw = load i16, ptr %i.cv, align 16
  %.not34.i.i = icmp eq i16 %i.bj, %i.cw
  br i1 %.not34.i.i, label %bb.j, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit

bb.j:                                             ; preds = %bb.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 10
  %i.cy = load i16, ptr %i.cx, align 2
  %i.cz = sext i16 %i.cy to i32
  %.not35.i.i = icmp slt i32 %i.bf, %i.cz
  br i1 %.not35.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, label %.critedge.outer.i.i, !llvm.loop !36

.critedge.outer.i.i:                              ; preds = %.critedge.outer.i.i.preheader, %bb.j
  %.024.ph.i.i = phi i32 [ %i.ct, %bb.j ], [ 0, %.critedge.outer.i.i.preheader ] ; 2 uses
  %.not3145.i.i = icmp eq i32 %.024.ph.i.i, 86
  br i1 %.not3145.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.outer.i.i
  %i.da = sext i32 %.024.ph.i.i to i64
  br label %.lr.ph.i.i

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit: ; preds = %bb.i, %bb.j
  %i.db = icmp sgt i64 %indvars.iv56.i.i, -1
  br i1 %i.db, label %bb.k, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, %.critedge.outer.i.i, %.critedge.i.i, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.dc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bf) #25 ; 0 uses
  br label %bb.aa

bb.k:                                             ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.dd = and i64 %indvars.iv56.i.i, 4294967295
  %i.de = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.dd ; 2 uses
  %i.df = and i32 %i.cs, 2147483646
  %i.dg = icmp eq i32 %i.df, 64                   ; 2 uses
  %or.cond = and i1 %i.dg, %i.ag
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dh = load i16, ptr %i.as, align 8            ; 2 uses
  %i.di = icmp slt i16 %i.dh, 0
  %i.dj = ashr i16 %i.dh, 5
  %i.dk = sext i16 %i.dj to i32
  %i.dl = load i32, ptr %i.at, align 4
  %i.dm = select i1 %i.di, i32 %i.dl, i32 %i.dk
  %i.dn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef 0, i32 noundef %i.dm) #25 ; 0 uses
  %i.do = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 94
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = sext i8 %i.dq to i16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 110
  %i.dt = load i8, ptr %i.ds, align 1             ; 2 uses
  %9 = zext nneg i8 %i.dt to i32
  %i.du = icmp sgt i8 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.08.i = phi i32 [ %i.dw, %.lr.ph.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.dr, ptr %i.b, align 2
  %i.dv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dw = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i100 = icmp eq i32 %i.dw, %9
  br i1 %exitcond.not.i100, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %.lr.ph.i, !llvm.loop !63

bb.m:                                             ; preds = %bb.k
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = sext i32 %i.dy to i64                   ; 4 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %.not84 = icmp eq i32 %i.ed, 0
  br i1 %.not84, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 80
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.eb
  %i.eg = load i8, ptr %i.ef, align 1             ; 6 uses
  %i.eh = sext i8 %i.eg to i16                    ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dz, i64 96
  %i.ej = getelementptr inbounds i8, ptr %i.ei, i64 %i.eb
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = sext i8 %i.ek to i32                    ; 2 uses
  %i.em = icmp eq i8 %i.eg, 69
  %i.en = call i32 @llvm.smax.i32(i32 %i.el, i32 3)
  %spec.store.select = select i1 %i.em, i32 %i.en, i32 %i.el ; 5 uses
  %i.eo = add nsw i32 %i.cs, -56
  %i.ep = icmp ult i32 %i.eo, 7                   ; 2 uses
  %or.cond89 = and i1 %i.aj, %i.ep
  %i.eq = icmp eq i64 %indvars.iv56.i.i, 63
  %or.cond91 = and i1 %i.al, %i.eq
  %or.cond117 = or i1 %or.cond89, %or.cond91
  %or.cond93 = and i1 %i.an, %i.dg
  %or.cond118 = or i1 %or.cond117, %or.cond93     ; 2 uses
  %brmerge = or i1 %or.cond118, %.not109
  %.mux = select i1 %or.cond118, i32 %i.bf, i32 %spec.store.select
  br i1 %brmerge, label %bb.p, label %switch.early.test

switch.early.test:                                ; preds = %bb.n
  switch i8 %i.eg, label %bb.o [
    i8 101, label %bb.p
    i8 99, label %bb.p
  ]

bb.o:                                             ; preds = %switch.early.test
  %i.er = getelementptr inbounds i8, ptr %i.ao, i64 %i.eb
  %i.es = load i8, ptr %i.er, align 1
  %i.et = sext i8 %i.es to i32
  %i.eu = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ev = load i16, ptr %i.eu, align 8
  %i.ew = icmp slt i16 %i.ev, 1                   ; 2 uses
  %i.ex = icmp sgt i32 %i.ed, 0                   ; 2 uses
  %i.ey = icmp ne i32 %spec.store.select, %i.et
  %or.cond11 = or i1 %i.ex, %i.ew
  %or.cond94 = select i1 %i.ey, i1 %or.cond11, i1 false
  %or.cond94.not = xor i1 %or.cond94, true
  %or.cond13.not = select i1 %i.ex, i1 %i.ew, i1 false
  %or.cond95 = select i1 %or.cond94.not, i1 true, i1 %or.cond13.not
  %spec.select106 = select i1 %or.cond95, i32 %i.bf, i32 %spec.store.select
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %switch.early.test, %switch.early.test
  %.1 = phi i32 [ %spec.select106, %bb.o ], [ %spec.store.select, %switch.early.test ], [ %spec.store.select, %switch.early.test ], [ %.mux, %bb.n ] ; 3 uses
  %i.ez = add nsw i32 %i.cs, -63
  %i.fa = icmp ult i32 %i.ez, -7
  %i.fb = add nsw i32 %i.cs, -27
  %i.fc = icmp ult i32 %i.fb, -9
  %or.cond15 = select i1 %i.fa, i1 %i.fc, i1 false
  %i.fd = add nsw i32 %i.cs, -43
  %i.fe = icmp ult i32 %i.fd, -14
  %or.cond17 = select i1 %or.cond15, i1 %i.fe, i1 false
  br i1 %or.cond17, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ff = add nsw i32 %i.cs, -10
  %i.fg = icmp ult i32 %i.ff, -7
  %i.fh = icmp eq i8 %i.eg, 89
  %or.cond20 = or i1 %i.fg, %i.fh
  br i1 %or.cond20, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.r, %bb.q
  %i.fi = phi i16 [ %i.eh, %bb.q ], [ %i.bj, %bb.r ] ; 2 uses
  %i.fj = icmp eq i16 %i.fi, 69
  %i.fk = icmp slt i32 %.1, 3
  %or.cond22 = and i1 %i.fk, %i.fj
  %spec.store.select23 = select i1 %or.cond22, i16 101, i16 %i.fi ; 6 uses
  br i1 %i.ep, label %bb.s, label %bb.z

bb.s:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.fl = load i16, ptr %i.ap, align 8            ; 7 uses
  %.not86 = icmp eq i16 %i.fl, 0
  br i1 %.not86, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fm = icmp eq i16 %i.fl, %i.eh
  %or.cond96 = or i1 %.not87, %i.fm
  br i1 %or.cond96, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fn = icmp eq i8 %i.eg, 104
  %i.fo = icmp eq i16 %i.fl, 75
  %or.cond97 = and i1 %i.fn, %i.fo
  br i1 %or.cond97, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  switch i8 %i.eg, label %bb.z [
    i8 72, label %bb.w
    i8 107, label %bb.x
    i8 75, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.fp = icmp eq i16 %i.fl, 107
  %spec.select107 = select i1 %i.fp, i16 107, i16 %spec.store.select23
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.fq = icmp eq i16 %i.fl, 72
  %spec.select108 = select i1 %i.fq, i16 72, i16 %spec.store.select23
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.fr = icmp eq i16 %i.fl, 104
  %spec.select = select i1 %i.fr, i16 104, i16 %spec.store.select23
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t, %bb.y, %bb.v, %bb.u, %bb.s, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.075 = phi i16 [ %i.fl, %bb.t ], [ %spec.store.select23, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 75, %bb.u ], [ %spec.select108, %bb.x ], [ %spec.store.select23, %bb.v ], [ %spec.select, %bb.y ], [ %spec.select107, %bb.w ], [ %spec.store.select23, %bb.s ]
  %i.fs = and i16 %i.ba, 1
  %.not.i101 = icmp eq i16 %i.fs, 0
  %i.ft = and i16 %i.ba, 30
  %storemerge.i = select i1 %.not.i101, i16 %i.ft, i16 2
  store i16 %storemerge.i, ptr %i.ac, align 8
  %i.fu = icmp sgt i32 %.1, 0
  br i1 %i.fu, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  %.0114 = phi i32 [ %i.fw, %.lr.ph ], [ %.1, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.075, ptr %i.a, align 2
  %i.fv = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fw = add nsw i32 %.0114, -1
  %i.fx = icmp samesign ugt i32 %.0114, 1
  br i1 %i.fx, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, !llvm.loop !64

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit: ; preds = %.lr.ph, %.lr.ph.i, %bb.z, %bb.l, %bb.m
  %i.fy = load i16, ptr %i.ac, align 8            ; 2 uses
  %i.fz = icmp slt i16 %i.fy, 0
  %i.ga = ashr i16 %i.fy, 5
  %i.gb = sext i16 %i.ga to i32
  %i.gc = load i32, ptr %i.ad, align 4
  %i.gd = select i1 %i.fz, i32 %i.gc, i32 %i.gb
  %i.ge = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.gd) #25 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, %bb.e, %.thread
  %i.gf = phi i32 [ %storemerge115, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread ], [ %storemerge115, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit ], [ %.pre, %bb.e ], [ %storemerge115, %.thread ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.gg = add nsw i32 %i.gf, 1                    ; 3 uses
  store i32 %i.gg, ptr %i.d, align 4
  %i.gh = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 3208
  %i.gj = load i32, ptr %i.gi, align 8
  %i.gk = icmp slt i32 %i.gg, %i.gj
  br i1 %i.gk, label %bb.d, label %._crit_edge, !llvm.loop !65
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 65536) i32 @_ZNK6icu_7815DateTimeMatcher12getFieldMaskEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <16 x i32>, ptr %i.a, align 8
  %i.c = icmp ne <16 x i32> %i.b, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16
  %i.e = zext i16 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator16getBestAppendingEiiR10UErrorCode28UDateTimePatternMatchOptions(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6icu_7818PatternMapIterator4nextEv:bb.a
  %i.q = phi ptr [ null, %bb.c ], [ %.promoted9, %bb.e ] ; 2 uses
  %i.r = phi i32 [ %i.k, %bb.c ], [ %i.p, %bb.e ]
  %i.s = icmp slt i32 %i.r, 52
  br i1 %i.s, label %.lr.ph.peel.newph, label %.loopexit

.lr.ph.peel.newph:                                ; preds = %.backedge.peel, %.backedge
  %indvars.iv = phi i64 [ %i.v, %.backedge ], [ %indvars.iv.next.pre-phi.peel, %.backedge.peel ] ; 3 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not3 = icmp eq ptr %i.u, null
  br i1 %.not3, label %.backedge, label %.loopexit.thread.sink.split

.backedge:                                        ; preds = %.lr.ph.peel.newph
  %i.v = add nsw i64 %indvars.iv, 1               ; 2 uses
  %i.w = trunc nsw i64 %i.v to i32
  store i32 %i.w, ptr %i.a, align 8
  %i.x = icmp slt i64 %indvars.iv, 51
  br i1 %i.x, label %.lr.ph.peel.newph, label %.loopexit, !llvm.loop !75

.loopexit:                                        ; preds = %.backedge.peel, %.backedge, %..loopexit_crit_edge
  %i.y = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.q, %.backedge ], [ %i.q, %.backedge.peel ] ; 2 uses
  %.not4 = icmp eq ptr %i.y, null
  br i1 %.not4, label %bb.f, label %.loopexit.thread

.loopexit.thread.sink.split:                      ; preds = %.lr.ph.peel.newph, %bb.d, %bb.b
  %.lcssa15.sink = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.d ], [ %i.u, %.lr.ph.peel.newph ] ; 2 uses
  store ptr %.lcssa15.sink, ptr %i.c, align 8
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %.loopexit
  %i.z = phi ptr [ %i.y, %.loopexit ], [ %.lcssa15.sink, %.loopexit.thread.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8            ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8            ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.af, i64 64, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 80
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ah, i64 16, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 96
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 112
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.al, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  store i8 %i.ap, ptr %i.aq, align 8
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, i8 0, i64 128, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  ret ptr %i.av
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load i128, ptr %i.b, align 1
  %i.e = load i128, ptr %i.c, align 1
  %i.f = icmp ne i128 %i.d, %i.e
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.k = load i128, ptr %i.i, align 1
  %i.l = load i128, ptr %i.j, align 1
  %i.m = icmp ne i128 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  %i.p = zext i1 %i.o to i8
  br label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit:         ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.p, %bb.c ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %3) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret i32 %.2

bb.c:                                             ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %.028 = phi i32 [ 0, %bb.a ], [ %.2, %bb.i ]    ; 5 uses
  %i.e = phi i32 [ 0, %bb.a ], [ %i.ac, %bb.i ]   ; 5 uses
  %i.f = phi i32 [ 0, %bb.a ], [ %i.ab, %bb.i ]   ; 5 uses
  %i.g = trunc nuw nsw i64 %indvars.iv to i32
  %i.h = shl nuw nsw i32 1, %i.g                  ; 3 uses
  %i.i = and i32 %i.h, %2
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4              ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.i, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %.thread25

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.l, 0
  br i1 %i.s, label %.thread25, label %bb.f

.thread25:                                        ; preds = %.thread, %bb.e
  %i.t = add nuw nsw i32 %.028, 65536
  %i.u = or i32 %i.f, %i.h                        ; 2 uses
  store i32 %i.u, ptr %i.a, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %i.n, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i32 %.028, 4096
  %i.x = or i32 %i.e, %i.h                        ; 2 uses
  store i32 %i.x, ptr %i.b, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = sub nsw i32 %i.l, %i.n
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.aa = add nuw nsw i32 %i.z, %.028
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.thread25, %bb.h, %bb.g, %bb.d
  %i.ab = phi i32 [ %i.f, %bb.d ], [ %i.u, %.thread25 ], [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %.thread ]
  %i.ac = phi i32 [ %i.e, %bb.d ], [ %i.e, %.thread25 ], [ %i.x, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %.thread ]
  %.2 = phi i32 [ %.028, %bb.d ], [ %i.t, %.thread25 ], [ %i.w, %bb.g ], [ %i.aa, %bb.h ], [ %.028, %.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !61
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7812DistanceInfo5setToERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.b, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.e, ptr %i.f, align 4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = sext i8 %i.d to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1               ; 2 uses
  %3 = zext nneg i8 %i.h to i32
  %i.i = icmp sgt i8 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.e, ptr %i.a, align 2
  %i.j = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.k, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext range(i16 -128, 128) i16 @_ZNK6icu_7814SkeletonFields12getFieldCharEi(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = sext i8 %i.c to i16
  ret i16 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 16) i32 @_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.012 = phi i32 [ %i.c, %.preheader ], [ 0, %bb.a ]
  %.0711 = phi i32 [ %i.b, %.preheader ], [ %1, %bb.a ]
  %i.b = ashr i32 %.0711, 1                       ; 2 uses
  %i.c = add nuw nsw i32 %.012, 1                 ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !67

bb.b:                                             ; preds = %.preheader
  %i.d = tail call i32 @llvm.umin.i32(i32 %i.c, i32 16)
  %.08 = add nsw i32 %i.d, -1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %.08, %bb.b ], [ 0, %bb.a ]
  ret i32 %.1
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter16formatAndReplaceEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #25 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  br label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit

_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit: ; preds = %bb.a, %bb.b
  %i.f = tail call noundef i32 @uhash_puti_78(ptr noundef %i.c, ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %2) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7824DateTimePatternGenerator20isAvailableFormatSetERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4504
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 @uhash_geti_78(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.e = icmp eq i32 %i.d, 1
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7824DateTimePatternGenerator12getSkeletonsER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #25 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load i32, ptr %1, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @_ZN6icu_7821DTSkeletonEnumerationC2ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(425) %i.k, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.pre = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %bb.g, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #25, !inline_history !76
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit, %bb.g, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ %i.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit ], [ null, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator21getPatternForSkeletonERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4512
  br label %bb.m

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n
  %i.r = load i16, ptr %i.q, align 2              ; 4 uses
  %i.s = add i16 %i.r, -65
  %or.cond.i = icmp ult i16 %i.s, 26
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.t = zext nneg i16 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = add nuw nsw i64 %i.t, 4294967231
  %i.w = and i64 %i.v, 4294967295
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.w
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.y = add i16 %i.r, -97
  %or.cond5.i = icmp ult i16 %i.y, 26
  br i1 %or.cond5.i, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i16 %i.r to i64
  %i.aa = getelementptr [8 x i8], ptr %i.l, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -560
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

_ZNK6icu_7810PatternMap9getHeaderEDs.exit:        ; preds = %bb.c, %bb.e
  %.0.in.i = phi ptr [ %i.x, %bb.c ], [ %i.ab, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 2 uses
  %.not17 = icmp eq ptr %.0.i, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.f
end_hunk_1
begin_hunk_2_@_ZNK6icu_7811PtnSkeleton12getFirstCharEv:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7811PtnSkeleton6equalsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = load i128, ptr %i.a, align 1
  %i.d = load i128, ptr %i.b, align 1
  %i.e = icmp ne i128 %i.c, %i.d
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit:         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i128, ptr %i.h, align 1
  %i.k = load i128, ptr %i.i, align 1
  %i.l = icmp ne i128 %i.j, %i.k
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.b, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

bb.b:                                             ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load i128, ptr %i.o, align 1
  %i.r = load i128, ptr %i.p, align 1
  %i.s = icmp ne i128 %i.q, %i.r
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit6, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit6:        ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.x = load i128, ptr %i.v, align 1
  %i.y = load i128, ptr %i.w, align 1
  %i.z = icmp ne i128 %i.x, %i.y
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

bb.c:                                             ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit6
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %i.ac, ptr noundef nonnull dereferenceable(64) %i.ad, i64 64)
  %i.ae = icmp eq i32 %bcmp, 0
  %i.af = zext i1 %i.ae to i8
  br label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread:  ; preds = %bb.b, %bb.a, %bb.c, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit6, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit
  %i.ag = phi i8 [ 0, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit6 ], [ 0, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit ], [ %i.af, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ]
  ret i8 %i.ag
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcherC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) initializes((0, 16), (80, 145)) %0) unnamed_addr #16 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.b, i8 0, i64 65, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcherD2Ev(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcherC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) initializes((0, 145)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.b, i8 0, i64 65, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 16, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.m = load i8, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.m, ptr %i.n, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7814SkeletonFields5clearEv(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2
  %i.o = trunc i16 %i.n to i8
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i8 [ %i.o, %bb.b ], [ -1, %bb.a ]
  %i.p = sext i32 %1 to i64                       ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %0, i64 %i.p
  store i8 %.0.i.i, ptr %i.q, align 1
  %i.r = trunc i32 %i.h to i8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 %i.p
  store i8 %i.r, ptr %i.t, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7814SkeletonFields8populateEiDsi(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1, i16 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = trunc i16 %2 to i8
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  store i8 %i.a, ptr %i.c, align 1
  %i.d = trunc i32 %3 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 %i.b
  store i8 %i.d, ptr %i.f, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7814SkeletonFields12isFieldEmptyEi(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = icmp eq i8 %i.d, 0
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7814SkeletonFields10clearFieldEi(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = getelementptr inbounds i8, ptr %0, i64 %i.a
  store i8 0, ptr %i.b, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %i.a
  store i8 0, ptr %i.d, align 1
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, ptr noundef nonnull returned align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 64 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i8, ptr %0, align 1
  %i.d = sext i8 %i.c to i16
  %i.e = load i8, ptr %i.b, align 1               ; 2 uses
  %2 = zext nneg i8 %i.e to i32
  %i.f = icmp sgt i8 %i.e, 0
  br i1 %i.f, label %.lr.ph.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.08.i = phi i32 [ %i.h, %.lr.ph.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.d, ptr %i.a, align 2
  %i.g = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = add nuw nsw i32 %.08.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.h, %2
  br i1 %exitcond.not.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %.lr.ph.i, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit: ; preds = %.lr.ph.i, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = sext i8 %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.m = load i8, ptr %i.l, align 1               ; 2 uses
  %3 = zext nneg i8 %i.m to i32
  %i.n = icmp sgt i8 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.1, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.1

.lr.ph.i.1:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, %.lr.ph.i.1
  %.08.i.1 = phi i32 [ %i.p, %.lr.ph.i.1 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.k, ptr %i.a, align 2
  %i.o = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = add nuw nsw i32 %.08.i.1, 1              ; 2 uses
  %exitcond.not.i.1 = icmp eq i32 %i.p, %3
  br i1 %exitcond.not.i.1, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.1, label %.lr.ph.i.1, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.1: ; preds = %.lr.ph.i.1, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = sext i8 %i.r to i16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.u = load i8, ptr %i.t, align 1               ; 2 uses
  %4 = zext nneg i8 %i.u to i32
  %i.v = icmp sgt i8 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.2, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.2

.lr.ph.i.2:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.1, %.lr.ph.i.2
  %.08.i.2 = phi i32 [ %i.x, %.lr.ph.i.2 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.1 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.s, ptr %i.a, align 2
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = add nuw nsw i32 %.08.i.2, 1              ; 2 uses
  %exitcond.not.i.2 = icmp eq i32 %i.x, %4
  br i1 %exitcond.not.i.2, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.2, label %.lr.ph.i.2, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.2: ; preds = %.lr.ph.i.2, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = sext i8 %i.z to i16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.ac = load i8, ptr %i.ab, align 1             ; 2 uses
  %5 = zext nneg i8 %i.ac to i32
  %i.ad = icmp sgt i8 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i.3, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.3

.lr.ph.i.3:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.2, %.lr.ph.i.3
  %.08.i.3 = phi i32 [ %i.af, %.lr.ph.i.3 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.2 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.aa, ptr %i.a, align 2
  %i.ae = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.af = add nuw nsw i32 %.08.i.3, 1             ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.af, %5
  br i1 %exitcond.not.i.3, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.3, label %.lr.ph.i.3, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.3: ; preds = %.lr.ph.i.3, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.2
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = sext i8 %i.ah to i16
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ak = load i8, ptr %i.aj, align 1             ; 2 uses
  %6 = zext nneg i8 %i.ak to i32
  %i.al = icmp sgt i8 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.4, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.4

.lr.ph.i.4:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.3, %.lr.ph.i.4
  %.08.i.4 = phi i32 [ %i.an, %.lr.ph.i.4 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.3 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ai, ptr %i.a, align 2
  %i.am = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.an = add nuw nsw i32 %.08.i.4, 1             ; 2 uses
  %exitcond.not.i.4 = icmp eq i32 %i.an, %6
  br i1 %exitcond.not.i.4, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.4, label %.lr.ph.i.4, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.4: ; preds = %.lr.ph.i.4, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.3
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = sext i8 %i.ap to i16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %7 = zext nneg i8 %i.as to i32
  %i.at = icmp sgt i8 %i.as, 0
  br i1 %i.at, label %.lr.ph.i.5, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.5

.lr.ph.i.5:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.4, %.lr.ph.i.5
  %.08.i.5 = phi i32 [ %i.av, %.lr.ph.i.5 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.4 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.aq, ptr %i.a, align 2
  %i.au = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = add nuw nsw i32 %.08.i.5, 1             ; 2 uses
  %exitcond.not.i.5 = icmp eq i32 %i.av, %7
  br i1 %exitcond.not.i.5, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.5, label %.lr.ph.i.5, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.5: ; preds = %.lr.ph.i.5, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = sext i8 %i.ax to i16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.ba = load i8, ptr %i.az, align 1             ; 2 uses
  %8 = zext nneg i8 %i.ba to i32
  %i.bb = icmp sgt i8 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.i.6, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.6

.lr.ph.i.6:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.5, %.lr.ph.i.6
  %.08.i.6 = phi i32 [ %i.bd, %.lr.ph.i.6 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.5 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ay, ptr %i.a, align 2
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bd = add nuw nsw i32 %.08.i.6, 1             ; 2 uses
  %exitcond.not.i.6 = icmp eq i32 %i.bd, %8
  br i1 %exitcond.not.i.6, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.6, label %.lr.ph.i.6, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.6: ; preds = %.lr.ph.i.6, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.5
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bf = load i8, ptr %i.be, align 1
  %i.bg = sext i8 %i.bf to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %9 = zext nneg i8 %i.bi to i32
  %i.bj = icmp sgt i8 %i.bi, 0
  br i1 %i.bj, label %.lr.ph.i.7, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.7

.lr.ph.i.7:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.6, %.lr.ph.i.7
  %.08.i.7 = phi i32 [ %i.bl, %.lr.ph.i.7 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.6 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bg, ptr %i.a, align 2
  %i.bk = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bl = add nuw nsw i32 %.08.i.7, 1             ; 2 uses
  %exitcond.not.i.7 = icmp eq i32 %i.bl, %9
  br i1 %exitcond.not.i.7, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.7, label %.lr.ph.i.7, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.7: ; preds = %.lr.ph.i.7, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.6
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = sext i8 %i.bn to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bq = load i8, ptr %i.bp, align 1             ; 2 uses
  %10 = zext nneg i8 %i.bq to i32
  %i.br = icmp sgt i8 %i.bq, 0
  br i1 %i.br, label %.lr.ph.i.8, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.8

.lr.ph.i.8:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.7, %.lr.ph.i.8
  %.08.i.8 = phi i32 [ %i.bt, %.lr.ph.i.8 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.7 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bo, ptr %i.a, align 2
  %i.bs = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bt = add nuw nsw i32 %.08.i.8, 1             ; 2 uses
  %exitcond.not.i.8 = icmp eq i32 %i.bt, %10
  br i1 %exitcond.not.i.8, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.8, label %.lr.ph.i.8, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.8: ; preds = %.lr.ph.i.8, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.7
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = sext i8 %i.bv to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.by = load i8, ptr %i.bx, align 1             ; 2 uses
  %11 = zext nneg i8 %i.by to i32
  %i.bz = icmp sgt i8 %i.by, 0
  br i1 %i.bz, label %.lr.ph.i.9, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.9

.lr.ph.i.9:                                       ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.8, %.lr.ph.i.9
  %.08.i.9 = phi i32 [ %i.cb, %.lr.ph.i.9 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.8 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.bw, ptr %i.a, align 2
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cb = add nuw nsw i32 %.08.i.9, 1             ; 2 uses
  %exitcond.not.i.9 = icmp eq i32 %i.cb, %11
  br i1 %exitcond.not.i.9, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.9, label %.lr.ph.i.9, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.9: ; preds = %.lr.ph.i.9, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = sext i8 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.cg = load i8, ptr %i.cf, align 1             ; 2 uses
  %12 = zext nneg i8 %i.cg to i32
  %i.ch = icmp sgt i8 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.i.10, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.10

.lr.ph.i.10:                                      ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.9, %.lr.ph.i.10
  %.08.i.10 = phi i32 [ %i.cj, %.lr.ph.i.10 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.9 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ce, ptr %i.a, align 2
  %i.ci = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cj = add nuw nsw i32 %.08.i.10, 1            ; 2 uses
  %exitcond.not.i.10 = icmp eq i32 %i.cj, %12
  br i1 %exitcond.not.i.10, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.10, label %.lr.ph.i.10, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.10: ; preds = %.lr.ph.i.10, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.9
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = sext i8 %i.cl to i16
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.co = load i8, ptr %i.cn, align 1             ; 2 uses
  %13 = zext nneg i8 %i.co to i32
  %i.cp = icmp sgt i8 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.11, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.11

.lr.ph.i.11:                                      ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.10, %.lr.ph.i.11
  %.08.i.11 = phi i32 [ %i.cr, %.lr.ph.i.11 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.10 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.cm, ptr %i.a, align 2
  %i.cq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cr = add nuw nsw i32 %.08.i.11, 1            ; 2 uses
  %exitcond.not.i.11 = icmp eq i32 %i.cr, %13
  br i1 %exitcond.not.i.11, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.11, label %.lr.ph.i.11, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.11: ; preds = %.lr.ph.i.11, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.10
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ct = load i8, ptr %i.cs, align 1
  %i.cu = sext i8 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.cw = load i8, ptr %i.cv, align 1             ; 2 uses
  %14 = zext nneg i8 %i.cw to i32
  %i.cx = icmp sgt i8 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i.12, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.12

.lr.ph.i.12:                                      ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.11, %.lr.ph.i.12
  %.08.i.12 = phi i32 [ %i.cz, %.lr.ph.i.12 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.11 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.cu, ptr %i.a, align 2
  %i.cy = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cz = add nuw nsw i32 %.08.i.12, 1            ; 2 uses
  %exitcond.not.i.12 = icmp eq i32 %i.cz, %14
  br i1 %exitcond.not.i.12, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.12, label %.lr.ph.i.12, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.12: ; preds = %.lr.ph.i.12, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.11
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.db = load i8, ptr %i.da, align 1
  %i.dc = sext i8 %i.db to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.de = load i8, ptr %i.dd, align 1             ; 2 uses
  %15 = zext nneg i8 %i.de to i32
  %i.df = icmp sgt i8 %i.de, 0
  br i1 %i.df, label %.lr.ph.i.13, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.13

.lr.ph.i.13:                                      ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.12, %.lr.ph.i.13
  %.08.i.13 = phi i32 [ %i.dh, %.lr.ph.i.13 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.12 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.dc, ptr %i.a, align 2
  %i.dg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dh = add nuw nsw i32 %.08.i.13, 1            ; 2 uses
  %exitcond.not.i.13 = icmp eq i32 %i.dh, %15
  br i1 %exitcond.not.i.13, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.13, label %.lr.ph.i.13, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.13: ; preds = %.lr.ph.i.13, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.12
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.dj = load i8, ptr %i.di, align 1
  %i.dk = sext i8 %i.dj to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.dm = load i8, ptr %i.dl, align 1             ; 2 uses
  %16 = zext nneg i8 %i.dm to i32
  %i.dn = icmp sgt i8 %i.dm, 0
  br i1 %i.dn, label %.lr.ph.i.14, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.14

.lr.ph.i.14:                                      ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.13, %.lr.ph.i.14
  %.08.i.14 = phi i32 [ %i.dp, %.lr.ph.i.14 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.13 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.dk, ptr %i.a, align 2
  %i.do = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dp = add nuw nsw i32 %.08.i.14, 1            ; 2 uses
  %exitcond.not.i.14 = icmp eq i32 %i.dp, %16
  br i1 %exitcond.not.i.14, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.14, label %.lr.ph.i.14, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.14: ; preds = %.lr.ph.i.14, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.13
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 15
  %i.dr = load i8, ptr %i.dq, align 1
  %i.ds = sext i8 %i.dr to i16
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.du = load i8, ptr %i.dt, align 1             ; 2 uses
  %17 = zext nneg i8 %i.du to i32
  %i.dv = icmp sgt i8 %i.du, 0
  br i1 %i.dv, label %.lr.ph.i.15, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.15

.lr.ph.i.15:                                      ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.14, %.lr.ph.i.15
  %.08.i.15 = phi i32 [ %i.dx, %.lr.ph.i.15 ], [ 0, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.14 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.ds, ptr %i.a, align 2
  %i.dw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = add nuw nsw i32 %.08.i.15, 1            ; 2 uses
  %exitcond.not.i.15 = icmp eq i32 %i.dx, %17
  br i1 %exitcond.not.i.15, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.15, label %.lr.ph.i.15, !llvm.loop !63

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.15: ; preds = %.lr.ph.i.15, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit.14
  ret ptr %1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7811PtnSkeleton8copyFromERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(137) initializes((8, 137)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = load i8, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcher8copyFromEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) initializes((16, 144)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7811PtnSkeleton5clearEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(137) initializes((8, 136)) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7812FormatParserC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3216) initializes((0, 18), (72, 82), (136, 146), (200, 210), (264, 274), (328, 338), (392, 402), (456, 466), (520, 530), (584, 594), (648, 658), (712, 722), (776, 786), (840, 850), (904, 914), (968, 978), (1032, 1042), (1096, 1106), (1160, 1170), (1224, 1234), (1288, 1298), (1352, 1362), (1416, 1426), (1480, 1490), (1544, 1554), (1608, 1618), (1672, 1682), (1736, 1746), (1800, 1810), (1864, 1874), (1928, 1938), (1992, 2002), (2056, 2066), (2120, 2130), (2184, 2194), (2248, 2258), (2312, 2322), (2376, 2386), (2440, 2450), (2504, 2514), (2568, 2578), (2632, 2642), (2696, 2706), (2760, 2770), (2824, 2834), (2888, 2898), (2952, 2962), (3016, 3026), (3080, 3090), (3144, 3154), (3208, 3216)) %0) unnamed_addr #16 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FormatParserE, i64 16), ptr %0, align 8
  %.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.a, align 8
  %.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 2, ptr %i.b, align 8
  %.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 2, ptr %i.c, align 8
  %.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.d, align 8
  %.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 2, ptr %i.e, align 8
  %.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.f, align 8
  %.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i16 2, ptr %i.g, align 8
  %.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i16 2, ptr %i.h, align 8
  %.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.8, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i16 2, ptr %i.i, align 8
  %.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.9, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i16 2, ptr %i.j, align 8
  %.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.10, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 2, ptr %i.k, align 8
  %.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.11, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i16 2, ptr %i.l, align 8
  %.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.12, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i16 2, ptr %i.m, align 8
  %.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.13, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i16 2, ptr %i.n, align 8
  %.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.14, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i16 2, ptr %i.o, align 8
  %.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.15, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i16 2, ptr %i.p, align 8
  %.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.16, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i16 2, ptr %i.q, align 8
  %.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.17, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i16 2, ptr %i.r, align 8
  %.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.18, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i16 2, ptr %i.s, align 8
  %.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.19, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i16 2, ptr %i.t, align 8
  %.ptr.20 = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.20, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i16 2, ptr %i.u, align 8
  %.ptr.21 = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.21, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store i16 2, ptr %i.v, align 8
  %.ptr.22 = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.22, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i16 2, ptr %i.w, align 8
  %.ptr.23 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.23, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i16 2, ptr %i.x, align 8
  %.ptr.24 = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.24, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i16 2, ptr %i.y, align 8
  %.ptr.25 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.25, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i16 2, ptr %i.z, align 8
  %.ptr.26 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.26, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i16 2, ptr %i.aa, align 8
  %.ptr.27 = getelementptr inbounds nuw i8, ptr %0, i64 1736
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.27, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1744
  store i16 2, ptr %i.ab, align 8
  %.ptr.28 = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.28, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i16 2, ptr %i.ac, align 8
  %.ptr.29 = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.29, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1872
  store i16 2, ptr %i.ad, align 8
  %.ptr.30 = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.30, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i16 2, ptr %i.ae, align 8
  %.ptr.31 = getelementptr inbounds nuw i8, ptr %0, i64 1992
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.31, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store i16 2, ptr %i.af, align 8
  %.ptr.32 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.32, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store i16 2, ptr %i.ag, align 8
  %.ptr.33 = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.33, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2128
end_hunk_2
