Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/dtptngen?download=true
inline.NumInlined: 824
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE:bb.a
  %i.o = load i32, ptr %i.g, align 8              ; 2 uses
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.g, align 8
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [64 x i8], ptr %i.h, i64 %i.q
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.r, ptr noundef nonnull align 8 dereferenceable(64) %4) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.t = load i32, ptr %i.a, align 4
  %i.u = add nsw i32 %i.t, %.0.i
  %i.v = load i32, ptr %i.g, align 8
  %i.w = icmp slt i32 %i.v, 50
  br i1 %i.w, label %bb.b, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit.thread, !llvm.loop !5

_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.b, align 4
  br label %.lr.ph

_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %.pre = load i32, ptr %i.g, align 8
  %i.x = icmp sgt i32 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.b, align 4
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit.thread, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread
  %storemerge5590 = phi i32 [ 0, %.lr.ph ], [ %i.ci, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread ] ; 7 uses
  %i.ab = sext i32 %storemerge5590 to i64
  %i.ac = getelementptr inbounds [64 x i8], ptr %i.h, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8            ; 3 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = select i1 %i.af, i32 %i.aj, i32 %i.ah   ; 5 uses
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.d
  %i.al = and i16 %i.ae, 2
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 10
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %.not.i.i.i.i, ptr %i.ao, ptr %i.am ; 2 uses
  %i.aq = load i16, ptr %i.ap, align 2            ; 5 uses
  %.not75 = icmp eq i16 %i.aq, 39
  br i1 %.not75, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i

bb.e:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  store i16 2, ptr %i.aa, align 8
  call void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %2, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %.pre107 = load i32, ptr %i.b, align 4
  br label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i:     ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %.not3043.i.i = icmp sgt i32 %i.ak, 1
  br i1 %.not3043.i.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i, label %.critedge.outer.i.i.preheader

.critedge.outer.i.i.preheader:                    ; preds = %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  br label %.critedge.outer.i.i

_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ak to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, !llvm.loop !6

_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i:   ; preds = %bb.f, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i
  %i.as = load i16, ptr %i.ar, align 2
  %.not.i.i = icmp eq i16 %i.aq, %i.as
  br i1 %.not.i.i, label %bb.f, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.critedge.i.i
  %indvars.iv56.i.i = phi i64 [ %i.bd, %.lr.ph.preheader.i.i ], [ %indvars.iv.next57.i.i, %.critedge.i.i ] ; 5 uses
  %.in.i.i = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %indvars.iv56.i.i
  %i.at = load i16, ptr %.in.i.i, align 16
  %.not33.i.i = icmp eq i16 %i.at, %i.aq
  br i1 %.not33.i.i, label %bb.g, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %i.au = and i64 %indvars.iv.next57.i.i, 4294967295
  %exitcond59.i.i = icmp eq i64 %i.au, 86
  br i1 %exitcond59.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.i.i, !llvm.loop !7

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.av = trunc nsw i64 %indvars.iv56.i.i to i32
  %i.aw = add nsw i32 %i.av, 1                    ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.ax ; 2 uses
  %i.az = load i16, ptr %i.ay, align 16
  %.not34.i.i = icmp eq i16 %i.aq, %i.az
  br i1 %.not34.i.i, label %bb.h, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = sext i16 %i.bb to i32
  %.not35.i.i = icmp slt i32 %i.ak, %i.bc
  br i1 %.not35.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, label %.critedge.outer.i.i, !llvm.loop !7

.critedge.outer.i.i:                              ; preds = %.critedge.outer.i.i.preheader, %bb.h
  %.024.ph.i.i = phi i32 [ %i.aw, %bb.h ], [ 0, %.critedge.outer.i.i.preheader ] ; 2 uses
  %.not3145.i.i = icmp eq i32 %.024.ph.i.i, 86
  br i1 %.not3145.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.outer.i.i
  %i.bd = sext i32 %.024.ph.i.i to i64
  br label %.lr.ph.i.i

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit: ; preds = %bb.g, %bb.h
  %i.be = icmp slt i64 %indvars.iv56.i.i, 0
  br i1 %i.be, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit

_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit: ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.bf = and i64 %indvars.iv56.i.i, 4294967295
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.bf ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = trunc i16 %i.aq to i8
  %i.bk = sext i32 %i.bi to i64                   ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.d, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1
  %i.bm = trunc i32 %i.ak to i8
  %i.bn = getelementptr inbounds i8, ptr %i.y, i64 %i.bk
  store i8 %i.bm, ptr %i.bn, align 1
  %i.bo = load i16, ptr %i.bg, align 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bg, i64 10
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = trunc i16 %i.bo to i8
  %i.bs = getelementptr inbounds i8, ptr %i.e, i64 %i.bk
  store i8 %i.br, ptr %i.bs, align 1
  %i.bt = trunc i16 %i.bq to i8
  %i.bu = getelementptr inbounds i8, ptr %i.z, i64 %i.bk
  store i8 %i.bt, ptr %i.bu, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bw = load i16, ptr %i.bv, align 8            ; 3 uses
  %i.bx = icmp sgt i16 %i.bw, 0
  br i1 %i.bx, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit
  %i.by = load i16, ptr %i.ad, align 8            ; 2 uses
  %i.bz = icmp slt i16 %i.by, 0
  %i.ca = ashr i16 %i.by, 5
  %i.cb = load i32, ptr %i.ai, align 4
  %i.cc = trunc i32 %i.cb to i16
  %i.cd = select i1 %i.bz, i16 %i.cc, i16 %i.ca
  %i.ce = add i16 %i.cd, %i.bw
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit
  %.0 = phi i16 [ %i.ce, %bb.i ], [ %i.bw, %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit ]
  %i.cf = sext i16 %.0 to i32
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bk
  store i32 %i.cf, ptr %i.cg, align 4
  br label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, %.critedge.outer.i.i, %.critedge.i.i, %bb.d, %bb.j, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, %bb.e
  %i.ch = phi i32 [ %storemerge5590, %.critedge.outer.i.i ], [ %storemerge5590, %.critedge.i.i ], [ %.pre107, %bb.e ], [ %storemerge5590, %bb.d ], [ %storemerge5590, %bb.j ], [ %storemerge5590, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit ], [ %storemerge5590, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i ]
  %i.ci = add nsw i32 %i.ch, 1                    ; 3 uses
  store i32 %i.ci, ptr %i.b, align 4
  %i.cj = load i32, ptr %i.g, align 8
  %i.ck = icmp slt i32 %i.ci, %i.cj
  br i1 %i.ck, label %bb.d, label %._crit_edge, !llvm.loop !56

._crit_edge:                                      ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.cm = load i8, ptr %i.cl, align 4
  %.not = icmp eq i8 %i.cm, 0
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 102
  %i.co = load i8, ptr %i.cn, align 2
  %.not71 = icmp eq i8 %i.co, 0
  br i1 %.not71, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 101 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1
  %.not72 = icmp eq i8 %i.cq, 0
  br i1 %.not72, label %.preheader76.preheader, label %bb.m

.preheader76.preheader:                           ; preds = %bb.l
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 85
  store i8 115, ptr %i.cr, align 1
  store i8 1, ptr %i.cp, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 117
  store i8 115, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 133
  store i8 1, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 257, ptr %i.cu, align 4
  br label %bb.m

bb.m:                                             ; preds = %.preheader76.preheader, %bb.l, %bb.k, %._crit_edge
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 99
  %i.cw = load i8, ptr %i.cv, align 1
  %.not73 = icmp eq i8 %i.cw, 0
  br i1 %.not73, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 83
  %i.cy = load i8, ptr %i.cx, align 1
  switch i8 %i.cy, label %bb.p [
    i8 104, label %bb.o
    i8 75, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n, %bb.n
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 98 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 2
  %.not74 = icmp eq i8 %i.da, 0
  br i1 %.not74, label %.preheader.preheader, label %bb.q

.preheader.preheader:                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 97, ptr %i.db, align 2
  store i8 1, ptr %i.cz, align 2
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 114
  store i8 97, ptr %i.dc, align 2
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 130
  store i8 1, ptr %i.dd, align 2
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 -259, ptr %i.de, align 8
  store i8 1, ptr %i.f, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 0, ptr %i.df, align 2
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 98
  store i8 0, ptr %i.dg, align 2
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 114
  store i8 0, ptr %i.dh, align 2
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 130
  store i8 0, ptr %i.di, align 2
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.dj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.preheader.preheader, %bb.o, %bb.m
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dk, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dn, i64 16, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.do, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dp, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dq, i64 16, i1 false)
  %i.dr = load i8, ptr %i.f, align 8
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.dr, ptr %i.ds, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7811PtnSkeleton11getSkeletonEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) local_unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load i8, ptr %i.e, align 8
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %i.a, align 8              ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.m) #25 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.n, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17staticGetSkeletonERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::FormatParser", align 8 ; 107 uses
  %4 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FormatParserE, i64 16), ptr %3, align 8
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.i, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 2, ptr %i.a, align 8
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i16 2, ptr %i.b, align 8
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2.i, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i16 2, ptr %i.c, align 8
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i16 2, ptr %i.d, align 8
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i16 2, ptr %i.e, align 8
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i16 2, ptr %i.f, align 8
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %3, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 400
  store i16 2, ptr %i.g, align 8
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %3, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 464
  store i16 2, ptr %i.h, align 8
  %.ptr.8.i = getelementptr inbounds nuw i8, ptr %3, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.8.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i16 2, ptr %i.i, align 8
  %.ptr.9.i = getelementptr inbounds nuw i8, ptr %3, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.9.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i16 2, ptr %i.j, align 8
  %.ptr.10.i = getelementptr inbounds nuw i8, ptr %3, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.10.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i16 2, ptr %i.k, align 8
  %.ptr.11.i = getelementptr inbounds nuw i8, ptr %3, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.11.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i16 2, ptr %i.l, align 8
  %.ptr.12.i = getelementptr inbounds nuw i8, ptr %3, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.12.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 784
  store i16 2, ptr %i.m, align 8
  %.ptr.13.i = getelementptr inbounds nuw i8, ptr %3, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.13.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 848
  store i16 2, ptr %i.n, align 8
  %.ptr.14.i = getelementptr inbounds nuw i8, ptr %3, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.14.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 912
  store i16 2, ptr %i.o, align 8
  %.ptr.15.i = getelementptr inbounds nuw i8, ptr %3, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.15.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 976
  store i16 2, ptr %i.p, align 8
  %.ptr.16.i = getelementptr inbounds nuw i8, ptr %3, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.16.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1040
  store i16 2, ptr %i.q, align 8
  %.ptr.17.i = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.17.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i16 2, ptr %i.r, align 8
  %.ptr.18.i = getelementptr inbounds nuw i8, ptr %3, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.18.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 1168
  store i16 2, ptr %i.s, align 8
  %.ptr.19.i = getelementptr inbounds nuw i8, ptr %3, i64 1224
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.19.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 1232
  store i16 2, ptr %i.t, align 8
  %.ptr.20.i = getelementptr inbounds nuw i8, ptr %3, i64 1288
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.20.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1296
  store i16 2, ptr %i.u, align 8
  %.ptr.21.i = getelementptr inbounds nuw i8, ptr %3, i64 1352
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.21.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1360
  store i16 2, ptr %i.v, align 8
  %.ptr.22.i = getelementptr inbounds nuw i8, ptr %3, i64 1416
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.22.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1424
  store i16 2, ptr %i.w, align 8
  %.ptr.23.i = getelementptr inbounds nuw i8, ptr %3, i64 1480
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.23.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1488
  store i16 2, ptr %i.x, align 8
  %.ptr.24.i = getelementptr inbounds nuw i8, ptr %3, i64 1544
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.24.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1552
  store i16 2, ptr %i.y, align 8
  %.ptr.25.i = getelementptr inbounds nuw i8, ptr %3, i64 1608
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.25.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1616
  store i16 2, ptr %i.z, align 8
  %.ptr.26.i = getelementptr inbounds nuw i8, ptr %3, i64 1672
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.26.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 1680
  store i16 2, ptr %i.aa, align 8
  %.ptr.27.i = getelementptr inbounds nuw i8, ptr %3, i64 1736
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.27.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 1744
  store i16 2, ptr %i.ab, align 8
  %.ptr.28.i = getelementptr inbounds nuw i8, ptr %3, i64 1800
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.28.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 1808
  store i16 2, ptr %i.ac, align 8
  %.ptr.29.i = getelementptr inbounds nuw i8, ptr %3, i64 1864
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.29.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1872
  store i16 2, ptr %i.ad, align 8
  %.ptr.30.i = getelementptr inbounds nuw i8, ptr %3, i64 1928
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.30.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1936
  store i16 2, ptr %i.ae, align 8
  %.ptr.31.i = getelementptr inbounds nuw i8, ptr %3, i64 1992
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.31.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 2000
  store i16 2, ptr %i.af, align 8
  %.ptr.32.i = getelementptr inbounds nuw i8, ptr %3, i64 2056
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.32.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 2064
  store i16 2, ptr %i.ag, align 8
  %.ptr.33.i = getelementptr inbounds nuw i8, ptr %3, i64 2120
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.33.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2128
  store i16 2, ptr %i.ah, align 8
  %.ptr.34.i = getelementptr inbounds nuw i8, ptr %3, i64 2184
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.34.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2192
  store i16 2, ptr %i.ai, align 8
  %.ptr.35.i = getelementptr inbounds nuw i8, ptr %3, i64 2248
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.35.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 2256
  store i16 2, ptr %i.aj, align 8
  %.ptr.36.i = getelementptr inbounds nuw i8, ptr %3, i64 2312
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.36.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 2320
  store i16 2, ptr %i.ak, align 8
  %.ptr.37.i = getelementptr inbounds nuw i8, ptr %3, i64 2376
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.37.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2384
  store i16 2, ptr %i.al, align 8
  %.ptr.38.i = getelementptr inbounds nuw i8, ptr %3, i64 2440
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.38.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 2448
  store i16 2, ptr %i.am, align 8
  %.ptr.39.i = getelementptr inbounds nuw i8, ptr %3, i64 2504
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.39.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 2512
  store i16 2, ptr %i.an, align 8
  %.ptr.40.i = getelementptr inbounds nuw i8, ptr %3, i64 2568
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.40.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 2576
  store i16 2, ptr %i.ao, align 8
  %.ptr.41.i = getelementptr inbounds nuw i8, ptr %3, i64 2632
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.41.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2640
  store i16 2, ptr %i.ap, align 8
  %.ptr.42.i = getelementptr inbounds nuw i8, ptr %3, i64 2696
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.42.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2704
  store i16 2, ptr %i.aq, align 8
  %.ptr.43.i = getelementptr inbounds nuw i8, ptr %3, i64 2760
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.43.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 2768
  store i16 2, ptr %i.ar, align 8
  %.ptr.44.i = getelementptr inbounds nuw i8, ptr %3, i64 2824
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.44.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 2832
  store i16 2, ptr %i.as, align 8
  %.ptr.45.i = getelementptr inbounds nuw i8, ptr %3, i64 2888
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.45.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2896
  store i16 2, ptr %i.at, align 8
  %.ptr.46.i = getelementptr inbounds nuw i8, ptr %3, i64 2952
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.46.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 2960
  store i16 2, ptr %i.au, align 8
  %.ptr.47.i = getelementptr inbounds nuw i8, ptr %3, i64 3016
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.47.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 3024
  store i16 2, ptr %i.av, align 8
  %.ptr.48.i = getelementptr inbounds nuw i8, ptr %3, i64 3080
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.48.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 3088
  store i16 2, ptr %i.aw, align 8
  %.ptr.49.i = getelementptr inbounds nuw i8, ptr %3, i64 3144
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.49.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 3152
  store i16 2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 3212
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 3208
  store i32 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %5, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ba, i8 0, i64 65, i1 false)
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(137) %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !alias.scope !59
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.bb, align 8, !alias.scope !59
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  %i.bd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 0 uses
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.bf = load i8, ptr %i.be, align 8, !noalias !59
  %.not.i = icmp eq i8 %i.bf, 0
  br i1 %.not.i, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bg = load i16, ptr %i.bb, align 8, !alias.scope !59 ; 2 uses
  %i.bh = icmp slt i16 %i.bg, 0
  %i.bi = ashr i16 %i.bg, 5
  %i.bj = sext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !alias.scope !59
  %i.bm = select i1 %i.bh, i32 %i.bl, i32 %i.bj
  %i.bn = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.bm) #25 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, -1
  br i1 %i.bo, label %bb.c, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

bb.c:                                             ; preds = %bb.b
  %i.bp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.bn, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit:     ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN6icu_7812FormatParserD2Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator15getBaseSkeletonERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::FormatParser", align 8 ; 107 uses
  %5 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 3 uses
  %6 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FormatParserE, i64 16), ptr %4, align 8
  %.ptr.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.i, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i16 2, ptr %i.a, align 8
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i16 2, ptr %i.b, align 8
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2.i, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i16 2, ptr %i.c, align 8
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 208
  store i16 2, ptr %i.d, align 8
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %4, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 272
  store i16 2, ptr %i.e, align 8
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %4, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 336
  store i16 2, ptr %i.f, align 8
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %4, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 400
  store i16 2, ptr %i.g, align 8
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %4, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 464
  store i16 2, ptr %i.h, align 8
  %.ptr.8.i = getelementptr inbounds nuw i8, ptr %4, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.8.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 528
  store i16 2, ptr %i.i, align 8
  %.ptr.9.i = getelementptr inbounds nuw i8, ptr %4, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.9.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 592
  store i16 2, ptr %i.j, align 8
  %.ptr.10.i = getelementptr inbounds nuw i8, ptr %4, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.10.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 656
  store i16 2, ptr %i.k, align 8
  %.ptr.11.i = getelementptr inbounds nuw i8, ptr %4, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.11.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 720
  store i16 2, ptr %i.l, align 8
  %.ptr.12.i = getelementptr inbounds nuw i8, ptr %4, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.12.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 784
  store i16 2, ptr %i.m, align 8
  %.ptr.13.i = getelementptr inbounds nuw i8, ptr %4, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.13.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 848
  store i16 2, ptr %i.n, align 8
  %.ptr.14.i = getelementptr inbounds nuw i8, ptr %4, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.14.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 912
  store i16 2, ptr %i.o, align 8
  %.ptr.15.i = getelementptr inbounds nuw i8, ptr %4, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.15.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 976
  store i16 2, ptr %i.p, align 8
  %.ptr.16.i = getelementptr inbounds nuw i8, ptr %4, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.16.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1040
  store i16 2, ptr %i.q, align 8
  %.ptr.17.i = getelementptr inbounds nuw i8, ptr %4, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.17.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1104
  store i16 2, ptr %i.r, align 8
  %.ptr.18.i = getelementptr inbounds nuw i8, ptr %4, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.18.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 1168
  store i16 2, ptr %i.s, align 8
  %.ptr.19.i = getelementptr inbounds nuw i8, ptr %4, i64 1224
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.19.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 1232
  store i16 2, ptr %i.t, align 8
  %.ptr.20.i = getelementptr inbounds nuw i8, ptr %4, i64 1288
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.20.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 1296
  store i16 2, ptr %i.u, align 8
  %.ptr.21.i = getelementptr inbounds nuw i8, ptr %4, i64 1352
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.21.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 1360
  store i16 2, ptr %i.v, align 8
  %.ptr.22.i = getelementptr inbounds nuw i8, ptr %4, i64 1416
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.22.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 1424
  store i16 2, ptr %i.w, align 8
  %.ptr.23.i = getelementptr inbounds nuw i8, ptr %4, i64 1480
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.23.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 1488
  store i16 2, ptr %i.x, align 8
  %.ptr.24.i = getelementptr inbounds nuw i8, ptr %4, i64 1544
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.24.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 1552
  store i16 2, ptr %i.y, align 8
  %.ptr.25.i = getelementptr inbounds nuw i8, ptr %4, i64 1608
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.25.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 1616
  store i16 2, ptr %i.z, align 8
  %.ptr.26.i = getelementptr inbounds nuw i8, ptr %4, i64 1672
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.26.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 1680
  store i16 2, ptr %i.aa, align 8
  %.ptr.27.i = getelementptr inbounds nuw i8, ptr %4, i64 1736
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.27.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 1744
  store i16 2, ptr %i.ab, align 8
  %.ptr.28.i = getelementptr inbounds nuw i8, ptr %4, i64 1800
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.28.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1808
  store i16 2, ptr %i.ac, align 8
  %.ptr.29.i = getelementptr inbounds nuw i8, ptr %4, i64 1864
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.29.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 1872
  store i16 2, ptr %i.ad, align 8
  %.ptr.30.i = getelementptr inbounds nuw i8, ptr %4, i64 1928
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.30.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 1936
  store i16 2, ptr %i.ae, align 8
  %.ptr.31.i = getelementptr inbounds nuw i8, ptr %4, i64 1992
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.31.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 2000
  store i16 2, ptr %i.af, align 8
  %.ptr.32.i = getelementptr inbounds nuw i8, ptr %4, i64 2056
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.32.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 2064
  store i16 2, ptr %i.ag, align 8
  %.ptr.33.i = getelementptr inbounds nuw i8, ptr %4, i64 2120
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.33.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 2128
  store i16 2, ptr %i.ah, align 8
  %.ptr.34.i = getelementptr inbounds nuw i8, ptr %4, i64 2184
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.34.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 2192
  store i16 2, ptr %i.ai, align 8
  %.ptr.35.i = getelementptr inbounds nuw i8, ptr %4, i64 2248
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.35.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 2256
  store i16 2, ptr %i.aj, align 8
  %.ptr.36.i = getelementptr inbounds nuw i8, ptr %4, i64 2312
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.36.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 2320
  store i16 2, ptr %i.ak, align 8
  %.ptr.37.i = getelementptr inbounds nuw i8, ptr %4, i64 2376
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.37.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 2384
  store i16 2, ptr %i.al, align 8
  %.ptr.38.i = getelementptr inbounds nuw i8, ptr %4, i64 2440
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.38.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 2448
  store i16 2, ptr %i.am, align 8
  %.ptr.39.i = getelementptr inbounds nuw i8, ptr %4, i64 2504
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.39.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 2512
  store i16 2, ptr %i.an, align 8
  %.ptr.40.i = getelementptr inbounds nuw i8, ptr %4, i64 2568
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.40.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 2576
  store i16 2, ptr %i.ao, align 8
  %.ptr.41.i = getelementptr inbounds nuw i8, ptr %4, i64 2632
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.41.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 2640
  store i16 2, ptr %i.ap, align 8
  %.ptr.42.i = getelementptr inbounds nuw i8, ptr %4, i64 2696
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.42.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 2704
  store i16 2, ptr %i.aq, align 8
  %.ptr.43.i = getelementptr inbounds nuw i8, ptr %4, i64 2760
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.43.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 2768
  store i16 2, ptr %i.ar, align 8
  %.ptr.44.i = getelementptr inbounds nuw i8, ptr %4, i64 2824
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.44.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 2832
  store i16 2, ptr %i.as, align 8
  %.ptr.45.i = getelementptr inbounds nuw i8, ptr %4, i64 2888
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.45.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 2896
  store i16 2, ptr %i.at, align 8
  %.ptr.46.i = getelementptr inbounds nuw i8, ptr %4, i64 2952
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.46.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 2960
  store i16 2, ptr %i.au, align 8
  %.ptr.47.i = getelementptr inbounds nuw i8, ptr %4, i64 3016
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.47.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 3024
  store i16 2, ptr %i.av, align 8
  %.ptr.48.i = getelementptr inbounds nuw i8, ptr %4, i64 3080
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.48.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 3088
  store i16 2, ptr %i.aw, align 8
  %.ptr.49.i = getelementptr inbounds nuw i8, ptr %4, i64 3144
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.49.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 3152
  store i16 2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 3212
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 3208
  store i32 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %6, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ba, i8 0, i64 65, i1 false)
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %5, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(137) %6)
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !alias.scope !62
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.bb, align 8, !alias.scope !62
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 104
  %i.bd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  %i.be = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.bg = load i8, ptr %i.bf, align 8, !noalias !62
  %.not.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i, label %_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = load i16, ptr %i.bb, align 8, !alias.scope !62 ; 2 uses
  %i.bi = icmp slt i16 %i.bh, 0
  %i.bj = ashr i16 %i.bh, 5
  %i.bk = sext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !62
  %i.bn = select i1 %i.bi, i32 %i.bm, i32 %i.bk
  %i.bo = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.bn) #25 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.c, label %_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit

bb.c:                                             ; preds = %bb.b
  %i.bq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.bo, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit

_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6icu_7812FormatParserD2Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) local_unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.c = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load i8, ptr %i.e, align 8
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i16, ptr %i.a, align 8              ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = tail call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.m) #25 ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.n, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator21staticGetBaseSkeletonERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::FormatParser", align 8 ; 107 uses
  %4 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 3 uses
  %5 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FormatParserE, i64 16), ptr %3, align 8
  %.ptr.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.i, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 2, ptr %i.a, align 8
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %3, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.1.i, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 80
  store i16 2, ptr %i.b, align 8
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.2.i, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 144
  store i16 2, ptr %i.c, align 8
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %3, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.3.i, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 208
  store i16 2, ptr %i.d, align 8
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %3, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.4.i, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 272
  store i16 2, ptr %i.e, align 8
  %.ptr.5.i = getelementptr inbounds nuw i8, ptr %3, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.5.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 336
  store i16 2, ptr %i.f, align 8
  %.ptr.6.i = getelementptr inbounds nuw i8, ptr %3, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.6.i, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 400
  store i16 2, ptr %i.g, align 8
  %.ptr.7.i = getelementptr inbounds nuw i8, ptr %3, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.7.i, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 464
  store i16 2, ptr %i.h, align 8
  %.ptr.8.i = getelementptr inbounds nuw i8, ptr %3, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.8.i, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 528
  store i16 2, ptr %i.i, align 8
  %.ptr.9.i = getelementptr inbounds nuw i8, ptr %3, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.9.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 592
  store i16 2, ptr %i.j, align 8
  %.ptr.10.i = getelementptr inbounds nuw i8, ptr %3, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.10.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 656
  store i16 2, ptr %i.k, align 8
  %.ptr.11.i = getelementptr inbounds nuw i8, ptr %3, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.11.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 720
  store i16 2, ptr %i.l, align 8
  %.ptr.12.i = getelementptr inbounds nuw i8, ptr %3, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.12.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 784
  store i16 2, ptr %i.m, align 8
  %.ptr.13.i = getelementptr inbounds nuw i8, ptr %3, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.13.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 848
  store i16 2, ptr %i.n, align 8
  %.ptr.14.i = getelementptr inbounds nuw i8, ptr %3, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.14.i, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 912
  store i16 2, ptr %i.o, align 8
  %.ptr.15.i = getelementptr inbounds nuw i8, ptr %3, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.15.i, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 976
  store i16 2, ptr %i.p, align 8
  %.ptr.16.i = getelementptr inbounds nuw i8, ptr %3, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.16.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 1040
  store i16 2, ptr %i.q, align 8
  %.ptr.17.i = getelementptr inbounds nuw i8, ptr %3, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.17.i, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i16 2, ptr %i.r, align 8
  %.ptr.18.i = getelementptr inbounds nuw i8, ptr %3, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.18.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 1168
  store i16 2, ptr %i.s, align 8
  %.ptr.19.i = getelementptr inbounds nuw i8, ptr %3, i64 1224
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.19.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 1232
  store i16 2, ptr %i.t, align 8
  %.ptr.20.i = getelementptr inbounds nuw i8, ptr %3, i64 1288
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.20.i, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 1296
  store i16 2, ptr %i.u, align 8
  %.ptr.21.i = getelementptr inbounds nuw i8, ptr %3, i64 1352
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.21.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1360
  store i16 2, ptr %i.v, align 8
  %.ptr.22.i = getelementptr inbounds nuw i8, ptr %3, i64 1416
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.22.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 1424
  store i16 2, ptr %i.w, align 8
  %.ptr.23.i = getelementptr inbounds nuw i8, ptr %3, i64 1480
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.23.i, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 1488
  store i16 2, ptr %i.x, align 8
  %.ptr.24.i = getelementptr inbounds nuw i8, ptr %3, i64 1544
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.24.i, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1552
  store i16 2, ptr %i.y, align 8
  %.ptr.25.i = getelementptr inbounds nuw i8, ptr %3, i64 1608
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.25.i, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 1616
  store i16 2, ptr %i.z, align 8
  %.ptr.26.i = getelementptr inbounds nuw i8, ptr %3, i64 1672
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.26.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 1680
  store i16 2, ptr %i.aa, align 8
  %.ptr.27.i = getelementptr inbounds nuw i8, ptr %3, i64 1736
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.27.i, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 1744
  store i16 2, ptr %i.ab, align 8
  %.ptr.28.i = getelementptr inbounds nuw i8, ptr %3, i64 1800
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.28.i, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 1808
  store i16 2, ptr %i.ac, align 8
  %.ptr.29.i = getelementptr inbounds nuw i8, ptr %3, i64 1864
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.29.i, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1872
  store i16 2, ptr %i.ad, align 8
  %.ptr.30.i = getelementptr inbounds nuw i8, ptr %3, i64 1928
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.30.i, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 1936
  store i16 2, ptr %i.ae, align 8
  %.ptr.31.i = getelementptr inbounds nuw i8, ptr %3, i64 1992
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.31.i, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 2000
  store i16 2, ptr %i.af, align 8
  %.ptr.32.i = getelementptr inbounds nuw i8, ptr %3, i64 2056
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.32.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 2064
  store i16 2, ptr %i.ag, align 8
  %.ptr.33.i = getelementptr inbounds nuw i8, ptr %3, i64 2120
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.33.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 2128
  store i16 2, ptr %i.ah, align 8
  %.ptr.34.i = getelementptr inbounds nuw i8, ptr %3, i64 2184
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.34.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 2192
  store i16 2, ptr %i.ai, align 8
  %.ptr.35.i = getelementptr inbounds nuw i8, ptr %3, i64 2248
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.35.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 2256
  store i16 2, ptr %i.aj, align 8
  %.ptr.36.i = getelementptr inbounds nuw i8, ptr %3, i64 2312
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.36.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 2320
  store i16 2, ptr %i.ak, align 8
  %.ptr.37.i = getelementptr inbounds nuw i8, ptr %3, i64 2376
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.37.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 2384
  store i16 2, ptr %i.al, align 8
  %.ptr.38.i = getelementptr inbounds nuw i8, ptr %3, i64 2440
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.38.i, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 2448
  store i16 2, ptr %i.am, align 8
  %.ptr.39.i = getelementptr inbounds nuw i8, ptr %3, i64 2504
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.39.i, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 2512
  store i16 2, ptr %i.an, align 8
  %.ptr.40.i = getelementptr inbounds nuw i8, ptr %3, i64 2568
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.40.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 2576
  store i16 2, ptr %i.ao, align 8
  %.ptr.41.i = getelementptr inbounds nuw i8, ptr %3, i64 2632
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.41.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 2640
  store i16 2, ptr %i.ap, align 8
  %.ptr.42.i = getelementptr inbounds nuw i8, ptr %3, i64 2696
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.42.i, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 2704
  store i16 2, ptr %i.aq, align 8
  %.ptr.43.i = getelementptr inbounds nuw i8, ptr %3, i64 2760
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.43.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 2768
  store i16 2, ptr %i.ar, align 8
  %.ptr.44.i = getelementptr inbounds nuw i8, ptr %3, i64 2824
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.44.i, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 2832
  store i16 2, ptr %i.as, align 8
  %.ptr.45.i = getelementptr inbounds nuw i8, ptr %3, i64 2888
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.45.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2896
  store i16 2, ptr %i.at, align 8
  %.ptr.46.i = getelementptr inbounds nuw i8, ptr %3, i64 2952
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.46.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 2960
  store i16 2, ptr %i.au, align 8
  %.ptr.47.i = getelementptr inbounds nuw i8, ptr %3, i64 3016
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.47.i, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 3024
  store i16 2, ptr %i.av, align 8
  %.ptr.48.i = getelementptr inbounds nuw i8, ptr %3, i64 3080
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.48.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 3088
  store i16 2, ptr %i.aw, align 8
  %.ptr.49.i = getelementptr inbounds nuw i8, ptr %3, i64 3144
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.49.i, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 3152
  store i16 2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 3212
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 3208
  store i32 0, ptr %i.az, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %5, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.ba, i8 0, i64 65, i1 false)
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(137) %5)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !alias.scope !65
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.bb, align 8, !alias.scope !65
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 104
  %i.bd = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(64) %0) ; 0 uses
  %i.be = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %0) #25 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 136
  %i.bg = load i8, ptr %i.bf, align 8, !noalias !65
  %.not.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i, label %_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bh = load i16, ptr %i.bb, align 8, !alias.scope !65 ; 2 uses
  %i.bi = icmp slt i16 %i.bh, 0
  %i.bj = ashr i16 %i.bh, 5
  %i.bk = sext i16 %i.bj to i32
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !alias.scope !65
  %i.bn = select i1 %i.bi, i32 %i.bm, i32 %i.bk
  %i.bo = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.bn) #25 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.c, label %_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit

bb.c:                                             ; preds = %bb.b
  %i.bq = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.bo, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit

_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @_ZN6icu_7812FormatParserD2Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

declare ptr @ures_open_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK6icu_786Locale11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator20getCalendarTypeToUseERKNS_6LocaleERNS_10CharStringER10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(60) initializes((56, 60)) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca [258 x i8], align 16              ; 5 uses
  %4 = alloca %"class.icu_78::CharString", align 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 0, ptr %i.c, align 8
  %i.d = load ptr, ptr %2, align 8
  store i8 0, ptr %i.d, align 1
  %i.e = tail call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef nonnull @.str.10, i32 noundef -1, ptr noundef nonnull align 4 dereferenceable(4) %3) #25 ; 0 uses
  %i.f = load i32, ptr %3, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.h = tail call noundef ptr @_ZNK6icu_786Locale7getNameEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #25
  %i.i = call i32 @ures_getFunctionalEquivalent_78(ptr noundef nonnull %i.b, i32 noundef 258, ptr noundef null, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.11, ptr noundef %i.h, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull %i.a) #25 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 257
  store i8 0, ptr %i.j, align 1
  %i.k = load i32, ptr %i.a, align 4              ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::CharString") align 8 %4, ptr noundef nonnull %i.b, i64 8, ptr nonnull @.str.11, ptr noundef nonnull align 4 dereferenceable(4) %i.a) #25
  %i.m = call noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60) %2, ptr noundef nonnull align 8 dereferenceable(60) %4) #25 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.o = load i8, ptr %i.n, align 4
  %.not.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i, label %_ZN6icu_7810CharStringD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %4, align 8
  call void @uprv_free_78(ptr noundef %i.p) #25
  br label %_ZN6icu_7810CharStringD2Ev.exit

_ZN6icu_7810CharStringD2Ev.exit:                  ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.e

bb.e:                                             ; preds = %_ZN6icu_7810CharStringD2Ev.exit, %bb.b
  %i.q = phi i32 [ %.pre, %_ZN6icu_7810CharStringD2Ev.exit ], [ %i.k, %bb.b ] ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = icmp ne i32 %i.q, 2
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 %i.q, ptr %3, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.a
  ret void
}

declare void @_ZN6icu_7811StringPieceC1EPKc(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEcR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare ptr @ures_getByKeyWithFallback_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @ures_getType_78(ptr noundef) local_unnamed_addr #2

declare i32 @ures_getSize_78(ptr noundef) local_unnamed_addr #2

declare ptr @ures_getByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %7 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 7 uses
  %8 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 7 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.d, ptr %5, align 4
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  store i16 2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %7, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.g, i8 0, i64 65, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %8, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.i, i8 0, i64 65, i1 false)
  %i.j = icmp eq ptr %2, null                     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 112
  %. = select i1 %i.j, ptr %1, ptr %2
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef nonnull align 8 dereferenceable(64) %., ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(137) %7)
  %i.n = load i16, ptr %i.f, align 8              ; 2 uses
  %i.o = and i16 %i.n, 1
  %.not.i.i38 = icmp eq i16 %i.o, 0
  %i.p = and i16 %i.n, 30
  %storemerge.i.i39 = select i1 %.not.i.i38, i16 %i.p, i16 2
  store i16 %storemerge.i.i39, ptr %i.f, align 8
  %i.q = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %6) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef ptr @_ZNK6icu_7810PatternMap25getPatternFromBasePatternERKNS_13UnicodeStringERa(ptr noundef nonnull align 8 dereferenceable(425) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 2 uses
  %.not31 = icmp eq ptr %i.t, null
  br i1 %.not31, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i8, ptr %i.a, align 1
  %.not32 = icmp ne i8 %i.u, 0
  %i.v = icmp ne i8 %3, 0
  %or.cond = or i1 %i.j, %i.v
  %or.cond37 = and i1 %or.cond, %.not32
  br i1 %or.cond37, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.t) #25 ; 0 uses
  %.not33 = icmp eq i8 %3, 0
  br i1 %.not33, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store ptr null, ptr %i.b, align 8
  %i.x = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.y = call noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr noundef nonnull align 8 dereferenceable(425) %i.x, ptr noundef nonnull align 8 dereferenceable(137) %7, ptr noundef nonnull %i.b) ; 2 uses
  %.not34 = icmp eq ptr %i.y, null
  br i1 %.not34, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.y) #25 ; 0 uses
  %.not35 = icmp eq i8 %3, 0
  br i1 %.not35, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp ne ptr %2, null
  %i.ab = load ptr, ptr %i.b, align 8
  %i.ac = icmp ne ptr %i.ab, null
  %or.cond3 = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond3, label %bb.j, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.r, align 8
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %i.ad = phi ptr [ %.pre, %._crit_edge ], [ %i.x, %bb.f ]
  %.1 = phi i32 [ 2, %._crit_edge ], [ %.0, %bb.f ]
  %i.ae = icmp ne ptr %2, null
  %i.af = zext i1 %i.ae to i8
  call void @_ZN6icu_7810PatternMap3addERKNS_13UnicodeStringERKNS_11PtnSkeletonES3_aR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(425) %i.ad, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(137) %7, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %i.af, ptr noundef nonnull align 4 dereferenceable(4) %5)
  %i.ag = load i32, ptr %5, align 4
  %.inv = icmp sgt i32 %i.ag, 0
end_hunk_0
begin_hunk_1_@_ZN6icu_7824DateTimePatternGenerator9hackTimesERKNS_13UnicodeStringER10UErrorCode:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.w, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  store i32 0, ptr %i.b, align 4
  %i.x = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 3208
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.p
  %i.ah = phi ptr [ %i.x, %.lr.ph ], [ %i.cn, %bb.p ]
  %.02856 = phi i8 [ 0, %.lr.ph ], [ %.4.ph, %bb.p ] ; 3 uses
  %storemerge55 = phi i32 [ 0, %.lr.ph ], [ %i.cm, %bb.p ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = sext i32 %storemerge55 to i64
  %i.ak = getelementptr inbounds [64 x i8], ptr %i.ai, i64 %i.aj
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.ak) #25
  %i.al = load i16, ptr %i.ab, align 8            ; 4 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = load i32, ptr %i.ac, align 4
  %i.aq = select i1 %i.am, i32 %i.ap, i32 %i.ao   ; 6 uses
  %.not.i = icmp eq i32 %i.aq, 0                  ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.d
  %i.ar = and i16 %i.al, 2
  %.not.i.i.i.i = icmp eq i16 %i.ar, 0
  %i.as = load ptr, ptr %i.ae, align 8
  %i.at = select i1 %.not.i.i.i.i, ptr %i.as, ptr %i.ad ; 2 uses
  %i.au = load i16, ptr %i.at, align 2
  %.not = icmp eq i16 %i.au, 39
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %.not31 = icmp eq i8 %.02856, 0
  br i1 %.not31, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  store i16 2, ptr %i.af, align 8
  %i.av = load ptr, ptr %i.d, align 8
  call void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %i.av, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b)
  %i.aw = load i16, ptr %i.af, align 8            ; 2 uses
  %i.ax = icmp slt i16 %i.aw, 0
  %i.ay = ashr i16 %i.aw, 5
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i32, ptr %i.ag, align 4
  %i.bb = select i1 %i.ax, i32 %i.ba, i32 %i.az
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bb) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %.pre = load i32, ptr %i.b, align 4
  br label %bb.p

bb.g:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %i.bd = icmp sgt i32 %i.aq, 0
  br i1 %i.bd, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.g
  %i.be = load ptr, ptr %i.d, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %wide.trip.count.i = zext nneg i32 %i.aq to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv.i
  %i.bh = load i16, ptr %i.bg, align 2
  switch i16 %i.bh, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i [
    i16 92, label %.thread.i
    i16 58, label %.thread.i
    i16 45, label %.thread.i
    i16 44, label %.thread.i
    i16 39, label %.thread.i
    i16 34, label %.thread.i
    i16 32, label %.thread.i
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.bi = getelementptr inbounds nuw [64 x i8], ptr %i.bf, i64 %indvars.iv.i ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i16, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp slt i16 %i.bk, 0
  %i.bm = ashr i16 %i.bk, 5
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = select i1 %i.bl, i32 %i.bp, i32 %i.bn
  %.not.i33 = icmp eq i32 %i.bq, 0
  br i1 %.not.i33, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.br = and i16 %i.bk, 2
  %.not.i.i.i39.i = icmp eq i16 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 10
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = select i1 %.not.i.i.i39.i, ptr %i.bu, ptr %i.bs
  %i.bw = load i16, ptr %i.bv, align 2
  %i.bx = icmp eq i16 %i.bw, 46
  br i1 %i.bx, label %.thread.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread

.thread.i:                                        ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, !llvm.loop !8

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.by = icmp ne i8 %.02856, 0
  br label %bb.j

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit: ; preds = %.thread.i, %bb.d, %bb.g
  %.not50 = icmp eq i8 %.02856, 0
  br i1 %.not50, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.bz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.aq) #25 ; 0 uses
  br label %bb.p

bb.j:                                             ; preds = %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.ca = phi i1 [ %i.by, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread ], [ false, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit ] ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.j
  %i.cb = and i16 %i.al, 2
  %.not.i.i.i = icmp eq i16 %i.cb, 0
  %i.cc = load ptr, ptr %i.ae, align 8
  %i.cd = select i1 %.not.i.i.i, ptr %i.cc, ptr %i.ad
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  switch i16 %i.ce, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 109, label %bb.k
    i16 115, label %bb.l
  ]

bb.k:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.cf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.aq) #25 ; 0 uses
  br label %bb.p

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  br i1 %i.ca, label %bb.m, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit

bb.m:                                             ; preds = %bb.l
  %i.cg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.aq) #25 ; 0 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 1
  br i1 %i.cj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ci, ptr %2, align 4
  br label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit

bb.o:                                             ; preds = %bb.m
  %i.ck = call noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %2) ; 0 uses
  br label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0.i.i39 = phi i16 [ %i.ce, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.j ]
  br i1 %i.ca, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  switch i16 %.0.i.i39, label %bb.p [
    i16 122, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
    i16 118, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
    i16 90, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
    i16 86, label %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
  ]

_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.l, %bb.n, %bb.o
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %.loopexit

bb.p:                                             ; preds = %bb.f, %bb.i, %bb.e, %switch.early.test, %bb.k
  %i.cl = phi i32 [ %storemerge55, %switch.early.test ], [ %storemerge55, %bb.k ], [ %storemerge55, %bb.e ], [ %.pre, %bb.f ], [ %storemerge55, %bb.i ]
  %.4.ph = phi i8 [ 0, %switch.early.test ], [ 1, %bb.k ], [ 0, %bb.e ], [ 1, %bb.f ], [ 1, %bb.i ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.cm = add nsw i32 %i.cl, 1                    ; 3 uses
  store i32 %i.cm, ptr %i.b, align 4
  %i.cn = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 3208
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = icmp slt i32 %i.cm, %i.cp
  br i1 %i.cq, label %bb.d, label %.loopexit, !llvm.loop !66

.loopexit:                                        ; preds = %bb.p, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit, %_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(3216) initializes((3208, 3212)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 4 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.c ]     ; 3 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, ptr noundef nonnull %i.a) #25
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.i = load i32, ptr %i.a, align 4
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, i32 noundef %i.i) #25
  %i.j = load i32, ptr %i.b, align 8              ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [64 x i8], ptr %i.c, i64 %i.l
  %i.n = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  %i.o = load i32, ptr %i.a, align 4
  %i.p = add nsw i32 %i.o, %.0
  %i.q = load i32, ptr %i.b, align 8
  %i.r = icmp slt i32 %i.q, 50
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2
  %i.o = icmp eq i16 %i.n, 39
  %i.p = zext i1 %i.o to i8
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i8 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8              ; 2 uses
  %i.d = and i16 %i.c, 1
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = and i16 %i.c, 30
  %storemerge.i = select i1 %.not.i, i16 %i.e, i16 2
  store i16 %storemerge.i, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8              ; 3 uses
  %i.k = icmp slt i16 %i.j, 0
  %i.l = ashr i16 %i.j, 5
  %i.m = sext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = select i1 %i.k, i32 %i.o, i32 %i.m       ; 2 uses
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.q = and i16 %i.j, 2
  %.not.i.i.i = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 10
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.r
  %i.v = load i16, ptr %i.u, align 2
  %i.w = icmp eq i16 %i.v, 39
  br i1 %i.w, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef 0, i32 noundef %i.p) #25 ; 0 uses
  %i.y = add nsw i32 %i.a, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.a, %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0 = phi i32 [ %i.y, %bb.b ], [ %i.a, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp slt i32 %.0, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %.backedge
  %i.ac = phi i32 [ %i.bw, %.backedge ], [ %i.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ]
  %.136 = phi i32 [ %.1.be, %.backedge ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ] ; 5 uses
  %i.ad = sext i32 %.136 to i64
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i16, ptr %i.af, align 8            ; 3 uses
  %i.ah = icmp slt i16 %i.ag, 0
  %i.ai = ashr i16 %i.ag, 5
  %i.aj = sext i16 %i.ai to i32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = select i1 %i.ah, i32 %i.al, i32 %i.aj   ; 4 uses
  %.not31 = icmp eq i32 %i.am, 0
  br i1 %.not31, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24

_ZNK6icu_7813UnicodeString6charAtEi.exit24:       ; preds = %.lr.ph
  %i.an = and i16 %i.ag, 2
  %.not.i.i.i23 = icmp eq i16 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = select i1 %.not.i.i.i23, ptr %i.aq, ptr %i.ao
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = icmp eq i16 %i.as, 39
  br i1 %i.at, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit24
  %i.au = add nsw i32 %.136, 1                    ; 2 uses
  %i.av = icmp slt i32 %i.au, %i.ac
  br i1 %i.av, label %bb.d, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread

bb.d:                                             ; preds = %bb.c
  %i.aw = sext i32 %i.au to i64
  %i.ax = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.aw ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i16, ptr %i.ay, align 8            ; 3 uses
  %i.ba = icmp slt i16 %i.az, 0
  %i.bb = ashr i16 %i.az, 5
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = select i1 %i.ba, i32 %i.be, i32 %i.bc
  %.not32 = icmp eq i32 %i.bf, 0
  br i1 %.not32, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27

_ZNK6icu_7813UnicodeString6charAtEi.exit27:       ; preds = %bb.d
  %i.bg = and i16 %i.az, 2
  %.not.i.i.i26 = icmp eq i16 %i.bg, 0
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = select i1 %.not.i.i.i26, ptr %i.bj, ptr %i.bh
  %i.bl = load i16, ptr %i.bk, align 2
  %i.bm = icmp eq i16 %i.bl, 39
  br i1 %i.bm, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit27
  %i.bn = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) #25 ; 0 uses
  %i.bo = add nsw i32 %.136, 2
  %i.bp = load i16, ptr %i.ay, align 8            ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = ashr i16 %i.bp, 5
  %i.bs = sext i16 %i.br to i32
  %i.bt = load i32, ptr %i.bd, align 4
  %i.bu = select i1 %i.bq, i32 %i.bt, i32 %i.bs
  %i.bv = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef %i.bu) #25 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread
  %.1.be = phi i32 [ %i.bo, %bb.e ], [ %i.ca, %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread ] ; 3 uses
  %i.bw = load i32, ptr %i.z, align 8             ; 2 uses
  %i.bx = icmp slt i32 %.1.be, %i.bw
  br i1 %i.bx, label %.lr.ph, label %.loopexit, !llvm.loop !67

_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit27, %bb.c
  %i.by = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) #25 ; 0 uses
  br label %.loopexit

_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread: ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit24
  %i.bz = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) #25 ; 0 uses
  %i.ca = add nsw i32 %.136, 1
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread
  %.134 = phi i32 [ %.136, %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %.1.be, %.backedge ]
  store i32 %.134, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, label %.thread48

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph:   ; preds = %bb.a
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph, %.thread
  %indvars.iv = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph ], [ %indvars.iv.next, %.thread ] ; 3 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = load i16, ptr %i.p, align 2
  switch i16 %i.q, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 92, label %.thread
    i16 58, label %.thread
    i16 45, label %.thread
    i16 44, label %.thread
    i16 39, label %.thread
    i16 34, label %.thread
    i16 32, label %.thread
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.r = getelementptr inbounds nuw [64 x i8], ptr %i.o, i64 %indvars.iv ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i16, ptr %i.s, align 8              ; 3 uses
  %i.u = icmp slt i16 %i.t, 0
  %i.v = ashr i16 %i.t, 5
  %i.w = sext i16 %i.v to i32
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.y = load i32, ptr %i.x, align 4
  %i.z = select i1 %i.u, i32 %i.y, i32 %i.w
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.thread48, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.aa = and i16 %i.t, 2
  %.not.i.i.i39 = icmp eq i16 %i.aa, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 10
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = select i1 %.not.i.i.i39, ptr %i.ad, ptr %i.ab
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp eq i16 %i.af, 46
  br i1 %i.ag, label %.thread, label %.thread48

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread48, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, !llvm.loop !8

.thread48:                                        ; preds = %.thread, %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %bb.a
  %i.ah = phi i8 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 1, %.thread ]
  ret i8 %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %4, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef null, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.d, %bb.c ]
  ret i32 %.0
}

declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharString6appendEPKciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @ures_getFunctionalEquivalent_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare void @_Z26ulocimp_getKeywordValue_78PKcSt17basic_string_viewIcSt11char_traitsIcEER10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::CharString") align 8, ptr noundef, i64, ptr, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare noundef nonnull align 8 dereferenceable(60) ptr @_ZN6icu_7810CharStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(60), ptr noundef nonnull align 8 dereferenceable(60)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator23consumeShortTimePatternERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7824DateTimePatternGenerator9hackTimesERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #25
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #25, !inline_history !30
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #25, !inline_history !30
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

declare void @ures_getAllChildrenWithFallback_78(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink13fillInMissingEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 20 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr @_ZN6icu_78L17UDATPG_ItemFormatE, ptr %2, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef 14) #25
  %i.a = load ptr, ptr %2, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.a) #25, !srcloc !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !32, !align !33 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
end_hunk_1
begin_hunk_2_@_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink13fillInMissingEv:bb.a
  %i.bt = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.br) #25 ; 0 uses
  %.pre15 = load ptr, ptr %i.b, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bu = phi ptr [ %.pre15, %bb.t ], [ %i.bn, %bb.s ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 728
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = icmp ugt i16 %i.bw, 31
  br i1 %i.bx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 720 ; 2 uses
  %i.bz = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.ca = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.by) #25 ; 0 uses
  %.pre16 = load ptr, ptr %i.b, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cb = phi ptr [ %.pre16, %bb.v ], [ %i.bu, %bb.u ] ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 792
  %i.cd = load i16, ptr %i.cc, align 8
  %i.ce = icmp ugt i16 %i.cd, 31
  br i1 %i.ce, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 784 ; 2 uses
  %i.cg = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.ch = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cf) #25 ; 0 uses
  %.pre17 = load ptr, ptr %i.b, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ci = phi ptr [ %.pre17, %bb.x ], [ %i.cb, %bb.w ] ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 856
  %i.ck = load i16, ptr %i.cj, align 8
  %i.cl = icmp ugt i16 %i.ck, 31
  br i1 %i.cl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 848 ; 2 uses
  %i.cn = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.co = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cm) #25 ; 0 uses
  %.pre18 = load ptr, ptr %i.b, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cp = phi ptr [ %.pre18, %bb.z ], [ %i.ci, %bb.y ] ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 920
  %i.cr = load i16, ptr %i.cq, align 8
  %i.cs = icmp ugt i16 %i.cr, 31
  br i1 %i.cs, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 912 ; 2 uses
  %i.cu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.cv = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ct) #25 ; 0 uses
  %.pre19 = load ptr, ptr %i.b, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cw = phi ptr [ %.pre19, %bb.ab ], [ %i.cp, %bb.aa ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 984
  %i.cy = load i16, ptr %i.cx, align 8
  %i.cz = icmp ugt i16 %i.cy, 31
  br i1 %i.cz, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 976 ; 2 uses
  %i.db = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.dc = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.da) #25 ; 0 uses
  %.pre20 = load ptr, ptr %i.b, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dd = phi ptr [ %.pre20, %bb.ad ], [ %i.cw, %bb.ac ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1048
  %i.df = load i16, ptr %i.de, align 8
  %i.dg = icmp ugt i16 %i.df, 31
  br i1 %i.dg, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 1040 ; 2 uses
  %i.di = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.dj = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dh) #25 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSink13fillInMissingEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.l
  ret void

bb.c:                                             ; preds = %bb.a, %bb.l
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.l ] ; 7 uses
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !32, !align !33 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1104
  %i.h = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %indvars.iv ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8
  %i.k = icmp ugt i16 %i.j, 31
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 70, ptr %i.d, align 2
  %i.l = load i16, ptr %i.i, align 8              ; 2 uses
  %i.m = icmp slt i16 %i.l, 0
  %i.n = ashr i16 %i.l, 5
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = select i1 %i.m, i32 %i.q, i32 %i.o
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef 0, i32 noundef %i.r, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = icmp samesign ult i64 %indvars.iv, 10
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = trunc nuw nsw i64 %indvars.iv to i16
  %i.v = or disjoint i16 %i.u, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.v, ptr %i.c, align 2
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 49, ptr %i.b, align 2
  %i.x = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = trunc i64 %indvars.iv to i16
  %i.z = add nuw nsw i16 %i.y, 38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.z, ptr %i.a, align 2
  %i.aa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.h) #25 ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.ac = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1104
  %i.ae = getelementptr inbounds nuw [192 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load i16, ptr %i.af, align 8
  %i.ah = icmp ugt i16 %i.ag, 31
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae) #25
  %i.aj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre27 = load ptr, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %.pre27, %bb.i ], [ %i.ac, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1104
  %i.am = getelementptr inbounds nuw [192 x i8], ptr %i.al, i64 %indvars.iv ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.ao = load i16, ptr %i.an, align 8
  %i.ap = icmp ugt i16 %i.ao, 31
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ar) #25
  %i.as = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !68
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator13initHashtableER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.c, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #25 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8
  %i.g = load i32, ptr %1, align 4
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN6icu_789HashtableD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.j = tail call ptr @uhash_init_78(ptr noundef nonnull %i.i, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %1) #25 ; 0 uses
  %i.k = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.thread14, label %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit

_ZN6icu_789HashtableC2EaR10UErrorCode.exit:       ; preds = %bb.c
  %i.m = load i32, ptr %1, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN6icu_789HashtableC2EaR10UErrorCode.exit
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.e
  store ptr %i.i, ptr %i.e, align 8
  %i.o = tail call ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.i, ptr noundef nonnull @uprv_deleteUObject_78) #25 ; 0 uses
  %.pre = load i32, ptr %1, align 4
  %i.p = icmp sgt i32 %.pre, 0
  br i1 %i.p, label %.thread14, label %.thread

.thread:                                          ; preds = %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit
  store ptr %i.e, ptr %i.c, align 8
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

.thread14:                                        ; preds = %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit, %bb.e
  %.pr = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN6icu_789HashtableD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %.thread14
  tail call void @uhash_close_78(ptr noundef nonnull %.pr) #25
  br label %_ZN6icu_789HashtableD2Ev.exit.i

_ZN6icu_789HashtableD2Ev.exit.i:                  ; preds = %bb.d, %bb.g, %.thread14
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #25
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit: ; preds = %bb.f, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, %_ZN6icu_789HashtableD2Ev.exit.i, %.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  %i.e = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator19getAppendItemFormatE21UDateTimePatternField(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17setAppendItemNameE21UDateTimePatternFieldRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  %i.e = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %3) #25 ; 0 uses
  %i.g = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getAppendItemNameE21UDateTimePatternField(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK6icu_7824DateTimePatternGenerator19getFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %3 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7824DateTimePatternGenerator26getMutableFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator13getAppendNameE21UDateTimePatternFieldRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.j, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp slt i16 %i.p, 0
  %i.r = ashr i16 %i.p, 5
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = select i1 %i.q, i32 %i.u, i32 %i.s
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i32 noundef 0, i32 noundef %i.v) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 39, ptr %i.a, align 2
  %i.x = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringE28UDateTimePatternMatchOptionsR10UErrorCode(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringE28UDateTimePatternMatchOptionsR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
end_hunk_2
begin_hunk_3_@_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringE28UDateTimePatternMatchOptionsR10UErrorCode:bb.a
  %i.bk = load i16, ptr %i.k, align 8             ; 2 uses
  %i.bl = and i16 %i.bk, 1
  %.not.i33 = icmp eq i16 %i.bl, 0
  %i.bm = and i16 %i.bk, 30
  %storemerge.i34 = select i1 %.not.i33, i16 %i.bm, i16 2
  store i16 %storemerge.i34, ptr %i.k, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %11) #25
  br label %bb.x

bb.r:                                             ; preds = %._crit_edge, %bb.p
  %.pre-phi41 = phi i32 [ %.pre40, %._crit_edge ], [ %i.bf, %bb.p ]
  %i.bn = phi i32 [ %.pre38, %._crit_edge ], [ %i.bh, %bb.p ]
  %i.bo = icmp slt i16 %i.bc, 0
  %i.bp = select i1 %i.bo, i32 %i.bn, i32 %.pre-phi41
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %10) #25
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.br = load i16, ptr %i.k, align 8             ; 2 uses
  %i.bs = and i16 %i.br, 1
  %.not.i35 = icmp eq i16 %i.bs, 0
  %i.bt = and i16 %i.br, 30
  %storemerge.i36 = select i1 %.not.i35, i16 %i.bt, i16 2
  store i16 %storemerge.i36, ptr %i.k, align 8
  store i32 0, ptr %4, align 4
  %i.bu = load ptr, ptr %i.o, align 8             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 131
  %i.bw = load i8, ptr %i.bv, align 1
  switch i8 %i.bw, label %bb.w [
    i8 4, label %bb.u
    i8 3, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 134
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = icmp slt i8 %i.by, 1
  %. = zext i1 %i.bz to i32
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v
  %.0 = phi i32 [ %., %bb.u ], [ 3, %bb.t ], [ 2, %bb.v ]
  %i.ca = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %1, i32 noundef %.0, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.cb = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %i.ca) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.cc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i16 2, ptr %i.cd, align 8
  %i.ce = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 2, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %4) #25 ; 0 uses
  %i.cf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(4) %4) #25 ; 0 uses
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s, %bb.q, %bb.m
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.f
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator25mapSkeletonMetacharactersERKNS_13UnicodeStringEPiR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 5 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph121, label %._crit_edge

.lr.ph121:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4580
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4576
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = add nsw i32 %i.m, -1                     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph121, %.critedge94
  %.081120 = phi i32 [ 0, %.lr.ph121 ], [ %i.bv, %.critedge94 ] ; 11 uses
  %.084119 = phi i8 [ 0, %.lr.ph121 ], [ %.286, %.critedge94 ] ; 2 uses
  %i.u = load i16, ptr %i.f, align 8
  %.fr122 = freeze i16 %i.u                       ; 4 uses
  %i.v = icmp slt i16 %.fr122, 0
  %i.w = lshr i16 %.fr122, 5
  %i.x = zext nneg i16 %i.w to i32
  %i.y = load i32, ptr %i.k, align 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %i.x       ; 3 uses
  %i.aa = icmp ult i32 %.081120, %i.z
  br i1 %i.aa, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b
  %i.ab = and i16 %.fr122, 2
  %.not.i.i.i = icmp eq i16 %i.ab, 0
  %i.ac = load ptr, ptr %i.p, align 8
  %i.ad = select i1 %.not.i.i.i, ptr %i.ac, ptr %i.o
  %i.ae = sext i32 %.081120 to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2            ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 39
  br i1 %i.ah, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.not92 = icmp eq i8 %.084119, 0
  %i.ai = zext i1 %.not92 to i8
  br label %.critedge94

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0.i.i102 = phi i16 [ %i.ag, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.b ] ; 5 uses
  %.not = icmp eq i8 %.084119, 0
  br i1 %.not, label %bb.d, label %.critedge94

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.aj = icmp eq i16 %.0.i.i102, 106
  switch i16 %.0.i.i102, label %bb.p [
    i16 106, label %bb.e
    i16 67, label %bb.e
    i16 74, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.ak = add nsw i32 %.081120, 1                 ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.m
  br i1 %i.al, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.e
  %i.am = and i16 %.fr122, 2
  %.not.i.i.i99 = icmp eq i16 %i.am, 0
  %i.an = sext i32 %i.ak to i64                   ; 2 uses
  %i.ao = sub i32 %i.t, %.081120                  ; 2 uses
  br i1 %.not.i.i.i99, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.g
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %bb.g ], [ %i.an, %.lr.ph ] ; 3 uses
  %.080109.us = phi i32 [ %i.av, %bb.g ], [ 0, %.lr.ph ] ; 2 uses
  %.182108.us = phi i32 [ %i.ap, %bb.g ], [ %.081120, %.lr.ph ]
  %i.ap = trunc nsw i64 %indvars.iv127 to i32     ; 2 uses
  %i.aq = icmp ugt i32 %i.z, %i.ap
  br i1 %i.aq, label %bb.f, label %_ZNK6icu_7813UnicodeString6charAtEi.exit100.us

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ar = load ptr, ptr %i.p, align 8
  %i.as = getelementptr inbounds [2 x i8], ptr %i.ar, i64 %indvars.iv127
  %i.at = load i16, ptr %i.as, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit100.us

_ZNK6icu_7813UnicodeString6charAtEi.exit100.us:   ; preds = %bb.f, %.lr.ph.split.us
  %.0.i.i98.us = phi i16 [ %i.at, %bb.f ], [ -1, %.lr.ph.split.us ]
  %i.au = icmp eq i16 %.0.i.i98.us, %.0.i.i102
  br i1 %i.au, label %bb.g, label %.critedge

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit100.us
  %i.av = add nuw nsw i32 %.080109.us, 1
  %indvars.iv.next128 = add nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, %i.s
  br i1 %exitcond130.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !69

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ %i.an, %.lr.ph ] ; 3 uses
  %.080109 = phi i32 [ %i.bb, %bb.i ], [ 0, %.lr.ph ] ; 2 uses
  %.182108 = phi i32 [ %i.aw, %bb.i ], [ %.081120, %.lr.ph ]
  %i.aw = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ax = icmp ugt i32 %i.z, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZNK6icu_7813UnicodeString6charAtEi.exit100

bb.h:                                             ; preds = %.lr.ph.split
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit100

_ZNK6icu_7813UnicodeString6charAtEi.exit100:      ; preds = %.lr.ph.split, %bb.h
  %.0.i.i98 = phi i16 [ %i.az, %bb.h ], [ -1, %.lr.ph.split ]
  %i.ba = icmp eq i16 %.0.i.i98, %.0.i.i102
  br i1 %i.ba, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit100
  %i.bb = add nuw nsw i32 %.080109, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !69

.critedge:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit100, %bb.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit100.us, %bb.g
  %.182.lcssa = phi i32 [ %i.t, %bb.g ], [ %.182108.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit100.us ], [ %.182108, %_ZNK6icu_7813UnicodeString6charAtEi.exit100 ], [ %i.t, %bb.i ]
  %.080.lcssa = phi i32 [ %i.ao, %bb.g ], [ %.080109.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit100.us ], [ %.080109, %_ZNK6icu_7813UnicodeString6charAtEi.exit100 ], [ %i.ao, %bb.i ]
  %.080.lcssa.fr = freeze i32 %.080.lcssa         ; 3 uses
  %i.bc = and i32 %.080.lcssa.fr, 1
  %i.bd = add nuw nsw i32 %i.bc, 1
  %i.be = lshr i32 %.080.lcssa.fr, 1
  %i.bf = add nuw nsw i32 %i.be, 3
  %.inv = icmp ugt i32 %.080.lcssa.fr, 1
  %spec.select = select i1 %.inv, i32 %i.bf, i32 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %bb.e
  %i.bg = phi i32 [ 1, %bb.e ], [ %i.bd, %.critedge ]
  %.182.lcssa138 = phi i32 [ %.081120, %bb.e ], [ %.182.lcssa, %.critedge ]
  %i.bh = phi i32 [ 1, %bb.e ], [ %spec.select, %.critedge ]
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.thread
  %i.bi = load i16, ptr %i.r, align 8
  br label %.thread105

bb.k:                                             ; preds = %.critedge.thread
  %i.bj = load i32, ptr %i.q, align 4             ; 2 uses
  switch i32 %i.bj, label %.fold.split [
    i32 -1, label %bb.n
    i32 9, label %bb.l
    i32 8, label %bb.l
    i32 1, label %bb.l
    i32 7, label %.fold.split96
    i32 6, label %.fold.split96
    i32 2, label %.fold.split96
    i32 3, label %.fold.split97
  ]

.fold.split:                                      ; preds = %bb.k
  br label %bb.l

.fold.split96:                                    ; preds = %bb.k, %bb.k, %bb.k
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %.fold.split96, %.fold.split
  %.074 = phi i16 [ 104, %.fold.split ], [ 72, %bb.k ], [ 75, %.fold.split96 ], [ 72, %bb.k ], [ 72, %bb.k ] ; 5 uses
  switch i32 %i.bj, label %.fold.split97 [
    i32 9, label %.thread105
    i32 7, label %.thread105
    i32 5, label %.thread105
    i32 8, label %bb.m
    i32 6, label %bb.m
    i32 4, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l
  br label %.thread105

.fold.split97:                                    ; preds = %bb.k, %bb.l
  %.074104 = phi i16 [ %.074, %bb.l ], [ 107, %bb.k ]
  br label %.thread105

bb.n:                                             ; preds = %bb.k
  store i32 3, ptr %4, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.bk, align 8
  br label %.critedge95

.thread105:                                       ; preds = %bb.m, %.fold.split97, %bb.l, %bb.l, %bb.l, %bb.j
  %.276 = phi i16 [ %i.bi, %bb.j ], [ %.074104, %.fold.split97 ], [ %.074, %bb.l ], [ %.074, %bb.l ], [ %.074, %bb.l ], [ %.074, %bb.m ] ; 2 uses
  %.273 = phi i16 [ 97, %bb.j ], [ 97, %.fold.split97 ], [ 66, %bb.l ], [ 66, %bb.l ], [ 66, %bb.l ], [ 98, %bb.m ]
  switch i16 %.276, label %.lr.ph117 [
    i16 107, label %.preheader.preheader
    i16 72, label %.preheader.preheader
  ]

.lr.ph117:                                        ; preds = %.thread105, %.lr.ph117
  %.178116 = phi i32 [ %i.bl, %.lr.ph117 ], [ %i.bh, %.thread105 ] ; 2 uses
  %i.bl = add nsw i32 %.178116, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %.273, ptr %i.d, align 2
  %i.bm = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bn = icmp samesign ugt i32 %.178116, 1
  br i1 %i.bn, label %.lr.ph117, label %.preheader.preheader, !llvm.loop !70

.preheader.preheader:                             ; preds = %.lr.ph117, %.thread105, %.thread105
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.079118 = phi i32 [ %i.bo, %.preheader ], [ %i.bg, %.preheader.preheader ] ; 2 uses
  %i.bo = add nsw i32 %.079118, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %.276, ptr %i.c, align 2
  %i.bp = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bq = icmp samesign ugt i32 %.079118, 1
  br i1 %i.bq, label %.preheader, label %.critedge94, !llvm.loop !71

bb.o:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 72, ptr %i.b, align 2
  %i.br = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bs = load i32, ptr %3, align 4
  %i.bt = or i32 %i.bs, 2
  store i32 %i.bt, ptr %3, align 4
  br label %.critedge94

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0.i.i102, ptr %i.a, align 2
  %i.bu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge94

.critedge94:                                      ; preds = %.preheader, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %bb.o, %bb.p, %bb.c
  %.286 = phi i8 [ 0, %bb.o ], [ %i.ai, %bb.c ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 0, %bb.p ], [ 0, %.preheader ]
  %.3 = phi i32 [ %.081120, %bb.o ], [ %.081120, %bb.c ], [ %.081120, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %.081120, %bb.p ], [ %.182.lcssa138, %.preheader ]
  %i.bv = add nsw i32 %.3, 1                      ; 2 uses
  %i.bw = icmp slt i32 %i.bv, %i.m
  br i1 %i.bw, label %bb.b, label %._crit_edge, !llvm.loop !72

._crit_edge:                                      ; preds = %.critedge94, %bb.a
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %5) #25
  br label %.critedge95

.critedge95:                                      ; preds = %bb.n, %._crit_edge
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef initializes((3208, 3212)) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(137) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %"class.icu_78::DateTimeMatcher", align 16 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store ptr null, ptr %i.a, align 8
  %i.b = load i32, ptr %4, align 4
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #25 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.g, i8 0, i64 65, i1 false)
  %i.h = load i32, ptr %4, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread102

.thread.i:                                        ; preds = %bb.b
  %i.j = load i32, ptr %4, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.thread.i
  store i32 7, ptr %4, align 4
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit: ; preds = %bb.c
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(152) %i.d) #25
  %.pre = load i32, ptr %4, align 4
  %i.l = icmp slt i32 %.pre, 1
  br i1 %i.l, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread102, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread102: ; preds = %bb.c, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit
  %.sroa.15.0104 = phi ptr [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit ], [ %i.d, %bb.c ] ; 9 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread102
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.15.0104, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.15.0104, i64 80 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.15.0104, i64 96 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.15.0104, i64 112 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.15.0104, i64 128 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.15.0104, i64 144 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 112
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i.lr.ph, %.preheader.i
  %.sroa.947.073133 = phi ptr [ null, %.preheader.i.lr.ph ], [ %.sroa.947.5, %.preheader.i ] ; 3 uses
  %.sroa.4.075132 = phi i32 [ 0, %.preheader.i.lr.ph ], [ %.sroa.4.5, %.preheader.i ] ; 4 uses
  %.02576131 = phi i32 [ 2147483647, %.preheader.i.lr.ph ], [ %.328, %.preheader.i ] ; 4 uses
  %.02177130 = phi i32 [ -1, %.preheader.i.lr.ph ], [ %.324, %.preheader.i ] ; 3 uses
  %.01978129 = phi ptr [ null, %.preheader.i.lr.ph ], [ %.3, %.preheader.i ] ; 4 uses
  %i.ah = sext i32 %.sroa.4.075132 to i64         ; 5 uses
  %.not.peel.i = icmp eq ptr %.sroa.947.073133, null ; 2 uses
  br i1 %.not.peel.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.947.073133, i64 152
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not10.peel.i = icmp eq ptr %i.aj, null
  br i1 %.not10.peel.i, label %.backedge.peel.i, label %.lr.ph.i

bb.f:                                             ; preds = %.lr.ph.preheader.i
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ah
  %i.al = load ptr, ptr %i.ak, align 8
  %.not9.peel.i = icmp eq ptr %i.al, null
  br i1 %.not9.peel.i, label %.backedge.peel.i, label %.lr.ph.i

.backedge.peel.i:                                 ; preds = %bb.f, %bb.e
  %indvars.iv.next.peel.i = add nsw i64 %i.ah, 1  ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv.next.peel.i, 52
  br i1 %exitcond.peel.not.i, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, label %.lr.ph.peel.next.i

.backedge.i:                                      ; preds = %.lr.ph.peel.next.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.am = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.am, 52
  br i1 %exitcond.not.i, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, label %.lr.ph.peel.next.i, !llvm.loop !9

.lr.ph.peel.next.i:                               ; preds = %.backedge.peel.i, %.backedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i ], [ %indvars.iv.next.peel.i, %.backedge.peel.i ] ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ao = load ptr, ptr %i.an, align 8
  %.not9.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i, label %.backedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.peel.next.i, %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  br i1 %.not.peel.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.947.073133, i64 152
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not5.i.peel = icmp eq ptr %i.aq, null
  br i1 %.not5.i.peel, label %bb.h, label %.loopexit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ar = add nsw i64 %i.ah, 1                    ; 2 uses
  %i.as = add nsw i32 %.sroa.4.075132, 1
  %i.at = trunc nsw i64 %i.ar to i32
  br label %.backedge.i41.peel

bb.i:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ah
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not3.i.peel = icmp eq ptr %i.av, null
  br i1 %.not3.i.peel, label %bb.j, label %.loopexit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.aw = add nsw i64 %i.ah, 1                    ; 2 uses
  %i.ax = trunc nsw i64 %i.aw to i32              ; 2 uses
  br label %.backedge.i41.peel

.backedge.i41.peel:                               ; preds = %bb.j, %bb.h
  %.sroa.4.4.peel = phi i32 [ %i.ax, %bb.j ], [ %i.at, %bb.h ] ; 2 uses
  %indvars.iv.next.pre-phi.i.peel = phi i64 [ %i.aw, %bb.j ], [ %i.ar, %bb.h ] ; 2 uses
  %i.ay = phi i32 [ %i.ax, %bb.j ], [ %i.as, %bb.h ]
  %i.az = icmp slt i32 %i.ay, 52
  br i1 %i.az, label %.peel.next.preheader, label %.loopexit.i

.peel.next.preheader:                             ; preds = %.backedge.i41.peel
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv.next.pre-phi.i.peel
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not3.i126 = icmp eq ptr %i.bb, null
  br i1 %.not3.i126, label %.backedge.i41, label %.loopexit.thread.i

.backedge.i41:                                    ; preds = %.peel.next.preheader, %.peel.next
  %indvars.iv.i40127 = phi i64 [ %i.bc, %.peel.next ], [ %indvars.iv.next.pre-phi.i.peel, %.peel.next.preheader ] ; 2 uses
  %i.bc = add nsw i64 %indvars.iv.i40127, 1       ; 4 uses
  %i.bd = icmp slt i64 %indvars.iv.i40127, 51
  br i1 %i.bd, label %.peel.next, label %.loopexit.i.loopexit, !llvm.loop !73

.peel.next:                                       ; preds = %.backedge.i41
  %i.be = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bc
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %.not3.i = icmp eq ptr %i.bf, null
  br i1 %.not3.i, label %.backedge.i41, label %.loopexit.thread.i.loopexit, !llvm.loop !73

.loopexit.thread.i.loopexit:                      ; preds = %.peel.next
  %i.bg = trunc nsw i64 %i.bc to i32
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.thread.i.loopexit, %.peel.next.preheader, %bb.g, %bb.i
  %.sroa.4.3.lcssa = phi i32 [ %.sroa.4.075132, %bb.g ], [ %.sroa.4.075132, %bb.i ], [ %.sroa.4.4.peel, %.peel.next.preheader ], [ %i.bg, %.loopexit.thread.i.loopexit ]
  %.sroa.947.2.ph = phi ptr [ %i.aq, %bb.g ], [ %i.av, %bb.i ], [ %i.bb, %.peel.next.preheader ], [ %i.bf, %.loopexit.thread.i.loopexit ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.947.2.ph, i64 72
  %i.bi = load ptr, ptr %i.bh, align 8            ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bj, i64 64, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bk, i64 16, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bm, i64 16, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bn, i64 16, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 136
  %i.bp = load i8, ptr %i.bo, align 8             ; 2 uses
  store i8 %i.bp, ptr %i.v, align 8
  br label %_ZN6icu_7818PatternMapIterator4nextEv.exit

.loopexit.i.loopexit:                             ; preds = %.backedge.i41
  %i.bq = trunc nsw i64 %i.bc to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.i.loopexit, %.backedge.i41.peel
  %.sroa.4.4.lcssa = phi i32 [ %.sroa.4.4.peel, %.backedge.i41.peel ], [ %i.bq, %.loopexit.i.loopexit ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.q, i8 0, i64 128, i1 false)
  %.pre88 = load i8, ptr %i.v, align 8
  br label %_ZN6icu_7818PatternMapIterator4nextEv.exit

_ZN6icu_7818PatternMapIterator4nextEv.exit:       ; preds = %.loopexit.thread.i, %.loopexit.i
  %i.br = phi i8 [ %.pre88, %.loopexit.i ], [ %i.bp, %.loopexit.thread.i ]
  %.sroa.947.5 = phi ptr [ null, %.loopexit.i ], [ %.sroa.947.2.ph, %.loopexit.thread.i ]
  %.sroa.4.5 = phi i32 [ %.sroa.4.4.lcssa, %.loopexit.i ], [ %.sroa.4.3.lcssa, %.loopexit.thread.i ] ; 2 uses
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16)>, ptr %6, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.y, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.q, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.r, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.t, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  store i8 %i.br, ptr %i.ac, align 16
  %i.bs = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader, label %bb.k

bb.k:                                             ; preds = %_ZN6icu_7818PatternMapIterator4nextEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bv = load i128, ptr %i.x, align 1
  %i.bw = load i128, ptr %i.bu, align 1
  %i.bx = icmp ne i128 %i.bv, %i.bw
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader

_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit:   ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.cb = load i128, ptr %i.z, align 1
  %i.cc = load i128, ptr %i.ca, align 1
  %i.cd = icmp ne i128 %i.cb, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %.preheader.i, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader, !llvm.loop !74

_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader: ; preds = %bb.k, %_ZN6icu_7818PatternMapIterator4nextEv.exit, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit
  br label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread

_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread: ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader, %bb.q
  %.sroa.3.0 = phi i32 [ %.sroa.3.1, %bb.q ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 4 uses
  %.sroa.8.0 = phi i32 [ %.sroa.8.1, %bb.q ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 4 uses
  %indvars.iv.i42 = phi i64 [ %indvars.iv.next.i43, %bb.q ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %.02227.i = phi i32 [ %.2.i, %bb.q ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %i.cf = phi i32 [ %i.dd, %bb.q ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %i.cg = phi i32 [ %i.dc, %bb.q ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv.i42 to i32
  %i.ci = shl nuw nsw i32 1, %i.ch                ; 3 uses
  %i.cj = and i32 %i.ci, %2
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.thread.i45, label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.i42
  %i.cm = load i32, ptr %i.cl, align 4            ; 3 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i42
  %i.co = load i32, ptr %i.cn, align 4            ; 3 uses
  %i.cp = icmp eq i32 %i.cm, %i.co
  br i1 %i.cp, label %bb.q, label %bb.m

.thread.i45:                                      ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv.i42
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.q, label %.thread25.i

bb.m:                                             ; preds = %bb.l
  %i.ct = icmp eq i32 %i.cm, 0
  br i1 %i.ct, label %.thread25.i, label %bb.n

.thread25.i:                                      ; preds = %bb.m, %.thread.i45
  %i.cu = add nuw nsw i32 %.02227.i, 65536
  %i.cv = or i32 %i.cg, %i.ci                     ; 2 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp eq i32 %i.co, 0
  br i1 %i.cw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cx = add nuw nsw i32 %.02227.i, 4096
  %i.cy = or i32 %i.cf, %i.ci                     ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cz = sub nsw i32 %i.cm, %i.co
  %i.da = call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = add nuw nsw i32 %i.da, %.02227.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.thread25.i, %.thread.i45, %bb.l
  %.sroa.3.1 = phi i32 [ %.sroa.3.0, %.thread.i45 ], [ %.sroa.3.0, %.thread25.i ], [ %.sroa.3.0, %bb.l ], [ %i.cy, %bb.o ], [ %.sroa.3.0, %bb.p ] ; 4 uses
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %.thread.i45 ], [ %i.cv, %.thread25.i ], [ %.sroa.8.0, %bb.l ], [ %.sroa.8.0, %bb.o ], [ %.sroa.8.0, %bb.p ] ; 2 uses
  %i.dc = phi i32 [ %i.cg, %.thread.i45 ], [ %i.cv, %.thread25.i ], [ %i.cg, %bb.l ], [ %i.cg, %bb.o ], [ %i.cg, %bb.p ]
  %i.dd = phi i32 [ %i.cf, %.thread.i45 ], [ %i.cf, %.thread25.i ], [ %i.cf, %bb.l ], [ %i.cy, %bb.o ], [ %i.cf, %bb.p ]
  %.2.i = phi i32 [ %.02227.i, %.thread.i45 ], [ %i.cu, %.thread25.i ], [ %.02227.i, %bb.l ], [ %i.cx, %bb.o ], [ %i.db, %bb.p ] ; 5 uses
  %indvars.iv.next.i43 = add nuw nsw i64 %indvars.iv.i42, 1 ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %indvars.iv.next.i43, 16
  br i1 %exitcond.not.i44, label %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread, !llvm.loop !10

_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit: ; preds = %bb.q
  %i.de = icmp slt i32 %.2.i, %.02576131
  br i1 %i.de, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit
  %i.df = icmp eq i32 %.2.i, %.02576131
  %i.dg = icmp slt i32 %.02177130, %.sroa.3.1
  %or.cond38 = select i1 %i.df, i1 %i.dg, i1 false
  br i1 %or.cond38, label %bb.s, label %.preheader.i

bb.s:                                             ; preds = %bb.r, %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit
  %i.dh = load ptr, ptr %i.m, align 8
  %i.di = call noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr noundef nonnull align 8 dereferenceable(425) %i.dh, ptr noundef nonnull align 8 dereferenceable(137) %i.w, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %.sroa.3.1, ptr %i.af, align 8
  store i32 %.sroa.8.1, ptr %i.ag, align 4
  %i.dj = icmp eq i32 %.2.i, 0
  br i1 %i.dj, label %.thread63, label %.preheader.i

.thread63:                                        ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread

.preheader.i:                                     ; preds = %bb.s, %bb.r, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit
  %.328 = phi i32 [ %.02576131, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ], [ %.2.i, %bb.s ], [ %.02576131, %bb.r ]
  %.324 = phi i32 [ %.02177130, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ], [ %.sroa.3.1, %bb.s ], [ %.02177130, %bb.r ]
  %.3 = phi ptr [ %.01978129, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ], [ %i.di, %bb.s ], [ %.01978129, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.dk = icmp slt i32 %.sroa.4.5, 52
  br i1 %i.dk, label %.lr.ph.preheader.i, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread: ; preds = %.preheader.i, %.backedge.peel.i, %.backedge.i, %.thread63
  %.4 = phi ptr [ %i.di, %.thread63 ], [ %.01978129, %.backedge.i ], [ %.01978129, %.backedge.peel.i ], [ %.3, %.preheader.i ] ; 3 uses
  %i.dl = icmp ne ptr %.4, null
  %i.dm = icmp ne ptr %5, null
  %or.cond = and i1 %i.dm, %i.dl
  br i1 %or.cond, label %bb.t, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

bb.t:                                             ; preds = %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread
  %i.dn = load ptr, ptr %i.a, align 8
  store ptr %i.dn, ptr %5, align 8
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread: ; preds = %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread102, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, %bb.t
  %.029 = phi ptr [ %.4, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread ], [ %.4, %bb.t ], [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread102 ] ; 2 uses
  %i.do = icmp eq ptr %.sroa.15.0104, null
  br i1 %i.do, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread
  %i.dp = load ptr, ptr %.sroa.15.0104, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.15.0104) #25, !inline_history !11
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

_ZN6icu_7818PatternMapIteratorD2Ev.exit:          ; preds = %bb.a, %bb.d, %.thread.i, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread, %bb.u
  %.029109 = phi ptr [ %.029, %bb.u ], [ %.029, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread ], [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit ], [ null, %.thread.i ], [ null, %bb.d ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret ptr %.029109
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 14 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store i32 0, ptr %i.c, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3208 ; 4 uses
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.v, %bb.c ]   ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(3216) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, ptr noundef nonnull %i.c) #25, !inline_history !31
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.o = load i32, ptr %i.c, align 4
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, i32 noundef %i.o) #25
  %i.p = load i32, ptr %i.h, align 8              ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.h, align 8
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [64 x i8], ptr %i.i, i64 %i.r
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %6) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.u = load i32, ptr %i.c, align 4
  %i.v = add nsw i32 %i.u, %.0.i
  %i.w = load i32, ptr %i.h, align 8
  %i.x = icmp slt i32 %i.w, 50
  br i1 %i.x, label %bb.b, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit, !llvm.loop !5

_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store i32 0, ptr %i.d, align 4
  %i.y = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3208
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph116, label %._crit_edge

.lr.ph116:                                        ; preds = %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ag = trunc i32 %4 to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = and i32 %5, 2048
  %i.aj = icmp eq i32 %i.ai, 0
  %i.ak = and i32 %5, 4096
  %i.al = icmp eq i32 %i.ak, 0
  %i.am = and i32 %5, 8192
  %i.an = icmp eq i32 %i.am, 0
  %.not109 = icmp eq ptr %3, null
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 4576
end_hunk_3
begin_hunk_4_@_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions:bb.a
  %.not35.i.i = icmp slt i32 %i.bf, %i.cz
  br i1 %.not35.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, label %.critedge.outer.i.i, !llvm.loop !7

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
  %i.du = zext nneg i8 %i.dt to i32
  %i.dv = icmp sgt i8 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.08.i = phi i32 [ %i.dx, %.lr.ph.i ], [ 0, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.dr, ptr %i.b, align 2
  %i.dw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.dx = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i100 = icmp eq i32 %i.dx, %i.du
  br i1 %exitcond.not.i100, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %.lr.ph.i, !llvm.loop !12

bb.m:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ec = sext i32 %i.dz to i64                   ; 4 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4            ; 2 uses
  %.not84 = icmp eq i32 %i.ee, 0
  br i1 %.not84, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 80
  %i.eg = getelementptr inbounds i8, ptr %i.ef, i64 %i.ec
  %i.eh = load i8, ptr %i.eg, align 1             ; 6 uses
  %i.ei = sext i8 %i.eh to i16                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ea, i64 96
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 %i.ec
  %i.el = load i8, ptr %i.ek, align 1
  %i.em = sext i8 %i.el to i32                    ; 2 uses
  %i.en = icmp eq i8 %i.eh, 69
  %i.eo = call i32 @llvm.smax.i32(i32 %i.em, i32 3)
  %spec.store.select = select i1 %i.en, i32 %i.eo, i32 %i.em ; 5 uses
  %i.ep = add nsw i32 %i.cs, -56
  %i.eq = icmp ult i32 %i.ep, 7                   ; 2 uses
  %or.cond89 = and i1 %i.aj, %i.eq
  %i.er = icmp eq i64 %indvars.iv56.i.i, 63
  %or.cond91 = and i1 %i.al, %i.er
  %or.cond117 = or i1 %or.cond89, %or.cond91
  %or.cond93 = and i1 %i.an, %i.dg
  %or.cond118 = or i1 %or.cond117, %or.cond93     ; 2 uses
  %brmerge = or i1 %or.cond118, %.not109
  %.mux = select i1 %or.cond118, i32 %i.bf, i32 %spec.store.select
  br i1 %brmerge, label %bb.p, label %switch.early.test

switch.early.test:                                ; preds = %bb.n
  switch i8 %i.eh, label %bb.o [
    i8 101, label %bb.p
    i8 99, label %bb.p
  ]

bb.o:                                             ; preds = %switch.early.test
  %i.es = getelementptr inbounds i8, ptr %i.ao, i64 %i.ec
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = sext i8 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.ew = load i16, ptr %i.ev, align 8
  %i.ex = icmp slt i16 %i.ew, 1                   ; 2 uses
  %i.ey = icmp sgt i32 %i.ee, 0                   ; 2 uses
  %i.ez = icmp ne i32 %spec.store.select, %i.eu
  %or.cond11 = or i1 %i.ey, %i.ex
  %or.cond94 = select i1 %i.ez, i1 %or.cond11, i1 false
  %or.cond94.not = xor i1 %or.cond94, true
  %or.cond13.not = select i1 %i.ey, i1 %i.ex, i1 false
  %or.cond95 = select i1 %or.cond94.not, i1 true, i1 %or.cond13.not
  %spec.select106 = select i1 %or.cond95, i32 %i.bf, i32 %spec.store.select
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %switch.early.test, %switch.early.test
  %.1 = phi i32 [ %spec.select106, %bb.o ], [ %spec.store.select, %switch.early.test ], [ %spec.store.select, %switch.early.test ], [ %.mux, %bb.n ] ; 3 uses
  %i.fa = add nsw i32 %i.cs, -63
  %i.fb = icmp ult i32 %i.fa, -7
  %i.fc = add nsw i32 %i.cs, -27
  %i.fd = icmp ult i32 %i.fc, -9
  %or.cond15 = select i1 %i.fb, i1 %i.fd, i1 false
  %i.fe = add nsw i32 %i.cs, -43
  %i.ff = icmp ult i32 %i.fe, -14
  %or.cond17 = select i1 %or.cond15, i1 %i.ff, i1 false
  br i1 %or.cond17, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fg = add nsw i32 %i.cs, -10
  %i.fh = icmp ult i32 %i.fg, -7
  %i.fi = icmp eq i8 %i.eh, 89
  %or.cond20 = or i1 %i.fh, %i.fi
  br i1 %or.cond20, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.r, %bb.q
  %i.fj = phi i16 [ %i.ei, %bb.q ], [ %i.bj, %bb.r ] ; 2 uses
  %i.fk = icmp eq i16 %i.fj, 69
  %i.fl = icmp slt i32 %.1, 3
  %or.cond22 = and i1 %i.fl, %i.fk
  %spec.store.select23 = select i1 %or.cond22, i16 101, i16 %i.fj ; 6 uses
  br i1 %i.eq, label %bb.s, label %bb.z

bb.s:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.fm = load i16, ptr %i.ap, align 8            ; 7 uses
  %.not86 = icmp eq i16 %i.fm, 0
  br i1 %.not86, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fn = icmp eq i16 %i.fm, %i.ei
  %or.cond96 = or i1 %.not87, %i.fn
  br i1 %or.cond96, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fo = icmp eq i8 %i.eh, 104
  %i.fp = icmp eq i16 %i.fm, 75
  %or.cond97 = and i1 %i.fo, %i.fp
  br i1 %or.cond97, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  switch i8 %i.eh, label %bb.z [
    i8 72, label %bb.w
    i8 107, label %bb.x
    i8 75, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.fq = icmp eq i16 %i.fm, 107
  %spec.select107 = select i1 %i.fq, i16 107, i16 %spec.store.select23
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.fr = icmp eq i16 %i.fm, 72
  %spec.select108 = select i1 %i.fr, i16 72, i16 %spec.store.select23
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.fs = icmp eq i16 %i.fm, 104
  %spec.select = select i1 %i.fs, i16 104, i16 %spec.store.select23
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.t, %bb.y, %bb.v, %bb.u, %bb.s, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.075 = phi i16 [ %i.fm, %bb.t ], [ %spec.store.select23, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 75, %bb.u ], [ %spec.select108, %bb.x ], [ %spec.store.select23, %bb.v ], [ %spec.select, %bb.y ], [ %spec.select107, %bb.w ], [ %spec.store.select23, %bb.s ]
  %i.ft = and i16 %i.ba, 1
  %.not.i101 = icmp eq i16 %i.ft, 0
  %i.fu = and i16 %i.ba, 30
  %storemerge.i = select i1 %.not.i101, i16 %i.fu, i16 2
  store i16 %storemerge.i, ptr %i.ac, align 8
  %i.fv = icmp sgt i32 %.1, 0
  br i1 %i.fv, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph:                                           ; preds = %bb.z, %.lr.ph
  %.0114 = phi i32 [ %i.fx, %.lr.ph ], [ %.1, %bb.z ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.075, ptr %i.a, align 2
  %i.fw = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fx = add nsw i32 %.0114, -1
  %i.fy = icmp samesign ugt i32 %.0114, 1
  br i1 %i.fy, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, !llvm.loop !75

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit: ; preds = %.lr.ph, %.lr.ph.i, %bb.z, %bb.l, %bb.m
  %i.fz = load i16, ptr %i.ac, align 8            ; 2 uses
  %i.ga = icmp slt i16 %i.fz, 0
  %i.gb = ashr i16 %i.fz, 5
  %i.gc = sext i16 %i.gb to i32
  %i.gd = load i32, ptr %i.ad, align 4
  %i.ge = select i1 %i.ga, i32 %i.gd, i32 %i.gc
  %i.gf = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.ge) #25 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, %bb.e, %.thread
  %i.gg = phi i32 [ %storemerge115, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread ], [ %storemerge115, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit ], [ %.pre, %bb.e ], [ %storemerge115, %.thread ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.gh = add nsw i32 %i.gg, 1                    ; 3 uses
  store i32 %i.gh, ptr %i.d, align 4
  %i.gi = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 3208
  %i.gk = load i32, ptr %i.gj, align 8
  %i.gl = icmp slt i32 %i.gh, %i.gk
  br i1 %i.gl, label %bb.d, label %._crit_edge, !llvm.loop !76
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
  %i.b = alloca i16, align 2                      ; 4 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %i.d = alloca [3 x ptr], align 16               ; 6 uses
  %13 = alloca %"class.icu_78::SimpleFormatter", align 8 ; 7 uses
  %i.e = load i32, ptr %4, align 4
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.i, align 8
  %.not31 = icmp eq i32 %2, 0
  br i1 %.not31, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.j, align 8
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %8) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  store ptr null, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = call noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %2, ptr noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.c)
  %i.q = load i32, ptr %4, align 4
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.s, align 8
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.p) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.u, i32 noundef %3, i32 noundef %5)
  %i.v = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %9) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  %i.w = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.g, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.f
  %i.aa = and i32 %2, 24576
  %i.ab = icmp eq i32 %i.aa, 24576
  %i.ac = or i32 %3, 1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ak = and i32 %i.y, 24576
  %i.al = icmp eq i32 %i.ak, 16384
  %or.cond50 = and i1 %i.ab, %i.al
  br i1 %or.cond50, label %.lr.ph45, label %.split

bb.g:                                             ; preds = %bb.f
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  br label %.critedge

bb.h:                                             ; preds = %.lr.ph45
  %i.am = and i32 %i.av, 24576
  %i.an = icmp eq i32 %i.am, 16384
  br i1 %i.an, label %.lr.ph45, label %.split, !llvm.loop !77

.lr.ph45:                                         ; preds = %.lr.ph.lr.ph, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.u, i32 noundef %i.ac, i32 noundef %5)
  %i.ao = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %10) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ap = load ptr, ptr %i.n, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, -16385
  store i32 %i.as, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.n, align 8             ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 8            ; 3 uses
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.outer._crit_edge, label %bb.h, !llvm.loop !77

.split:                                           ; preds = %bb.h, %.lr.ph.lr.ph
  %.us-phi = phi ptr [ %i.w, %.lr.ph.lr.ph ], [ %i.at, %bb.h ]
  %.us-phi44 = phi i32 [ %i.y, %.lr.ph.lr.ph ], [ %i.av, %bb.h ] ; 2 uses
  %i.ax = load ptr, ptr %i.l, align 8
  %i.ay = call noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(152) %i.ax, i32 noundef %.us-phi44, ptr noundef nonnull %.us-phi, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.c)
  %i.az = load i32, ptr %4, align 4
  %i.ba = icmp slt i32 %i.az, 1
  br i1 %i.ba, label %bb.i, label %.thread

.thread:                                          ; preds = %.split
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.bb, align 8
  br label %.critedge

bb.i:                                             ; preds = %.split
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ay) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.bd = load ptr, ptr %i.c, align 8
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.bd, i32 noundef %3, i32 noundef %5)
  %i.be = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %11) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.bf = load ptr, ptr %i.n, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = xor i32 %i.bh, -1
  %i.bj = and i32 %.us-phi44, %i.bi               ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.012.i = phi i32 [ %i.bm, %.preheader.i ], [ 0, %bb.i ]
  %.0711.i = phi i32 [ %i.bl, %.preheader.i ], [ %i.bj, %bb.i ]
  %i.bl = ashr i32 %.0711.i, 1                    ; 2 uses
  %i.bm = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %.not.i = icmp eq i32 %i.bl, 0
  br i1 %.not.i, label %bb.j, label %.preheader.i, !llvm.loop !13

bb.j:                                             ; preds = %.preheader.i
  %i.bn = call i32 @llvm.umin.i32(i32 %i.bm, i32 16)
  %.08.i = add nsw i32 %i.bn, -1
  %i.bo = zext nneg i32 %.08.i to i64
  br label %_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit

_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit: ; preds = %bb.i, %bb.j
  %.1.i = phi i64 [ %i.bo, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %i.bp = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.1.i ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i16, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp slt i16 %i.br, 0
  %i.bt = ashr i16 %i.br, 5
  %i.bu = sext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = select i1 %i.bs, i32 %i.bw, i32 %i.bu
  %.not35 = icmp eq i32 %i.bx, 0
  br i1 %.not35, label %.outer._crit_edge, label %bb.k

bb.k:                                             ; preds = %_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %12, align 8
  store i16 2, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2
  %i.by = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bz = getelementptr inbounds nuw [192 x i8], ptr %i.af, i64 %.1.i ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i16, ptr %i.ca, align 8            ; 2 uses
  %i.cc = icmp slt i16 %i.cb, 0
  %i.cd = ashr i16 %i.cb, 5
  %i.ce = sext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = select i1 %i.cc, i32 %i.cg, i32 %i.ce
  %i.ci = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i32 noundef 0, i32 noundef %i.ch) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 39, ptr %i.a, align 2
  %i.cj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  store ptr %6, ptr %i.d, align 16
  store ptr %7, ptr %i.ag, align 8
  store ptr %12, ptr %i.ah, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ai, align 8
  store i16 2, ptr %i.aj, align 8
  %i.ck = call noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.bp, i32 noundef 2, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %4) #25 ; 0 uses
  %i.cl = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter16formatAndReplaceEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull %i.d, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef null, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4) #25 ; 0 uses
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.lr.ph45, %bb.k, %_ZNK6icu_7824DateTimePatternGenerator15getTopBitNumberEi.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.l

bb.l:                                             ; preds = %.outer._crit_edge, %bb.c
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  br label %bb.m

.critedge:                                        ; preds = %.thread, %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.m

bb.m:                                             ; preds = %.critedge, %bb.l
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN6icu_7815DateTimeMatcher14getSkeletonPtrEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(152) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -128, 128) i32 @_ZNK6icu_7814SkeletonFields14getFieldLengthEi(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1
  %i.e = sext i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %3 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 3 uses
  %i.a = load atomic i8, ptr @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.12, ptr %3, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, i8 noundef signext 1, ptr noundef nonnull align 8 %3, i32 noundef -1) #25
  %i.d = load ptr, ptr %3, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #25, !srcloc !29
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7813UnicodeStringD1Ev, ptr nonnull @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #25
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.f = load i32, ptr %2, align 4
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %or.cond = icmp ugt i32 %1, 3
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 1, ptr %2, align 4
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.i = zext nneg i32 %1 to i64
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f
  %.0 = phi ptr [ %i.j, %bb.g ], [ @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, %bb.f ], [ @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, %bb.d ]
  ret ptr %.0
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_R10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %5 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  %i.a = load i32, ptr %4, align 4, !noalias !80
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !alias.scope !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.c, align 8, !alias.scope !80
  br label %_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %i.e = load i32, ptr %i.d, align 8, !noalias !80 ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %4, align 4, !noalias !80
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !alias.scope !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8, !alias.scope !80
  br label %_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !noalias !80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !80
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %5, align 8, !noalias !80
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.l, i8 0, i64 65, i1 false), !noalias !80
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(137) %5), !noalias !80
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !80
  tail call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit

_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit: ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %6 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 5 uses
  %i.a = load i32, ptr %5, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.c, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %5, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.l, i8 0, i64 65, i1 false)
  call void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(137) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  tail call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef null, i32 noundef 0, i32 noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator10setDecimalERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.c = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator10getDecimalEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432
  ret ptr %i.a
}

declare void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatE16UDateFormatStyleRKNS_13UnicodeStringER10UErrorCode.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.c = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) #25 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4240 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.f = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d) #25 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4304 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.i = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #25 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4368 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1) #25 ; 0 uses
  %i.l = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatE16UDateFormatStyleRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 3
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  %i.g = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #25 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %1 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = load atomic i8, ptr @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit, !prof !35

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #25
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.12, ptr %1, align 8
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, i8 noundef signext 1, ptr noundef nonnull align 8 %1, i32 noundef -1) #25
  %i.d = load ptr, ptr %1, align 8
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #25, !srcloc !29
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7813UnicodeStringD1Ev, ptr nonnull @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, ptr nonnull @__dso_handle) #25 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #25
  br label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit

_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit: ; preds = %bb.c, %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4304
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret ptr %i.f
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #12

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #12

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar25getCalendarTypeFromLocaleERKNS_6LocaleEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7820DecimalFormatSymbolsC1ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2459), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator22addPatternWithSkeletonERKNS_13UnicodeStringES3_aRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcher14getBasePatternERNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 2 uses
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = and i16 %i.b, 30
  %storemerge.i = select i1 %.not.i, i16 %i.d, i16 2
  store i16 %storemerge.i, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7810PatternMap25getPatternFromBasePatternERKNS_13UnicodeStringERa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not21 = icmp eq i32 %i.h, 0
  br i1 %.not21, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2              ; 4 uses
  %i.o = add i16 %i.n, -65
  %or.cond.i = icmp ult i16 %i.o, 26
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.p = zext nneg i16 %i.n to i64
  %i.q = getelementptr i8, ptr %0, i64 -512
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.s = add i16 %i.n, -97
  %or.cond5.i = icmp ult i16 %i.s, 26
  br i1 %or.cond5.i, label %bb.d, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.t = zext nneg i16 %i.n to i64
  %i.u = getelementptr [8 x i8], ptr %0, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -560
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

_ZNK6icu_7810PatternMap9getHeaderEDs.exit:        ; preds = %bb.b, %bb.d
  %.0.in.i = phi ptr [ %i.r, %bb.b ], [ %i.v, %bb.d ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 2 uses
  %i.w = icmp eq ptr %.0.i, null
  br i1 %i.w, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit, %bb.g
  %.0 = phi ptr [ %i.ba, %bb.g ], [ %.0.i, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ] ; 7 uses
  %i.x = load i16, ptr %i.a, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.z = load i16, ptr %i.y, align 8              ; 4 uses
  %i.aa = and i16 %i.z, 1
  %.not.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.ab = trunc i16 %i.x to i8
  %i.ac = and i8 %i.ab, 1
  %i.ad = xor i8 %i.ac, 1
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

.sink.split.i.i.i:                                ; preds = %.preheader
  %i.ae = icmp slt i16 %i.z, 0
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 20
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = ashr i16 %i.z, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = select i1 %i.ae, i32 %i.ag, i32 %i.ai   ; 2 uses
  %i.ak = icmp slt i16 %i.x, 0
  %i.al = load i32, ptr %i.f, align 4
  %i.am = ashr i16 %i.x, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = select i1 %i.ak, i32 %i.al, i32 %i.an
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 0)
  %.010.i.i = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 0)
  %i.ap = and i16 %i.z, 2
  %.not.i.i.i14 = icmp eq i16 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %.0, i64 18
  %i.ar = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = select i1 %.not.i.i.i14, ptr %i.as, ptr %i.aq
  %i.au = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ao, ptr noundef %i.at, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i) #25
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.e, %.sink.split.i.i.i
  %.0.i.i13 = phi i8 [ %i.ad, %bb.e ], [ %i.au, %.sink.split.i.i.i ]
  %i.av = icmp eq i8 %.0.i.i13, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.ax = load i8, ptr %i.aw, align 8
  store i8 %i.ax, ptr %2, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 80
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader, !llvm.loop !81

_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread: ; preds = %bb.g, %bb.a, %bb.c, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit, %bb.f
  %.010 = phi ptr [ null, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ], [ %i.ay, %bb.f ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ]
  ret ptr %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #13 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.e = load i8, ptr %i.d, align 1
  %.not.1.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.1.i.i, label %bb.e, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.g = load i8, ptr %i.f, align 2
  %.not.2.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.2.i.i, label %bb.f, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 123
  %i.i = load i8, ptr %i.h, align 1
  %.not.3.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.3.i.i, label %bb.g, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.k = load i8, ptr %i.j, align 4
  %.not.4.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.4.i.i, label %bb.h, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.m = load i8, ptr %i.l, align 1
  %.not.5.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.5.i.i, label %bb.i, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.o = load i8, ptr %i.n, align 2
  %.not.6.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.6.i.i, label %bb.j, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.q = load i8, ptr %i.p, align 1
  %.not.7.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.7.i.i, label %bb.k, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load i8, ptr %i.r, align 8
  %.not.8.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.8.i.i, label %bb.l, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.u = load i8, ptr %i.t, align 1
  %.not.9.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.9.i.i, label %bb.m, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.w = load i8, ptr %i.v, align 2
  %.not.10.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.10.i.i, label %bb.n, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.y = load i8, ptr %i.x, align 1
  %.not.11.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.11.i.i, label %bb.o, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aa = load i8, ptr %i.z, align 4
  %.not.12.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.12.i.i, label %bb.p, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.ac = load i8, ptr %i.ab, align 1
  %.not.13.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.13.i.i, label %bb.q, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 134
  %i.ae = load i8, ptr %i.ad, align 2
  %.not.14.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.14.i.i, label %bb.r, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.ag = load i8, ptr %i.af, align 1
  %.not.15.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.15.i.i, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit:    ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.lcssa.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ], [ 13, %bb.p ], [ 14, %bb.q ], [ 15, %bb.r ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa.i.i
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i16                    ; 4 uses
  %i.ak = add nsw i16 %i.aj, -65
  %or.cond.i = icmp ult i16 %i.ak, 26
  br i1 %or.cond.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit
  %i.al = zext nneg i16 %i.aj to i64
  %i.am = getelementptr i8, ptr %0, i64 -512
  %i.an = getelementptr [8 x i8], ptr %i.am, i64 %i.al
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

bb.t:                                             ; preds = %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit
  %i.ao = add nsw i16 %i.aj, -97
  %or.cond5.i = icmp ult i16 %i.ao, 26
  br i1 %or.cond5.i, label %bb.u, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.ap = zext nneg i16 %i.aj to i64
  %i.aq = getelementptr [8 x i8], ptr %0, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -560
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

_ZNK6icu_7810PatternMap9getHeaderEDs.exit:        ; preds = %bb.s, %bb.u
  %.0.in.i = phi ptr [ %i.an, %bb.s ], [ %i.ar, %bb.u ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 3 uses
  %i.as = icmp eq ptr %.0.i, null
  br i1 %i.as, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us
  %.020.us = phi ptr [ %i.bk, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us ], [ %.0.i, %.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.020.us, i64 72
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 104
  %i.ay = load i128, ptr %i.ax, align 1
  %i.az = load i128, ptr %i.a, align 1
  %i.ba = icmp ne i128 %i.ay, %i.az
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us:      ; preds = %.preheader.split.us
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 120
  %i.be = load i128, ptr %i.bd, align 1
  %i.bf = load i128, ptr %i.b, align 1
  %i.bg = icmp ne i128 %i.be, %i.bf
  %i.bh = zext i1 %i.bg to i32
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.thread41, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us: ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us, %.preheader.split.us
  %i.bj = getelementptr inbounds nuw i8, ptr %.020.us, i64 152
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not27.us = icmp eq ptr %i.bk, null
  br i1 %.not27.us, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader.split.us, !llvm.loop !82

.preheader.split:                                 ; preds = %.preheader, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread
  %.020 = phi ptr [ %i.cd, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread ], [ %.0.i, %.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.020, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8            ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 72
  %i.bo = load i128, ptr %i.bn, align 1
  %i.bp = load i128, ptr %i.at, align 1
  %i.bq = icmp ne i128 %i.bo, %i.bp
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %.split, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

.split:                                           ; preds = %.preheader.split
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 88
  %i.bu = load i128, ptr %i.bt, align 1
  %i.bv = load i128, ptr %i.au, align 1
  %i.bw = icmp ne i128 %i.bu, %i.bv
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.v, label %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread

bb.v:                                             ; preds = %.split
  %i.bz = getelementptr inbounds nuw i8, ptr %.020, i64 144
  %i.ca = load i8, ptr %i.bz, align 8
  %.not26 = icmp eq i8 %i.ca, 0
  br i1 %.not26, label %.thread41, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bm, ptr %2, align 8
  br label %.thread41

.thread41:                                        ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us, %bb.v, %bb.w
  %.02047 = phi ptr [ %.020, %bb.w ], [ %.020, %bb.v ], [ %.020.us, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.02047, i64 80
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread:  ; preds = %.preheader.split, %.split
  %i.cc = getelementptr inbounds nuw i8, ptr %.020, i64 152
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %.not27 = icmp eq ptr %i.cd, null
  br i1 %.not27, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader.split, !llvm.loop !82

_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread: ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us, %bb.r, %bb.t, %.thread41, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %.2 = phi ptr [ %i.cb, %.thread41 ], [ null, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ], [ null, %bb.r ], [ null, %bb.t ], [ null, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us ], [ null, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810PatternMap3addERKNS_13UnicodeStringERKNS_11PtnSkeletonES3_aR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(425) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not96 = icmp eq i32 %i.h, 0
  br i1 %.not96, label %.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2              ; 4 uses
  store i32 0, ptr %5, align 4
  %i.o = zext i16 %i.n to i64                     ; 2 uses
  %i.p = add i16 %i.n, -65
  %or.cond = icmp ult i16 %i.p, 26
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.q = add i16 %i.n, -97
  %or.cond6 = icmp ult i16 %i.q, 26
  br i1 %or.cond6, label %bb.c, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  store i32 65567, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.c:                                             ; preds = %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.sink110 = phi i64 [ -512, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -560, %bb.b ]
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 %.sink110
  %.051 = load ptr, ptr %i.s, align 8             ; 3 uses
  %cond = icmp eq ptr %.051, null
  br i1 %cond, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 160) #25 ; 11 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %5, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_787PtnElemE, i64 16), ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 3 uses
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 80
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %3) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 152
  store ptr null, ptr %i.aa, align 8
  %.pre97 = load i32, ptr %5, align 4
  %i.ab = icmp slt i32 %.pre97, 1
  br i1 %i.ab, label %bb.g, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit
  %i.ac = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 144) #25 ; 10 uses
  %i.ad = icmp eq ptr %i.ac, null                 ; 2 uses
  br i1 %i.ad, label %.thread90, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 72 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ah, i64 64, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ai, i64 16, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.al, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.an, i64 16, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ap = load i8, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store i8 %i.ap, ptr %i.aq, align 8
  %i.ar = load i32, ptr %5, align 4
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %bb.m, label %bb.i

.thread90:                                        ; preds = %bb.g
  %i.at = load i32, ptr %5, align 4
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, label %bb.i

bb.i:                                             ; preds = %.thread90, %bb.h
  %i.av = load ptr, ptr %i.y, align 8             ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  tail call void %i.az(ptr noundef nonnull align 8 dereferenceable(137) %i.av) #25, !inline_history !2
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store ptr %i.ac, ptr %i.y, align 8
  br i1 %i.ad, label %bb.l, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.m:                                             ; preds = %bb.h
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(137) %i.ac) #25
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.k, %bb.m
  %.pr = load i32, ptr %5, align 4
  %i.ba = icmp slt i32 %.pr, 1
  br i1 %i.ba, label %bb.n, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.n:                                             ; preds = %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i8 %4, ptr %i.bb, align 8
  %i.bc = icmp samesign ugt i16 %i.n, 96
  br i1 %i.bc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr i8, ptr %0, i64 -560
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %i.o
  store ptr %i.t, ptr %i.be, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.p:                                             ; preds = %bb.n
  %i.bf = getelementptr i8, ptr %i.r, i64 -512
  store ptr %i.t, ptr %i.bf, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.q:                                             ; preds = %bb.c
  %i.bg = tail call noundef ptr @_ZN6icu_7810PatternMap16getDuplicateElemERKNS_13UnicodeStringERKNS_11PtnSkeletonEPNS_7PtnElemE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef nonnull %.051) ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.preheader, label %bb.ac

.preheader:                                       ; preds = %bb.q, %.preheader
  %.052 = phi ptr [ %i.bj, %.preheader ], [ %.051, %bb.q ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.052, i64 152
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bj, null
  br i1 %.not, label %bb.r, label %.preheader, !llvm.loop !83

bb.r:                                             ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %.052, i64 152 ; 2 uses
  %i.bl = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 160) #25 ; 10 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.s, label %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67

bb.s:                                             ; preds = %bb.r
  %i.bn = load i32, ptr %5, align 4
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67: ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_787PtnElemE, i64 16), ptr %i.bl, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 72 ; 3 uses
  store ptr null, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 80
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %3) #25
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 152
  store ptr null, ptr %i.bs, align 8
  %.pre = load i32, ptr %5, align 4
  %i.bt = icmp slt i32 %.pre, 1
  br i1 %i.bt, label %bb.u, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread

bb.u:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67
  %i.bu = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 144) #25 ; 10 uses
  %i.bv = icmp eq ptr %i.bu, null                 ; 2 uses
  br i1 %i.bv, label %.thread94, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 72 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 104
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.by, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bz, i64 64, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ca, i64 16, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 88
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cc, i64 16, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bx, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.cd, i64 16, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 120
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.cf, i64 16, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ch = load i8, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bu, i64 136
  store i8 %i.ch, ptr %i.ci, align 8
  %i.cj = load i32, ptr %5, align 4
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %bb.aa, label %bb.w

.thread94:                                        ; preds = %bb.u
  %i.cl = load i32, ptr %5, align 4
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread, label %bb.w

bb.w:                                             ; preds = %.thread94, %bb.v
  %i.cn = load ptr, ptr %i.bq, align 8            ; 3 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = load ptr, ptr %i.cn, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  tail call void %i.cr(ptr noundef nonnull align 8 dereferenceable(137) %i.cn) #25, !inline_history !2
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store ptr %i.bu, ptr %i.bq, align 8
  br i1 %i.bv, label %bb.z, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68

bb.z:                                             ; preds = %bb.y
  store i32 7, ptr %5, align 4
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread

bb.aa:                                            ; preds = %bb.v
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(137) %i.bu) #25
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68: ; preds = %bb.y, %bb.aa
  %.pr108 = load i32, ptr %5, align 4
  %i.cs = icmp slt i32 %.pr108, 1
  br i1 %i.cs, label %.critedge65, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread

.critedge65:                                      ; preds = %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 144
  store i8 %4, ptr %i.ct, align 8
  %i.cu = load ptr, ptr %i.bk, align 8            ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69, label %bb.ab

bb.ab:                                            ; preds = %.critedge65
  %i.cw = load ptr, ptr %i.cu, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8
  tail call void %i.cy(ptr noundef nonnull align 8 dereferenceable(160) %i.cu) #25, !inline_history !3
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69: ; preds = %bb.ab, %.critedge65
  store ptr %i.bl, ptr %i.bk, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread: ; preds = %bb.z, %.thread94, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68, %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit67
  %i.cz = load ptr, ptr %i.bl, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8
  tail call void %i.db(ptr noundef nonnull align 8 dereferenceable(160) %i.bl) #25, !inline_history !4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

bb.ac:                                            ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.dd = load i8, ptr %i.dc, align 8
  %.not61 = icmp eq i8 %i.dd, 0
  br i1 %.not61, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = getelementptr inbounds nuw i8, ptr %i.bg, i64 80
  %i.df = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.de, ptr noundef nonnull align 8 dereferenceable(64) %3) #25 ; 0 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bg, i64 144
  store i8 %4, ptr %i.dg, align 8
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread: ; preds = %bb.l, %.thread90, %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.dh = load ptr, ptr %i.t, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  tail call void %i.dj(ptr noundef nonnull align 8 dereferenceable(160) %i.t) #25, !inline_history !4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit70: ; preds = %bb.f, %bb.e, %bb.t, %bb.s, %bb.o, %bb.p, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit68.thread, %bb.ad, %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit69, %bb.ac, %.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 0, 17) i32 @_ZNK6icu_7824DateTimePatternGenerator21getAppendFormatNumberEPKc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.16, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.17, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.18, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.19, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.20, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.21, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.22, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.23, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.24, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.25, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.26, ptr noundef nonnull dereferenceable(1) %1) #27
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l
end_hunk_4
begin_hunk_5_@_ZNK6icu_7824DateTimePatternGenerator23getFieldAndWidthIndicesEPKcP23UDateTimePGDisplayWidth:bb.a
  br i1 %i.bw, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i32, ptr %i.a, align 16
  %i.by = xor i32 1920298856, %i.bx
  %i.bz = getelementptr i8, ptr %i.a, i64 4
  %i.ca = load i8, ptr %i.bz, align 4
  %i.cb = zext i8 %i.ca to i32
  %i.cc = or i32 %i.by, %i.cb
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = load i32, ptr %i.a, align 16
  %i.ch = xor i32 1970170221, %i.cg
  %i.ci = getelementptr i8, ptr %i.a, i64 3
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = xor i32 6648949, %i.cj
  %i.cl = or i32 %i.ch, %i.ck
  %i.cm = icmp ne i32 %i.cl, 0
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = load i32, ptr %i.a, align 16
  %i.cq = xor i32 1868785011, %i.cp
  %i.cr = getelementptr i8, ptr %i.a, i64 3
  %i.cs = load i32, ptr %i.cr, align 1
  %i.ct = xor i32 6581871, %i.cs
  %i.cu = or i32 %i.cq, %i.ct
  %i.cv = icmp ne i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %rhsv45 = load i16, ptr %i.a, align 16
  %.not47 = icmp eq i16 %rhsv45, 42
  br i1 %.not47, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cy = load i32, ptr %i.a, align 16
  %i.cz = xor i32 1701736314, %i.cy
  %i.da = getelementptr i8, ptr %i.a, i64 4
  %i.db = load i8, ptr %i.da, align 4
  %i.dc = zext i8 %i.db to i32
  %i.dd = or i32 %i.cz, %i.dc
  %i.de = icmp ne i32 %i.dd, 0
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  %spec.select49 = select i1 %i.dg, i32 15, i32 16
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %spec.select = phi i32 [ 0, %bb.c ], [ 8, %bb.k ], [ 1, %bb.d ], [ %spec.select49, %bb.r ], [ 2, %bb.e ], [ 10, %bb.m ], [ 3, %bb.f ], [ 14, %bb.q ], [ 4, %bb.g ], [ 9, %bb.l ], [ 5, %bb.h ], [ 13, %bb.p ], [ 6, %bb.i ], [ 11, %bb.n ], [ 7, %bb.j ], [ 12, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7818PatternMapIterator3setERNS_10PatternMapE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(425) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7818PatternMapIterator7hasNextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = icmp slt i32 %i.g, 52
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = sext i32 %i.g to i64                     ; 2 uses
  %.not.peel = icmp eq ptr %i.e, null
  br i1 %.not.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.l = load ptr, ptr %i.k, align 8
  %.not10.peel = icmp eq ptr %i.l, null
  br i1 %.not10.peel, label %.backedge.peel, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8
  %.not9.peel = icmp eq ptr %i.n, null
  br i1 %.not9.peel, label %.backedge.peel, label %.loopexit

.backedge.peel:                                   ; preds = %bb.c, %bb.b
  %indvars.iv.next.peel = add nsw i64 %i.j, 1     ; 2 uses
  %exitcond.peel.not = icmp eq i64 %indvars.iv.next.peel, 52
  br i1 %exitcond.peel.not, label %.loopexit, label %.lr.ph.peel.next

.backedge:                                        ; preds = %.lr.ph.peel.next
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.o = and i64 %indvars.iv.next, 4294967295
  %exitcond.not = icmp eq i64 %i.o, 52
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.peel.next, !llvm.loop !9

.lr.ph.peel.next:                                 ; preds = %.backedge.peel, %.backedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ %indvars.iv.next.peel, %.backedge.peel ] ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8
  %.not9 = icmp eq ptr %i.q, null
  br i1 %.not9, label %.backedge, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.peel.next, %.backedge, %bb.b, %bb.c, %.backedge.peel, %.preheader, %bb.a
  %.08 = phi i8 [ 0, %bb.a ], [ 0, %.preheader ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %.backedge.peel ], [ 1, %.lr.ph.peel.next ], [ 0, %.backedge ]
  ret i8 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(152) ptr @_ZN6icu_7818PatternMapIterator4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load i32, ptr %i.a, align 8        ; 3 uses
  %i.b = icmp slt i32 %.promoted, 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.b, label %.lr.ph, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.c, align 8
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.promoted9 = load ptr, ptr %i.c, align 8       ; 3 uses
  %i.g = sext i32 %.promoted to i64               ; 3 uses
  %.not.peel = icmp eq ptr %.promoted9, null
  br i1 %.not.peel, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.promoted9, i64 152
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not5.peel = icmp eq ptr %i.i, null
  br i1 %.not5.peel, label %bb.c, label %.loopexit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %i.g, 1                      ; 2 uses
  %i.k = add nsw i32 %.promoted, 1
  %i.l = trunc nsw i64 %i.j to i32
  store i32 %i.l, ptr %i.a, align 8
  store ptr null, ptr %i.c, align 8
  br label %.backedge.peel

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not3.peel = icmp eq ptr %i.n, null
  br i1 %.not3.peel, label %bb.e, label %.loopexit.thread.sink.split

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %i.g, 1                      ; 2 uses
  %i.p = trunc nsw i64 %i.o to i32                ; 2 uses
  store i32 %i.p, ptr %i.a, align 8
  br label %.backedge.peel

.backedge.peel:                                   ; preds = %bb.e, %bb.c
  %indvars.iv.next.pre-phi.peel = phi i64 [ %i.j, %bb.c ], [ %i.o, %bb.e ]
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
  br i1 %i.x, label %.lr.ph.peel.newph, label %.loopexit, !llvm.loop !84

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
  %.02227 = phi i32 [ 0, %bb.a ], [ %.2, %bb.i ]  ; 5 uses
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
  %i.t = add nuw nsw i32 %.02227, 65536
  %i.u = or i32 %i.f, %i.h                        ; 2 uses
  store i32 %i.u, ptr %i.a, align 4
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %i.n, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i32 %.02227, 4096
  %i.x = or i32 %i.e, %i.h                        ; 2 uses
  store i32 %i.x, ptr %i.b, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = sub nsw i32 %i.l, %i.n
  %i.z = tail call i32 @llvm.abs.i32(i32 %i.y, i1 true)
  %i.aa = add nuw nsw i32 %i.z, %.02227
  br label %bb.i

bb.i:                                             ; preds = %.thread, %.thread25, %bb.h, %bb.g, %bb.d
  %i.ab = phi i32 [ %i.f, %bb.d ], [ %i.u, %.thread25 ], [ %i.f, %bb.g ], [ %i.f, %bb.h ], [ %i.f, %.thread ]
  %i.ac = phi i32 [ %i.e, %bb.d ], [ %i.e, %.thread25 ], [ %i.x, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %.thread ]
  %.2 = phi i32 [ %.02227, %bb.d ], [ %i.t, %.thread25 ], [ %i.w, %bb.g ], [ %i.aa, %bb.h ], [ %.02227, %.thread ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !10
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
  %i.i = zext nneg i8 %i.h to i32
  %i.j = icmp sgt i8 %i.h, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.e, ptr %i.a, align 2
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !12
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
  br i1 %.not, label %bb.b, label %.preheader, !llvm.loop !13

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
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #25, !inline_history !14
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
  br label %bb.l

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
  %i.u = getelementptr i8, ptr %i.l, i64 -512
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %i.t
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

bb.d:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.w = add i16 %i.r, -97
  %or.cond5.i = icmp ult i16 %i.w, 26
  br i1 %or.cond5.i, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.x = zext nneg i16 %i.r to i64
  %i.y = getelementptr [8 x i8], ptr %i.l, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -560
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit

_ZNK6icu_7810PatternMap9getHeaderEDs.exit:        ; preds = %bb.c, %bb.e
  %.0.in.i = phi ptr [ %i.v, %bb.c ], [ %i.z, %bb.e ]
  %.0.i = load ptr, ptr %.0.in.i, align 8         ; 2 uses
  %.not17 = icmp eq ptr %.0.i, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %.018 = phi ptr [ %.0.i, %.lr.ph ], [ %i.bp, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.ac = getelementptr inbounds nuw i8, ptr %.018, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !88)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !alias.scope !88
  store i16 2, ptr %i.aa, align 8, !alias.scope !88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.ag = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %2) #25 ; 0 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.ai = load i8, ptr %i.ah, align 8, !noalias !88
  %.not.i = icmp eq i8 %i.ai, 0
  br i1 %.not.i, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load i16, ptr %i.aa, align 8, !alias.scope !88 ; 2 uses
  %i.ak = icmp slt i16 %i.aj, 0
  %i.al = ashr i16 %i.aj, 5
  %i.am = sext i16 %i.al to i32
  %i.an = load i32, ptr %i.ab, align 4, !alias.scope !88
  %i.ao = select i1 %i.ak, i32 %i.an, i32 %i.am
  %i.ap = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.ao) #25 ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.h, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

bb.h:                                             ; preds = %bb.g
  %i.ar = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %i.ap, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit:     ; preds = %bb.f, %bb.g, %bb.h
  %i.as = load i16, ptr %i.aa, align 8            ; 3 uses
  %i.at = and i16 %i.as, 1
  %.not.i10 = icmp eq i16 %i.at, 0
  br i1 %.not.i10, label %bb.i, label %.split

.split:                                           ; preds = %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit
  %i.au = load i16, ptr %i.a, align 8
  %i.av = trunc i16 %i.au to i1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %i.av, label %bb.j, label %bb.k

bb.i:                                             ; preds = %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit
  %i.aw = icmp slt i16 %i.as, 0
  %i.ax = ashr i16 %i.as, 5
  %i.ay = sext i16 %i.ax to i32
  %i.az = load i32, ptr %i.ab, align 4
  %i.ba = select i1 %i.aw, i32 %i.az, i32 %i.ay   ; 2 uses
  %i.bb = load i16, ptr %i.a, align 8             ; 4 uses
  %i.bc = icmp slt i16 %i.bb, 0
  %i.bd = ashr i16 %i.bb, 5
  %i.be = sext i16 %i.bd to i32
  %i.bf = load i32, ptr %i.f, align 4
  %i.bg = select i1 %i.bc, i32 %i.bf, i32 %i.be
  %i.bh = and i16 %i.bb, 1
  %.not9.i = icmp eq i16 %i.bh, 0
  %i.bi = icmp eq i32 %i.ba, %i.bg
  %or.cond.i12 = and i1 %.not9.i, %i.bi
  br i1 %or.cond.i12, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.i
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br label %bb.k

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.i
  %i.bj = and i16 %i.bb, 2
  %.not.i.i.i13 = icmp eq i16 %i.bj, 0
  %i.bk = load ptr, ptr %i.o, align 8
  %i.bl = select i1 %.not.i.i.i13, ptr %i.bk, ptr %i.n
  %i.bm = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.bl, i32 noundef %i.ba) #25
  %.not15 = icmp eq i8 %i.bm, 0
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  br i1 %.not15, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %.018, i64 80
  br label %bb.l

bb.k:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.bo = getelementptr inbounds nuw i8, ptr %.018, i64 152
  %i.bp = load ptr, ptr %i.bo, align 8            ; 2 uses
  %.not = icmp eq ptr %i.bp, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !87

._crit_edge:                                      ; preds = %bb.k, %bb.d, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 4512
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j, %bb.b
  %.09 = phi ptr [ %i.j, %bb.b ], [ %i.bn, %bb.j ], [ %i.bq, %._crit_edge ]
  ret ptr %.09
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK6icu_7810PatternMap9getHeaderEDs(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, i16 noundef zeroext %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = add i16 %1, -65
  %or.cond = icmp ult i16 %i.a, 26
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i16 %1 to i64
  %i.c = getelementptr i8, ptr %0, i64 -512
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %i.b
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = add i16 %1, -97
  %or.cond5 = icmp ult i16 %i.e, 26
  br i1 %or.cond5, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = zext nneg i16 %1 to i64
  %i.g = getelementptr [8 x i8], ptr %0, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -560
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.0.in = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.d ]
  %.0 = load ptr, ptr %.0.in, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.013 = phi ptr [ %.0, %bb.e ], [ null, %bb.c ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7824DateTimePatternGenerator16getBaseSkeletonsER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
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
  tail call void @_ZN6icu_7821DTSkeletonEnumerationC2ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(425) %i.k, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %.pre = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %bb.g, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.g:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.m = load ptr, ptr %i.f, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #25, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.e, %bb.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit, %bb.g, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ %i.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit ], [ null, %bb.f ], [ null, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7824DateTimePatternGenerator13getRedundantsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %3 = alloca %"class.icu_78::DateTimeMatcher", align 16 ; 10 uses
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
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
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #25 ; 13 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  tail call void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.f) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7822DTRedundantEnumerationE, i64 16), ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 116
  store i32 0, ptr %i.h, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr null, ptr %i.i, align 8
  %.pr = load i32, ptr %1, align 4
  %i.j = icmp slt i32 %.pr, 1
  br i1 %i.j, label %bb.f, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %1, align 4
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread

_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread:   ; preds = %bb.e
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.f:                                             ; preds = %.thread
  %i.m = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #25 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.p, i8 0, i64 65, i1 false)
  %i.q = load i32, ptr %1, align 4
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread109

.thread.i:                                        ; preds = %bb.f
  %i.s = load i32, ptr %1, align 4
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119, label %bb.h

bb.h:                                             ; preds = %.thread.i
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119

_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit: ; preds = %bb.g
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(152) %i.m) #25
  %.pre = load i32, ptr %1, align 4
  %i.u = icmp slt i32 %.pre, 1
  br i1 %i.u, label %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread109, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119

_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread109: ; preds = %bb.g, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit
  %.sroa.16.0111 = phi ptr [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit ], [ %i.m, %bb.g ] ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.loopexit, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread109
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.16.0111, i64 16 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.16.0111, i64 80 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.16.0111, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.16.0111, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.16.0111, i64 128 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.16.0111, i64 144
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4496 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i.lr.ph, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
  %.sroa.941.083132 = phi ptr [ null, %.preheader.i.lr.ph ], [ %.sroa.941.2.ph, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0 ] ; 3 uses
  %.sroa.4.085131 = phi i32 [ 0, %.preheader.i.lr.ph ], [ %.sroa.4.3.lcssa, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0 ] ; 3 uses
  %i.ap = sext i32 %.sroa.4.085131 to i64         ; 4 uses
  %.not.peel.i = icmp eq ptr %.sroa.941.083132, null ; 2 uses
  br i1 %.not.peel.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.preheader.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.941.083132, i64 152
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not10.peel.i = icmp eq ptr %i.ar, null
  br i1 %.not10.peel.i, label %.backedge.peel.i, label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.preheader.i
  %i.as = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ap
  %i.at = load ptr, ptr %i.as, align 8
  %.not9.peel.i = icmp eq ptr %i.at, null
  br i1 %.not9.peel.i, label %.backedge.peel.i, label %.lr.ph.i

.backedge.peel.i:                                 ; preds = %bb.j, %bb.i
  %indvars.iv.next.peel.i = add nsw i64 %i.ap, 1  ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv.next.peel.i, 52
  br i1 %exitcond.peel.not.i, label %.loopexit, label %.lr.ph.peel.next.i

.backedge.i:                                      ; preds = %.lr.ph.peel.next.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.au = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.au, 52
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.peel.next.i, !llvm.loop !9

.lr.ph.peel.next.i:                               ; preds = %.backedge.peel.i, %.backedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i ], [ %indvars.iv.next.peel.i, %.backedge.peel.i ] ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aw = load ptr, ptr %i.av, align 8
  %.not9.i = icmp eq ptr %i.aw, null
  br i1 %.not9.i, label %.backedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.peel.next.i, %bb.i, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  br i1 %.not.peel.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.941.083132, i64 152
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not5.i.peel = icmp eq ptr %i.ay, null
  br i1 %.not5.i.peel, label %.peel.next.preheader, label %.loopexit.thread.i

bb.l:                                             ; preds = %.lr.ph.i
  %i.az = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ap
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not3.i.peel = icmp eq ptr %i.ba, null
  br i1 %.not3.i.peel, label %.peel.next.preheader, label %.loopexit.thread.i

.peel.next.preheader:                             ; preds = %bb.l, %bb.k
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %.peel.next
  %indvars.iv.i29.in = phi i64 [ %indvars.iv.i29, %.peel.next ], [ %i.ap, %.peel.next.preheader ]
  %indvars.iv.i29 = add nsw i64 %indvars.iv.i29.in, 1 ; 3 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv.i29
  %i.bc = load ptr, ptr %i.bb, align 8            ; 2 uses
  %.not3.i = icmp eq ptr %i.bc, null
  br i1 %.not3.i, label %.peel.next, label %.loopexit.thread.i.loopexit

.loopexit.thread.i.loopexit:                      ; preds = %.peel.next
  %.sroa.4.3 = trunc i64 %indvars.iv.i29 to i32
  br label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.loopexit.thread.i.loopexit, %bb.k, %bb.l
  %.sroa.4.3.lcssa = phi i32 [ %.sroa.4.085131, %bb.k ], [ %.sroa.4.085131, %bb.l ], [ %.sroa.4.3, %.loopexit.thread.i.loopexit ] ; 2 uses
  %.sroa.941.2.ph = phi ptr [ %i.ay, %bb.k ], [ %i.ba, %bb.l ], [ %i.bc, %.loopexit.thread.i.loopexit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.941.2.ph, i64 72
  %i.be = load ptr, ptr %i.bd, align 8            ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.z, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bf, i64 64, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bg, i64 16, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bi, i64 16, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bj, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 136
  %i.bl = load i8, ptr %i.bk, align 8             ; 4 uses
  store i8 %i.bl, ptr %i.ae, align 8
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16)>, ptr %3, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.af, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.aa, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ai, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ac, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  store i8 %i.bl, ptr %i.ak, align 16
  %i.bm = load ptr, ptr %i.v, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.941.2.ph, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = call noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr noundef nonnull align 8 dereferenceable(425) %i.bm, ptr noundef nonnull align 8 dereferenceable(137) %i.bo, ptr noundef null) ; 7 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 3 uses
  %i.br = load i16, ptr %i.bq, align 8            ; 3 uses
  %i.bs = icmp slt i16 %i.br, 0
  %i.bt = ashr i16 %i.br, 5
  %i.bu = sext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = select i1 %i.bs, i32 %i.bw, i32 %i.bu
  %.not.i31 = icmp eq i32 %i.bx, 1
  br i1 %.not.i31, label %.preheader.i33, label %bb.m

.preheader.i33:                                   ; preds = %.loopexit.thread.i
  %i.by = and i16 %i.br, 2
  %.not.i.i.i.i = icmp eq i16 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = select i1 %.not.i.i.i.i, ptr %i.cb, ptr %i.bz
  %i.cd = load i16, ptr %i.cc, align 2
  switch i16 %i.cd, label %bb.m [
    i16 71, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 121, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 81, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 77, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 119, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 87, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 69, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 68, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 70, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 100, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 97, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 72, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 109, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 115, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 83, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
    i16 118, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0
  ], !llvm.loop !89

bb.m:                                             ; preds = %.preheader.i33, %.loopexit.thread.i
  %i.ce = load ptr, ptr %i.al, align 8            ; 7 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cg = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #25 ; 9 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread67, label %bb.o

bb.o:                                             ; preds = %bb.n
  store <2 x ptr> <ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16)>, ptr %i.cg, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cj, ptr noundef nonnull readonly align 16 dereferenceable(64) %i.ag, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.af, i64 16, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ai, i64 16, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 144
  store i8 %i.bl, ptr %i.cn, align 8
  store ptr %i.cg, ptr %i.al, align 8
  br label %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit

_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread67: ; preds = %bb.n
  store ptr null, ptr %i.al, align 8
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.sink.split

bb.p:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.co, ptr noundef nonnull align 8 dereferenceable(64) %i.z, i64 64, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cp, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.af, i64 16, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.ah, i64 16, i1 false)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ce, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cr, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.ai, i64 16, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cs, ptr noundef nonnull readonly align 16 dereferenceable(16) %i.aj, i64 16, i1 false)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 144
  store i8 %i.bl, ptr %i.ct, align 8
  br label %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit

_ZN6icu_7815DateTimeMatcheraSERKS0_.exit:         ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25, !noalias !92
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !noalias !92
  store i16 2, ptr %i.am, align 8, !noalias !92
  %i.cu = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %2), !noalias !92 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %2) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25, !noalias !92
  call void @_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringE28UDateTimePatternMatchOptionsR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %5, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.cv = load i32, ptr %1, align 4
  %i.cw = icmp slt i32 %i.cv, 1
  br i1 %i.cw, label %bb.q, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt1

bb.q:                                             ; preds = %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit
  %i.cx = load i16, ptr %i.an, align 8            ; 3 uses
  %i.cy = and i16 %i.cx, 1
  %.not.i35 = icmp eq i16 %i.cy, 0
  br i1 %.not.i35, label %bb.r, label %.split

.split:                                           ; preds = %bb.q
  %i.cz = load i16, ptr %i.bq, align 8
  %i.da = trunc i16 %i.cz to i1
  br i1 %i.da, label %bb.s, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.db = icmp slt i16 %i.cx, 0
  %i.dc = ashr i16 %i.cx, 5
  %i.dd = sext i16 %i.dc to i32
  %i.de = load i32, ptr %i.ao, align 4
  %i.df = select i1 %i.db, i32 %i.de, i32 %i.dd   ; 2 uses
  %i.dg = load i16, ptr %i.bq, align 8            ; 4 uses
  %i.dh = icmp slt i16 %i.dg, 0
  %i.di = ashr i16 %i.dg, 5
  %i.dj = sext i16 %i.di to i32
  %i.dk = load i32, ptr %i.bv, align 4
  %i.dl = select i1 %i.dh, i32 %i.dk, i32 %i.dj
  %i.dm = and i16 %i.dg, 1
  %.not9.i37 = icmp eq i16 %i.dm, 0
  %i.dn = icmp eq i32 %i.df, %i.dl
  %or.cond.i38 = and i1 %.not9.i37, %i.dn
  br i1 %or.cond.i38, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.r
  %i.do = and i16 %i.dg, 2
  %.not.i.i.i = icmp eq i16 %i.do, 0
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bp, i64 10
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = select i1 %.not.i.i.i, ptr %i.dr, ptr %i.dp
  %i.dt = call noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.ds, i32 noundef %i.df) #25
  %.not = icmp eq i8 %i.dt, 0
  br i1 %.not, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread, label %bb.s

bb.s:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  call void @_ZN6icu_7822DTRedundantEnumeration3addERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.bp, ptr noundef nonnull align 4 dereferenceable(4) %1)
  %i.du = load i32, ptr %1, align 4
  %i.dv = icmp slt i32 %i.du, 1
  br i1 %i.dv, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt1

_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread: ; preds = %bb.r, %.split, %bb.s, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0

_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0: ; preds = %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %.preheader.i33, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.dw = icmp slt i32 %.sroa.4.3.lcssa, 52
  br i1 %i.dw, label %.lr.ph.preheader.i, label %.loopexit

_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt1: ; preds = %bb.s, %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.sink.split

.loopexit:                                        ; preds = %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt0, %.backedge.peel.i, %.backedge.i, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit.thread109
  %i.dx = icmp eq ptr %.sroa.16.0111, null
  br i1 %i.dx, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

_ZN6icu_7818PatternMapIteratorD2Ev.exit.sink.split: ; preds = %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.jt1, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

_ZN6icu_7818PatternMapIteratorD2Ev.exit:          ; preds = %_ZN6icu_7818PatternMapIteratorD2Ev.exit.sink.split, %.loopexit
  %.374 = phi ptr [ %i.f, %.loopexit ], [ null, %_ZN6icu_7818PatternMapIteratorD2Ev.exit.sink.split ] ; 2 uses
  %.sroa.048.072 = phi ptr [ null, %.loopexit ], [ %i.f, %_ZN6icu_7818PatternMapIteratorD2Ev.exit.sink.split ] ; 2 uses
  %i.dy = load ptr, ptr %.sroa.16.0111, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.16.0111) #25, !inline_history !11
  %i.eb = icmp eq ptr %.sroa.048.072, null
  br i1 %i.eb, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119

_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119: ; preds = %bb.h, %.thread.i, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit, %.thread, %_ZN6icu_7818PatternMapIteratorD2Ev.exit
  %.4123 = phi ptr [ %.374, %_ZN6icu_7818PatternMapIteratorD2Ev.exit ], [ null, %.thread ], [ null, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit ], [ null, %.thread.i ], [ null, %bb.h ]
  %.sroa.048.1122 = phi ptr [ %.sroa.048.072, %_ZN6icu_7818PatternMapIteratorD2Ev.exit ], [ %i.f, %.thread ], [ %i.f, %_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode.exit ], [ %i.f, %.thread.i ], [ %i.f, %bb.h ] ; 2 uses
  %i.ec = load ptr, ptr %.sroa.048.1122, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8
  call void %i.ee(ptr noundef nonnull align 8 dereferenceable(116) %.sroa.048.1122) #25, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.e, %.loopexit, %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119, %_ZN6icu_7818PatternMapIteratorD2Ev.exit, %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread, %bb.a, %bb.c
  %.5 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread ], [ %.374, %_ZN6icu_7818PatternMapIteratorD2Ev.exit ], [ %.4123, %_ZN6icu_7818PatternMapIteratorD2Ev.exit.thread119 ], [ null, %bb.e ], [ %i.f, %.loopexit ]
  ret ptr %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK6icu_7818PatternMapIterator11getSkeletonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(4612) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2
  %switch.tableidx = add i16 %i.n, -68            ; 2 uses
  %i.o = icmp ult i16 %switch.tableidx, 54
  br i1 %i.o, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %.preheader
  %i.p = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK6icu_7822DTRedundantEnumeration15isCanonicalItemERKNS_13UnicodeStringE, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %switch.lookup, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %switch.load, %switch.lookup ], [ 0, %.preheader ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef nonnull align 8 dereferenceable(152) ptr @_ZN6icu_7815DateTimeMatcheraSERKS0_(ptr nofree noundef nonnull returned writeonly align 8 captures(address, ret: address, provenance) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(152) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.l = load i8, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.l, ptr %i.m, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7815DateTimeMatcher10getPatternEv(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i16 2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.c = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %2) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822DTRedundantEnumeration3addERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #25 ; 5 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2) #25
  %i.g = load i32, ptr %2, align 4
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.i, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.i = load i32, ptr %2, align 4
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.k = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #25, !inline_history !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.e, ptr %i.c, align 8
  br i1 %i.f, label %bb.h, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.h:                                             ; preds = %bb.g
  store i32 7, ptr %2, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.i:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.e, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #25, !inline_history !15
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.g, %bb.i
  %.pr = load i32, ptr %2, align 4
  %i.s = icmp slt i32 %.pr, 1
  br i1 %i.s, label %bb.j, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.j:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %bb.b
  %i.t = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #25 ; 5 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.k, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit

bb.k:                                             ; preds = %bb.j
  %i.v = load i32, ptr %2, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 7, ptr %2, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.j
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %.pre = load i32, ptr %2, align 4
  %i.x = icmp slt i32 %.pre, 1
  br i1 %i.x, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.y = load ptr, ptr %i.c, align 8
  tail call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull %i.t, ptr noundef nonnull align 4 dereferenceable(4) %2) #25
  %i.z = load i32, ptr %2, align 4
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load ptr, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(40) %i.ab) #25, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit: ; preds = %bb.n, %bb.o
  store ptr null, ptr %i.c, align 8
  br label %bb.p

bb.p:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit
  %i.ag = load ptr, ptr %i.t, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(64) %i.t) #25, !inline_history !17
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.h, %.thread, %bb.l, %bb.k, %bb.m, %bb.p, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK6icu_7824DateTimePatternGenerator5cloneEv(ptr noundef nonnull align 8 dereferenceable(4612) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 4616) #25 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7824DateTimePatternGeneratorC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(4612) %i.a, ptr noundef nonnull align 8 dereferenceable(4612) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7810PatternMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(425) initializes((0, 425)) %0) unnamed_addr #16 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7810PatternMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.a, i8 0, i64 416, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 1, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810PatternMapD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(425) dereferenceable(425) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7810PatternMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  ret void

bb.c:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(160) %i.c) #25
  store ptr null, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 52
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !18
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7810PatternMapD0Ev(ptr noundef nonnull align 8 dereferenceable(425) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7810PatternMapE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(160) %i.c) #25, !inline_history !93
  store ptr null, ptr %i.b, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 52
  br i1 %exitcond.not.i, label %_ZN6icu_7810PatternMapD2Ev.exit, label %bb.b, !llvm.loop !18

_ZN6icu_7810PatternMapD2Ev.exit:                  ; preds = %bb.d
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7810PatternMap16getDuplicateElemERKNS_13UnicodeStringERKNS_11PtnSkeletonEPNS_7PtnElemE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %.loopexit, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 68
  br label %bb.b

bb.b:                                             ; preds = %.preheader24, %.thread
  %.017 = phi ptr [ %i.cr, %.thread ], [ %3, %.preheader24 ] ; 7 uses
  %i.t = load i16, ptr %i.b, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.v = load i16, ptr %i.u, align 8              ; 4 uses
  %i.w = and i16 %i.v, 1
  %.not.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.i, label %.sink.split.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = trunc i16 %i.t to i8
  %i.y = and i8 %i.x, 1
  %i.z = xor i8 %i.y, 1
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

.sink.split.i.i.i:                                ; preds = %bb.b
  %i.aa = icmp slt i16 %i.v, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %.017, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = ashr i16 %i.v, 5
  %i.ae = sext i16 %i.ad to i32
  %i.af = select i1 %i.aa, i32 %i.ac, i32 %i.ae   ; 2 uses
  %i.ag = icmp slt i16 %i.t, 0
  %i.ah = load i32, ptr %i.c, align 4
  %i.ai = ashr i16 %i.t, 5
  %i.aj = sext i16 %i.ai to i32
  %i.ak = select i1 %i.ag, i32 %i.ah, i32 %i.aj
  %spec.select.i.i = tail call i32 @llvm.smin.i32(i32 %i.af, i32 0)
  %.010.i.i = tail call i32 @llvm.smax.i32(i32 %i.af, i32 0)
  %i.al = and i16 %i.v, 2
  %.not.i.i.i = icmp eq i16 %i.al, 0
  %i.am = getelementptr inbounds nuw i8, ptr %.017, i64 18
  %i.an = getelementptr inbounds nuw i8, ptr %.017, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = select i1 %.not.i.i.i, ptr %i.ao, ptr %i.am
  %i.aq = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.ap, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i) #25
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.c, %.sink.split.i.i.i
  %.0.i.i = phi i8 [ %i.z, %bb.c ], [ %i.aq, %.sink.split.i.i.i ]
  %i.ar = icmp eq i8 %.0.i.i, 0
  br i1 %i.ar, label %.preheader, label %.thread

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.017, i64 72
  %i.at = load ptr, ptr %i.as, align 8            ; 16 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.av, %i.aw
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = load i32, ptr %i.e, align 4
  %.not.1 = icmp eq i32 %i.ay, %i.az
  br i1 %.not.1, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = load i32, ptr %i.f, align 8
  %.not.2 = icmp eq i32 %i.bb, %i.bc
  br i1 %.not.2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = load i32, ptr %i.g, align 4
  %.not.3 = icmp eq i32 %i.be, %i.bf
  br i1 %.not.3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = load i32, ptr %i.h, align 8
  %.not.4 = icmp eq i32 %i.bh, %i.bi
  br i1 %.not.4, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = load i32, ptr %i.i, align 4
  %.not.5 = icmp eq i32 %i.bk, %i.bl
  br i1 %.not.5, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = load i32, ptr %i.j, align 8
  %.not.6 = icmp eq i32 %i.bn, %i.bo
  br i1 %.not.6, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = load i32, ptr %i.k, align 4
  %.not.7 = icmp eq i32 %i.bq, %i.br
  br i1 %.not.7, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = load i32, ptr %i.l, align 8
  %.not.8 = icmp eq i32 %i.bt, %i.bu
  br i1 %.not.8, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = load i32, ptr %i.m, align 4
  %.not.9 = icmp eq i32 %i.bw, %i.bx
  br i1 %.not.9, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = load i32, ptr %i.n, align 8
  %.not.10 = icmp eq i32 %i.bz, %i.ca
  br i1 %.not.10, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = load i32, ptr %i.o, align 4
  %.not.11 = icmp eq i32 %i.cc, %i.cd
  br i1 %.not.11, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = load i32, ptr %i.p, align 8
  %.not.12 = icmp eq i32 %i.cf, %i.cg
  br i1 %.not.12, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.ci = load i32, ptr %i.ch, align 4
  %i.cj = load i32, ptr %i.q, align 4
  %.not.13 = icmp eq i32 %i.ci, %i.cj
  br i1 %.not.13, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = load i32, ptr %i.r, align 8
  %.not.14 = icmp eq i32 %i.cl, %i.cm
  br i1 %.not.14, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = load i32, ptr %i.s, align 4
  %.not.15 = icmp eq i32 %i.co, %i.cp
  br i1 %.not.15, label %.loopexit, label %.thread

.thread:                                          ; preds = %.preheader, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.017, i64 152
  %i.cr = load ptr, ptr %i.cq, align 8            ; 2 uses
  %.not22 = icmp eq ptr %i.cr, null
  br i1 %.not22, label %.loopexit, label %bb.b, !llvm.loop !94

.loopexit:                                        ; preds = %.thread, %bb.r, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.thread ], [ %.017, %bb.r ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext range(i16 -128, 128) i16 @_ZNK6icu_7811PtnSkeleton12getFirstCharEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.e = load i8, ptr %i.d, align 1
  %.not.1.i = icmp eq i8 %i.e, 0
  br i1 %.not.1.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.g = load i8, ptr %i.f, align 2
  %.not.2.i = icmp eq i8 %i.g, 0
  br i1 %.not.2.i, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.i = load i8, ptr %i.h, align 1
  %.not.3.i = icmp eq i8 %i.i, 0
  br i1 %.not.3.i, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i8, ptr %i.j, align 4
  %.not.4.i = icmp eq i8 %i.k, 0
  br i1 %.not.4.i, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.m = load i8, ptr %i.l, align 1
  %.not.5.i = icmp eq i8 %i.m, 0
  br i1 %.not.5.i, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.o = load i8, ptr %i.n, align 2
  %.not.6.i = icmp eq i8 %i.o, 0
  br i1 %.not.6.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.q = load i8, ptr %i.p, align 1
  %.not.7.i = icmp eq i8 %i.q, 0
  br i1 %.not.7.i, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i8, ptr %i.r, align 8
  %.not.8.i = icmp eq i8 %i.s, 0
  br i1 %.not.8.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.u = load i8, ptr %i.t, align 1
  %.not.9.i = icmp eq i8 %i.u, 0
  br i1 %.not.9.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.w = load i8, ptr %i.v, align 2
  %.not.10.i = icmp eq i8 %i.w, 0
  br i1 %.not.10.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.y = load i8, ptr %i.x, align 1
  %.not.11.i = icmp eq i8 %i.y, 0
  br i1 %.not.11.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.aa = load i8, ptr %i.z, align 4
  %.not.12.i = icmp eq i8 %i.aa, 0
  br i1 %.not.12.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ac = load i8, ptr %i.ab, align 1
  %.not.13.i = icmp eq i8 %i.ac, 0
  br i1 %.not.13.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.ae = load i8, ptr %i.ad, align 2
  %.not.14.i = icmp eq i8 %i.ae, 0
  br i1 %.not.14.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.ag = load i8, ptr %i.af, align 1
  %.not.15.i = icmp eq i8 %i.ag, 0
  br i1 %.not.15.i, label %_ZNK6icu_7814SkeletonFields12getFirstCharEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa.i
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = sext i8 %i.ai to i16
  br label %_ZNK6icu_7814SkeletonFields12getFirstCharEv.exit

_ZNK6icu_7814SkeletonFields12getFirstCharEv.exit: ; preds = %bb.p, %bb.q
  %i.ak = phi i16 [ %i.aj, %bb.q ], [ 0, %bb.p ]
  ret i16 %i.ak
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
define dso_local void @_ZN6icu_7815DateTimeMatcherD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(152) %0) unnamed_addr #0 align 2 {
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
end_hunk_5
begin_hunk_6_@_ZN6icu_7812FormatParserC2Ev:bb.a
  %.ptr.39 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.39, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 2, ptr %i.an, align 8
  %.ptr.40 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.40, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 2, ptr %i.ao, align 8
  %.ptr.41 = getelementptr inbounds nuw i8, ptr %0, i64 2632
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.41, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2640
  store i16 2, ptr %i.ap, align 8
  %.ptr.42 = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.42, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2704
  store i16 2, ptr %i.aq, align 8
  %.ptr.43 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.43, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 2, ptr %i.ar, align 8
  %.ptr.44 = getelementptr inbounds nuw i8, ptr %0, i64 2824
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.44, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2832
  store i16 2, ptr %i.as, align 8
  %.ptr.45 = getelementptr inbounds nuw i8, ptr %0, i64 2888
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.45, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store i16 2, ptr %i.at, align 8
  %.ptr.46 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.46, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i16 2, ptr %i.au, align 8
  %.ptr.47 = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.47, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3024
  store i16 2, ptr %i.av, align 8
  %.ptr.48 = getelementptr inbounds nuw i8, ptr %0, i64 3080
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.48, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3088
  store i16 2, ptr %i.aw, align 8
  %.ptr.49 = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.49, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i16 2, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3212
  store i32 0, ptr %i.ay, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store i32 0, ptr %i.az, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FormatParserD2Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FormatParserE, i64 16), ptr %0, align 8
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 3144
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1) #25
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 3080
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.1) #25
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 3016
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.2) #25
  %.ptr1.3 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.3) #25
  %.ptr1.4 = getelementptr inbounds nuw i8, ptr %0, i64 2888
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.4) #25
  %.ptr1.5 = getelementptr inbounds nuw i8, ptr %0, i64 2824
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.5) #25
  %.ptr1.6 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.6) #25
  %.ptr1.7 = getelementptr inbounds nuw i8, ptr %0, i64 2696
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.7) #25
  %.ptr1.8 = getelementptr inbounds nuw i8, ptr %0, i64 2632
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.8) #25
  %.ptr1.9 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.9) #25
  %.ptr1.10 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.10) #25
  %.ptr1.11 = getelementptr inbounds nuw i8, ptr %0, i64 2440
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.11) #25
  %.ptr1.12 = getelementptr inbounds nuw i8, ptr %0, i64 2376
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.12) #25
  %.ptr1.13 = getelementptr inbounds nuw i8, ptr %0, i64 2312
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.13) #25
  %.ptr1.14 = getelementptr inbounds nuw i8, ptr %0, i64 2248
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.14) #25
  %.ptr1.15 = getelementptr inbounds nuw i8, ptr %0, i64 2184
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.15) #25
  %.ptr1.16 = getelementptr inbounds nuw i8, ptr %0, i64 2120
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.16) #25
  %.ptr1.17 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.17) #25
  %.ptr1.18 = getelementptr inbounds nuw i8, ptr %0, i64 1992
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.18) #25
  %.ptr1.19 = getelementptr inbounds nuw i8, ptr %0, i64 1928
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.19) #25
  %.ptr1.20 = getelementptr inbounds nuw i8, ptr %0, i64 1864
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.20) #25
  %.ptr1.21 = getelementptr inbounds nuw i8, ptr %0, i64 1800
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.21) #25
  %.ptr1.22 = getelementptr inbounds nuw i8, ptr %0, i64 1736
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.22) #25
  %.ptr1.23 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.23) #25
  %.ptr1.24 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.24) #25
  %.ptr1.25 = getelementptr inbounds nuw i8, ptr %0, i64 1544
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.25) #25
  %.ptr1.26 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.26) #25
  %.ptr1.27 = getelementptr inbounds nuw i8, ptr %0, i64 1416
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.27) #25
  %.ptr1.28 = getelementptr inbounds nuw i8, ptr %0, i64 1352
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.28) #25
  %.ptr1.29 = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.29) #25
  %.ptr1.30 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.30) #25
  %.ptr1.31 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.31) #25
  %.ptr1.32 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.32) #25
  %.ptr1.33 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.33) #25
  %.ptr1.34 = getelementptr inbounds nuw i8, ptr %0, i64 968
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.34) #25
  %.ptr1.35 = getelementptr inbounds nuw i8, ptr %0, i64 904
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.35) #25
  %.ptr1.36 = getelementptr inbounds nuw i8, ptr %0, i64 840
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.36) #25
  %.ptr1.37 = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.37) #25
  %.ptr1.38 = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.38) #25
  %.ptr1.39 = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.39) #25
  %.ptr1.40 = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.40) #25
  %.ptr1.41 = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.41) #25
  %.ptr1.42 = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.42) #25
  %.ptr1.43 = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.43) #25
  %.ptr1.44 = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.44) #25
  %.ptr1.45 = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.45) #25
  %.ptr1.46 = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.46) #25
  %.ptr1.47 = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.47) #25
  %.ptr1.48 = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.48) #25
  %.ptr1.49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.49) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812FormatParserD0Ev(ptr noundef nonnull align 8 dereferenceable(3216) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7812FormatParserD2Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 1, 4) i32 @_ZN6icu_7812FormatParser9setTokensERKNS_13UnicodeStringEiPi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.fr53 = freeze i32 %i.h                        ; 5 uses
  %.not = icmp slt i32 %2, %.fr53
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j ; 3 uses
  %i.n = icmp ult i32 %2, %.fr53
  %i.o = sext i32 %2 to i64                       ; 2 uses
  %i.p = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.o
  br i1 %i.n, label %.preheader.split.us.preheader, label %.sink.split

.preheader.split.us.preheader:                    ; preds = %.preheader
  %i.q = sext i32 %.fr53 to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.us

.preheader.split.us:                              ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.us
  %i.r = trunc nsw i64 %indvars.iv.next58 to i32
  %i.s = icmp ugt i32 %.fr53, %i.r
  br i1 %i.s, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, label %.sink.split, !llvm.loop !95

_ZNK6icu_7813UnicodeString6charAtEi.exit.us:      ; preds = %.preheader.split.us.preheader, %.preheader.split.us
  %indvars.iv62 = phi i64 [ %i.o, %.preheader.split.us.preheader ], [ %indvars.iv.next58, %.preheader.split.us ] ; 3 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv62
  %i.u = load i16, ptr %i.t, align 2
  %i.v = and i16 %i.u, -33
  %i.w = add i16 %i.v, -65
  %i.x = icmp ult i16 %i.w, 26
  br i1 %i.x, label %bb.b, label %.sink.split

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv62, 1 ; 4 uses
  %i.y = trunc nsw i64 %indvars.iv.next58 to i32  ; 2 uses
  %i.z = icmp ugt i32 %.fr53, %i.y
  br i1 %i.z, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.us

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv.next58
  %i.ab = load i16, ptr %i.aa, align 2
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.us

_ZNK6icu_7813UnicodeString6charAtEi.exit38.us:    ; preds = %bb.c, %bb.b
  %.0.i.i36.us = phi i16 [ %i.ab, %bb.c ], [ -1, %bb.b ]
  %i.ac = load i16, ptr %i.p, align 2
  %.not33.us = icmp eq i16 %.0.i.i36.us, %i.ac
  %.not34.not.us = icmp slt i64 %indvars.iv62, %i.q
  %or.cond = and i1 %.not33.us, %.not34.not.us
  br i1 %or.cond, label %.preheader.split.us, label %.split.us, !llvm.loop !95

.split.us:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.us
  %i.ad = sub nsw i32 %i.y, %2
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, %.preheader.split.us, %.preheader, %.split.us
  %.sink = phi i32 [ %i.ad, %.split.us ], [ 1, %.preheader ], [ 1, %.preheader.split.us ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.us ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.2 = phi i32 [ 3, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.2
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef signext %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e       ; 4 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %.loopexit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.j = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.j, 0
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = select i1 %.not.i.i.i, ptr %i.m, ptr %i.k ; 2 uses
  %i.o = load i16, ptr %i.n, align 2              ; 3 uses
  %.not3043 = icmp sgt i32 %i.h, 1
  br i1 %.not3043, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph, label %.critedge.outer.preheader

.critedge.outer.preheader:                        ; preds = %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  br label %.critedge.outer

_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %wide.trip.count = zext nneg i32 %i.h to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit38

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.outer.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38, !llvm.loop !6

_ZNK6icu_7813UnicodeString6charAtEi.exit38:       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = load i16, ptr %i.p, align 2
  %.not = icmp eq i16 %i.o, %i.q
  br i1 %.not, label %bb.b, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv56 = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next57, %.critedge ] ; 3 uses
  %.in = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %indvars.iv56
  %i.r = load i16, ptr %.in, align 16
  %.not33 = icmp eq i16 %i.r, %i.o
  br i1 %.not33, label %bb.c, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.s = and i64 %indvars.iv.next57, 4294967295
  %exitcond59 = icmp eq i64 %i.s, 86
  br i1 %exitcond59, label %.critedge.outer._crit_edge, label %.lr.ph, !llvm.loop !7

bb.c:                                             ; preds = %.lr.ph
  %i.t = trunc nsw i64 %indvars.iv56 to i32       ; 4 uses
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 16
  %.not34 = icmp eq i16 %i.o, %i.x
  br i1 %.not34, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = sext i16 %i.z to i32
  %.not35 = icmp slt i32 %i.h, %i.aa
  br i1 %.not35, label %.loopexit, label %.critedge.outer, !llvm.loop !7

.critedge.outer:                                  ; preds = %.critedge.outer.preheader, %bb.d
  %.024.ph = phi i32 [ %i.u, %bb.d ], [ 0, %.critedge.outer.preheader ] ; 2 uses
  %.0.ph = phi i32 [ %i.t, %bb.d ], [ -1, %.critedge.outer.preheader ]
  %.not3145 = icmp eq i32 %.024.ph, 86
  br i1 %.not3145, label %.critedge.outer._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge.outer
  %i.ab = sext i32 %.024.ph to i64
  br label %.lr.ph

.critedge.outer._crit_edge:                       ; preds = %.critedge.outer, %.critedge
  %.not32 = icmp eq i8 %1, 0
  %i.ac = select i1 %.not32, i32 %.0.ph, i32 -1
  br label %.loopexit

.loopexit:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38, %bb.d, %bb.c, %.critedge.outer._crit_edge, %bb.a
  %.3 = phi i32 [ -1, %bb.a ], [ %i.t, %bb.d ], [ %i.ac, %.critedge.outer._crit_edge ], [ %i.t, %bb.c ], [ -1, %_ZNK6icu_7813UnicodeString6charAtEi.exit38 ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7812DistanceInfoD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7812DistanceInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 40)) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7818PatternMapIteratorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.d = load i32, ptr %1, align 4
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #25 ; 6 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.i, i8 0, i64 65, i1 false)
  %i.j = load i32, ptr %1, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %bb.h, label %bb.d

.thread:                                          ; preds = %bb.b
  %i.l = load i32, ptr %1, align 4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c
  %i.n = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(152) %i.n) #25, !inline_history !96
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.f, ptr %i.c, align 8
  br i1 %i.g, label %bb.g, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %1, align 4
  br label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.h:                                             ; preds = %bb.c
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull align 8 dereferenceable(152) %i.f) #25
  br label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %.thread, %bb.h, %bb.g, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7818PatternMapIteratorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7818PatternMapIteratorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #25, !inline_history !97
  br label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit

_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7818PatternMapIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7818PatternMapIteratorE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7818PatternMapIteratorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #25, !inline_history !11
  br label %_ZN6icu_7818PatternMapIteratorD2Ev.exit

_ZN6icu_7818PatternMapIteratorD2Ev.exit:          ; preds = %bb.a, %bb.b
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7814SkeletonFieldsC2Ev(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #16 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7814SkeletonFields8copyFromERKS0_(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext range(i16 -128, 128) i16 @_ZNK6icu_7814SkeletonFields12getFirstCharEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.d = load i8, ptr %i.c, align 1
  %.not.1 = icmp eq i8 %i.d, 0
  br i1 %.not.1, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.f = load i8, ptr %i.e, align 1
  %.not.2 = icmp eq i8 %i.f, 0
  br i1 %.not.2, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.h = load i8, ptr %i.g, align 1
  %.not.3 = icmp eq i8 %i.h, 0
  br i1 %.not.3, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i8, ptr %i.i, align 1
  %.not.4 = icmp eq i8 %i.j, 0
  br i1 %.not.4, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.l = load i8, ptr %i.k, align 1
  %.not.5 = icmp eq i8 %i.l, 0
  br i1 %.not.5, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.n = load i8, ptr %i.m, align 1
  %.not.6 = icmp eq i8 %i.n, 0
  br i1 %.not.6, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.p = load i8, ptr %i.o, align 1
  %.not.7 = icmp eq i8 %i.p, 0
  br i1 %.not.7, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 1
  %.not.8 = icmp eq i8 %i.r, 0
  br i1 %.not.8, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.t = load i8, ptr %i.s, align 1
  %.not.9 = icmp eq i8 %i.t, 0
  br i1 %.not.9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.v = load i8, ptr %i.u, align 1
  %.not.10 = icmp eq i8 %i.v, 0
  br i1 %.not.10, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.x = load i8, ptr %i.w, align 1
  %.not.11 = icmp eq i8 %i.x, 0
  br i1 %.not.11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i8, ptr %i.y, align 1
  %.not.12 = icmp eq i8 %i.z, 0
  br i1 %.not.12, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ab = load i8, ptr %i.aa, align 1
  %.not.13 = icmp eq i8 %i.ab, 0
  br i1 %.not.13, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ad = load i8, ptr %i.ac, align 1
  %.not.14 = icmp eq i8 %i.ad, 0
  br i1 %.not.14, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.af = load i8, ptr %i.ae, align 1
  %.not.15 = icmp eq i8 %i.af, 0
  br i1 %.not.15, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = sext i8 %i.ah to i16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.q
  %i.aj = phi i16 [ %i.ai, %bb.q ], [ 0, %bb.p ]
  ret i16 %i.aj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7811PtnSkeletonC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(137) initializes((0, 8), (72, 137)) %0) unnamed_addr #16 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(65) %i.a, i8 0, i64 65, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7811PtnSkeletonC2ERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(137) initializes((0, 137)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) unnamed_addr #6 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.g, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 104
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = load i8, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 %i.l, ptr %i.m, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN6icu_7811PtnSkeletonD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(137) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7811PtnSkeletonD0Ev(ptr noundef nonnull align 8 dereferenceable(137) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_787PtnElemC2ERKNS_13UnicodeStringES3_(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_787PtnElemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) #25
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152
  store ptr null, ptr %i.d, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_787PtnElemD2Ev(ptr noundef nonnull align 8 dead_on_return(160) dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_787PtnElemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(160) %i.b) #25, !inline_history !4
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit:  ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(137) %i.i) #25, !inline_history !98
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEED2Ev.exit

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEED2Ev.exit: ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.n) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_787PtnElemD0Ev(ptr noundef nonnull align 8 dereferenceable(160) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_787PtnElemE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(160) %i.b) #25, !inline_history !99
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit.i

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit.i: ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.g) #25, !inline_history !101
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN6icu_787PtnElemD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit.i
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(137) %i.i) #25, !inline_history !100
  br label %_ZN6icu_787PtnElemD2Ev.exit

_ZN6icu_787PtnElemD2Ev.exit:                      ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.n) #25, !inline_history !101
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7821DTSkeletonEnumerationC2ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %1, i32 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 align 2 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  tail call void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7821DTSkeletonEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 6 uses
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %4, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i16 2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.c, align 4
  %i.d = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #25 ; 5 uses
  %i.e = icmp eq ptr %i.d, null                   ; 2 uses
  br i1 %i.e, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 4 dereferenceable(4) %3) #25
  %i.f = load i32, ptr %3, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.c

.thread:                                          ; preds = %bb.a
  %i.h = load i32, ptr %3, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  %i.j = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #25, !inline_history !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr %i.d, ptr %i.a, align 8
  br i1 %i.e, label %bb.f, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31

bb.g:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #25, !inline_history !15
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.e, %bb.g
  %.pr = load i32, ptr %3, align 4
  %i.r = icmp slt i32 %.pr, 1
  br i1 %i.r, label %.preheader, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31

.preheader:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %.139 = load ptr, ptr %i.y, align 8             ; 2 uses
  %.not2640 = icmp eq ptr %.139, null
  br i1 %.not2640, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
  %.141 = phi ptr [ %.1, %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit ], [ %.139, %bb.h ] ; 4 uses
  switch i32 %2, label %bb.n [
    i32 0, label %bb.i
    i32 2, label %bb.j
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %.lr.ph
  %i.z = getelementptr inbounds nuw i8, ptr %.141, i64 8
  %i.aa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.z) #25 ; 0 uses
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.141, i64 80
  %i.ac = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.ab) #25 ; 0 uses
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.141, i64 72
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !alias.scope !106
  store i16 2, ptr %i.t, align 8, !alias.scope !106
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.af, ptr noundef nonnull align 8 dereferenceable(64) %5) ; 0 uses
  %i.ah = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %5) #25 ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 136
  %i.aj = load i8, ptr %i.ai, align 8, !noalias !106
  %.not.i = icmp eq i8 %i.aj, 0
  br i1 %.not.i, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load i16, ptr %i.t, align 8, !alias.scope !106 ; 2 uses
  %i.al = icmp slt i16 %i.ak, 0
  %i.am = ashr i16 %i.ak, 5
  %i.an = sext i16 %i.am to i32
  %i.ao = load i32, ptr %i.u, align 4, !alias.scope !106
  %i.ap = select i1 %i.al, i32 %i.ao, i32 %i.an
  %i.aq = call noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.ap) #25 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

bb.m:                                             ; preds = %bb.l
  %i.as = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, i32 noundef %i.aq, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0) #25 ; 0 uses
  br label %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit

_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit:     ; preds = %bb.k, %bb.l, %bb.m
  %i.at = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5) #25 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.n

bb.n:                                             ; preds = %_ZNK6icu_7811PtnSkeleton11getSkeletonEv.exit, %bb.j, %bb.i, %.lr.ph
  %i.au = load i16, ptr %i.b, align 8             ; 3 uses
  %i.av = icmp slt i16 %i.au, 0
  %i.aw = ashr i16 %i.au, 5
  %i.ax = sext i16 %i.aw to i32
  %i.ay = load i32, ptr %i.v, align 4
  %i.az = select i1 %i.av, i32 %i.ay, i32 %i.ax
  %.not.i30 = icmp eq i32 %i.az, 1
  br i1 %.not.i30, label %.preheader.i, label %bb.o

.preheader.i:                                     ; preds = %bb.n
  %i.ba = and i16 %i.au, 2
  %.not.i.i.i.i = icmp eq i16 %i.ba, 0
  %i.bb = load ptr, ptr %i.x, align 8
  %i.bc = select i1 %.not.i.i.i.i, ptr %i.bb, ptr %i.w
  %i.bd = load i16, ptr %i.bc, align 2
  switch i16 %i.bd, label %bb.o [
    i16 71, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 121, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 81, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 77, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 119, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 87, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 69, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 68, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 70, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 100, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 97, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 72, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 109, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 115, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 83, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
    i16 118, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
  ]

bb.o:                                             ; preds = %.preheader.i, %bb.n
  %i.be = call noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %4) #25 ; 5 uses
  %i.bf = icmp ne ptr %i.be, null
  %i.bg = load i32, ptr %3, align 4               ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  %or.cond.i = select i1 %i.bf, i1 true, i1 %i.bh
  br i1 %or.cond.i, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.o
  store i32 7, ptr %3, align 4
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.o
  %i.bi = icmp slt i32 %i.bg, 1
  br i1 %i.bi, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.bj = load ptr, ptr %i.a, align 8
  call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.bj, ptr noundef %i.be, ptr noundef nonnull align 4 dereferenceable(4) %3) #25
  %i.bk = load i32, ptr %3, align 4
  %i.bl = icmp slt i32 %i.bk, 1
  br i1 %i.bl, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = load ptr, ptr %i.bm, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(40) %i.bm) #25, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit: ; preds = %bb.q, %bb.r
  store ptr null, ptr %i.a, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit
  %i.br = icmp eq ptr %i.be, null
  br i1 %i.br, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31, label %bb.s

bb.s:                                             ; preds = %.loopexit
  %i.bs = load ptr, ptr %i.be, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(64) %i.be) #25, !inline_history !17
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31

_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit: ; preds = %bb.p, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.141, i64 152
  %.1 = load ptr, ptr %i.bv, align 8              ; 2 uses
  %.not26 = icmp eq ptr %.1, null
  br i1 %.not26, label %._crit_edge, label %.lr.ph, !llvm.loop !104

._crit_edge:                                      ; preds = %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 52
  br i1 %exitcond.not, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31, label %bb.h, !llvm.loop !105

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit31: ; preds = %._crit_edge, %bb.f, %.thread, %.loopexit.thread, %bb.s, %.loopexit, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

declare void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2
  %switch.tableidx = add i16 %i.n, -68            ; 2 uses
  %i.o = icmp ult i16 %switch.tableidx, 54
  br i1 %i.o, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %.preheader
  %i.p = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK6icu_7822DTRedundantEnumeration15isCanonicalItemERKNS_13UnicodeStringE, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %switch.lookup, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %switch.load, %switch.lookup ], [ 0, %.preheader ]
  ret i8 %.1
}

declare noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7821DTSkeletonEnumeration5snextER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.f, 1
  store i32 %i.j, ptr %i.e, align 4
  %i.k = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %i.f) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7821DTSkeletonEnumeration5resetER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((116, 120)) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK6icu_7821DTSkeletonEnumeration5countER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7821DTSkeletonEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7821DTSkeletonEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.b, %.preheader ]
  %.07 = phi i32 [ %i.k, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.g = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %.07) #25 ; 3 uses
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = add nuw nsw i32 %.07, 1                  ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread, !llvm.loop !19

.thread:                                          ; preds = %bb.c, %.preheader
  %.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.lcssa, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa) #25, !inline_history !20
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.a, %.thread
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7821DTSkeletonEnumerationD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7821DTSkeletonEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not6.i = icmp eq ptr %i.b, null
  br i1 %.not6.i, label %_ZN6icu_7821DTSkeletonEnumerationD2Ev.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.b, %.preheader.i ]
  %.07.i = phi i32 [ %i.k, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %.07.i) #25, !inline_history !108 ; 3 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #25, !inline_history !108
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.k = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph.i, label %.thread.i, !llvm.loop !19

.thread.i:                                        ; preds = %bb.c, %.preheader.i
  %.lcssa.i = phi ptr [ %i.b, %.preheader.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.lcssa.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa.i) #25, !inline_history !107
  br label %_ZN6icu_7821DTSkeletonEnumerationD2Ev.exit

_ZN6icu_7821DTSkeletonEnumerationD2Ev.exit:       ; preds = %bb.a, %.thread.i
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(128) %0) #25, !inline_history !108
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822DTRedundantEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7822DTRedundantEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.b, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZN6icu_7822DTRedundantEnumeration5snextER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.f, 1
  store i32 %i.j, ptr %i.e, align 4
  %i.k = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %i.f) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN6icu_7822DTRedundantEnumeration5resetER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((116, 120)) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK6icu_7822DTRedundantEnumeration5countER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZNK6icu_7822DTRedundantEnumeration15isCanonicalItemERKNS_13UnicodeStringE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not = icmp eq i32 %i.h, 1
  br i1 %.not, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2
  %switch.tableidx = add i16 %i.n, -68            ; 2 uses
  %i.o = icmp ult i16 %switch.tableidx, 54
  br i1 %i.o, label %switch.lookup, label %.loopexit

switch.lookup:                                    ; preds = %.preheader
  %i.p = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK6icu_7822DTRedundantEnumeration15isCanonicalItemERKNS_13UnicodeStringE, i64 %i.p
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %switch.lookup, %bb.a
  %.1 = phi i8 [ 0, %bb.a ], [ %switch.load, %switch.lookup ], [ 0, %.preheader ]
  ret i8 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822DTRedundantEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7822DTRedundantEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.b, %.preheader ]
  %.07 = phi i32 [ %i.k, %bb.c ], [ 0, %.preheader ] ; 2 uses
  %i.g = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %.07) #25 ; 3 uses
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #25
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = add nuw nsw i32 %.07, 1                  ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread, !llvm.loop !21

.thread:                                          ; preds = %bb.c, %.preheader
  %.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.lcssa, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa) #25, !inline_history !20
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.a, %.thread
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6icu_7822DTRedundantEnumerationD0Ev(ptr noundef nonnull align 8 dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7822DTRedundantEnumerationE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %.not6.i = icmp eq ptr %i.b, null
  br i1 %.not6.i, label %_ZN6icu_7822DTRedundantEnumerationD2Ev.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %i.f = phi ptr [ %i.l, %bb.c ], [ %i.b, %.preheader.i ]
  %.07.i = phi i32 [ %i.k, %bb.c ], [ 0, %.preheader.i ] ; 2 uses
  %i.g = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %.07.i) #25, !inline_history !110 ; 3 uses
  %.not5.i = icmp eq ptr %i.g, null
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #25, !inline_history !110
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.k = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph.i, label %.thread.i, !llvm.loop !21

.thread.i:                                        ; preds = %bb.c, %.preheader.i
  %.lcssa.i = phi ptr [ %i.b, %.preheader.i ], [ %i.l, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %.lcssa.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa.i) #25, !inline_history !109
  br label %_ZN6icu_7822DTRedundantEnumerationD2Ev.exit

_ZN6icu_7822DTRedundantEnumerationD2Ev.exit:      ; preds = %bb.a, %.thread.i
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(128) %0) #25, !inline_history !110
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.b = tail call noundef i32 @_ZNK6icu_7824DateTimePatternGenerator21getAppendFormatNumberEPKc(ptr nonnull align 8 poison, ptr noundef %1) ; 2 uses
  %i.c = icmp eq i32 %i.b, 16
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !113
  store i32 0, ptr %i.a, align 4, !noalias !113
  %i.e = load ptr, ptr %2, align 8, !noalias !113
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !113
  %i.h = call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4) #25, !noalias !113, !inline_history !22
  store ptr %i.h, ptr %5, align 8, !noalias !113
  %i.i = load i32, ptr %i.a, align 4, !noalias !113
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.i) #25
  %i.j = load ptr, ptr %5, align 8, !noalias !113
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.j) #25, !srcloc !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !113
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.k = load ptr, ptr %i.d, align 8, !nonnull !32, !align !33
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = zext nneg i32 %i.b to i64
  %i.n = getelementptr inbounds nuw [64 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8
  %i.q = icmp ult i16 %i.p, 32
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.s = load i16, ptr %i.r, align 8
  %i.t = icmp ugt i16 %i.s, 31
  %or.cond = select i1 %i.q, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %6) #25 ; 0 uses
  %i.v = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.n) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.icu_78::ResourceTable", align 8 ; 4 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = call noundef i32 @_ZNK6icu_7824DateTimePatternGenerator23getFieldAndWidthIndicesEPKcP23UDateTimePGDisplayWidth(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull %i.b) ; 2 uses
  %i.e = icmp eq i32 %i.d, 16
  br i1 %i.e, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.f = load ptr, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #25
  %i.i = load i32, ptr %4, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef signext i8 @_ZNK6icu_7813ResourceTable9findValueEPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %6, ptr noundef nonnull @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.not17 = icmp eq i8 %i.k, 0
  br i1 %.not17, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !116
  store i32 0, ptr %i.a, align 4, !noalias !116
  %i.l = load ptr, ptr %2, align 8, !noalias !116
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !116
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4) #25, !noalias !116, !inline_history !22
  store ptr %i.o, ptr %5, align 8, !noalias !116
  %i.p = load i32, ptr %i.a, align 4, !noalias !116
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.p) #25
  %i.q = load ptr, ptr %5, align 8, !noalias !116
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.q) #25, !srcloc !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !116
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.r = load i32, ptr %4, align 4
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.t = load ptr, ptr %i.c, align 8, !nonnull !32, !align !33
  %i.u = load i32, ptr %i.b, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1104
  %i.w = zext nneg i32 %i.d to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw [192 x i8], ptr %i.v, i64 %i.w
  %i.y = zext i32 %i.u to i64                     ; 2 uses
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.x, i64 %i.y
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %i.z) #25
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ab = load i16, ptr %i.aa, align 8
  %i.ac = icmp ugt i16 %i.ab, 31
  br i1 %i.ac, label %.critedge.thread21, label %.critedge

.critedge.thread21:                               ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.critedge.thread

.critedge:                                        ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ae = load i16, ptr %i.ad, align 8
  %i.af = icmp ugt i16 %i.ae, 31
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %i.af, label %bb.f, label %.critedge.thread

bb.f:                                             ; preds = %.critedge
  %i.ag = load ptr, ptr %i.c, align 8, !nonnull !32, !align !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1104
  %i.ai = getelementptr inbounds nuw [192 x i8], ptr %i.ah, i64 %i.w
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %i.y ; 2 uses
  %i.ak = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, ptr noundef nonnull align 8 dereferenceable(64) %7) #25 ; 0 uses
  %i.al = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.aj) #25 ; 0 uses
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge.thread21, %bb.f, %.critedge
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %1, i32 noundef -1, i32 noundef 0) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !32, !align !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4504
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i32 @uhash_geti_78(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !nonnull !32, !align !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4504
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #25 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %6) #25
  br label %_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit

_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit: ; preds = %bb.b, %bb.c
  %i.n = call noundef i32 @uhash_puti_78(ptr noundef %i.k, ptr noundef %i.l, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !119
  store i32 0, ptr %i.a, align 4, !noalias !119
  %i.o = load ptr, ptr %2, align 8, !noalias !119
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !119
  %i.r = call noundef ptr %i.q(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4) #25, !noalias !119, !inline_history !22
  store ptr %i.r, ptr %5, align 8, !noalias !119
  %i.s = load i32, ptr %i.a, align 4, !noalias !119
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.s) #25
  %i.t = load ptr, ptr %5, align 8, !noalias !119
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.t) #25, !srcloc !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i16, ptr %i.v, align 8              ; 2 uses
  %i.x = and i16 %i.w, 1
  %.not.i = icmp eq i16 %i.x, 0
  %i.y = and i16 %i.w, 30
  %storemerge.i = select i1 %.not.i, i16 %i.y, i16 2
  store i16 %storemerge.i, ptr %i.v, align 8
  %i.z = load ptr, ptr %i.b, align 8, !nonnull !32, !align !33
  %i.aa = call noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(4612) %i.z, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.d

bb.d:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit, %bb.a
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

declare noundef ptr @_ZNK6icu_7817StringEnumeration5cloneEv(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare noundef ptr @_ZN6icu_7817StringEnumeration4nextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef ptr @_ZN6icu_7817StringEnumeration5unextEPiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationeqERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare noundef zeroext i1 @_ZNK6icu_7817StringEnumerationneERKS0_(ptr noundef nonnull align 8 dereferenceable(116), ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7820umtx_initImplPreInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6icu_7821umtx_initImplPostInitERNS_9UInitOnceE(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #25
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 5 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %"class.icu_78::ResourceTable", align 8 ; 5 uses
  %9 = alloca %"class.icu_78::ResourceTable", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %11 = alloca %"class.icu_78::ResourceArray", align 8 ; 6 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %13 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #25
  %i.h = load i32, ptr %4, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %.preheader133, label %.loopexit

.preheader133:                                    ; preds = %bb.a
  %i.j = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.not58152 = icmp eq i8 %i.j, 0
  br i1 %.not58152, label %.loopexit, label %.lr.ph154

.lr.ph154:                                        ; preds = %.preheader133
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.r
  %i.p = add nuw nsw i32 %.053153, 1              ; 2 uses
  %i.q = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %8, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.not58 = icmp eq i8 %i.q, 0
  br i1 %.not58, label %.loopexit, label %bb.c, !llvm.loop !120

bb.c:                                             ; preds = %.lr.ph154, %bb.b
  %.053153 = phi i32 [ 0, %.lr.ph154 ], [ %i.p, %bb.b ]
  %i.r = load ptr, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.s = load ptr, ptr %2, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #25
  %i.v = load i32, ptr %4, align 4
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.c
  %i.x = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %9, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.not60143 = icmp eq i8 %i.x, 0
  br i1 %.not60143, label %._crit_edge149.thread, label %.lr.ph148

.lr.ph148:                                        ; preds = %.preheader, %bb.l
  %.049147 = phi i32 [ %i.cl, %bb.l ], [ 0, %.preheader ]
  %.050146 = phi i32 [ %.1, %bb.l ], [ -1, %.preheader ] ; 3 uses
  %.051145 = phi i32 [ %.152, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %.sroa.0.0144 = phi ptr [ %.sroa.0.1, %bb.l ], [ null, %.preheader ] ; 6 uses
  %i.y = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.z = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(8) @.str.14) #27
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.d, label %bb.j

bb.d:                                             ; preds = %.lr.ph148
  %i.ab = load ptr, ptr %2, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = call noundef i32 %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ag = call noalias dereferenceable_or_null(12) ptr @uprv_malloc_78(i64 noundef 12) #28 ; 4 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %4, align 4
  br label %.critedge67

bb.g:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ag, i8 0, i64 12, i1 false)
  call void @uprv_free_78(ptr noundef %.sroa.0.0144) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25, !noalias !129
  store i32 0, ptr %i.c, align 4, !noalias !129
  %i.ah = load ptr, ptr %2, align 8, !noalias !129
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !noalias !129
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %4) #25, !noalias !129, !inline_history !22
  store ptr %i.ak, ptr %7, align 8, !noalias !129
  %i.al = load i32, ptr %i.c, align 4, !noalias !129
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 noundef signext 1, ptr noundef nonnull align 8 %7, i32 noundef %i.al) #25
  %i.am = load ptr, ptr %7, align 8, !noalias !129
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.am) #25, !srcloc !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25, !noalias !129
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.an = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %10)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.an, ptr %i.ao, align 4
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  %i.ap = load ptr, ptr %2, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceArray") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4) #25
  %i.as = load i32, ptr %i.k, align 8             ; 4 uses
  %i.at = add i32 %i.as, 1                        ; 2 uses
  %i.au = icmp sgt i32 %i.as, -2
  br i1 %i.au, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.av = add nsw i32 %i.as, 2
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = shl nuw nsw i64 %i.aw, 2                ; 2 uses
  %i.ay = call noalias ptr @uprv_malloc_78(i64 noundef %i.ax) #28 ; 4 uses
  %.not.i69 = icmp eq ptr %i.ay, null
  br i1 %.not.i69, label %.thread, label %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit70

_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit70: ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ay, i8 0, i64 %i.ax, i1 false)
  call void @uprv_free_78(ptr noundef %.sroa.0.0144) #25
  %.not61141 = icmp slt i32 %i.as, 1
  br i1 %.not61141, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit70
  %wide.trip.count = zext i32 %i.at to i64
  br label %.lr.ph

.thread:                                          ; preds = %bb.h, %bb.i
  store i32 7, ptr %4, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %.critedge67

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit ] ; 3 uses
  %i.az = trunc i64 %indvars.iv to i32
  %i.ba = add i32 %i.az, -1
  %i.bb = call noundef signext i8 @_ZNK6icu_7813ResourceArray8getValueEiRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(21) %11, i32 noundef %i.ba, ptr noundef nonnull align 8 dereferenceable(8) %2) #25 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25, !noalias !130
  store i32 0, ptr %i.b, align 4, !noalias !130
  %i.bc = load ptr, ptr %2, align 8, !noalias !130
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !noalias !130
  %i.bf = call noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %4) #25, !noalias !130, !inline_history !22
  store ptr %i.bf, ptr %6, align 8, !noalias !130
  %i.bg = load i32, ptr %i.b, align 4, !noalias !130
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 noundef signext 1, ptr noundef nonnull align 8 %6, i32 noundef %i.bg) #25
  %i.bh = load ptr, ptr %6, align 8, !noalias !130
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bh) #25, !srcloc !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25, !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bi = load i16, ptr %i.l, align 8             ; 4 uses
  %i.bj = icmp slt i16 %i.bi, 0
  %i.bk = ashr i16 %i.bi, 5
  %i.bl = sext i16 %i.bk to i32
  %i.bm = load i32, ptr %i.m, align 4
  %i.bn = select i1 %i.bj, i32 %i.bm, i32 %i.bl
  switch i32 %i.bn, label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit [
    i32 1, label %_ZNK6icu_7813UnicodeStringixEi.exit.i
    i32 2, label %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  ]

_ZNK6icu_7813UnicodeStringixEi.exit.i:            ; preds = %.lr.ph
  %i.bo = and i16 %i.bi, 2
  %.not.i.i.i.i = icmp eq i16 %i.bo, 0
  %i.bp = load ptr, ptr %i.o, align 8
  %i.bq = select i1 %.not.i.i.i.i, ptr %i.bp, ptr %i.n
  %i.br = load i16, ptr %i.bq, align 2
  %switch.tableidx = add i16 %i.br, -72           ; 2 uses
  %i.bs = icmp ult i16 %switch.tableidx, 36
  br i1 %i.bs, label %switch.lookup, label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringixEi.exit29.i:          ; preds = %.lr.ph
  %i.bt = and i16 %i.bi, 2
  %.not.i.i.i28.i = icmp eq i16 %i.bt, 0          ; 4 uses
  %i.bu = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.bv = select i1 %.not.i.i.i28.i, ptr %i.bu, ptr %i.n
  %i.bw = load i16, ptr %i.bv, align 2
  switch i16 %i.bw, label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit [
    i16 104, label %_ZNK6icu_7813UnicodeStringixEi.exit32.i
    i16 75, label %_ZNK6icu_7813UnicodeStringixEi.exit44.i
    i16 72, label %_ZNK6icu_7813UnicodeStringixEi.exit56.i
  ]

_ZNK6icu_7813UnicodeStringixEi.exit32.i:          ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  %.sroa.gep85 = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %.sroa.sel87 = select i1 %.not.i.i.i28.i, ptr %.sroa.gep85, ptr %i.m
  %i.bx = load i16, ptr %.sroa.sel87, align 2     ; 2 uses
  %switch.selectcmp = icmp eq i16 %i.bx, 66
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 -1
  %switch.selectcmp123 = icmp eq i16 %i.bx, 98
  %switch.select124 = select i1 %switch.selectcmp123, i32 4, i32 %switch.select
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringixEi.exit44.i:          ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  %.sroa.gep79 = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %.sroa.sel81 = select i1 %.not.i.i.i28.i, ptr %.sroa.gep79, ptr %i.m
  %i.by = load i16, ptr %.sroa.sel81, align 2     ; 2 uses
  %switch.selectcmp125 = icmp eq i16 %i.by, 66
  %switch.select126 = select i1 %switch.selectcmp125, i32 7, i32 -1
  %switch.selectcmp127 = icmp eq i16 %i.by, 98
  %switch.select128 = select i1 %switch.selectcmp127, i32 6, i32 %switch.select126
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringixEi.exit56.i:          ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %.sroa.sel = select i1 %.not.i.i.i28.i, ptr %.sroa.gep, ptr %i.m
  %i.bz = load i16, ptr %.sroa.sel, align 2       ; 2 uses
  %switch.selectcmp129 = icmp eq i16 %i.bz, 66
  %switch.select130 = select i1 %switch.selectcmp129, i32 9, i32 -1
  %switch.selectcmp131 = icmp eq i16 %i.bz, 98
  %switch.select132 = select i1 %switch.selectcmp131, i32 8, i32 %switch.select130
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

switch.lookup:                                    ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.i
  %i.ca = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE, i64 %i.ca
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit: ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeStringixEi.exit29.i, %_ZNK6icu_7813UnicodeStringixEi.exit.i, %switch.lookup, %_ZNK6icu_7813UnicodeStringixEi.exit56.i, %_ZNK6icu_7813UnicodeStringixEi.exit44.i, %_ZNK6icu_7813UnicodeStringixEi.exit32.i
  %.0.i71 = phi i32 [ %switch.select128, %_ZNK6icu_7813UnicodeStringixEi.exit44.i ], [ %switch.load, %switch.lookup ], [ %switch.select132, %_ZNK6icu_7813UnicodeStringixEi.exit56.i ], [ -1, %.lr.ph ], [ -1, %_ZNK6icu_7813UnicodeStringixEi.exit.i ], [ -1, %_ZNK6icu_7813UnicodeStringixEi.exit29.i ], [ %switch.select124, %_ZNK6icu_7813UnicodeStringixEi.exit32.i ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  store i32 %.0.i71, ptr %i.cb, align 4
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !125

._crit_edge:                                      ; preds = %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit, %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit70
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph148
  %i.cc = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.y, ptr noundef nonnull dereferenceable(10) @.str.15) #27
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !131
  store i32 0, ptr %i.a, align 4, !noalias !131
  %i.ce = load ptr, ptr %2, align 8, !noalias !131
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !131
  %i.ch = call noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4) #25, !noalias !131, !inline_history !22
  store ptr %i.ch, ptr %5, align 8, !noalias !131
  %i.ci = load i32, ptr %i.a, align 4, !noalias !131
  call void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.ci) #25
  %i.cj = load ptr, ptr %5, align 8, !noalias !131
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.cj) #25, !srcloc !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !131
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ck = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %13)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.g, %bb.k, %bb.j
  %.sroa.0.1 = phi ptr [ %i.ag, %bb.g ], [ %i.ay, %._crit_edge ], [ %.sroa.0.0144, %bb.k ], [ %.sroa.0.0144, %bb.j ] ; 5 uses
  %.152 = phi i32 [ 2, %bb.g ], [ %i.at, %._crit_edge ], [ %.051145, %bb.k ], [ %.051145, %bb.j ] ; 3 uses
  %.1 = phi i32 [ %.050146, %bb.g ], [ %.050146, %._crit_edge ], [ %i.ck, %bb.k ], [ %.050146, %bb.j ] ; 4 uses
  %i.cl = add nuw nsw i32 %.049147, 1             ; 2 uses
  %i.cm = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %9, i32 noundef %i.cl, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2) #25
  %.not60 = icmp eq i8 %i.cm, 0
  br i1 %.not60, label %._crit_edge149, label %.lr.ph148, !llvm.loop !128

._crit_edge149:                                   ; preds = %bb.l
  %i.cn = icmp sgt i32 %.152, 1
  br i1 %i.cn, label %bb.m, label %._crit_edge149.thread

bb.m:                                             ; preds = %._crit_edge149
  %.not64 = icmp eq i32 %.1, -1
  br i1 %.not64, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0.1, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cq = phi i32 [ %i.cp, %bb.n ], [ %.1, %bb.m ]
  store i32 %i.cq, ptr %.sroa.0.1, align 4
  %i.cr = zext nneg i32 %.152 to i64
  br label %bb.r

._crit_edge149.thread:                            ; preds = %.preheader, %._crit_edge149
  %.050.lcssa167 = phi i32 [ %.1, %._crit_edge149 ], [ -1, %.preheader ] ; 2 uses
  %.sroa.0.0.lcssa166 = phi ptr [ %.sroa.0.1, %._crit_edge149 ], [ null, %.preheader ] ; 2 uses
  %i.cs = call noalias dereferenceable_or_null(12) ptr @uprv_malloc_78(i64 noundef 12) #28 ; 5 uses
  %.not.i72 = icmp eq ptr %i.cs, null
  br i1 %.not.i72, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge149.thread
  store i32 7, ptr %4, align 4
  br label %.critedge67

bb.q:                                             ; preds = %._crit_edge149.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cs, i8 0, i64 12, i1 false)
  call void @uprv_free_78(ptr noundef %.sroa.0.0.lcssa166) #25
  %.not63 = icmp eq i32 %.050.lcssa167, -1
  %i.ct = select i1 %.not63, i32 1, i32 %.050.lcssa167 ; 2 uses
  store i32 %i.ct, ptr %i.cs, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  store i32 %i.ct, ptr %i.cu, align 4
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.0.3 = phi ptr [ %.sroa.0.1, %bb.o ], [ %i.cs, %bb.q ] ; 2 uses
  %.3 = phi i64 [ %i.cr, %bb.o ], [ 2, %bb.q ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.3, i64 %.3
  store i32 -1, ptr %i.cv, align 4
  %i.cw = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_129localeToAllowedHourFormatsMapE, align 8
  %i.cx = call ptr @uhash_put_78(ptr noundef %i.cw, ptr noundef %i.r, ptr noundef nonnull %.sroa.0.3, ptr noundef nonnull %4) #25 ; 0 uses
  %i.cy = load i32, ptr %4, align 4
  %i.cz = icmp slt i32 %i.cy, 1
  call void @uprv_free_78(ptr noundef null) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br i1 %i.cz, label %bb.b, label %.loopexit

.critedge67:                                      ; preds = %bb.f, %.thread, %bb.p
  %.sroa.0.0140 = phi ptr [ %.sroa.0.0144, %bb.f ], [ %.sroa.0.0144, %.thread ], [ %.sroa.0.0.lcssa166, %bb.p ]
  call void @uprv_free_78(ptr noundef %.sroa.0.0140) #25
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.c, %.critedge67
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.r, %.loopexit.sink.split, %.preheader133, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  ret void
}

declare noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -1, 10) i32 @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  switch i32 %i.h, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread [
    i32 1, label %_ZNK6icu_7813UnicodeStringixEi.exit
    i32 2, label %_ZNK6icu_7813UnicodeStringixEi.exit29
  ]

_ZNK6icu_7813UnicodeStringixEi.exit:              ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2
  %switch.tableidx = add i16 %i.n, -72            ; 2 uses
  %i.o = icmp ult i16 %switch.tableidx, 36
  br i1 %i.o, label %switch.lookup, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread

_ZNK6icu_7813UnicodeStringixEi.exit29:            ; preds = %bb.a
  %i.p = and i16 %i.b, 2
  %.not.i.i.i28 = icmp eq i16 %i.p, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = select i1 %.not.i.i.i28, ptr %i.s, ptr %i.q ; 7 uses
  %i.u = load i16, ptr %i.t, align 2
  switch i16 %i.u, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread [
    i16 104, label %_ZNK6icu_7813UnicodeStringixEi.exit32
    i16 75, label %_ZNK6icu_7813UnicodeStringixEi.exit44
    i16 72, label %_ZNK6icu_7813UnicodeStringixEi.exit56
  ]

_ZNK6icu_7813UnicodeStringixEi.exit32:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.w, 98
  br i1 %i.x, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit38

_ZNK6icu_7813UnicodeStringixEi.exit38:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit32
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = icmp eq i16 %i.z, 66
  br i1 %i.aa, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread

_ZNK6icu_7813UnicodeStringixEi.exit44:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = icmp eq i16 %i.ac, 98
  br i1 %i.ad, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit50

_ZNK6icu_7813UnicodeStringixEi.exit50:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = icmp eq i16 %i.af, 66
  br i1 %i.ag, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread

_ZNK6icu_7813UnicodeStringixEi.exit56:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = icmp eq i16 %i.ai, 98
  br i1 %i.aj, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62

_ZNK6icu_7813UnicodeStringixEi.exit62:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = icmp eq i16 %i.al, 66
  br i1 %i.am, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread

_ZNK6icu_7813UnicodeStringixEi.exit62.thread:     ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit29, %_ZNK6icu_7813UnicodeStringixEi.exit50, %_ZNK6icu_7813UnicodeStringixEi.exit38, %bb.a, %_ZNK6icu_7813UnicodeStringixEi.exit62
  br label %bb.b

switch.lookup:                                    ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.an = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE, i64 %i.an
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bb.b

bb.b:                                             ; preds = %switch.lookup, %_ZNK6icu_7813UnicodeStringixEi.exit62, %_ZNK6icu_7813UnicodeStringixEi.exit56, %_ZNK6icu_7813UnicodeStringixEi.exit50, %_ZNK6icu_7813UnicodeStringixEi.exit44, %_ZNK6icu_7813UnicodeStringixEi.exit38, %_ZNK6icu_7813UnicodeStringixEi.exit32, %_ZNK6icu_7813UnicodeStringixEi.exit62.thread
  %.0 = phi i32 [ 8, %_ZNK6icu_7813UnicodeStringixEi.exit56 ], [ %switch.load, %switch.lookup ], [ 9, %_ZNK6icu_7813UnicodeStringixEi.exit62 ], [ 6, %_ZNK6icu_7813UnicodeStringixEi.exit44 ], [ -1, %_ZNK6icu_7813UnicodeStringixEi.exit62.thread ], [ 7, %_ZNK6icu_7813UnicodeStringixEi.exit50 ], [ 4, %_ZNK6icu_7813UnicodeStringixEi.exit32 ], [ 5, %_ZNK6icu_7813UnicodeStringixEi.exit38 ]
  ret i32 %.0
}

declare noundef signext i8 @_ZNK6icu_7813ResourceArray8getValueEiRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(21), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare ptr @uhash_put_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #21

declare ptr @uhash_get_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ures_getString_78(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @uhash_hashUnicodeString_78(ptr) #2

declare signext i8 @uhash_compareUnicodeString_78(ptr, ptr) #2

declare ptr @uhash_init_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uhash_setKeyDeleter_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @uprv_deleteUObject_78(ptr noundef) #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare i32 @uhash_puti_78(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @uhash_geti_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @uhash_nextElement_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZNK6icu_7813ResourceTable9findValueEPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #2

declare void @ures_close_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind allocsize(0) }

!llvm.module.flags = !{!23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null}
!1 = distinct !{!1, !28}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{null}
!5 = distinct !{!5, !28}
!6 = distinct !{!6, !28}
!7 = distinct !{!7, !28}
!8 = distinct !{!8, !28}
!9 = distinct !{!9, !28, !34}
!10 = distinct !{!10, !28}
!11 = distinct !{ptr @_ZN6icu_7818PatternMapIteratorD2Ev, null}
!12 = distinct !{!12, !28}
!13 = distinct !{!13, !28}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !28}
!19 = distinct !{!19, !28}
!20 = distinct !{null}
!21 = distinct !{!21, !28}
!22 = distinct !{null}
!23 = !{i32 8, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 2}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{i64 2151784821}
!30 = !{ptr @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD2Ev}
!31 = !{ptr @_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE}
!32 = !{}
!33 = !{i64 8}
!34 = !{!"llvm.loop.peeled.count", i32 1}
!35 = !{!"branch_weights", i32 1, i32 1048575}
!36 = distinct !{ptr @_ZN6icu_7824DateTimePatternGenerator14createInstanceERKNS_6LocaleER10UErrorCode, null}
!37 = distinct !{null}
!38 = distinct !{!38, !28}
!39 = distinct !{!39, !28}
!40 = distinct !{!40, !28}
!41 = distinct !{!41, !28}
!42 = distinct !{!42, !28}
!43 = distinct !{!43, !28}
!44 = distinct !{!44, !28}
!45 = distinct !{!45, !28}
!46 = distinct !{!46, !"_ZN6icu_7821ures_getUnicodeStringEPK15UResourceBundleP10UErrorCode"}
!47 = distinct !{!47, !46, !"_ZN6icu_7821ures_getUnicodeStringEPK15UResourceBundleP10UErrorCode: argument 0"}
!48 = distinct !{!48, !"_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode"}
!49 = distinct !{!49, !48, !"_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode: argument 0"}
!50 = distinct !{!50, !28}
!51 = !{!47}
!52 = !{!49}
!53 = distinct !{!53, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv"}
!54 = distinct !{!54, !53, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv: argument 0"}
!55 = !{!54}
!56 = distinct !{!56, !28}
!57 = distinct !{!57, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv"}
!58 = distinct !{!58, !57, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv: argument 0"}
!59 = !{!58}
!60 = distinct !{!60, !"_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv"}
!61 = distinct !{!61, !60, !"_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv: argument 0"}
!62 = !{!61}
!63 = distinct !{!63, !"_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv"}
!64 = distinct !{!64, !63, !"_ZNK6icu_7811PtnSkeleton15getBaseSkeletonEv: argument 0"}
!65 = !{!64}
!66 = distinct !{!66, !28}
!67 = distinct !{!67, !28}
!68 = distinct !{!68, !28}
!69 = distinct !{!69, !28}
!70 = distinct !{!70, !28}
!71 = distinct !{!71, !28}
!72 = distinct !{!72, !28}
!73 = distinct !{!73, !28, !34}
!74 = distinct !{!74, !28}
!75 = distinct !{!75, !28}
!76 = distinct !{!76, !28}
!77 = distinct !{!77, !28}
!78 = distinct !{!78, !"_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode"}
!79 = distinct !{!79, !78, !"_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode: argument 0"}
!80 = !{!79}
!81 = distinct !{!81, !28}
!82 = distinct !{!82, !28}
!83 = distinct !{!83, !28}
!84 = distinct !{!84, !28, !34}
!85 = distinct !{!85, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv"}
!86 = distinct !{!86, !85, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv: argument 0"}
!87 = distinct !{!87, !28}
!88 = !{!86}
!89 = distinct !{!89, !28}
!90 = distinct !{!90, !"_ZN6icu_7815DateTimeMatcher10getPatternEv"}
!91 = distinct !{!91, !90, !"_ZN6icu_7815DateTimeMatcher10getPatternEv: argument 0"}
!92 = !{!91}
!93 = !{ptr @_ZN6icu_7810PatternMapD2Ev}
!94 = distinct !{!94, !28}
!95 = distinct !{!95, !28}
!96 = distinct !{null}
!97 = distinct !{null}
!98 = distinct !{null}
!99 = distinct !{ptr @_ZN6icu_787PtnElemD2Ev, null}
!100 = distinct !{ptr @_ZN6icu_787PtnElemD2Ev, null}
!101 = !{ptr @_ZN6icu_787PtnElemD2Ev}
!102 = distinct !{!102, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv"}
!103 = distinct !{!103, !102, !"_ZNK6icu_7811PtnSkeleton11getSkeletonEv: argument 0"}
!104 = distinct !{!104, !28}
!105 = distinct !{!105, !28}
!106 = !{!103}
!107 = distinct !{ptr @_ZN6icu_7821DTSkeletonEnumerationD2Ev, null}
!108 = !{ptr @_ZN6icu_7821DTSkeletonEnumerationD2Ev}
!109 = distinct !{ptr @_ZN6icu_7822DTRedundantEnumerationD2Ev, null}
!110 = !{ptr @_ZN6icu_7822DTRedundantEnumerationD2Ev}
!111 = distinct !{!111, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!112 = distinct !{!112, !111, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!113 = !{!112}
!114 = distinct !{!114, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!115 = distinct !{!115, !114, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!116 = !{!115}
!117 = distinct !{!117, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!118 = distinct !{!118, !117, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!119 = !{!118}
!120 = distinct !{!120, !28}
!121 = distinct !{!121, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!122 = distinct !{!122, !121, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!123 = distinct !{!123, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!124 = distinct !{!124, !123, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!125 = distinct !{!125, !28}
!126 = distinct !{!126, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!127 = distinct !{!127, !126, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!128 = distinct !{!128, !28}
!129 = !{!122}
!130 = !{!124}
!131 = !{!127}
end_hunk_6
