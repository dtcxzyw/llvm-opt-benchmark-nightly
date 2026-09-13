Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/dtptngen?download=true
inline.NumInlined: 765
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE:bb.a
  %i.w = icmp slt i32 %i.v, 50
  br i1 %i.w, label %bb.b, label %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit.thread, !llvm.loop !4

_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.b, align 4, !tbaa !76
  br label %.lr.ph

_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit: ; preds = %bb.b
  %.pre = load i32, ptr %i.g, align 8, !tbaa !97
  %i.x = icmp sgt i32 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.b, align 4, !tbaa !76
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit.thread, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread
  %storemerge5792 = phi i32 [ 0, %.lr.ph ], [ %i.cj, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread ] ; 7 uses
  %i.ab = sext i32 %storemerge5792 to i64
  %i.ac = getelementptr inbounds [64 x i8], ptr %i.h, i64 %i.ab ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !32 ; 3 uses
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
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !78 ; 5 uses
  %.not77 = icmp eq i16 %i.aq, 39
  br i1 %.not77, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i

bb.e:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !31
  store i16 2, ptr %i.aa, align 8, !tbaa !32
  invoke void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %2, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  %.pre109 = load i32, ptr %i.b, align 4, !tbaa !76
  br label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  resume { ptr, i32 } %i.ar

_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i:     ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %.not3043.i.i = icmp sgt i32 %i.ak, 1
  br i1 %.not3043.i.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i, label %.critedge.outer.i.i.preheader

.critedge.outer.i.i.preheader:                    ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  br label %.critedge.outer.i.i

_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i.i
  %wide.trip.count.i.i = zext nneg i32 %i.ak to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.outer.i.i.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, !llvm.loop !5

_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i:   ; preds = %bb.h, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.h ] ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %indvars.iv.i.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !78
  %.not.i.i = icmp eq i16 %i.aq, %i.at
  br i1 %.not.i.i, label %bb.h, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

.lr.ph.i.i:                                       ; preds = %.lr.ph.preheader.i.i, %.critedge.i.i
  %indvars.iv56.i.i = phi i64 [ %i.be, %.lr.ph.preheader.i.i ], [ %indvars.iv.next57.i.i, %.critedge.i.i ] ; 5 uses
  %.in.i.i = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %indvars.iv56.i.i
  %i.au = load i16, ptr %.in.i.i, align 16, !tbaa !102
  %.not33.i.i = icmp eq i16 %i.au, %i.aq
  br i1 %.not33.i.i, label %bb.i, label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %indvars.iv.next57.i.i = add nsw i64 %indvars.iv56.i.i, 1 ; 2 uses
  %i.av = and i64 %indvars.iv.next57.i.i, 4294967295
  %exitcond59.i.i = icmp eq i64 %i.av, 86
  br i1 %exitcond59.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.i.i, !llvm.loop !6

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.aw = trunc nsw i64 %indvars.iv56.i.i to i32
  %i.ax = add nsw i32 %i.aw, 1                    ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.ay ; 2 uses
  %i.ba = load i16, ptr %i.az, align 16, !tbaa !102
  %.not34.i.i = icmp eq i16 %i.aq, %i.ba
  br i1 %.not34.i.i, label %bb.j, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit

bb.j:                                             ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 10
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !103
  %i.bd = sext i16 %i.bc to i32
  %.not35.i.i = icmp slt i32 %i.ak, %i.bd
  br i1 %.not35.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, label %.critedge.outer.i.i, !llvm.loop !6

.critedge.outer.i.i:                              ; preds = %.critedge.outer.i.i.preheader, %bb.j
  %.024.ph.i.i = phi i32 [ %i.ax, %bb.j ], [ 0, %.critedge.outer.i.i.preheader ] ; 2 uses
  %.not3145.i.i = icmp eq i32 %.024.ph.i.i, 86
  br i1 %.not3145.i.i, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.critedge.outer.i.i
  %i.be = sext i32 %.024.ph.i.i to i64
  br label %.lr.ph.i.i

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit: ; preds = %bb.i, %bb.j
  %i.bf = icmp slt i64 %indvars.iv56.i.i, 0
  br i1 %i.bf, label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, label %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit

_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit: ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.bg = and i64 %indvars.iv56.i.i, 4294967295
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.bg ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !104
  %i.bk = trunc i16 %i.aq to i8
  %i.bl = sext i32 %i.bj to i64                   ; 5 uses
  %i.bm = getelementptr inbounds i8, ptr %i.d, i64 %i.bl
  store i8 %i.bk, ptr %i.bm, align 1, !tbaa !32
  %i.bn = trunc i32 %i.ak to i8
  %i.bo = getelementptr inbounds i8, ptr %i.y, i64 %i.bl
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !32
  %i.bp = load i16, ptr %i.bh, align 16, !tbaa !102
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !103
  %i.bs = trunc i16 %i.bp to i8
  %i.bt = getelementptr inbounds i8, ptr %i.e, i64 %i.bl
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !32
  %i.bu = trunc i16 %i.br to i8
  %i.bv = getelementptr inbounds i8, ptr %i.z, i64 %i.bl
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bx = load i16, ptr %i.bw, align 8, !tbaa !105 ; 3 uses
  %i.by = icmp sgt i16 %i.bx, 0
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit
  %i.bz = load i16, ptr %i.ad, align 8, !tbaa !32 ; 2 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = ashr i16 %i.bz, 5
  %i.cc = load i32, ptr %i.ai, align 4
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = select i1 %i.ca, i16 %i.cd, i16 %i.cb
  %i.cf = add i16 %i.ce, %i.bx
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit
  %.0 = phi i16 [ %i.cf, %bb.k ], [ %i.bx, %_ZN6icu_7814SkeletonFields8populateEiRKNS_13UnicodeStringE.exit ]
  %i.cg = sext i16 %.0 to i32
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.bl
  store i32 %i.cg, ptr %i.ch, align 4, !tbaa !76
  br label %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread

_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i, %.critedge.outer.i.i, %.critedge.i.i, %bb.d, %bb.l, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit, %bb.f
  %i.ci = phi i32 [ %storemerge5792, %.critedge.outer.i.i ], [ %storemerge5792, %.critedge.i.i ], [ %.pre109, %bb.f ], [ %storemerge5792, %bb.d ], [ %storemerge5792, %bb.l ], [ %storemerge5792, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit ], [ %storemerge5792, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.i.i ]
  %i.cj = add nsw i32 %i.ci, 1                    ; 3 uses
  store i32 %i.cj, ptr %i.b, align 4, !tbaa !76
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !97
  %i.cl = icmp slt i32 %i.cj, %i.ck
  br i1 %i.cl, label %bb.d, label %._crit_edge, !llvm.loop !163

._crit_edge:                                      ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, %_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 100
  %i.cn = load i8, ptr %i.cm, align 4, !tbaa !32
  %.not = icmp eq i8 %i.cn, 0
  br i1 %.not, label %bb.o, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 102
  %i.cp = load i8, ptr %i.co, align 2, !tbaa !32
  %.not73 = icmp eq i8 %i.cp, 0
  br i1 %.not73, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 101 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !32
  %.not74 = icmp eq i8 %i.cr, 0
  br i1 %.not74, label %.preheader78.preheader, label %bb.o

.preheader78.preheader:                           ; preds = %bb.n
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 85
  store i8 115, ptr %i.cs, align 1, !tbaa !32
  store i8 1, ptr %i.cq, align 1, !tbaa !32
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 117
  store i8 115, ptr %i.ct, align 1, !tbaa !32
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 133
  store i8 1, ptr %i.cu, align 1, !tbaa !32
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 257, ptr %i.cv, align 4, !tbaa !76
  br label %bb.o

bb.o:                                             ; preds = %.preheader78.preheader, %bb.n, %bb.m, %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 99
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %.not75 = icmp eq i8 %i.cx, 0
  br i1 %.not75, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 83
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !32
  switch i8 %i.cz, label %bb.r [
    i8 104, label %bb.q
    i8 75, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 98 ; 2 uses
  %i.db = load i8, ptr %i.da, align 2, !tbaa !32
  %.not76 = icmp eq i8 %i.db, 0
  br i1 %.not76, label %.preheader.preheader, label %bb.s

.preheader.preheader:                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 97, ptr %i.dc, align 2, !tbaa !32
  store i8 1, ptr %i.da, align 2, !tbaa !32
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 114
  store i8 97, ptr %i.dd, align 2, !tbaa !32
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 130
  store i8 1, ptr %i.de, align 2, !tbaa !32
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 -259, ptr %i.df, align 8, !tbaa !76
  store i8 1, ptr %i.f, align 8, !tbaa !54
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 82
  store i8 0, ptr %i.dg, align 2, !tbaa !32
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 98
  store i8 0, ptr %i.dh, align 2, !tbaa !32
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 114
  store i8 0, ptr %i.di, align 2, !tbaa !32
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 130
  store i8 0, ptr %i.dj, align 2, !tbaa !32
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 0, ptr %i.dk, align 8, !tbaa !76
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.preheader.preheader, %bb.q, %bb.o
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dl, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dm, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.d, i64 16, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.do, i64 16, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.e, i64 16, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.dr, i64 16, i1 false)
  %i.ds = load i8, ptr %i.f, align 8, !tbaa !54
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 %i.ds, ptr %i.dt, align 8, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7811PtnSkeleton11getSkeletonEv(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i16 2, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.b unwind label %bb.f       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.f = load i8, ptr %i.e, align 8, !tbaa !54
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %_ZN6icu_7813UnicodeString6removeEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i16, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = invoke noundef i32 @_ZNK6icu_7813UnicodeString9doIndexOfEDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i16 noundef zeroext 97, i32 noundef 0, i32 noundef %i.m)
          to label %_ZNK6icu_7813UnicodeString7indexOfEDs.exit unwind label %bb.g ; 2 uses

_ZNK6icu_7813UnicodeString7indexOfEDs.exit:       ; preds = %bb.d
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.e, label %_ZN6icu_7813UnicodeString6removeEii.exit

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString7indexOfEDs.exit
  %i.p = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.n, i32 noundef 1, ptr noundef null, i32 noundef 0, i32 noundef 0)
          to label %_ZN6icu_7813UnicodeString6removeEii.exit unwind label %bb.g ; 0 uses

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN6icu_7813UnicodeString6removeEii.exit:         ; preds = %bb.e, %bb.c, %_ZNK6icu_7813UnicodeString7indexOfEDs.exit
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.q, %bb.f ]
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator17staticGetSkeletonERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::FormatParser", align 8 ; 7 uses
  %4 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6icu_7812FormatParserC1Ev(ptr noundef nonnull align 8 dereferenceable(3216) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  invoke void @_ZN6icu_7815DateTimeMatcherC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %4)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN6icu_7811PtnSkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %5)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(137) %5)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZNK6icu_7811PtnSkeleton11getSkeletonEv(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(137) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN6icu_7812FormatParserD1Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.f:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.c, %bb.h ], [ %i.b, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.a, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN6icu_7812FormatParserD1Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator15getBaseSkeletonERKNS_13UnicodeStringER10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::FormatParser", align 8 ; 7 uses
  %5 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 7 uses
  %6 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6icu_7812FormatParserC1Ev(ptr noundef nonnull align 8 dereferenceable(3216) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZN6icu_7815DateTimeMatcherC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %5)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_ZN6icu_7824DateTimePatternGenerator9hackTimesERKNS_13UnicodeStringER10UErrorCode:bb.a
  %.not.i = icmp eq i32 %i.ar, 0                  ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit

_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit: ; preds = %bb.g
  %i.as = and i16 %i.am, 2
  %.not.i.i.i.i = icmp eq i16 %i.as, 0
  %i.at = load ptr, ptr %i.ae, align 8
  %i.au = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ad ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !78
  %.not = icmp eq i16 %i.av, 39
  br i1 %.not, label %bb.h, label %bb.n

bb.h:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %.not43 = icmp eq i8 %.03085, 0
  br i1 %.not43, label %bb.w, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !31
  store i16 2, ptr %i.af, align 8, !tbaa !32
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !47
  invoke void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ax = load i16, ptr %i.af, align 8, !tbaa !32 ; 2 uses
  %i.ay = icmp slt i16 %i.ax, 0
  %i.az = ashr i16 %i.ax, 5
  %i.ba = sext i16 %i.az to i32
  %i.bb = load i32, ptr %i.ag, align 4
  %i.bc = select i1 %i.ay, i32 %i.bb, i32 %i.ba
  %i.bd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.bc)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit unwind label %bb.m ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit:           ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.pre = load i32, ptr %i.b, align 4, !tbaa !76
  br label %bb.w

bb.k:                                             ; preds = %bb.f
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.l:                                             ; preds = %bb.p
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.m:                                             ; preds = %bb.j, %bb.i
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.x

bb.n:                                             ; preds = %_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE.exit
  %i.bh = icmp sgt i32 %i.ar, 0
  br i1 %i.bh, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i: ; preds = %bb.n
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %wide.trip.count.i = zext nneg i32 %i.ar to i64
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i

_ZNK6icu_7813UnicodeString6charAtEi.exit.i:       ; preds = %.thread.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.lr.ph.i ], [ %indvars.iv.next.i, %.thread.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %i.au, i64 %indvars.iv.i
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !78
  switch i16 %i.bl, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i [
    i16 92, label %.thread.i
    i16 58, label %.thread.i
    i16 45, label %.thread.i
    i16 44, label %.thread.i
    i16 39, label %.thread.i
    i16 34, label %.thread.i
    i16 32, label %.thread.i
  ]

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i: ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %i.bm = getelementptr inbounds nuw [64 x i8], ptr %i.bj, i64 %indvars.iv.i ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !32 ; 3 uses
  %i.bp = icmp slt i16 %i.bo, 0
  %i.bq = ashr i16 %i.bo, 5
  %i.br = sext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = select i1 %i.bp, i32 %i.bt, i32 %i.br
  %.not.i52 = icmp eq i32 %i.bu, 0
  br i1 %.not.i52, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, label %bb.o

bb.o:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.bv = and i16 %i.bo, 2
  %.not.i.i.i39.i = icmp eq i16 %i.bv, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bm, i64 10
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = select i1 %.not.i.i.i39.i, ptr %i.by, ptr %i.bw
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !78
  %i.cb = icmp eq i16 %i.ca, 46
  br i1 %i.cb, label %.thread.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread

.thread.i:                                        ; preds = %bb.o, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, %_ZNK6icu_7813UnicodeString6charAtEi.exit.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.i, !llvm.loop !7

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread: ; preds = %bb.o, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread.i
  %i.cc = icmp ne i8 %.03085, 0
  br label %bb.q

_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit: ; preds = %.thread.i, %bb.g, %bb.n
  %.not74 = icmp eq i8 %.03085, 0
  br i1 %.not74, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.cd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.ar)
          to label %bb.w unwind label %bb.l       ; 0 uses

bb.q:                                             ; preds = %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit
  %i.ce = phi i1 [ %i.cc, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit.thread ], [ false, %_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE.exit ] ; 2 uses
  br i1 %.not.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.q
  %i.cf = and i16 %i.am, 2
  %.not.i.i.i = icmp eq i16 %i.cf, 0
  %i.cg = load ptr, ptr %i.ae, align 8
  %i.ch = select i1 %.not.i.i.i, ptr %i.cg, ptr %i.ad
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !78 ; 2 uses
  switch i16 %i.ci, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread [
    i16 109, label %bb.r
    i16 115, label %bb.s
  ]

bb.r:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.cj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.ar)
          to label %bb.w unwind label %.loopexit76 ; 0 uses

.loopexit76:                                      ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.loopexit.split-lp:                               ; preds = %bb.t, %bb.v
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  br i1 %i.ce, label %bb.t, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54

bb.t:                                             ; preds = %bb.s
  %i.ck = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull align 8 dereferenceable(64) %6, i32 noundef 0, i32 noundef %i.ar)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit58 unwind label %.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit58:         ; preds = %bb.t
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !46 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 1
  br i1 %i.cn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit58
  store i32 %i.cm, ptr %2, align 4, !tbaa !29
  br label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54

bb.v:                                             ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit58
  %i.co = invoke noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef null, i8 noundef signext 0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54 unwind label %.loopexit.split-lp ; 0 uses

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.q, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0.i.i65 = phi i16 [ %i.ci, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.q ]
  br i1 %i.ce, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54, label %switch.early.test

switch.early.test:                                ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  switch i16 %.0.i.i65, label %bb.w [
    i16 122, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
    i16 118, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
    i16 90, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
    i16 86, label %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
  ]

_ZN6icu_7813UnicodeStringpLERKS0_.exit54:         ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.s, %bb.v, %bb.u
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %.loopexit

bb.w:                                             ; preds = %bb.p, %_ZN6icu_7813UnicodeStringpLERKS0_.exit, %bb.h, %bb.r, %switch.early.test
  %i.cp = phi i32 [ %storemerge84, %bb.r ], [ %storemerge84, %switch.early.test ], [ %storemerge84, %bb.h ], [ %.pre, %_ZN6icu_7813UnicodeStringpLERKS0_.exit ], [ %storemerge84, %bb.p ]
  %.4.ph = phi i8 [ 1, %bb.r ], [ 0, %switch.early.test ], [ 0, %bb.h ], [ 1, %_ZN6icu_7813UnicodeStringpLERKS0_.exit ], [ 1, %bb.p ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.cq = add nsw i32 %i.cp, 1                    ; 3 uses
  store i32 %i.cq, ptr %i.b, align 4, !tbaa !76
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 3208
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !97
  %i.cu = icmp slt i32 %i.cq, %i.ct
  br i1 %i.cu, label %bb.f, label %.loopexit, !llvm.loop !164

bb.x:                                             ; preds = %.loopexit76, %.loopexit.split-lp, %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.m ], [ %i.bf, %bb.l ], [ %lpad.loopexit, %.loopexit76 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.k
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.x ], [ %i.be, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.z

.loopexit:                                        ; preds = %bb.w, %bb.d, %_ZN6icu_7813UnicodeStringpLERKS0_.exit54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.z:                                             ; preds = %bb.y, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.y ], [ %i.ah, %bb.e ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(3216) initializes((3208, 3212)) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !76
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 4 uses
  store i32 0, ptr %i.b, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.p, %bb.c ]     ; 3 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, ptr noundef nonnull %i.a)
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.i = load i32, ptr %i.a, align 4, !tbaa !76
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %.0, i32 noundef %i.i)
  %i.j = load i32, ptr %i.b, align 8, !tbaa !97   ; 2 uses
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.b, align 8, !tbaa !97
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds [64 x i8], ptr %i.c, i64 %i.l
  %i.n = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %2) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.o = load i32, ptr %i.a, align 4, !tbaa !76
  %i.p = add nsw i32 %i.o, %.0
  %i.q = load i32, ptr %i.b, align 8, !tbaa !97
  %i.r = icmp slt i32 %i.q, 50
  br i1 %i.r, label %bb.b, label %.critedge, !llvm.loop !4

.critedge:                                        ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7812FormatParser14isQuoteLiteralERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78
  %i.o = icmp eq i16 %i.n, 39
  %i.p = zext i1 %i.o to i8
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a, %bb.b
  %.0.i.i = phi i8 [ %i.p, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0.i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7812FormatParser15getQuoteLiteralERNS_13UnicodeStringEPi(ptr noundef nonnull align 8 dereferenceable(3216) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !76     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = and i16 %i.c, 1
  %.not.i = icmp eq i16 %i.d, 0
  %i.e = and i16 %i.c, 30
  %storemerge.i = select i1 %.not.i, i16 %i.e, i16 2
  store i16 %storemerge.i, ptr %i.b, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i16, ptr %i.i, align 8, !tbaa !32   ; 3 uses
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
  %i.v = load i16, ptr %i.u, align 2, !tbaa !78
  %i.w = icmp eq i16 %i.v, 39
  br i1 %i.w, label %bb.b, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.x = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef 0, i32 noundef %i.p) ; 0 uses
  %i.y = add nsw i32 %i.a, 1
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.a, %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0 = phi i32 [ %i.y, %bb.b ], [ %i.a, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ %i.a, %bb.a ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.ab = icmp slt i32 %.0, %i.aa
  br i1 %i.ab, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %.backedge
  %i.ac = phi i32 [ %i.bw, %.backedge ], [ %i.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ]
  %.136 = phi i32 [ %.1.be, %.backedge ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ] ; 5 uses
  %i.ad = sext i32 %.136 to i64
  %i.ae = getelementptr inbounds [64 x i8], ptr %i.f, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !32 ; 3 uses
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
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !78
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
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !32 ; 3 uses
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
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !78
  %i.bm = icmp eq i16 %i.bl, 39
  br i1 %i.bm, label %bb.e, label %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit27
  %i.bn = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) ; 0 uses
  %i.bo = add nsw i32 %.136, 2
  %i.bp = load i16, ptr %i.ay, align 8, !tbaa !32 ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = ashr i16 %i.bp, 5
  %i.bs = sext i16 %i.br to i32
  %i.bt = load i32, ptr %i.bd, align 4
  %i.bu = select i1 %i.bq, i32 %i.bt, i32 %i.bs
  %i.bv = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ax, i32 noundef 0, i32 noundef %i.bu) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.e, %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread
  %.1.be = phi i32 [ %i.bo, %bb.e ], [ %i.ca, %_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread ] ; 3 uses
  %i.bw = load i32, ptr %i.z, align 8, !tbaa !97  ; 2 uses
  %i.bx = icmp slt i32 %.1.be, %i.bw
  br i1 %i.bx, label %.lr.ph, label %.loopexit, !llvm.loop !165

_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread: ; preds = %bb.d, %_ZNK6icu_7813UnicodeString6charAtEi.exit27, %bb.c
  %i.by = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) ; 0 uses
  br label %.loopexit

_ZNK6icu_7813UnicodeString6charAtEi.exit24.thread: ; preds = %.lr.ph, %_ZNK6icu_7813UnicodeString6charAtEi.exit24
  %i.bz = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae, i32 noundef 0, i32 noundef %i.am) ; 0 uses
  %i.ca = add nsw i32 %.136, 1
  br label %.backedge

.loopexit:                                        ; preds = %.backedge, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread
  %.134 = phi i32 [ %.136, %_ZNK6icu_7813UnicodeString6charAtEi.exit27.thread ], [ %.0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %.1.be, %.backedge ]
  store i32 %.134, ptr %2, align 4, !tbaa !76
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7812FormatParser18isPatternSeparatorERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3216) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.q = load i16, ptr %i.p, align 2, !tbaa !78
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
  %i.t = load i16, ptr %i.s, align 8, !tbaa !32   ; 3 uses
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
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !78
  %i.ag = icmp eq i16 %i.af, 46
  br i1 %i.ag, label %.thread, label %.thread48

.thread:                                          ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %_ZNK6icu_7813UnicodeString6charAtEi.exit, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread48, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, !llvm.loop !7

.thread48:                                        ; preds = %.thread, %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %bb.a
  %i.ah = phi i8 [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 1, %.thread ]
  ret i8 %i.ah
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator10addPatternERKNS_13UnicodeStringEaRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %i.b, ptr %4, align 4, !tbaa !29
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

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator23consumeShortTimePatternERKNS_13UnicodeStringER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6icu_7824DateTimePatternGenerator9hackTimesERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #28
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(80) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #28, !inline_history !94
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(80) %0) #28, !inline_history !94
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

declare void @ures_getAllChildrenWithFallback_78(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink13fillInMissingEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 22 uses
  %2 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  store ptr @_ZN6icu_78L17UDATPG_ItemFormatE, ptr %2, align 8, !tbaa !92
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 noundef signext 1, ptr noundef nonnull align 8 %2, i32 noundef 14)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !92
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.a) #28, !srcloc !89
end_hunk_1
begin_hunk_2_@_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink13fillInMissingEv:bb.a
          to label %.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge unwind label %bb.e ; 0 uses

.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge: ; preds = %.noexc.11
  %.pre23 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11: ; preds = %.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10
  %i.cl = phi ptr [ %.pre23, %.noexc.11._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11_crit_edge ], [ %i.ce, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.10 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 848 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 856
  %i.co = load i16, ptr %i.cn, align 8, !tbaa !32
  %i.cp = icmp ugt i16 %i.co, 31
  br i1 %i.cp, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12, label %bb.q

bb.q:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11
  %i.cq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cm, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.12 unwind label %bb.e  ; 0 uses

.noexc.12:                                        ; preds = %bb.q
  %i.cr = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.cm)
          to label %.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge unwind label %bb.e ; 0 uses

.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge: ; preds = %.noexc.12
  %.pre24 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12: ; preds = %.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11
  %i.cs = phi ptr [ %.pre24, %.noexc.12._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12_crit_edge ], [ %i.cl, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.11 ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 912 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 920
  %i.cv = load i16, ptr %i.cu, align 8, !tbaa !32
  %i.cw = icmp ugt i16 %i.cv, 31
  br i1 %i.cw, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13, label %bb.r

bb.r:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12
  %i.cx = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.13 unwind label %bb.e  ; 0 uses

.noexc.13:                                        ; preds = %bb.r
  %i.cy = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.ct)
          to label %.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge unwind label %bb.e ; 0 uses

.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge: ; preds = %.noexc.13
  %.pre25 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13: ; preds = %.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12
  %i.cz = phi ptr [ %.pre25, %.noexc.13._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13_crit_edge ], [ %i.cs, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.12 ] ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 976 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 984
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !32
  %i.dd = icmp ugt i16 %i.dc, 31
  br i1 %i.dd, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14, label %bb.s

bb.s:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13
  %i.de = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.da, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.14 unwind label %bb.e  ; 0 uses

.noexc.14:                                        ; preds = %bb.s
  %i.df = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.da)
          to label %.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge unwind label %bb.e ; 0 uses

.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge: ; preds = %.noexc.14
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !109
  br label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14: ; preds = %.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13
  %i.dg = phi ptr [ %.pre26, %.noexc.14._ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14_crit_edge ], [ %i.cz, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.13 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1040 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 1048
  %i.dj = load i16, ptr %i.di, align 8, !tbaa !32
  %i.dk = icmp ugt i16 %i.dj, 31
  br i1 %i.dk, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.15, label %bb.t

bb.t:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14
  %i.dl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %.noexc.15 unwind label %bb.e  ; 0 uses

.noexc.15:                                        ; preds = %bb.t
  %i.dm = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.dh)
          to label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.15 unwind label %bb.e ; 0 uses

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.15: ; preds = %.noexc.15, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit.14
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret void

bb.u:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.h, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
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
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !113, !nonnull !110, !align !111 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1104
  %i.h = getelementptr inbounds nuw [192 x i8], ptr %i.g, i64 %indvars.iv ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load i16, ptr %i.i, align 8, !tbaa !32
  %i.k = icmp ugt i16 %i.j, 31
  br i1 %i.k, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 70, ptr %i.d, align 2, !tbaa !78
  %i.l = load i16, ptr %i.i, align 8, !tbaa !32   ; 2 uses
  %i.m = icmp slt i16 %i.l, 0
  %i.n = ashr i16 %i.l, 5
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = select i1 %i.m, i32 %i.q, i32 %i.o
  %i.s = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, i32 noundef 0, i32 noundef %i.r, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.t = icmp samesign ult i64 %indvars.iv, 10
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = trunc nuw nsw i64 %indvars.iv to i16
  %i.v = or disjoint i16 %i.u, 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %i.v, ptr %i.c, align 2, !tbaa !78
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 49, ptr %i.b, align 2, !tbaa !78
  %i.x = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.y = trunc i64 %indvars.iv to i16
  %i.z = add nuw nsw i16 %i.y, 38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.z, ptr %i.a, align 2, !tbaa !78
  %i.aa = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ab = call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.h) ; 0 uses
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !113
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.ac = phi ptr [ %.pre, %bb.g ], [ %i.f, %bb.c ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 1104
  %i.ae = getelementptr inbounds nuw [192 x i8], ptr %i.ad, i64 %indvars.iv ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !32
  %i.ah = icmp ugt i16 %i.ag, 31
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ae)
  %i.aj = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %1) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  %.pre27 = load ptr, ptr %i.e, align 8, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %.pre27, %bb.i ], [ %i.ac, %bb.h ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1104
  %i.am = getelementptr inbounds nuw [192 x i8], ptr %i.al, i64 %indvars.iv ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 136
  %i.ao = load i16, ptr %i.an, align 8, !tbaa !32
  %i.ap = icmp ugt i16 %i.ao, 31
  br i1 %i.ap, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 128
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %i.ar)
  %i.as = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.aq, ptr noundef nonnull align 8 dereferenceable(64) %1) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !166
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator13initHashtableER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4504 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.c, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 88) #28 ; 8 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.e, align 8, !tbaa !75
  %i.g = load i32, ptr %1, align 4, !tbaa !29
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.e, label %_ZN6icu_789HashtableD2Ev.exit.i

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.j = invoke ptr @uhash_init_78(ptr noundef nonnull %i.i, ptr noundef nonnull @uhash_hashUnicodeString_78, ptr noundef nonnull @uhash_compareUnicodeString_78, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %.noexc unwind label %bb.h     ; 0 uses

.noexc:                                           ; preds = %bb.e
  %i.k = load i32, ptr %1, align 4, !tbaa !29
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.thread18, label %bb.f

bb.f:                                             ; preds = %.noexc
  store ptr %i.i, ptr %i.e, align 8, !tbaa !75
  %i.m = invoke ptr @uhash_setKeyDeleter_78(ptr noundef nonnull %i.i, ptr noundef nonnull @uprv_deleteUObject_78)
          to label %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit unwind label %bb.h ; 0 uses

_ZN6icu_789HashtableC2EaR10UErrorCode.exit:       ; preds = %bb.c
  %i.n = load i32, ptr %1, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6icu_789HashtableC2EaR10UErrorCode.exit
  store i32 7, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.f
  %.pre = load i32, ptr %1, align 4, !tbaa !29
  %i.p = icmp sgt i32 %.pre, 0
  br i1 %i.p, label %.thread18, label %.thread

.thread:                                          ; preds = %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit
  store ptr %i.e, ptr %i.c, align 8, !tbaa !56
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #28
  resume { ptr, i32 } %i.q

.thread18:                                        ; preds = %_ZN6icu_7812LocalPointerINS_9HashtableEEC2EPS1_R10UErrorCode.exit, %.noexc
  %.pr = load ptr, ptr %i.e, align 8, !tbaa !75   ; 2 uses
  %.not.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i, label %_ZN6icu_789HashtableD2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %.thread18
  invoke void @uhash_close_78(ptr noundef nonnull %.pr)
          to label %_ZN6icu_789HashtableD2Ev.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #29
  unreachable

_ZN6icu_789HashtableD2Ev.exit.i:                  ; preds = %bb.d, %bb.i, %.thread18
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #28
  br label %_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit

_ZN6icu_7812LocalPointerINS_9HashtableEED2Ev.exit: ; preds = %bb.g, %_ZN6icu_789HashtableC2EaR10UErrorCode.exit, %_ZN6icu_789HashtableD2Ev.exit.i, %.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.e = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator19getAppendItemFormatE21UDateTimePatternField(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [64 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator17setAppendItemNameE21UDateTimePatternFieldRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b ; 2 uses
  %i.d = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.e = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.c) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  %i.g = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getAppendItemNameE21UDateTimePatternField(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  ret ptr %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_7824DateTimePatternGenerator19getFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth(ptr dead_on_unwind noalias nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.b = zext i32 %2 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %3 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d
  tail call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.e)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7824DateTimePatternGenerator26getMutableFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = zext i32 %1 to i64
  %i.c = getelementptr inbounds nuw [192 x i8], ptr %i.a, i64 %i.b
  %i.d = zext i32 %2 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator13getAppendNameE21UDateTimePatternFieldRNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2, !tbaa !78
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = icmp slt i16 %i.d, 0
  %i.f = ashr i16 %i.d, 5
  %i.g = sext i16 %i.f to i32
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = select i1 %i.e, i32 %i.i, i32 %i.g
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef 0, i32 noundef %i.j, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.m = zext i32 %1 to i64
  %i.n = getelementptr inbounds nuw [192 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i16, ptr %i.o, align 8, !tbaa !32   ; 2 uses
  %i.q = icmp slt i16 %i.p, 0
  %i.r = ashr i16 %i.p, 5
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = select i1 %i.q, i32 %i.u, i32 %i.s
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i32 noundef 0, i32 noundef %i.v) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 39, ptr %i.a, align 2, !tbaa !78
  %i.x = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}
end_hunk_2
begin_hunk_3_@_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringE28UDateTimePatternMatchOptionsR10UErrorCode:bb.a
  %i.cm = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %12, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %10, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.ao unwind label %bb.aq     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7) #28
  br label %bb.as

bb.ap:                                            ; preds = %bb.am
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aq:                                            ; preds = %bb.an
  %i.co = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %12) #28
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.pn = phi { ptr, i32 } [ %i.co, %bb.aq ], [ %i.cn, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.at

bb.as:                                            ; preds = %bb.x, %bb.ao, %bb.af, %bb.ad
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aw

bb.at:                                            ; preds = %bb.ai, %bb.ar
  %.pn47 = phi { ptr, i32 } [ %i.cj, %bb.ai ], [ %.pn, %bb.ar ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.z
  %.pn47.pn = phi { ptr, i32 } [ %.pn47, %bb.at ], [ %i.ba, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #28
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.y
  %.pn47.pn.pn = phi { ptr, i32 } [ %.pn47.pn, %bb.au ], [ %i.az, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ax

bb.aw:                                            ; preds = %bb.n, %bb.as, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.t, %bb.o
  %.pn51 = phi { ptr, i32 } [ %i.af, %bb.o ], [ %i.aq, %bb.t ], [ %.pn47.pn.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %.body

bb.ay:                                            ; preds = %bb.g, %bb.aw
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ba

.body:                                            ; preds = %bb.i, %bb.k, %bb.ax
  %.pn53 = phi { ptr, i32 } [ %.pn51, %bb.ax ], [ %i.p, %bb.i ], [ %i.x, %bb.k ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  br label %bb.az

bb.az:                                            ; preds = %.body, %bb.h
  %.pn53.pn = phi { ptr, i32 } [ %.pn53, %.body ], [ %i.o, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn53.pn

bb.ba:                                            ; preds = %bb.ay, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator25mapSkeletonMetacharactersERKNS_13UnicodeStringEPiR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i16, align 2                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 4 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %5, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i16 2, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i16, ptr %i.f, align 8, !tbaa !32   ; 2 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j       ; 5 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph140, label %._crit_edge

.lr.ph140:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4580
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4576
  %i.s = zext nneg i32 %i.m to i64                ; 2 uses
  %i.t = add nsw i32 %i.m, -1                     ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph140, %.critedge110
  %.083139 = phi i32 [ 0, %.lr.ph140 ], [ %i.bw, %.critedge110 ] ; 11 uses
  %.086138 = phi i8 [ 0, %.lr.ph140 ], [ %.288, %.critedge110 ] ; 2 uses
  %i.u = load i16, ptr %i.f, align 8, !tbaa !32
  %.fr141 = freeze i16 %i.u                       ; 4 uses
  %i.v = icmp slt i16 %.fr141, 0
  %i.w = lshr i16 %.fr141, 5
  %i.x = zext nneg i16 %i.w to i32
  %i.y = load i32, ptr %i.k, align 4
  %i.z = select i1 %i.v, i32 %i.y, i32 %i.x       ; 3 uses
  %i.aa = icmp ult i32 %.083139, %i.z
  br i1 %i.aa, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.b
  %i.ab = and i16 %.fr141, 2
  %.not.i.i.i = icmp eq i16 %i.ab, 0
  %i.ac = load ptr, ptr %i.p, align 8
  %i.ad = select i1 %.not.i.i.i, ptr %i.ac, ptr %i.o
  %i.ae = sext i32 %.083139 to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !78 ; 2 uses
  %i.ah = icmp eq i16 %i.ag, 39
  br i1 %i.ah, label %bb.c, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread

bb.c:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.not108 = icmp eq i8 %.086138, 0
  %i.ai = zext i1 %.not108 to i8
  br label %.critedge110

bb.d:                                             ; preds = %bb.r, %bb.p
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

_ZNK6icu_7813UnicodeString6charAtEi.exit.thread:  ; preds = %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.0.i.i121 = phi i16 [ %i.ag, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -1, %bb.b ] ; 5 uses
  %.not = icmp eq i8 %.086138, 0
  br i1 %.not, label %bb.e, label %.critedge110

bb.e:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread
  %i.ak = icmp eq i16 %.0.i.i121, 106
  switch i16 %.0.i.i121, label %bb.r [
    i16 106, label %bb.f
    i16 67, label %bb.f
    i16 74, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.al = add nsw i32 %.083139, 1                 ; 2 uses
  %i.am = icmp slt i32 %i.al, %i.m
  br i1 %i.am, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.f
  %i.an = and i16 %.fr141, 2
  %.not.i.i.i115 = icmp eq i16 %i.an, 0
  %i.ao = sext i32 %i.al to i64                   ; 2 uses
  %i.ap = sub i32 %i.t, %.083139                  ; 2 uses
  br i1 %.not.i.i.i115, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %indvars.iv146 = phi i64 [ %indvars.iv.next147, %bb.h ], [ %i.ao, %.lr.ph ] ; 3 uses
  %.082128.us = phi i32 [ %i.aw, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.184127.us = phi i32 [ %i.aq, %bb.h ], [ %.083139, %.lr.ph ]
  %i.aq = trunc nsw i64 %indvars.iv146 to i32     ; 2 uses
  %i.ar = icmp ugt i32 %i.z, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZNK6icu_7813UnicodeString6charAtEi.exit116.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.as = load ptr, ptr %i.p, align 8
  %i.at = getelementptr inbounds [2 x i8], ptr %i.as, i64 %indvars.iv146
  %i.au = load i16, ptr %i.at, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit116.us

_ZNK6icu_7813UnicodeString6charAtEi.exit116.us:   ; preds = %bb.g, %.lr.ph.split.us
  %.0.i.i114.us = phi i16 [ %i.au, %bb.g ], [ -1, %.lr.ph.split.us ]
  %i.av = icmp eq i16 %.0.i.i114.us, %.0.i.i121
  br i1 %i.av, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit116.us
  %i.aw = add nuw nsw i32 %.082128.us, 1
  %indvars.iv.next147 = add nsw i64 %indvars.iv146, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next147, %i.s
  br i1 %exitcond149.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !167

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %i.ao, %.lr.ph ] ; 3 uses
  %.082128 = phi i32 [ %i.bc, %bb.j ], [ 0, %.lr.ph ] ; 2 uses
  %.184127 = phi i32 [ %i.ax, %bb.j ], [ %.083139, %.lr.ph ]
  %i.ax = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.ay = icmp ugt i32 %i.z, %i.ax
  br i1 %i.ay, label %bb.i, label %_ZNK6icu_7813UnicodeString6charAtEi.exit116

bb.i:                                             ; preds = %.lr.ph.split
  %i.az = getelementptr inbounds [2 x i8], ptr %i.o, i64 %indvars.iv
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit116

_ZNK6icu_7813UnicodeString6charAtEi.exit116:      ; preds = %bb.i, %.lr.ph.split
  %.0.i.i114 = phi i16 [ %i.ba, %bb.i ], [ -1, %.lr.ph.split ]
  %i.bb = icmp eq i16 %.0.i.i114, %.0.i.i121
  br i1 %i.bb, label %bb.j, label %.critedge

bb.j:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit116
  %i.bc = add nuw nsw i32 %.082128, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.s
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !167

.critedge:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit116, %bb.j, %_ZNK6icu_7813UnicodeString6charAtEi.exit116.us, %bb.h
  %.184.lcssa = phi i32 [ %i.t, %bb.h ], [ %.184127.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit116.us ], [ %.184127, %_ZNK6icu_7813UnicodeString6charAtEi.exit116 ], [ %i.t, %bb.j ]
  %.082.lcssa = phi i32 [ %i.ap, %bb.h ], [ %.082128.us, %_ZNK6icu_7813UnicodeString6charAtEi.exit116.us ], [ %.082128, %_ZNK6icu_7813UnicodeString6charAtEi.exit116 ], [ %i.ap, %bb.j ]
  %.082.lcssa.fr = freeze i32 %.082.lcssa         ; 3 uses
  %i.bd = and i32 %.082.lcssa.fr, 1
  %i.be = add nuw nsw i32 %i.bd, 1
  %i.bf = lshr i32 %.082.lcssa.fr, 1
  %i.bg = add nuw nsw i32 %i.bf, 3
  %.inv = icmp ugt i32 %.082.lcssa.fr, 1
  %spec.select = select i1 %.inv, i32 %i.bg, i32 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %.critedge, %bb.f
  %i.bh = phi i32 [ 1, %bb.f ], [ %i.be, %.critedge ]
  %.184.lcssa157 = phi i32 [ %.083139, %bb.f ], [ %.184.lcssa, %.critedge ]
  %i.bi = phi i32 [ 1, %bb.f ], [ %spec.select, %.critedge ]
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge.thread
  %i.bj = load i16, ptr %i.r, align 8, !tbaa !45
  br label %.thread124

bb.l:                                             ; preds = %.critedge.thread
  %i.bk = load i32, ptr %i.q, align 4, !tbaa !76  ; 2 uses
  switch i32 %i.bk, label %.fold.split [
    i32 -1, label %bb.o
    i32 9, label %bb.m
    i32 8, label %bb.m
    i32 1, label %bb.m
    i32 7, label %.fold.split112
    i32 6, label %.fold.split112
    i32 2, label %.fold.split112
    i32 3, label %.fold.split113
  ]

.fold.split:                                      ; preds = %bb.l
  br label %bb.m

.fold.split112:                                   ; preds = %bb.l, %bb.l, %bb.l
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.l, %bb.l, %.fold.split112, %.fold.split
  %.076 = phi i16 [ 104, %.fold.split ], [ 72, %bb.l ], [ 75, %.fold.split112 ], [ 72, %bb.l ], [ 72, %bb.l ] ; 5 uses
  switch i32 %i.bk, label %.fold.split113 [
    i32 9, label %.thread124
    i32 7, label %.thread124
    i32 5, label %.thread124
    i32 8, label %bb.n
    i32 6, label %bb.n
    i32 4, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m, %bb.m, %bb.m
  br label %.thread124

.fold.split113:                                   ; preds = %bb.l, %bb.m
  %.076123 = phi i16 [ %.076, %bb.m ], [ 107, %bb.l ]
  br label %.thread124

bb.o:                                             ; preds = %bb.l
  store i32 3, ptr %4, align 4, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.bl, align 8, !tbaa !32
  br label %.critedge111

.thread124:                                       ; preds = %bb.n, %.fold.split113, %bb.m, %bb.m, %bb.m, %bb.k
  %.278 = phi i16 [ %i.bj, %bb.k ], [ %.076123, %.fold.split113 ], [ %.076, %bb.m ], [ %.076, %bb.m ], [ %.076, %bb.m ], [ %.076, %bb.n ] ; 2 uses
  %.275 = phi i16 [ 97, %bb.k ], [ 97, %.fold.split113 ], [ 66, %bb.m ], [ 66, %bb.m ], [ 66, %bb.m ], [ 98, %bb.n ]
  switch i16 %.278, label %.lr.ph136 [
    i16 107, label %.preheader.preheader
    i16 72, label %.preheader.preheader
  ]

.preheader.preheader:                             ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit, %.thread124, %.thread124
  br label %.preheader

.lr.ph136:                                        ; preds = %.thread124, %_ZN6icu_7813UnicodeString6appendEDs.exit
  %.180135 = phi i32 [ %i.bn, %_ZN6icu_7813UnicodeString6appendEDs.exit ], [ %i.bi, %.thread124 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 %.275, ptr %i.d, align 2, !tbaa !78
  %i.bm = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit unwind label %.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit:         ; preds = %.lr.ph136
  %i.bn = add nsw i32 %.180135, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bo = icmp sgt i32 %.180135, 1
  br i1 %i.bo, label %.lr.ph136, label %.preheader.preheader

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp:                               ; preds = %.lr.ph136
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.preheader:                                       ; preds = %.preheader.preheader, %_ZN6icu_7813UnicodeString6appendEDs.exit117
  %.081137 = phi i32 [ %i.bq, %_ZN6icu_7813UnicodeString6appendEDs.exit117 ], [ %i.bh, %.preheader.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i16 %.278, ptr %i.c, align 2, !tbaa !78
  %i.bp = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit117 unwind label %.loopexit ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit117:      ; preds = %.preheader
  %i.bq = add nsw i32 %.081137, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.br = icmp samesign ugt i32 %.081137, 1
  br i1 %i.br, label %.preheader, label %.critedge110

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 72, ptr %i.b, align 2, !tbaa !78
  %i.bs = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %bb.q unwind label %bb.d       ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bt = load i32, ptr %3, align 4, !tbaa !76
  %i.bu = or i32 %i.bt, 2
  store i32 %i.bu, ptr %3, align 4, !tbaa !76
  br label %.critedge110

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.0.i.i121, ptr %i.a, align 2, !tbaa !78
  %i.bv = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %_ZN6icu_7813UnicodeString6appendEDs.exit119 unwind label %bb.d ; 0 uses

_ZN6icu_7813UnicodeString6appendEDs.exit119:      ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.critedge110

.critedge110:                                     ; preds = %_ZN6icu_7813UnicodeString6appendEDs.exit117, %_ZN6icu_7813UnicodeString6appendEDs.exit119, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread, %bb.q, %bb.c
  %.288 = phi i8 [ 0, %bb.q ], [ %i.ai, %bb.c ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ 0, %_ZN6icu_7813UnicodeString6appendEDs.exit119 ], [ 0, %_ZN6icu_7813UnicodeString6appendEDs.exit117 ]
  %.3 = phi i32 [ %.083139, %bb.q ], [ %.083139, %bb.c ], [ %.083139, %_ZNK6icu_7813UnicodeString6charAtEi.exit.thread ], [ %.083139, %_ZN6icu_7813UnicodeString6appendEDs.exit119 ], [ %.184.lcssa157, %_ZN6icu_7813UnicodeString6appendEDs.exit117 ]
  %i.bw = add nsw i32 %.3, 1                      ; 2 uses
  %i.bx = icmp slt i32 %i.bw, %i.m
  br i1 %i.bx, label %bb.b, label %._crit_edge, !llvm.loop !168

._crit_edge:                                      ; preds = %.critedge110, %bb.a
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %5) #28
  br label %.critedge111

.critedge111:                                     ; preds = %bb.o, %._crit_edge
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.s:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.d
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.d ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef initializes((3208, 3212)) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @_ZN6icu_7811PtnSkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %3)
  invoke void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(137) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::DistanceInfo", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %7 = alloca %"class.icu_78::PatternMapIterator", align 8 ; 10 uses
  %8 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7812DistanceInfoE, i64 16), ptr %6, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store ptr null, ptr %i.a, align 8, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  invoke void @_ZN6icu_7818PatternMapIteratorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %4, align 4, !tbaa !29
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !50   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  store ptr %i.f, ptr %i.g, align 8, !tbaa !120
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4496
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %.preheader.i

thread-pre-split:                                 ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit, %bb.v, %bb.u
  %.338.ph = phi i32 [ %.03578, %bb.u ], [ %.2.i, %bb.v ], [ %.03578, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ]
  %.334.ph = phi i32 [ %.03179, %bb.u ], [ %i.dg, %bb.v ], [ %.03179, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ]
  %.330.ph = phi ptr [ %.02780, %bb.u ], [ %i.dn, %bb.v ], [ %.02780, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit ] ; 2 uses
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !120  ; 2 uses
  %i.v = icmp eq ptr %.pr, null
  br i1 %i.v, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %thread-pre-split
  %.02780 = phi ptr [ null, %.preheader.i.lr.ph ], [ %.330.ph, %thread-pre-split ] ; 5 uses
  %.03179 = phi i32 [ -1, %.preheader.i.lr.ph ], [ %.334.ph, %thread-pre-split ] ; 3 uses
  %.03578 = phi i32 [ 2147483647, %.preheader.i.lr.ph ], [ %.338.ph, %thread-pre-split ] ; 4 uses
  %i.w = phi ptr [ %i.f, %.preheader.i.lr.ph ], [ %.pr, %thread-pre-split ]
  %i.x = load ptr, ptr %i.i, align 8, !tbaa !121  ; 3 uses
  %i.y = load i32, ptr %i.j, align 8, !tbaa !122  ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %i.aa = icmp slt i32 %i.y, 52
  br i1 %i.aa, label %.lr.ph.preheader.i, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ab = sext i32 %i.y to i64                    ; 5 uses
  %.not.peel.i = icmp eq ptr %i.x, null           ; 2 uses
  br i1 %.not.peel.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.preheader.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69
  %.not10.peel.i = icmp eq ptr %i.ad, null
  br i1 %.not10.peel.i, label %.backedge.peel.i, label %.lr.ph.i.thread100

.lr.ph.i.thread100:                               ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph.preheader.i
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  %.not9.peel.i = icmp eq ptr %i.af, null
  br i1 %.not9.peel.i, label %.backedge.peel.i, label %.lr.ph.i.thread

.lr.ph.i.thread:                                  ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  br label %bb.i

.backedge.peel.i:                                 ; preds = %bb.f, %bb.e
  %indvars.iv.next.peel.i = add nsw i64 %i.ab, 1  ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv.next.peel.i, 52
  br i1 %exitcond.peel.not.i, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, label %.lr.ph.peel.next.i

.backedge.i:                                      ; preds = %.lr.ph.peel.next.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ag = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.ag, 52
  br i1 %exitcond.not.i, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, label %.lr.ph.peel.next.i, !llvm.loop !8

.lr.ph.peel.next.i:                               ; preds = %.backedge.peel.i, %.backedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i ], [ %indvars.iv.next.peel.i, %.backedge.peel.i ] ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !60
  %.not9.i = icmp eq ptr %i.ai, null
  br i1 %.not9.i, label %.backedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.peel.next.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  br i1 %.not.peel.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.thread100, %.lr.ph.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.not5.i.peel = icmp eq ptr %i.ak, null
  br i1 %.not5.i.peel, label %bb.h, label %.loopexit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i64 %i.ab, 1                    ; 2 uses
  %i.am = add nsw i32 %i.y, 1
  %i.an = trunc nsw i64 %i.al to i32
  store i32 %i.an, ptr %i.j, align 8, !tbaa !122
  store ptr null, ptr %i.i, align 8, !tbaa !121
  br label %.backedge.i55.peel

bb.i:                                             ; preds = %.lr.ph.i.thread, %.lr.ph.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ab
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60 ; 2 uses
  %.not3.i.peel = icmp eq ptr %i.ap, null
  br i1 %.not3.i.peel, label %bb.j, label %.loopexit.thread.i

bb.j:                                             ; preds = %bb.i
  %i.aq = add nsw i64 %i.ab, 1                    ; 2 uses
  %i.ar = trunc nsw i64 %i.aq to i32              ; 2 uses
  store i32 %i.ar, ptr %i.j, align 8, !tbaa !122
  br label %.backedge.i55.peel

.backedge.i55.peel:                               ; preds = %bb.j, %bb.h
  %indvars.iv.next.pre-phi.i.peel = phi i64 [ %i.al, %bb.h ], [ %i.aq, %bb.j ]
  %i.as = phi i32 [ %i.am, %bb.h ], [ %i.ar, %bb.j ]
  %i.at = icmp slt i32 %i.as, 52
  br i1 %i.at, label %.peel.next, label %.loopexit.i

.backedge.i55:                                    ; preds = %.peel.next
  %i.au = add nsw i64 %indvars.iv.i54, 1          ; 2 uses
  %i.av = trunc nsw i64 %i.au to i32
  store i32 %i.av, ptr %i.j, align 8, !tbaa !122
  %i.aw = icmp slt i64 %indvars.iv.i54, 51
  br i1 %i.aw, label %.peel.next, label %.loopexit.i, !llvm.loop !169

.peel.next:                                       ; preds = %.backedge.i55.peel, %.backedge.i55
  %indvars.iv.i54 = phi i64 [ %i.au, %.backedge.i55 ], [ %indvars.iv.next.pre-phi.i.peel, %.backedge.i55.peel ] ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv.i54
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60 ; 2 uses
  %.not3.i = icmp eq ptr %i.ay, null
  br i1 %.not3.i, label %.backedge.i55, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.peel.next, %bb.g, %bb.i
  %.lcssa15.sink.i = phi ptr [ %i.ak, %bb.g ], [ %i.ap, %bb.i ], [ %i.ay, %.peel.next ] ; 2 uses
  store ptr %.lcssa15.sink.i, ptr %i.i, align 8, !tbaa !121
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !124 ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.lcssa15.sink.i, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !63 ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bc, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bd, i64 64, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bf, i64 16, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bh, i64 16, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 112
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bj, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bk, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bl, i64 16, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 136
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !54
  %i.bo = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  store i8 %i.bn, ptr %i.bo, align 8, !tbaa !54
  br label %bb.k

.loopexit.i:                                      ; preds = %.backedge.i55, %.backedge.i55.peel
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !124 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.bq, i8 0, i64 128, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %i.br = phi ptr [ %i.bp, %.loopexit.i ], [ %i.az, %.loopexit.thread.i ]
  invoke void @_ZN6icu_7815DateTimeMatcherC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %8, ptr noundef nonnull align 8 dereferenceable(152) %i.br)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !55  ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 80
  %i.bv = load i128, ptr %i.m, align 1
  %i.bw = load i128, ptr %i.bu, align 1
  %i.bx = icmp ne i128 %i.bv, %i.bw
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader

_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit:   ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 96
  %i.cb = load i128, ptr %i.n, align 1
  %i.cc = load i128, ptr %i.ca, align 1
  %i.cd = icmp ne i128 %i.cb, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %.not = icmp eq i32 %i.ce, 0
  br i1 %.not, label %thread-pre-split, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader, !llvm.loop !170

_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader: ; preds = %bb.m, %bb.l, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit
  br label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread

bb.n:                                             ; preds = %bb.k
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @_ZN6icu_7818PatternMapIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #28
  br label %bb.y

_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread: ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader, %bb.t
  %i.cg = phi i32 [ %i.df, %bb.t ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 4 uses
  %i.ch = phi i32 [ %i.dg, %bb.t ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 4 uses
  %indvars.iv.i56 = phi i64 [ %indvars.iv.next.i57, %bb.t ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %.02227.i = phi i32 [ %.2.i, %bb.t ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %i.ci = phi i32 [ %i.di, %bb.t ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %i.cj = phi i32 [ %i.dh, %bb.t ], [ 0, %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread.preheader ] ; 5 uses
  %i.ck = trunc nuw nsw i64 %indvars.iv.i56 to i32
  %i.cl = shl nuw nsw i32 1, %i.ck                ; 3 uses
  %i.cm = and i32 %i.cl, %2
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %.thread.i, label %bb.o

bb.o:                                             ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i56
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !76 ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i56
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !76 ; 3 uses
  %i.cs = icmp eq i32 %i.cp, %i.cr
  br i1 %i.cs, label %bb.t, label %bb.p

.thread.i:                                        ; preds = %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i56
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !76
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.t, label %.thread25.i

bb.p:                                             ; preds = %bb.o
  %i.cw = icmp eq i32 %i.cp, 0
  br i1 %i.cw, label %.thread25.i, label %bb.q

.thread25.i:                                      ; preds = %bb.p, %.thread.i
  %i.cx = add nuw nsw i32 %.02227.i, 65536
  %i.cy = or i32 %i.cj, %i.cl                     ; 2 uses
  br label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.cz = icmp eq i32 %i.cr, 0
  br i1 %i.cz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.da = add nuw nsw i32 %.02227.i, 4096
  %i.db = or i32 %i.ci, %i.cl                     ; 2 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.dc = sub nsw i32 %i.cp, %i.cr
  %i.dd = call i32 @llvm.abs.i32(i32 %i.dc, i1 true)
  %i.de = add nuw nsw i32 %i.dd, %.02227.i
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %.thread25.i, %.thread.i, %bb.o
  %i.df = phi i32 [ %i.cg, %bb.o ], [ %i.cy, %.thread25.i ], [ %i.cg, %bb.r ], [ %i.cg, %bb.s ], [ %i.cg, %.thread.i ] ; 3 uses
  %i.dg = phi i32 [ %i.ch, %bb.o ], [ %i.ch, %.thread25.i ], [ %i.db, %bb.r ], [ %i.ch, %bb.s ], [ %i.ch, %.thread.i ] ; 5 uses
  %i.dh = phi i32 [ %i.cj, %bb.o ], [ %i.cy, %.thread25.i ], [ %i.cj, %bb.r ], [ %i.cj, %bb.s ], [ %i.cj, %.thread.i ]
  %i.di = phi i32 [ %i.ci, %bb.o ], [ %i.ci, %.thread25.i ], [ %i.db, %bb.r ], [ %i.ci, %bb.s ], [ %i.ci, %.thread.i ]
  %.2.i = phi i32 [ %.02227.i, %bb.o ], [ %i.cx, %.thread25.i ], [ %i.da, %bb.r ], [ %i.de, %bb.s ], [ %.02227.i, %.thread.i ] ; 5 uses
  %indvars.iv.next.i57 = add nuw nsw i64 %indvars.iv.i56, 1 ; 2 uses
  %exitcond.not.i58 = icmp eq i64 %indvars.iv.next.i57, 16
  br i1 %exitcond.not.i58, label %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit, label %_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_.exit.thread, !llvm.loop !9

_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit: ; preds = %bb.t
  store i32 %i.dg, ptr %i.p, align 8
  store i32 %i.df, ptr %i.o, align 4
  %i.dj = icmp slt i32 %.2.i, %.03578
  br i1 %i.dj, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit
  %i.dk = icmp eq i32 %.2.i, %.03578
  %i.dl = icmp slt i32 %.03179, %i.dg
  %or.cond52 = select i1 %i.dk, i1 %i.dl, i1 false
  br i1 %or.cond52, label %bb.v, label %thread-pre-split

bb.v:                                             ; preds = %bb.u, %_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE.exit
  %i.dm = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.dn = call noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr noundef nonnull align 8 dereferenceable(425) %i.dm, ptr noundef nonnull align 8 dereferenceable(137) %i.s, ptr noundef nonnull %i.a) ; 2 uses
  store i32 %i.dg, ptr %i.t, align 8, !tbaa !115
  store i32 %i.df, ptr %i.u, align 4, !tbaa !116
  %i.do = icmp eq i32 %.2.i, 0
  br i1 %i.do, label %bb.w, label %thread-pre-split

bb.w:                                             ; preds = %bb.v
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread: ; preds = %thread-pre-split, %.preheader.i, %.backedge.peel.i, %.backedge.i, %bb.w
  %.4 = phi ptr [ %i.dn, %bb.w ], [ %.02780, %.backedge.i ], [ %.02780, %.preheader.i ], [ %.02780, %.backedge.peel.i ], [ %.330.ph, %thread-pre-split ] ; 3 uses
  %i.dp = icmp ne ptr %.4, null
  %i.dq = icmp ne ptr %5, null
  %or.cond = and i1 %i.dq, %i.dp
  br i1 %or.cond, label %bb.x, label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

bb.x:                                             ; preds = %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread
  %i.dr = load ptr, ptr %i.a, align 8, !tbaa !106
  store ptr %i.dr, ptr %5, align 8, !tbaa !106
  br label %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread

_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread.thread: ; preds = %bb.d, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread, %bb.x, %bb.b
  %.039 = phi ptr [ null, %bb.b ], [ %.4, %bb.x ], [ %.4, %_ZNK6icu_7818PatternMapIterator7hasNextEv.exit.thread ], [ null, %bb.d ]
  call void @_ZN6icu_7818PatternMapIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6icu_7812DistanceInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret ptr %.039

bb.y:                                             ; preds = %bb.n, %bb.c
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.n ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @_ZN6icu_7812DistanceInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 initializes((0, 10)) %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef readonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 5 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 16 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 10 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !47   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i32 0, ptr %i.c, align 4, !tbaa !76
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 3208 ; 4 uses
  store i32 0, ptr %i.h, align 8, !tbaa !97
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.noexc121, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.v, %.noexc121 ] ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i32 %i.l(ptr noundef nonnull align 8 dereferenceable(3216) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %bb.e, !inline_history !98

.noexc:                                           ; preds = %bb.b
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.o = load i32, ptr %i.c, align 4, !tbaa !76
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2, i32 noundef %.0.i, i32 noundef %i.o)
          to label %.noexc121 unwind label %bb.e

.noexc121:                                        ; preds = %bb.c
  %i.p = load i32, ptr %i.h, align 8, !tbaa !97   ; 2 uses
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.h, align 8, !tbaa !97
  %i.r = sext i32 %i.p to i64
  %i.s = getelementptr inbounds [64 x i8], ptr %i.i, i64 %i.r
  %i.t = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.s, ptr noundef nonnull align 8 dereferenceable(64) %6) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.u = load i32, ptr %i.c, align 4, !tbaa !76
  %i.v = add nsw i32 %i.u, %.0.i
  %i.w = load i32, ptr %i.h, align 8, !tbaa !97
  %i.x = icmp slt i32 %i.w, 50
  br i1 %i.x, label %bb.b, label %bb.d, !llvm.loop !4

bb.d:                                             ; preds = %.noexc121, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store i32 0, ptr %i.d, align 4, !tbaa !76
  %i.y = load ptr, ptr %i.f, align 8, !tbaa !47   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 3208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !97
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph151, label %._crit_edge

.lr.ph151:                                        ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 10
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ag = trunc i32 %4 to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.ai = and i32 %5, 2048
end_hunk_3
begin_hunk_4_@_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions:bb.a

bb.s:                                             ; preds = %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit
  %i.di = and i64 %indvars.iv56.i.i, 4294967295
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.di ; 2 uses
  %i.dk = and i32 %i.cw, 2147483646
  %i.dl = icmp eq i32 %i.dk, 64                   ; 2 uses
  %or.cond = and i1 %i.dl, %i.ag
  br i1 %or.cond, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dm = load i16, ptr %i.as, align 8, !tbaa !32 ; 2 uses
  %i.dn = icmp slt i16 %i.dm, 0
  %i.do = ashr i16 %i.dm, 5
  %i.dp = sext i16 %i.do to i32
  %i.dq = load i32, ptr %i.at, align 4
  %i.dr = select i1 %i.dn, i32 %i.dq, i32 %i.dp
  %i.ds = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i32 noundef 0, i32 noundef %i.dr)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit130 unwind label %.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit130:        ; preds = %bb.t
  %i.dt = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 94
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !32
  %i.dw = sext i8 %i.dv to i16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 110
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !32  ; 2 uses
  %i.dz = zext nneg i8 %i.dy to i32
  %i.ea = icmp sgt i8 %i.dy, 0
  br i1 %i.ea, label %.lr.ph.i, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph.i:                                         ; preds = %_ZN6icu_7813UnicodeStringpLERKS0_.exit130, %.noexc132
  %.08.i = phi i32 [ %i.ec, %.noexc132 ], [ 0, %_ZN6icu_7813UnicodeStringpLERKS0_.exit130 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.dw, ptr %i.b, align 2, !tbaa !78
  %i.eb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %.noexc132 unwind label %.loopexit ; 0 uses

.noexc132:                                        ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ec = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %exitcond.not.i131 = icmp eq i32 %i.ec, %i.dz
  br i1 %exitcond.not.i131, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %.lr.ph.i, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.loopexit.split-lp:                               ; preds = %bb.t, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.u:                                             ; preds = %bb.s
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !104
  %i.ef = load ptr, ptr %i.ah, align 8, !tbaa !48 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = sext i32 %i.ee to i64                   ; 4 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !76 ; 2 uses
  %.not96 = icmp eq i32 %i.ej, 0
  br i1 %.not96, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 80
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.eh
  %i.em = load i8, ptr %i.el, align 1, !tbaa !32  ; 6 uses
  %i.en = sext i8 %i.em to i16                    ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 96
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %i.eh
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !32
  %i.er = sext i8 %i.eq to i32                    ; 2 uses
  %i.es = icmp eq i8 %i.em, 69
  %i.et = call i32 @llvm.smax.i32(i32 %i.er, i32 3)
  %spec.store.select = select i1 %i.es, i32 %i.et, i32 %i.er ; 5 uses
  %i.eu = add nsw i32 %i.cw, -56
  %i.ev = icmp ult i32 %i.eu, 7                   ; 2 uses
  %or.cond112 = and i1 %i.aj, %i.ev
  %i.ew = icmp eq i64 %indvars.iv56.i.i, 63
  %or.cond114 = and i1 %i.al, %i.ew
  %or.cond152 = or i1 %or.cond112, %or.cond114
  %or.cond116 = and i1 %i.an, %i.dl
  %or.cond153 = or i1 %or.cond152, %or.cond116    ; 2 uses
  %brmerge = or i1 %or.cond153, %.not144
  %.mux = select i1 %or.cond153, i32 %i.bg, i32 %spec.store.select
  br i1 %brmerge, label %bb.x, label %switch.early.test

switch.early.test:                                ; preds = %bb.v
  switch i8 %i.em, label %bb.w [
    i8 101, label %bb.x
    i8 99, label %bb.x
  ]

bb.w:                                             ; preds = %switch.early.test
  %i.ex = getelementptr inbounds i8, ptr %i.ao, i64 %i.eh
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !32
  %i.ez = sext i8 %i.ey to i32
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.fb = load i16, ptr %i.fa, align 8, !tbaa !105
  %i.fc = icmp slt i16 %i.fb, 1                   ; 2 uses
  %i.fd = icmp sgt i32 %i.ej, 0                   ; 2 uses
  %i.fe = icmp ne i32 %spec.store.select, %i.ez
  %or.cond11 = or i1 %i.fd, %i.fc
  %or.cond117 = select i1 %i.fe, i1 %or.cond11, i1 false
  %or.cond117.not = xor i1 %or.cond117, true
  %or.cond13.not = select i1 %i.fd, i1 %i.fc, i1 false
  %or.cond118 = select i1 %or.cond117.not, i1 true, i1 %or.cond13.not
  %spec.select141 = select i1 %or.cond118, i32 %i.bg, i32 %spec.store.select
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %switch.early.test, %switch.early.test
  %.1 = phi i32 [ %spec.store.select, %switch.early.test ], [ %spec.store.select, %switch.early.test ], [ %.mux, %bb.v ], [ %spec.select141, %bb.w ] ; 3 uses
  %i.ff = add nsw i32 %i.cw, -63
  %i.fg = icmp ult i32 %i.ff, -7
  %i.fh = add nsw i32 %i.cw, -27
  %i.fi = icmp ult i32 %i.fh, -9
  %or.cond15 = select i1 %i.fg, i1 %i.fi, i1 false
  %i.fj = add nsw i32 %i.cw, -43
  %i.fk = icmp ult i32 %i.fj, -14
  %or.cond17 = select i1 %or.cond15, i1 %i.fk, i1 false
  br i1 %or.cond17, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.fl = add nsw i32 %i.cw, -10
  %i.fm = icmp ult i32 %i.fl, -7
  %i.fn = icmp eq i8 %i.em, 89
  %or.cond20 = or i1 %i.fm, %i.fn
  br i1 %or.cond20, label %_ZNK6icu_7813UnicodeString6charAtEi.exit, label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.z, %bb.y
  %i.fo = phi i16 [ %i.en, %bb.y ], [ %i.bk, %bb.z ] ; 2 uses
  %i.fp = icmp eq i16 %i.fo, 69
  %i.fq = icmp slt i32 %.1, 3
  %or.cond22 = and i1 %i.fq, %i.fp
  %spec.store.select23 = select i1 %or.cond22, i16 101, i16 %i.fo ; 6 uses
  br i1 %i.ev, label %bb.aa, label %bb.ah

bb.aa:                                            ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.fr = load i16, ptr %i.ap, align 8, !tbaa !45 ; 7 uses
  %.not98 = icmp eq i16 %i.fr, 0
  br i1 %.not98, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fs = icmp eq i16 %i.fr, %i.en
  %or.cond119 = or i1 %.not99, %i.fs
  br i1 %or.cond119, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ft = icmp eq i8 %i.em, 104
  %i.fu = icmp eq i16 %i.fr, 75
  %or.cond120 = and i1 %i.ft, %i.fu
  br i1 %or.cond120, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i8 %i.em, label %bb.ah [
    i8 72, label %bb.ae
    i8 107, label %bb.af
    i8 75, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.fv = icmp eq i16 %i.fr, 107
  %spec.select142 = select i1 %i.fv, i16 107, i16 %spec.store.select23
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.fw = icmp eq i16 %i.fr, 72
  %spec.select143 = select i1 %i.fw, i16 72, i16 %spec.store.select23
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.fx = icmp eq i16 %i.fr, 104
  %spec.select = select i1 %i.fx, i16 104, i16 %spec.store.select23
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ae, %bb.ab, %bb.ag, %bb.ad, %bb.ac, %bb.aa, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.077 = phi i16 [ %i.fr, %bb.ab ], [ %spec.store.select23, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ 75, %bb.ac ], [ %spec.select143, %bb.af ], [ %spec.store.select23, %bb.ad ], [ %spec.select, %bb.ag ], [ %spec.select142, %bb.ae ], [ %spec.store.select23, %bb.aa ]
  %i.fy = and i16 %i.bb, 1
  %.not.i133 = icmp eq i16 %i.fy, 0
  %i.fz = and i16 %i.bb, 30
  %storemerge.i = select i1 %.not.i133, i16 %i.fz, i16 2
  store i16 %storemerge.i, ptr %i.ac, align 8, !tbaa !32
  %i.ga = icmp sgt i32 %.1, 0
  br i1 %i.ga, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit

.lr.ph:                                           ; preds = %bb.ah, %bb.ai
  %.0149 = phi i32 [ %i.gc, %bb.ai ], [ %.1, %bb.ah ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %.077, ptr %i.a, align 2, !tbaa !78
  %i.gb = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %bb.ai unwind label %bb.aj     ; 0 uses

bb.ai:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.gc = add nsw i32 %.0149, -1
  %i.gd = icmp sgt i32 %.0149, 1
  br i1 %i.gd, label %.lr.ph, label %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, !llvm.loop !171

bb.aj:                                            ; preds = %.lr.ph
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit: ; preds = %bb.ai, %.noexc132, %bb.ah, %_ZN6icu_7813UnicodeStringpLERKS0_.exit130, %bb.u
  %i.gf = load i16, ptr %i.ac, align 8, !tbaa !32 ; 2 uses
  %i.gg = icmp slt i16 %i.gf, 0
  %i.gh = ashr i16 %i.gf, 5
  %i.gi = sext i16 %i.gh to i32
  %i.gj = load i32, ptr %i.ad, align 4
  %i.gk = select i1 %i.gg, i32 %i.gj, i32 %i.gi
  %i.gl = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %7, i32 noundef 0, i32 noundef %i.gk)
          to label %_ZN6icu_7813UnicodeStringpLERKS0_.exit126 unwind label %.loopexit.split-lp ; 0 uses

_ZN6icu_7813UnicodeStringpLERKS0_.exit126:        ; preds = %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread, %.thread, %_ZN6icu_7813UnicodeStringpLERKS0_.exit
  %i.gm = phi i32 [ %storemerge150, %_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE.exit ], [ %storemerge150, %_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringE.exit.thread ], [ %storemerge150, %.thread ], [ %.pre, %_ZN6icu_7813UnicodeStringpLERKS0_.exit ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.gn = add nsw i32 %i.gm, 1                    ; 3 uses
  store i32 %i.gn, ptr %i.d, align 4, !tbaa !76
  %i.go = load ptr, ptr %i.f, align 8, !tbaa !47  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 3208
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !97
  %i.gr = icmp slt i32 %i.gn, %i.gq
  br i1 %i.gr, label %bb.f, label %._crit_edge, !llvm.loop !172

bb.ak:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.aj, %bb.l, %bb.k
  %.pn106.pn = phi { ptr, i32 } [ %i.bv, %bb.l ], [ %i.bu, %bb.k ], [ %i.dh, %bb.r ], [ %i.ge, %bb.aj ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.j
  %.pn106.pn.pn = phi { ptr, i32 } [ %.pn106.pn, %bb.ak ], [ %i.bt, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.e
  %.pn106.pn.pn.pn = phi { ptr, i32 } [ %.pn106.pn.pn, %bb.al ], [ %i.aw, %bb.e ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) #28
  resume { ptr, i32 } %.pn106.pn.pn.pn
}

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 65536) i32 @_ZNK6icu_7815DateTimeMatcher12getFieldMaskEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load <16 x i32>, ptr %i.a, align 8, !tbaa !76
  %i.c = icmp ne <16 x i32> %i.b, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16
  %i.e = zext i16 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator16getBestAppendingEiiR10UErrorCode28UDateTimePatternMatchOptions(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  %9 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %i.d = alloca [3 x ptr], align 16               ; 7 uses
  %13 = alloca %"class.icu_78::SimpleFormatter", align 8 ; 9 uses
  %i.e = load i32, ptr %4, align 4, !tbaa !29
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8, !tbaa !32
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %6, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 2, ptr %i.h, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %7, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i16 2, ptr %i.i, align 8, !tbaa !32
  %.not43 = icmp eq i32 %2, 0
  br i1 %.not43, label %bb.ae, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %8, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i16 2, ptr %i.j, align 8, !tbaa !32
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %8) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store ptr null, ptr %i.c, align 8, !tbaa !106
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.p = invoke noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(152) %i.m, i32 noundef %2, ptr noundef %i.o, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.c)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %4, align 4, !tbaa !29
  %i.r = icmp slt i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.s, align 8, !tbaa !32
  br label %.critedge

bb.g:                                             ; preds = %bb.h, %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.h:                                             ; preds = %bb.e
  %i.u = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %bb.i unwind label %bb.g       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  invoke void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.v, i32 noundef %3, i32 noundef %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.w = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %9) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  %i.x = load ptr, ptr %i.n, align 8, !tbaa !49   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !115  ; 3 uses
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %bb.j
  %i.ab = and i32 %2, 24576
  %i.ac = icmp eq i32 %i.ab, 24576
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1104
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ak = and i32 %i.z, 24576
  %i.al = icmp eq i32 %i.ak, 16384
  %or.cond78 = and i1 %i.ac, %i.al
  br i1 %or.cond78, label %.lr.ph73.preheader, label %.split

bb.k:                                             ; preds = %bb.j
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %6) #28
  br label %.critedge

bb.l:                                             ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %bb.ad

bb.m:                                             ; preds = %.lr.ph73.preheader
  %i.an = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %10) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !49  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !115
  %i.ar = and i32 %i.aq, -16385                   ; 3 uses
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !115
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.outer._crit_edge, label %.split, !llvm.loop !173

bb.n:                                             ; preds = %.lr.ph73.preheader
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ad

.split:                                           ; preds = %bb.m, %.lr.ph.lr.ph
  %.us-phi = phi ptr [ %i.x, %.lr.ph.lr.ph ], [ %i.ao, %bb.m ]
  %.us-phi72 = phi i32 [ %i.z, %.lr.ph.lr.ph ], [ %i.ar, %bb.m ] ; 2 uses
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !48
  %i.av = invoke noundef ptr @_ZN6icu_7824DateTimePatternGenerator10getBestRawERNS_15DateTimeMatcherEiPNS_12DistanceInfoER10UErrorCodePPKNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(152) %i.au, i32 noundef %.us-phi72, ptr noundef nonnull %.us-phi, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull %i.c)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.split
  %i.aw = load i32, ptr %4, align 4, !tbaa !29
  %i.ax = icmp slt i32 %i.aw, 1
  br i1 %i.ax, label %bb.q, label %.thread

.thread:                                          ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.ay, align 8, !tbaa !32
  br label %.critedge

bb.p:                                             ; preds = %bb.q, %.split
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.q:                                             ; preds = %bb.o
  %i.ba = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %bb.r unwind label %bb.p       ; 0 uses

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bb = load ptr, ptr %i.c, align 8, !tbaa !106
  invoke void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %i.bb, i32 noundef %3, i32 noundef %5)
          to label %bb.s unwind label %bb.z

bb.s:                                             ; preds = %bb.r
  %i.bc = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %11) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  %i.bd = load ptr, ptr %i.n, align 8, !tbaa !49
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !115
  %i.bg = xor i32 %i.bf, -1
  %i.bh = and i32 %.us-phi72, %i.bg               ; 2 uses
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %bb.s, %.preheader.i
  %.012.i = phi i32 [ %i.bk, %.preheader.i ], [ 0, %bb.s ]
  %.0711.i = phi i32 [ %i.bj, %.preheader.i ], [ %i.bh, %bb.s ]
  %i.bj = ashr i32 %.0711.i, 1                    ; 2 uses
  %i.bk = add nuw nsw i32 %.012.i, 1              ; 2 uses
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.t, label %.preheader.i, !llvm.loop !11

bb.t:                                             ; preds = %.preheader.i
  %i.bl = call i32 @llvm.umin.i32(i32 %i.bk, i32 16)
  %.08.i = add nsw i32 %i.bl, -1
  %i.bm = zext nneg i32 %.08.i to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.1.i = phi i64 [ %i.bm, %bb.t ], [ 0, %bb.s ]  ; 2 uses
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.ad, i64 %.1.i ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i16, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = ashr i16 %i.bp, 5
  %i.bs = sext i16 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = select i1 %i.bq, i32 %i.bu, i32 %i.bs
  %.not47 = icmp eq i32 %i.bv, 0
  br i1 %.not47, label %.outer._crit_edge, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %12, align 8, !tbaa !31
  store i16 2, ptr %i.ae, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 39, ptr %i.b, align 2, !tbaa !78
  %i.bw = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %12, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 1)
          to label %.noexc unwind label %bb.aa    ; 0 uses

.noexc:                                           ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bx = getelementptr inbounds nuw [192 x i8], ptr %i.af, i64 %.1.i ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !32 ; 2 uses
  %i.ca = icmp slt i16 %i.bz, 0
  %i.cb = ashr i16 %i.bz, 5
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = select i1 %i.ca, i32 %i.ce, i32 %i.cc
  %i.cg = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %i.bx, i32 noundef 0, i32 noundef %i.cf)
          to label %.noexc60 unwind label %bb.aa  ; 0 uses

.noexc60:                                         ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 39, ptr %i.a, align 2, !tbaa !78
  %i.ch = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1)
          to label %bb.w unwind label %bb.aa      ; 0 uses

bb.w:                                             ; preds = %.noexc60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  store ptr %6, ptr %i.d, align 16, !tbaa !175
  store ptr %7, ptr %i.ag, align 8, !tbaa !175
  store ptr %12, ptr %i.ah, align 16, !tbaa !175
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.ai, align 8, !tbaa !31
  store i16 2, ptr %i.aj, align 8, !tbaa !32
  %i.ci = invoke noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i32 noundef 2, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode.exit unwind label %bb.x ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.ai) #28
  br label %.body

_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode.exit: ; preds = %bb.w
  %i.ck = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter16formatAndReplaceEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr noundef nonnull %i.d, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef null, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.y unwind label %bb.ab      ; 0 uses

bb.y:                                             ; preds = %_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode.exit
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.outer._crit_edge

bb.z:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ad

bb.aa:                                            ; preds = %.noexc60, %.noexc, %bb.v
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.ab:                                            ; preds = %_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %13) #28
  br label %.body

.body:                                            ; preds = %bb.x, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.ab ], [ %i.cj, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  br label %bb.ac

bb.ac:                                            ; preds = %.body, %bb.aa
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cm, %bb.aa ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.ad

.lr.ph73.preheader:                               ; preds = %.lr.ph.lr.ph
  %i.co = or i32 %3, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %i.v, i32 noundef %i.co, i32 noundef %5)
          to label %bb.m unwind label %bb.n

.outer._crit_edge:                                ; preds = %bb.m, %bb.y, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.ae

bb.ad:                                            ; preds = %bb.p, %bb.z, %bb.ac, %bb.n, %bb.l, %bb.g
  %.pn54 = phi { ptr, i32 } [ %i.t, %bb.g ], [ %i.at, %bb.n ], [ %i.am, %bb.l ], [ %i.az, %bb.p ], [ %i.cl, %bb.z ], [ %.pn.pn, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn54

bb.ae:                                            ; preds = %.outer._crit_edge, %bb.c
  call void @_ZN6icu_7813UnicodeStringC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %6) #28
  br label %bb.af

.critedge:                                        ; preds = %.thread, %bb.f, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %bb.af

bb.af:                                            ; preds = %.critedge, %bb.ae
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZN6icu_7815DateTimeMatcher14getSkeletonPtrEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(152) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -128, 128) i32 @_ZNK6icu_7814SkeletonFields14getFieldLengthEi(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds i8, ptr %i.a, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !32
  %i.e = sext i8 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  %i.a = load atomic i8, ptr @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !125

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #28
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.12, ptr %3, align 8, !tbaa !92
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, i8 noundef signext 1, ptr noundef nonnull align 8 %3, i32 noundef -1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %3, align 8, !tbaa !92
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #28, !srcloc !89
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7813UnicodeStringD1Ev, ptr nonnull @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #28
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.f = load i32, ptr %2, align 4, !tbaa !29
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.g, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !92
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.i) #28, !srcloc !89
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #28
  resume { ptr, i32 } %i.h

bb.g:                                             ; preds = %bb.e
  %or.cond = icmp ugt i32 %1, 3
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 1, ptr %2, align 4, !tbaa !29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.j, i64 %i.k
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i, %bb.h
  %.0 = phi ptr [ %i.l, %bb.i ], [ @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, %bb.h ], [ @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, %bb.e ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_7815SimpleFormatterC2ERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8, !tbaa !32
  %i.c = invoke noundef signext i8 @_ZN6icu_7815SimpleFormatter27applyPatternMinMaxArgumentsERKNS_13UnicodeStringEiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.a) #28
  resume { ptr, i32 } %i.d
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7815SimpleFormatterD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_R10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.a = load i32, ptr %4, align 4, !tbaa !29, !noalias !178
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31, !alias.scope !178
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !32, !alias.scope !178
  br label %_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46, !noalias !178 ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %4, align 4, !tbaa !29, !noalias !178
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31, !alias.scope !178
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8, !tbaa !32, !alias.scope !178
  br label %_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48, !noalias !178
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47, !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !178
  call void @_ZN6icu_7811PtnSkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %5), !noalias !178
  invoke void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(137) %5)
          to label %_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE.exit.i unwind label %bb.f, !noalias !178

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #28, !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !178
  resume { ptr, i32 } %i.l

_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE.exit.i: ; preds = %bb.e
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %5) #28, !noalias !178
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !178
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef null, i32 noundef 0, i32 noundef 0)
  br label %_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit

_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode.exit: ; preds = %bb.b, %bb.d, %_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode(ptr dead_on_unwind noalias writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i32 noundef %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.icu_78::PtnSkeleton", align 8 ; 7 uses
  %i.a = load i32, ptr %5, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.c, align 8, !tbaa !32
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4608
  %i.e = load i32, ptr %i.d, align 8, !tbaa !46   ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %i.e, ptr %5, align 4, !tbaa !29
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %0, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 2, ptr %i.g, align 8, !tbaa !32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN6icu_7811PtnSkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %6)
  invoke void @_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserERNS_11PtnSkeletonE(ptr noundef nonnull align 8 dereferenceable(152) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.k, ptr noundef nonnull align 8 dereferenceable(137) %6)
          to label %_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %i.l

_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE.exit: ; preds = %bb.e
  call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @_ZN6icu_7824DateTimePatternGenerator16adjustFieldTypesERKNS_13UnicodeStringEPKNS_11PtnSkeletonEi28UDateTimePatternMatchOptions(ptr dead_on_unwind writable sret(%"class.icu_78::UnicodeString") align 8 %0, ptr noundef nonnull align 8 dereferenceable(4612) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef null, i32 noundef 0, i32 noundef %4)
  br label %bb.g

bb.g:                                             ; preds = %_ZN6icu_7815DateTimeMatcher3setERKNS_13UnicodeStringEPNS_12FormatParserE.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator10setDecimalERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.c = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator10getDecimalEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4432
  ret ptr %i.a
}

declare void @_ZN6icu_7813UnicodeStringC1EDs(ptr noundef nonnull align 8 dereferenceable(64), i16 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatE16UDateFormatStyleRKNS_13UnicodeStringER10UErrorCode.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4176 ; 2 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.c = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4240 ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.f = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.d) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4304 ; 2 uses
  %i.h = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.i = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.g) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4368 ; 2 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  %i.l = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.j) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7824DateTimePatternGenerator17setDateTimeFormatE16UDateFormatStyleRKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %or.cond = icmp ugt i32 %1, 3
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %3, align 4, !tbaa !29
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4176
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %2) ; 0 uses
  %i.g = tail call noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.e) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(4612) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %i.a = load atomic i8, ptr @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit, !prof !125

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @.str.12, ptr %1, align 8, !tbaa !92
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, i8 noundef signext 1, ptr noundef nonnull align 8 %1, i32 noundef -1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %1, align 8, !tbaa !92
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.d) #28, !srcloc !89
  %i.e = call i32 @__cxa_atexit(ptr nonnull @_ZN6icu_7813UnicodeStringD1Ev, ptr nonnull @_ZZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString, ptr nonnull @__dso_handle) #28 ; 0 uses
  call void @__cxa_guard_release(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #28
  br label %_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit

bb.e:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !tbaa !92
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.g) #28, !srcloc !89
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCodeE11emptyString) #28
  resume { ptr, i32 } %i.f

_ZNK6icu_7824DateTimePatternGenerator17getDateTimeFormatE16UDateFormatStyleR10UErrorCode.exit: ; preds = %bb.d, %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4304
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  ret ptr %i.h
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #13

declare void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #13

declare ptr @ures_getByKey_78(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_788Calendar25getCalendarTypeFromLocaleERKNS_6LocaleEPciR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare ptr @ures_getStringByIndex_78(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6icu_7820DecimalFormatSymbolsC1ERKNS_6LocaleER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2459), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7820DecimalFormatSymbolsD1Ev(ptr noundef nonnull align 8 dead_on_return(2459) dereferenceable(2459)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator22addPatternWithSkeletonERKNS_13UnicodeStringES3_aRS1_R10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %2, i8 noundef signext %3, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815DateTimeMatcher14getBasePatternERNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = and i16 %i.b, 1
  %.not.i = icmp eq i16 %i.c, 0
  %i.d = and i16 %i.b, 30
  %storemerge.i = select i1 %.not.i, i16 %i.d, i16 2
  store i16 %storemerge.i, ptr %i.a, align 8, !tbaa !32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7810PatternMap25getPatternFromBasePatternERKNS_13UnicodeStringERa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78   ; 4 uses
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
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !60 ; 2 uses
  %i.w = icmp eq ptr %.0.i, null
  br i1 %i.w, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit, %bb.g
  %.0 = phi ptr [ %i.ba, %bb.g ], [ %.0.i, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ] ; 7 uses
  %i.x = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.z = load i16, ptr %i.y, align 8, !tbaa !32   ; 4 uses
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
  %i.au = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ao, ptr noundef %i.at, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i)
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.e, %.sink.split.i.i.i
  %.0.i.i13 = phi i8 [ %i.ad, %bb.e ], [ %i.au, %.sink.split.i.i.i ]
  %i.av = icmp eq i8 %.0.i.i13, 0
  br i1 %i.av, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.0, i64 144
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !68
  store i8 %i.ax, ptr %2, align 1, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %.0, i64 80
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

bb.g:                                             ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %i.ba, null
  br i1 %.not, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader, !llvm.loop !179

_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread: ; preds = %bb.g, %bb.a, %bb.c, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit, %bb.f
  %.010 = phi ptr [ null, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ], [ %i.ay, %bb.f ], [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ]
  ret ptr %.010
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #14 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !106
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32
  %.not.i.i = icmp eq i8 %i.c, 0
  br i1 %.not.i.i, label %bb.d, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 121
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32
  %.not.1.i.i = icmp eq i8 %i.e, 0
  br i1 %.not.1.i.i, label %bb.e, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 122
  %i.g = load i8, ptr %i.f, align 2, !tbaa !32
  %.not.2.i.i = icmp eq i8 %i.g, 0
  br i1 %.not.2.i.i, label %bb.f, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 123
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32
  %.not.3.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.3.i.i, label %bb.g, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.k = load i8, ptr %i.j, align 4, !tbaa !32
  %.not.4.i.i = icmp eq i8 %i.k, 0
  br i1 %.not.4.i.i, label %bb.h, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 125
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %.not.5.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.5.i.i, label %bb.i, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.i:                                             ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 126
  %i.o = load i8, ptr %i.n, align 2, !tbaa !32
  %.not.6.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.6.i.i, label %bb.j, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 127
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32
  %.not.7.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.7.i.i, label %bb.k, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32
  %.not.8.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.8.i.i, label %bb.l, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.l:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  %.not.9.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.9.i.i, label %bb.m, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.w = load i8, ptr %i.v, align 2, !tbaa !32
  %.not.10.i.i = icmp eq i8 %i.w, 0
  br i1 %.not.10.i.i, label %bb.n, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
  %.not.11.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.11.i.i, label %bb.o, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.o:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !32
  %.not.12.i.i = icmp eq i8 %i.aa, 0
  br i1 %.not.12.i.i, label %bb.p, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.p:                                             ; preds = %bb.o
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  %.not.13.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not.13.i.i, label %bb.q, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.q:                                             ; preds = %bb.p
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 134
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !32
  %.not.14.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.14.i.i, label %bb.r, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

bb.r:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 135
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !32
  %.not.15.i.i = icmp eq i8 %i.ag, 0
  br i1 %.not.15.i.i, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit

_ZNK6icu_7811PtnSkeleton12getFirstCharEv.exit:    ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.lcssa.i.i = phi i64 [ 0, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 3, %bb.f ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ], [ 7, %bb.j ], [ 8, %bb.k ], [ 9, %bb.l ], [ 10, %bb.m ], [ 11, %bb.n ], [ 12, %bb.o ], [ 13, %bb.p ], [ 14, %bb.q ], [ 15, %bb.r ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !32
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
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !60 ; 3 uses
  %i.as = icmp eq ptr %.0.i, null
  br i1 %i.as, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader

.preheader:                                       ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  br i1 %.not, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us
  %.020.us = phi ptr [ %i.bk, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us ], [ %.0.i, %.preheader ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.020.us, i64 72
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !63 ; 2 uses
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
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !69 ; 2 uses
  %.not27.us = icmp eq ptr %i.bk, null
  br i1 %.not27.us, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader.split.us, !llvm.loop !180

.preheader.split:                                 ; preds = %.preheader, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread
  %.020 = phi ptr [ %i.cd, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread ], [ %.0.i, %.preheader ] ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.020, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !63 ; 3 uses
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
  %i.ca = load i8, ptr %i.bz, align 8, !tbaa !68
  %.not26 = icmp eq i8 %i.ca, 0
  br i1 %.not26, label %.thread41, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bm, ptr %2, align 8, !tbaa !106
  br label %.thread41

.thread41:                                        ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us, %bb.v, %bb.w
  %.02047 = phi ptr [ %.020, %bb.w ], [ %.020, %bb.v ], [ %.020.us, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.us ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.02047, i64 80
  br label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread

_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread:  ; preds = %.preheader.split, %.split
  %i.cc = getelementptr inbounds nuw i8, ptr %.020, i64 152
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !69 ; 2 uses
  %.not27 = icmp eq ptr %i.cd, null
  br i1 %.not27, label %_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread, label %.preheader.split, !llvm.loop !180

_ZNK6icu_7810PatternMap9getHeaderEDs.exit.thread: ; preds = %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us, %bb.r, %bb.t, %.thread41, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %.2 = phi ptr [ %i.cb, %.thread41 ], [ null, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit ], [ null, %bb.r ], [ null, %bb.t ], [ null, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread.us ], [ null, %_ZNK6icu_7814SkeletonFieldseqERKS0_.exit.thread ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7810PatternMap3addERKNS_13UnicodeStringERKNS_11PtnSkeletonES3_aR10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(425) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, i8 noundef signext %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = icmp slt i16 %i.b, 0
  %i.d = ashr i16 %i.b, 5
  %i.e = sext i16 %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = load i32, ptr %i.f, align 4
  %i.h = select i1 %i.c, i32 %i.g, i32 %i.e
  %.not120 = icmp eq i32 %i.h, 0
  br i1 %.not120, label %.thread, label %_ZNK6icu_7813UnicodeString6charAtEi.exit

.thread:                                          ; preds = %bb.a
  store i32 0, ptr %5, align 4, !tbaa !29
  br label %bb.c

_ZNK6icu_7813UnicodeString6charAtEi.exit:         ; preds = %bb.a
  %i.i = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = select i1 %.not.i.i.i, ptr %i.l, ptr %i.j
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78   ; 4 uses
  store i32 0, ptr %5, align 4, !tbaa !29
  %i.o = zext i16 %i.n to i64                     ; 3 uses
  %i.p = add i16 %i.n, -65
  %or.cond = icmp ult i16 %i.p, 26
  br i1 %or.cond, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %i.q = add i16 %i.n, -97
  %or.cond6 = icmp ult i16 %i.q, 26
  br i1 %or.cond6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %bb.b
  store i32 65567, ptr %5, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

bb.d:                                             ; preds = %bb.b, %_ZNK6icu_7813UnicodeString6charAtEi.exit
  %.sink136 = phi i64 [ -512, %_ZNK6icu_7813UnicodeString6charAtEi.exit ], [ -560, %bb.b ]
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.s = getelementptr i8, ptr %i.r, i64 %.sink136
  %.061 = load ptr, ptr %i.s, align 8, !tbaa !60  ; 3 uses
  %cond = icmp eq ptr %.061, null
  br i1 %cond, label %bb.e, label %bb.v

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 160) #28 ; 11 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN6icu_787PtnElemC1ERKNS_13UnicodeStringES3_(ptr noundef nonnull align 8 dereferenceable(160) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit unwind label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.v = load i32, ptr %5, align 4
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 7, ptr %5, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.f
  %.pre121 = load i32, ptr %5, align 4, !tbaa !29
  %i.x = icmp slt i32 %.pre121, 1
  br i1 %i.x, label %bb.j, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.i:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.t) #28
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit

bb.j:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.aa = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 144) #28 ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null                 ; 2 uses
  br i1 %i.ab, label %.thread114, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6icu_7811PtnSkeletonC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(137) %i.aa, ptr noundef nonnull align 8 dereferenceable(137) %2)
          to label %bb.l unwind label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.ac = load i32, ptr %5, align 4, !tbaa !29
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %bb.q, label %bb.m

.thread114:                                       ; preds = %bb.j
  %i.ae = load i32, ptr %5, align 4, !tbaa !29
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, label %bb.m

bb.m:                                             ; preds = %.thread114, %bb.l
  %i.ag = load ptr, ptr %i.z, align 8, !tbaa !63  ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(137) %i.ag) #28, !inline_history !1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !63
  br i1 %i.ab, label %bb.p, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.p:                                             ; preds = %bb.o
  store i32 7, ptr %5, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.q:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(137) %i.aa) #28, !inline_history !1
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.o, %bb.q
  %.pr = load i32, ptr %5, align 4, !tbaa !29
  %i.ao = icmp slt i32 %.pr, 1
  br i1 %i.ao, label %bb.s, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread

bb.r:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.aa) #28
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(160) %i.t) #28, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit

bb.s:                                             ; preds = %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 144
  store i8 %4, ptr %i.at, align 8, !tbaa !68
  %i.au = icmp samesign ugt i16 %i.n, 96
  br i1 %i.au, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr i8, ptr %0, i64 -560
  %i.aw = getelementptr [8 x i8], ptr %i.av, i64 %i.o
  store ptr %i.t, ptr %i.aw, align 8, !tbaa !60
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

bb.u:                                             ; preds = %bb.s
  %i.ax = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.ay = getelementptr i8, ptr %i.ax, i64 -512
  store ptr %i.t, ptr %i.ay, align 8, !tbaa !60
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

bb.v:                                             ; preds = %bb.d
  %i.az = tail call noundef ptr @_ZN6icu_7810PatternMap16getDuplicateElemERKNS_13UnicodeStringERKNS_11PtnSkeletonEPNS_7PtnElemE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(137) %2, ptr noundef nonnull %.061) ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.preheader, label %bb.al

.preheader:                                       ; preds = %bb.v, %.preheader
  %.0 = phi ptr [ %i.bc, %.preheader ], [ %.061, %bb.v ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %bb.w, label %.preheader, !llvm.loop !181

bb.w:                                             ; preds = %.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %.0, i64 152 ; 2 uses
  %i.be = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 160) #28 ; 10 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN6icu_787PtnElemC1ERKNS_13UnicodeStringES3_(ptr noundef nonnull align 8 dereferenceable(160) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %3)
          to label %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit88 unwind label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.bg = load i32, ptr %5, align 4
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 7, ptr %5, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit88: ; preds = %bb.x
  %.pre = load i32, ptr %5, align 4, !tbaa !29
  %i.bi = icmp slt i32 %.pre, 1
  br i1 %i.bi, label %bb.ab, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89.thread

bb.aa:                                            ; preds = %bb.x
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.be) #28
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit

bb.ab:                                            ; preds = %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 72 ; 2 uses
  %i.bl = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 144) #28 ; 6 uses
  %i.bm = icmp eq ptr %i.bl, null                 ; 2 uses
  br i1 %i.bm, label %.thread118, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN6icu_7811PtnSkeletonC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(137) %i.bl, ptr noundef nonnull align 8 dereferenceable(137) %2)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.bn = load i32, ptr %5, align 4, !tbaa !29
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %bb.ai, label %bb.ae

.thread118:                                       ; preds = %bb.ab
  %i.bp = load i32, ptr %5, align 4, !tbaa !29
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89.thread, label %bb.ae

bb.ae:                                            ; preds = %.thread118, %bb.ad
  %i.br = load ptr, ptr %i.bk, align 8, !tbaa !63 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef nonnull align 8 dereferenceable(137) %i.br) #28, !inline_history !1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !63
  br i1 %i.bm, label %bb.ah, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89

bb.ah:                                            ; preds = %bb.ag
  store i32 7, ptr %5, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89.thread

bb.ai:                                            ; preds = %bb.ad
  %i.bw = load ptr, ptr %i.bl, align 8, !tbaa !31
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  tail call void %i.by(ptr noundef nonnull align 8 dereferenceable(137) %i.bl) #28, !inline_history !1
  br label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89: ; preds = %bb.ag, %bb.ai
  %.pr134 = load i32, ptr %5, align 4, !tbaa !29
  %i.bz = icmp slt i32 %.pr134, 1
  br i1 %i.bz, label %.critedge85, label %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89.thread

bb.aj:                                            ; preds = %bb.ac
  %i.ca = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.bl) #28
  %i.cb = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(160) %i.be) #28, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit

.critedge85:                                      ; preds = %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89
  %i.ce = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  store i8 %4, ptr %i.ce, align 8, !tbaa !68
  %i.cf = load ptr, ptr %i.bd, align 8, !tbaa !69 ; 3 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit91, label %bb.ak

bb.ak:                                            ; preds = %.critedge85
  %i.ch = load ptr, ptr %i.cf, align 8, !tbaa !31
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8
  tail call void %i.cj(ptr noundef nonnull align 8 dereferenceable(160) %i.cf) #28, !inline_history !3
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit91

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit91: ; preds = %bb.ak, %.critedge85
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !69
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89.thread: ; preds = %bb.ah, %.thread118, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89, %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit88
  %i.ck = load ptr, ptr %i.be, align 8, !tbaa !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8
  tail call void %i.cm(ptr noundef nonnull align 8 dereferenceable(160) %i.be) #28, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

bb.al:                                            ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !58
  %.not78 = icmp eq i8 %i.co, 0
  br i1 %.not78, label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cp = getelementptr inbounds nuw i8, ptr %i.az, i64 80
  %i.cq = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull align 8 dereferenceable(64) %3) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.az, i64 144
  store i8 %4, ptr %i.cr, align 8, !tbaa !68
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread: ; preds = %bb.p, %.thread114, %_ZN6icu_7812LocalPointerINS_7PtnElemEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.cs = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  tail call void %i.cu(ptr noundef nonnull align 8 dereferenceable(160) %i.t) #28, !inline_history !2
  br label %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit92: ; preds = %bb.h, %bb.g, %bb.z, %bb.y, %bb.t, %bb.u, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit.thread, %_ZN6icu_7812LocalPointerINS_11PtnSkeletonEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit89.thread, %bb.am, %_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit91, %bb.al, %bb.c
  ret void

_ZN6icu_7812LocalPointerINS_7PtnElemEED2Ev.exit:  ; preds = %bb.aa, %bb.aj, %bb.i, %bb.r
  %.pn80.pn = phi { ptr, i32 } [ %i.ap, %bb.r ], [ %i.y, %bb.i ], [ %i.ca, %bb.aj ], [ %i.bj, %bb.aa ]
  resume { ptr, i32 } %.pn80.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 17) i32 @_ZNK6icu_7824DateTimePatternGenerator21getAppendFormatNumberEPKc(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.16, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.17, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.18, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.19, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.20, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(2) @.str.21, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(12) @.str.22, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.23, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.24, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.25, ptr noundef nonnull dereferenceable(1) %1) #30
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.26, ptr noundef nonnull dereferenceable(1) %1) #30
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i32 %spec.select
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7818PatternMapIterator3setERNS_10PatternMapE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(425) %1) local_unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %1, ptr %i.a, align 8, !tbaa !120
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7818PatternMapIterator7hasNextEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !120  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !121  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !122  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = icmp slt i32 %i.g, 52
  br i1 %i.i, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.j = sext i32 %i.g to i64                     ; 2 uses
  %.not.peel = icmp eq ptr %i.e, null
  br i1 %.not.peel, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !69
  %.not10.peel = icmp eq ptr %i.l, null
  br i1 %.not10.peel, label %.backedge.peel, label %.loopexit

bb.c:                                             ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.j
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
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
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.peel.next, !llvm.loop !8

.lr.ph.peel.next:                                 ; preds = %.backedge.peel, %.backedge
  %indvars.iv = phi i64 [ %indvars.iv.next, %.backedge ], [ %indvars.iv.next.peel, %.backedge.peel ] ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !60
  %.not9 = icmp eq ptr %i.q, null
  br i1 %.not9, label %.backedge, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.peel.next, %.backedge, %bb.b, %bb.c, %.backedge.peel, %.preheader, %bb.a
  %.08 = phi i8 [ 0, %bb.a ], [ 0, %.preheader ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %.backedge.peel ], [ 1, %.lr.ph.peel.next ], [ 0, %.backedge ]
  ret i8 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(152) ptr @_ZN6icu_7818PatternMapIterator4nextEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.promoted = load i32, ptr %i.a, align 8, !tbaa !122 ; 3 uses
  %i.b = icmp slt i32 %.promoted, 52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.b, label %.lr.ph, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !121
  br label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.promoted9 = load ptr, ptr %i.c, align 8, !tbaa !121 ; 3 uses
  %i.g = sext i32 %.promoted to i64               ; 3 uses
  %.not.peel = icmp eq ptr %.promoted9, null
  br i1 %.not.peel, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.promoted9, i64 152
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %.not5.peel = icmp eq ptr %i.i, null
  br i1 %.not5.peel, label %bb.c, label %.loopexit.thread.sink.split

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i64 %i.g, 1                      ; 2 uses
  %i.k = add nsw i32 %.promoted, 1
  %i.l = trunc nsw i64 %i.j to i32
  store i32 %i.l, ptr %i.a, align 8, !tbaa !122
  store ptr null, ptr %i.c, align 8, !tbaa !121
  br label %.backedge.peel

bb.d:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.g
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %.not3.peel = icmp eq ptr %i.n, null
  br i1 %.not3.peel, label %bb.e, label %.loopexit.thread.sink.split

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i64 %i.g, 1                      ; 2 uses
  %i.p = trunc nsw i64 %i.o to i32                ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !122
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
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !60   ; 2 uses
  %.not3 = icmp eq ptr %i.u, null
  br i1 %.not3, label %.backedge, label %.loopexit.thread.sink.split

.backedge:                                        ; preds = %.lr.ph.peel.newph
  %i.v = add nsw i64 %indvars.iv, 1               ; 2 uses
  %i.w = trunc nsw i64 %i.v to i32
  store i32 %i.w, ptr %i.a, align 8, !tbaa !122
  %i.x = icmp slt i64 %indvars.iv, 51
  br i1 %i.x, label %.lr.ph.peel.newph, label %.loopexit, !llvm.loop !182

.loopexit:                                        ; preds = %.backedge.peel, %.backedge, %..loopexit_crit_edge
  %i.y = phi ptr [ %.pre, %..loopexit_crit_edge ], [ %i.q, %.backedge ], [ %i.q, %.backedge.peel ] ; 2 uses
  %.not4 = icmp eq ptr %i.y, null
  br i1 %.not4, label %bb.f, label %.loopexit.thread

.loopexit.thread.sink.split:                      ; preds = %.lr.ph.peel.newph, %bb.d, %bb.b
  %.lcssa15.sink = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.d ], [ %i.u, %.lr.ph.peel.newph ] ; 2 uses
  store ptr %.lcssa15.sink, ptr %i.c, align 8, !tbaa !121
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %.loopexit
  %i.z = phi ptr [ %i.y, %.loopexit ], [ %.lcssa15.sink, %.loopexit.thread.sink.split ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !124 ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63 ; 6 uses
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
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !54
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  store i8 %i.ap, ptr %i.aq, align 8, !tbaa !54
  br label %bb.g

bb.f:                                             ; preds = %.loopexit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !124
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.at, i8 0, i64 128, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit.thread
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !124
  ret ptr %i.av
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7815DateTimeMatcher6equalsEPKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #12 align 2 {
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
define noundef range(i32 0, -2147483648) i32 @_ZNK6icu_7815DateTimeMatcher11getDistanceERKS0_iRNS_12DistanceInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %3) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 0, ptr %i.a, align 4, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.b, align 8, !tbaa !115
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
  %i.l = load i32, ptr %i.k, align 4, !tbaa !76   ; 3 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !76   ; 3 uses
  %i.o = icmp eq i32 %i.l, %i.n
  br i1 %i.o, label %bb.i, label %bb.e

.thread:                                          ; preds = %bb.c
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !76
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %.thread25

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %i.l, 0
  br i1 %i.s, label %.thread25, label %bb.f

.thread25:                                        ; preds = %.thread, %bb.e
  %i.t = add nuw nsw i32 %.02227, 65536
  %i.u = or i32 %i.f, %i.h                        ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !116
  br label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.v = icmp eq i32 %i.n, 0
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = add nuw nsw i32 %.02227, 4096
  %i.x = or i32 %i.e, %i.h                        ; 2 uses
  store i32 %i.x, ptr %i.b, align 8, !tbaa !115
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
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_7812DistanceInfo5setToERKS0_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load <2 x i32>, ptr %i.a, align 8, !tbaa !76
  store <2 x i32> %i.c, ptr %i.b, align 8, !tbaa !76
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields13appendFieldToEiRNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %0, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !32
  %i.e = sext i8 %i.d to i16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 %i.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !32    ; 2 uses
  %i.i = zext nneg i8 %i.h to i32
  %i.j = icmp sgt i8 %i.h, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret ptr %2

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi i32 [ %i.l, %.lr.ph ], [ 0, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.e, ptr %i.a, align 2, !tbaa !78
  %i.k = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = add nuw nsw i32 %.08, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.l, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i16 -128, 128) i16 @_ZNK6icu_7814SkeletonFields12getFieldCharEi(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64
end_hunk_5
begin_hunk_6_@_ZNK6icu_7824DateTimePatternGenerator20isAvailableFormatSetERKNS_13UnicodeStringE:bb.a
  %i.d = tail call noundef i32 @uhash_geti_78(ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %i.e = icmp eq i32 %i.d, 1
  %i.f = zext i1 %i.e to i8
  ret i8 %i.f
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7824DateTimePatternGenerator12getSkeletonsER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #28 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  invoke void @_ZN6icu_7821DTSkeletonEnumerationC1ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(425) %i.i, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %1, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.e
  %.pre = load i32, ptr %1, align 4, !tbaa !29
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %bb.h, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.h:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #28, !inline_history !12
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #28
  resume { ptr, i32 } %i.p

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.f, %bb.g, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit, %bb.h, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.h ], [ %i.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7824DateTimePatternGenerator21getPatternForSkeletonERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(ret: address, provenance) dereferenceable(4612) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %i.m = and i16 %i.b, 2
  %.not.i.i.i = icmp eq i16 %i.m, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = select i1 %.not.i.i.i, ptr %i.p, ptr %i.n
  %i.r = load i16, ptr %i.q, align 2, !tbaa !78   ; 4 uses
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
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !60 ; 2 uses
  %.not18 = icmp eq ptr %.0.i, null
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.k
  %.01019 = phi ptr [ %.0.i, %.lr.ph ], [ %i.bc, %bb.k ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.ac = getelementptr inbounds nuw i8, ptr %.01019, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !63
  call void @_ZNK6icu_7811PtnSkeleton11getSkeletonEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(137) %i.ad)
  %i.ae = load i16, ptr %i.aa, align 8, !tbaa !32 ; 3 uses
  %i.af = and i16 %i.ae, 1
  %.not.i = icmp eq i16 %i.af, 0
  br i1 %.not.i, label %bb.g, label %.split

.split:                                           ; preds = %bb.f
  %i.ag = load i16, ptr %i.a, align 8, !tbaa !32
  %i.ah = trunc i16 %i.ag to i1
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %i.ah, label %bb.i, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ai = icmp slt i16 %i.ae, 0
  %i.aj = ashr i16 %i.ae, 5
  %i.ak = sext i16 %i.aj to i32
  %i.al = load i32, ptr %i.ab, align 4
  %i.am = select i1 %i.ai, i32 %i.al, i32 %i.ak   ; 2 uses
  %i.an = load i16, ptr %i.a, align 8, !tbaa !32  ; 4 uses
  %i.ao = icmp slt i16 %i.an, 0
  %i.ap = ashr i16 %i.an, 5
  %i.aq = sext i16 %i.ap to i32
  %i.ar = load i32, ptr %i.f, align 4
  %i.as = select i1 %i.ao, i32 %i.ar, i32 %i.aq
  %i.at = and i16 %i.an, 1
  %.not9.i = icmp eq i16 %i.at, 0
  %i.au = icmp eq i32 %i.am, %i.as
  %or.cond.i12 = and i1 %.not9.i, %i.au
  br i1 %or.cond.i12, label %bb.h, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.g
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.av = and i16 %i.an, 2
  %.not.i.i.i13 = icmp eq i16 %i.av, 0
  %i.aw = load ptr, ptr %i.o, align 8
  %i.ax = select i1 %.not.i.i.i13, ptr %i.aw, ptr %i.n
  %i.ay = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ax, i32 noundef %i.am)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit unwind label %bb.j

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.h
  %.not15 = icmp eq i8 %i.ay, 0
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.not15, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.az = getelementptr inbounds nuw i8, ptr %.01019, i64 80
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.ba

bb.k:                                             ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %.01019, i64 152
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !69 ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !183

._crit_edge:                                      ; preds = %bb.k, %bb.d, %_ZNK6icu_7810PatternMap9getHeaderEDs.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 4512
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.i, %bb.b
  %.0 = phi ptr [ %i.j, %bb.b ], [ %i.az, %bb.i ], [ %i.bd, %._crit_edge ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK6icu_7810PatternMap9getHeaderEDs(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(425) %0, i16 noundef zeroext %1) local_unnamed_addr #12 align 2 {
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
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !60
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %.013 = phi ptr [ %.0, %bb.e ], [ null, %bb.c ]
  ret ptr %.013
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7824DateTimePatternGenerator16getBaseSkeletonsER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #28 ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  invoke void @_ZN6icu_7821DTSkeletonEnumerationC1ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(425) %i.i, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit unwind label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.j = load i32, ptr %1, align 4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.e
  %.pre = load i32, ptr %1, align 4, !tbaa !29
  %i.l = icmp sgt i32 %.pre, 0
  br i1 %i.l, label %bb.h, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.h:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #28, !inline_history !12
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.i:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #28
  resume { ptr, i32 } %i.p

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.f, %bb.g, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit, %bb.h, %bb.a, %bb.c
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.h ], [ %i.f, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit ], [ null, %bb.g ], [ null, %bb.f ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7824DateTimePatternGenerator13getRedundantsER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %3 = alloca %"class.icu_78::PatternMapIterator", align 8 ; 12 uses
  %4 = alloca %"class.icu_78::DateTimeMatcher", align 8 ; 18 uses
  %5 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit67

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.d = load i32, ptr %i.c, align 8, !tbaa !46   ; 2 uses
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.d, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit67

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 128) #28 ; 9 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6icu_7822DTRedundantEnumerationC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.h = load i32, ptr %1, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit67, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit67

_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.e
  %.pre = load i32, ptr %1, align 4, !tbaa !29
  %i.j = icmp slt i32 %.pre, 1
  br i1 %i.j, label %bb.i, label %.thread120

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #28
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

bb.i:                                             ; preds = %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZN6icu_7818PatternMapIteratorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.j unwind label %.thread

bb.j:                                             ; preds = %bb.i
  %i.l = load i32, ptr %1, align 4, !tbaa !29
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %bb.k, label %.thread120.sink.split

.thread:                                          ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !50   ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !120
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %.thread125, label %.preheader.i.lr.ph

.preheader.i.lr.ph:                               ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4496 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 80 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 112
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %.preheader.i

thread-pre-split:                                 ; preds = %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %.preheader.i60, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %.pr = load ptr, ptr %i.q, align 8, !tbaa !120  ; 2 uses
  %i.af = icmp eq ptr %.pr, null
  br i1 %i.af, label %.thread125, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.lr.ph, %thread-pre-split
  %i.ag = phi ptr [ %i.p, %.preheader.i.lr.ph ], [ %.pr, %thread-pre-split ]
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !121 ; 3 uses
  %i.ai = load i32, ptr %i.t, align 8, !tbaa !122 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ak = icmp slt i32 %i.ai, 52
  br i1 %i.ak, label %.lr.ph.preheader.i, label %.thread125

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.al = sext i32 %i.ai to i64                   ; 5 uses
  %.not.peel.i = icmp eq ptr %i.ah, null          ; 2 uses
  br i1 %.not.peel.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %.not10.peel.i = icmp eq ptr %i.an, null
  br i1 %.not10.peel.i, label %.backedge.peel.i, label %.lr.ph.i.thread114

.lr.ph.i.thread114:                               ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.preheader.i
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !60
  %.not9.peel.i = icmp eq ptr %i.ap, null
  br i1 %.not9.peel.i, label %.backedge.peel.i, label %.lr.ph.i.thread

.lr.ph.i.thread:                                  ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br label %bb.p

.backedge.peel.i:                                 ; preds = %bb.m, %bb.l
  %indvars.iv.next.peel.i = add nsw i64 %i.al, 1  ; 2 uses
  %exitcond.peel.not.i = icmp eq i64 %indvars.iv.next.peel.i, 52
  br i1 %exitcond.peel.not.i, label %.thread125, label %.lr.ph.peel.next.i

.backedge.i:                                      ; preds = %.lr.ph.peel.next.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aq = and i64 %indvars.iv.next.i, 4294967295
  %exitcond.not.i = icmp eq i64 %i.aq, 52
  br i1 %exitcond.not.i, label %.thread125, label %.lr.ph.peel.next.i, !llvm.loop !8

.lr.ph.peel.next.i:                               ; preds = %.backedge.peel.i, %.backedge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.backedge.i ], [ %indvars.iv.next.peel.i, %.backedge.peel.i ] ; 2 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !60
  %.not9.i = icmp eq ptr %i.as, null
  br i1 %.not9.i, label %.backedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.peel.next.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  br i1 %.not.peel.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.thread114, %.lr.ph.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 152
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !69 ; 2 uses
  %.not5.i.peel = icmp eq ptr %i.au, null
  br i1 %.not5.i.peel, label %bb.o, label %.loopexit.thread.i

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i64 %i.al, 1                    ; 2 uses
  %i.aw = add nsw i32 %i.ai, 1
  %i.ax = trunc nsw i64 %i.av to i32
  store i32 %i.ax, ptr %i.t, align 8, !tbaa !122
  store ptr null, ptr %i.s, align 8, !tbaa !121
  br label %.backedge.i57.peel

bb.p:                                             ; preds = %.lr.ph.i.thread, %.lr.ph.i
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !60 ; 2 uses
  %.not3.i.peel = icmp eq ptr %i.az, null
  br i1 %.not3.i.peel, label %bb.q, label %.loopexit.thread.i

bb.q:                                             ; preds = %bb.p
  %i.ba = add nsw i64 %i.al, 1                    ; 2 uses
  %i.bb = trunc nsw i64 %i.ba to i32              ; 2 uses
  store i32 %i.bb, ptr %i.t, align 8, !tbaa !122
  br label %.backedge.i57.peel

.backedge.i57.peel:                               ; preds = %bb.q, %bb.o
  %indvars.iv.next.pre-phi.i.peel = phi i64 [ %i.av, %bb.o ], [ %i.ba, %bb.q ]
  %i.bc = phi i32 [ %i.aw, %bb.o ], [ %i.bb, %bb.q ]
  %i.bd = icmp slt i32 %i.bc, 52
  br i1 %i.bd, label %.peel.next, label %.loopexit.i

.backedge.i57:                                    ; preds = %.peel.next
  %i.be = add nsw i64 %indvars.iv.i56, 1          ; 2 uses
  %i.bf = trunc nsw i64 %i.be to i32
  store i32 %i.bf, ptr %i.t, align 8, !tbaa !122
  %i.bg = icmp slt i64 %indvars.iv.i56, 51
  br i1 %i.bg, label %.peel.next, label %.loopexit.i, !llvm.loop !184

.peel.next:                                       ; preds = %.backedge.i57.peel, %.backedge.i57
  %indvars.iv.i56 = phi i64 [ %i.be, %.backedge.i57 ], [ %indvars.iv.next.pre-phi.i.peel, %.backedge.i57.peel ] ; 3 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %indvars.iv.i56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !60 ; 2 uses
  %.not3.i = icmp eq ptr %i.bi, null
  br i1 %.not3.i, label %.backedge.i57, label %.loopexit.thread.i

.loopexit.thread.i:                               ; preds = %.peel.next, %bb.n, %bb.p
  %.lcssa15.sink.i = phi ptr [ %i.au, %bb.n ], [ %i.az, %bb.p ], [ %i.bi, %.peel.next ] ; 2 uses
  store ptr %.lcssa15.sink.i, ptr %i.s, align 8, !tbaa !121
  %i.bj = load ptr, ptr %i.u, align 8, !tbaa !124 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.lcssa15.sink.i, i64 72
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !63 ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.bn, i64 64, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bp, i64 16, i1 false)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 96
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.br, i64 16, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 112
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bt, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 128
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.bv, i64 16, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 136
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !54
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 144
  store i8 %i.bx, ptr %i.by, align 8, !tbaa !54
  br label %bb.r

.loopexit.i:                                      ; preds = %.backedge.i57, %.backedge.i57.peel
  %i.bz = load ptr, ptr %i.u, align 8, !tbaa !124 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.ca, i8 0, i64 128, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.i, %.loopexit.thread.i
  %i.cb = phi ptr [ %i.bz, %.loopexit.i ], [ %i.bj, %.loopexit.thread.i ]
  invoke void @_ZN6icu_7815DateTimeMatcherC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %4, ptr noundef nonnull align 8 dereferenceable(152) %i.cb)
          to label %_ZNK6icu_7818PatternMapIterator11getSkeletonEv.exit unwind label %bb.s

_ZNK6icu_7818PatternMapIterator11getSkeletonEv.exit: ; preds = %bb.r
  %i.cc = load ptr, ptr %i.o, align 8, !tbaa !50
  %i.cd = load ptr, ptr %i.s, align 8, !tbaa !121, !nonnull !110, !noundef !110
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 72
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !63
  %i.cg = call noundef ptr @_ZNK6icu_7810PatternMap22getPatternFromSkeletonERKNS_11PtnSkeletonEPPS2_(ptr noundef nonnull align 8 dereferenceable(425) %i.cc, ptr noundef nonnull align 8 dereferenceable(137) %i.cf, ptr noundef null) ; 7 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8 ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !32 ; 3 uses
  %i.cj = icmp slt i16 %i.ci, 0
  %i.ck = ashr i16 %i.ci, 5
  %i.cl = sext i16 %i.ck to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 12 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = select i1 %i.cj, i32 %i.cn, i32 %i.cl
  %.not.i58 = icmp eq i32 %i.co, 1
  br i1 %.not.i58, label %.preheader.i60, label %bb.t

.preheader.i60:                                   ; preds = %_ZNK6icu_7818PatternMapIterator11getSkeletonEv.exit
  %i.cp = and i16 %i.ci, 2
  %.not.i.i.i.i = icmp eq i16 %i.cp, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cg, i64 10
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = select i1 %.not.i.i.i.i, ptr %i.cs, ptr %i.cq
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !78
  switch i16 %i.cu, label %bb.t [
    i16 71, label %thread-pre-split
    i16 121, label %thread-pre-split
    i16 81, label %thread-pre-split
    i16 77, label %thread-pre-split
    i16 119, label %thread-pre-split
    i16 87, label %thread-pre-split
    i16 69, label %thread-pre-split
    i16 68, label %thread-pre-split
    i16 70, label %thread-pre-split
    i16 100, label %thread-pre-split
    i16 97, label %thread-pre-split
    i16 72, label %thread-pre-split
    i16 109, label %thread-pre-split
    i16 115, label %thread-pre-split
    i16 83, label %thread-pre-split
    i16 118, label %thread-pre-split
  ], !llvm.loop !185

bb.s:                                             ; preds = %bb.r
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.t:                                             ; preds = %.preheader.i60, %_ZNK6icu_7818PatternMapIterator11getSkeletonEv.exit
  %i.cw = load ptr, ptr %i.v, align 8, !tbaa !55  ; 8 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cy = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #28 ; 4 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread81, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6icu_7815DateTimeMatcherC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) %i.cy, ptr noundef nonnull align 8 dereferenceable(152) %4)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  store ptr %i.cy, ptr %i.v, align 8, !tbaa !55
  br label %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit

_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread81: ; preds = %bb.u
  store ptr null, ptr %i.v, align 8, !tbaa !55
  store i32 7, ptr %1, align 4, !tbaa !29
  br label %bb.ao

bb.x:                                             ; preds = %bb.v
  %i.da = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.cy) #28
  br label %bb.al

bb.y:                                             ; preds = %bb.t
  %.not.i61 = icmp eq ptr %i.cw, %4
  br i1 %.not.i61, label %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.w, i64 64, i1 false)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cw, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.x, i64 16, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.z, i64 16, i1 false)
  %i.df = getelementptr inbounds nuw i8, ptr %i.cw, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  %i.dg = load i8, ptr %i.ab, align 8, !tbaa !54
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  store i8 %i.dg, ptr %i.dh, align 8, !tbaa !54
  br label %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit

_ZN6icu_7815DateTimeMatcheraSERKS0_.exit:         ; preds = %bb.z, %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !188
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %2, align 8, !tbaa !31, !noalias !188
  store i16 2, ptr %i.ac, align 8, !tbaa !32, !noalias !188
  %i.di = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7814SkeletonFields8appendToERNS_13UnicodeStringE(ptr noundef nonnull readonly align 1 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.aa unwind label %bb.ab, !noalias !188 ; 0 uses

bb.aa:                                            ; preds = %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN6icu_7815DateTimeMatcheraSERKS0_.exit
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !188
  br label %.body

bb.ac:                                            ; preds = %bb.aa
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !188
  invoke void @_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringE28UDateTimePatternMatchOptionsR10UErrorCode(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(4612) %0, ptr noundef nonnull readonly align 8 dereferenceable(64) %6, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringER10UErrorCode.exit unwind label %bb.ad

_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringER10UErrorCode.exit: ; preds = %bb.ac
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.dk = load i32, ptr %1, align 4, !tbaa !29
  %i.dl = icmp slt i32 %i.dk, 1
  br i1 %i.dl, label %bb.af, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread87

bb.ad:                                            ; preds = %bb.ac
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  br label %.body

.body:                                            ; preds = %bb.ab, %bb.ad
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.ad ], [ %i.dj, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.ak

bb.ae:                                            ; preds = %bb.ah, %bb.ai
  %i.dn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  br label %bb.ak

bb.af:                                            ; preds = %_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringER10UErrorCode.exit
  %i.do = load i16, ptr %i.ad, align 8, !tbaa !32 ; 3 uses
  %i.dp = and i16 %i.do, 1
  %.not.i62 = icmp eq i16 %i.dp, 0
  br i1 %.not.i62, label %bb.ag, label %.split

.split:                                           ; preds = %bb.af
  %i.dq = load i16, ptr %i.ch, align 8, !tbaa !32
  %i.dr = trunc i16 %i.dq to i1
  br i1 %i.dr, label %bb.ai, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.ag:                                            ; preds = %bb.af
  %i.ds = icmp slt i16 %i.do, 0
  %i.dt = ashr i16 %i.do, 5
  %i.du = sext i16 %i.dt to i32
  %i.dv = load i32, ptr %i.ae, align 4
  %i.dw = select i1 %i.ds, i32 %i.dv, i32 %i.du   ; 2 uses
  %i.dx = load i16, ptr %i.ch, align 8, !tbaa !32 ; 4 uses
  %i.dy = icmp slt i16 %i.dx, 0
  %i.dz = ashr i16 %i.dx, 5
  %i.ea = sext i16 %i.dz to i32
  %i.eb = load i32, ptr %i.cm, align 4
  %i.ec = select i1 %i.dy, i32 %i.eb, i32 %i.ea
  %i.ed = and i16 %i.dx, 1
  %.not9.i64 = icmp eq i16 %i.ed, 0
  %i.ee = icmp eq i32 %i.dw, %i.ec
  %or.cond.i65 = and i1 %.not9.i64, %i.ee
  br i1 %or.cond.i65, label %bb.ah, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.ef = and i16 %i.dx, 2
  %.not.i.i.i = icmp eq i16 %i.ef, 0
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cg, i64 10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = select i1 %.not.i.i.i, ptr %i.ei, ptr %i.eg
  %i.ek = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %i.ej, i32 noundef %i.dw)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit unwind label %bb.ae

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %bb.ah
  %.not = icmp eq i8 %i.ek, 0
  br i1 %.not, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  invoke void @_ZN6icu_7822DTRedundantEnumeration3addERKNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.aj unwind label %bb.ae

bb.aj:                                            ; preds = %bb.ai
  %i.el = load i32, ptr %1, align 4, !tbaa !29
  %i.em = icmp slt i32 %i.el, 1
  br i1 %i.em, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread, label %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread87

_ZNK6icu_7813UnicodeStringeqERKS0_.exit.thread:   ; preds = %bb.ag, %.split, %bb.aj, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %thread-pre-split

_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread87: ; preds = %bb.aj, %_ZN6icu_7824DateTimePatternGenerator14getBestPatternERKNS_13UnicodeStringER10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ao

bb.ak:                                            ; preds = %bb.ae, %.body
  %.pn48 = phi { ptr, i32 } [ %i.dn, %bb.ae ], [ %.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.al

bb.al:                                            ; preds = %bb.x, %bb.ak
  %.pn48.pn = phi { ptr, i32 } [ %.pn48, %bb.ak ], [ %i.da, %bb.x ]
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #28
  br label %bb.am

bb.am:                                            ; preds = %bb.s, %bb.al
  %.pn48.pn.pn = phi { ptr, i32 } [ %.pn48.pn, %bb.al ], [ %i.cv, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN6icu_7818PatternMapIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #28
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread
  %.pn48.pn.pn.pn.pn116 = phi { ptr, i32 } [ %i.n, %.thread ], [ %.pn48.pn.pn, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.en = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ep = load ptr, ptr %i.eo, align 8
  call void %i.ep(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #28, !inline_history !12
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit

.thread125:                                       ; preds = %.backedge.peel.i, %.preheader.i, %thread-pre-split, %.backedge.i, %bb.k
  call void @_ZN6icu_7818PatternMapIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit67

bb.ao:                                            ; preds = %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread81, %_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE.exit.thread87
  call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %.thread120.sink.split

.thread120.sink.split:                            ; preds = %bb.j, %bb.ao
  call void @_ZN6icu_7818PatternMapIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %.thread120

.thread120:                                       ; preds = %.thread120.sink.split, %_ZN6icu_7812LocalPointerINS_17StringEnumerationEEC2EPS1_R10UErrorCode.exit
  %i.eq = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.es = load ptr, ptr %i.er, align 8
  call void %i.es(ptr noundef nonnull align 8 dereferenceable(116) %i.f) #28, !inline_history !12
  br label %_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit67

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit: ; preds = %bb.an, %bb.h
  %.pn48.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.h ], [ %.pn48.pn.pn.pn.pn116, %bb.an ]
  resume { ptr, i32 } %.pn48.pn.pn.pn.pn.pn

_ZN6icu_7812LocalPointerINS_17StringEnumerationEED2Ev.exit67: ; preds = %bb.f, %bb.g, %.thread125, %.thread120, %bb.a, %bb.c
  %.5 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.f ], [ null, %.thread120 ], [ %i.f, %.thread125 ], [ null, %bb.g ]
  ret ptr %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6icu_7818PatternMapIterator11getSkeletonEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !121  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7824DateTimePatternGenerator15isCanonicalItemERKNS_13UnicodeStringE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(4612) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78
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

end_hunk_6
begin_hunk_7_@_ZN6icu_7822DTRedundantEnumeration3addERKNS_13UnicodeStringER10UErrorCode:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 40) #28 ; 6 uses
  %i.f = icmp eq ptr %i.e, null                   ; 2 uses
  br i1 %i.f, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %2, align 4, !tbaa !29
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.j, label %bb.f

.thread:                                          ; preds = %bb.c
  %i.i = load i32, ptr %2, align 4, !tbaa !29
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #28, !inline_history !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  store ptr %i.e, ptr %i.c, align 8, !tbaa !130
  br i1 %i.f, label %bb.i, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.i:                                             ; preds = %bb.h
  store i32 7, ptr %2, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25

bb.j:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #28, !inline_history !13
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.h, %bb.j
  %.pr = load i32, ptr %2, align 4, !tbaa !29
  %i.s = icmp slt i32 %.pr, 1
  br i1 %i.s, label %bb.l, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25

bb.k:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.e) #28
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.l:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %bb.b
  %i.u = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #28 ; 8 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit unwind label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.w = load i32, ptr %2, align 4
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 7, ptr %2, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.m
  %.pre = load i32, ptr %2, align 4, !tbaa !29
  %i.y = icmp slt i32 %.pre, 1
  br i1 %i.y, label %bb.r, label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.u) #28
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.q:                                             ; preds = %bb.r
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(64) %i.u) #28, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.r:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !130
  invoke void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull %i.u, ptr noundef nonnull align 4 dereferenceable(4) %2)
          to label %bb.s unwind label %bb.q

bb.s:                                             ; preds = %bb.r
  %i.af = load i32, ptr %2, align 4, !tbaa !29
  %i.ag = icmp slt i32 %i.af, 1
  br i1 %i.ag, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !130 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #28, !inline_history !15
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit: ; preds = %bb.t, %bb.u
  store ptr null, ptr %i.c, align 8, !tbaa !130
  br label %bb.v

bb.v:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(64) %i.u) #28, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit25: ; preds = %bb.i, %.thread, %bb.o, %bb.n, %bb.s, %bb.v, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, %bb.a
  ret void

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.p, %bb.q, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %i.t, %bb.k ], [ %i.z, %bb.p ], [ %i.aa, %bb.q ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_7824DateTimePatternGenerator5cloneEv(ptr noundef nonnull align 8 dereferenceable(4612) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 4616) #28 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6icu_7824DateTimePatternGeneratorC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(4612) %i.a, ptr noundef nonnull align 8 dereferenceable(4612) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.a

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.a) #28
  resume { ptr, i32 } %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7810PatternMapC2Ev(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(425) initializes((0, 425)) %0) unnamed_addr #17 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7810PatternMapE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(416) %i.a, i8 0, i64 416, i1 false), !tbaa !60
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424
  store i8 1, ptr %i.b, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7810PatternMapD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(425) dereferenceable(425) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7810PatternMapE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.e
  ret void

bb.c:                                             ; preds = %bb.a, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(160) %i.c) #28
  store ptr null, ptr %i.b, align 8, !tbaa !60
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 52
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !189
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7810PatternMapD0Ev(ptr noundef nonnull align 8 dereferenceable(425) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7810PatternMapD1Ev(ptr noundef nonnull align 8 dead_on_return(425) dereferenceable(425) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7810PatternMap16getDuplicateElemERKNS_13UnicodeStringERKNS_11PtnSkeletonEPNS_7PtnElemE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
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
  %i.t = load i16, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.v = load i16, ptr %i.u, align 8, !tbaa !32   ; 4 uses
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
  %i.aq = tail call noundef signext i8 @_ZNK6icu_7813UnicodeString9doCompareEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ak, ptr noundef %i.ap, i32 noundef %spec.select.i.i, i32 noundef %.010.i.i)
  br label %_ZNK6icu_7813UnicodeString7compareERKS0_.exit

_ZNK6icu_7813UnicodeString7compareERKS0_.exit:    ; preds = %bb.c, %.sink.split.i.i.i
  %.0.i.i = phi i8 [ %i.z, %bb.c ], [ %i.aq, %.sink.split.i.i.i ]
  %i.ar = icmp eq i8 %.0.i.i, 0
  br i1 %i.ar, label %.preheader, label %.thread

.preheader:                                       ; preds = %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.as = getelementptr inbounds nuw i8, ptr %.017, i64 72
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !63 ; 16 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !76
  %i.aw = load i32, ptr %i.d, align 8, !tbaa !76
  %.not = icmp eq i32 %i.av, %i.aw
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %.preheader
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !76
  %i.az = load i32, ptr %i.e, align 4, !tbaa !76
  %.not.1 = icmp eq i32 %i.ay, %i.az
  br i1 %.not.1, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !76
  %i.bc = load i32, ptr %i.f, align 8, !tbaa !76
  %.not.2 = icmp eq i32 %i.bb, %i.bc
  br i1 %.not.2, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !76
  %i.bf = load i32, ptr %i.g, align 4, !tbaa !76
  %.not.3 = icmp eq i32 %i.be, %i.bf
  br i1 %.not.3, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !76
  %i.bi = load i32, ptr %i.h, align 8, !tbaa !76
  %.not.4 = icmp eq i32 %i.bh, %i.bi
  br i1 %.not.4, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !76
  %i.bl = load i32, ptr %i.i, align 4, !tbaa !76
  %.not.5 = icmp eq i32 %i.bk, %i.bl
  br i1 %.not.5, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !76
  %i.bo = load i32, ptr %i.j, align 8, !tbaa !76
  %.not.6 = icmp eq i32 %i.bn, %i.bo
  br i1 %.not.6, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 36
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !76
  %i.br = load i32, ptr %i.k, align 4, !tbaa !76
  %.not.7 = icmp eq i32 %i.bq, %i.br
  br i1 %.not.7, label %bb.k, label %.thread

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !76
  %i.bu = load i32, ptr %i.l, align 8, !tbaa !76
  %.not.8 = icmp eq i32 %i.bt, %i.bu
  br i1 %.not.8, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %i.at, i64 44
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !76
  %i.bx = load i32, ptr %i.m, align 4, !tbaa !76
  %.not.9 = icmp eq i32 %i.bw, %i.bx
  br i1 %.not.9, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.by = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !76
  %i.ca = load i32, ptr %i.n, align 8, !tbaa !76
  %.not.10 = icmp eq i32 %i.bz, %i.ca
  br i1 %.not.10, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !76
  %i.cd = load i32, ptr %i.o, align 4, !tbaa !76
  %.not.11 = icmp eq i32 %i.cc, %i.cd
  br i1 %.not.11, label %bb.o, label %.thread

bb.o:                                             ; preds = %bb.n
  %i.ce = getelementptr inbounds nuw i8, ptr %i.at, i64 56
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !76
  %i.cg = load i32, ptr %i.p, align 8, !tbaa !76
  %.not.12 = icmp eq i32 %i.cf, %i.cg
  br i1 %.not.12, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 60
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !76
  %i.cj = load i32, ptr %i.q, align 4, !tbaa !76
  %.not.13 = icmp eq i32 %i.ci, %i.cj
  br i1 %.not.13, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !76
  %i.cm = load i32, ptr %i.r, align 8, !tbaa !76
  %.not.14 = icmp eq i32 %i.cl, %i.cm
  br i1 %.not.14, label %bb.r, label %.thread

bb.r:                                             ; preds = %bb.q
  %i.cn = getelementptr inbounds nuw i8, ptr %i.at, i64 68
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !76
  %i.cp = load i32, ptr %i.s, align 4, !tbaa !76
  %.not.15 = icmp eq i32 %i.co, %i.cp
  br i1 %.not.15, label %.loopexit, label %.thread

.thread:                                          ; preds = %.preheader, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %_ZNK6icu_7813UnicodeString7compareERKS0_.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %.017, i64 152
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !69 ; 2 uses
  %.not22 = icmp eq ptr %i.cr, null
  br i1 %.not22, label %.loopexit, label %bb.b, !llvm.loop !190

.loopexit:                                        ; preds = %.thread, %bb.r, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %.thread ], [ %.017, %bb.r ]
  ret ptr %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i16 -128, 128) i16 @_ZNK6icu_7811PtnSkeleton12getFirstCharEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.c = load i8, ptr %i.b, align 8, !tbaa !32
  %.not.i = icmp eq i8 %i.c, 0
  br i1 %.not.i, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.e = load i8, ptr %i.d, align 1, !tbaa !32
  %.not.1.i = icmp eq i8 %i.e, 0
  br i1 %.not.1.i, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.g = load i8, ptr %i.f, align 2, !tbaa !32
  %.not.2.i = icmp eq i8 %i.g, 0
  br i1 %.not.2.i, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 123
  %i.i = load i8, ptr %i.h, align 1, !tbaa !32
  %.not.3.i = icmp eq i8 %i.i, 0
  br i1 %.not.3.i, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.k = load i8, ptr %i.j, align 4, !tbaa !32
  %.not.4.i = icmp eq i8 %i.k, 0
  br i1 %.not.4.i, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 125
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32
  %.not.5.i = icmp eq i8 %i.m, 0
  br i1 %.not.5.i, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 126
  %i.o = load i8, ptr %i.n, align 2, !tbaa !32
  %.not.6.i = icmp eq i8 %i.o, 0
  br i1 %.not.6.i, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 127
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32
  %.not.7.i = icmp eq i8 %i.q, 0
  br i1 %.not.7.i, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.s = load i8, ptr %i.r, align 8, !tbaa !32
  %.not.8.i = icmp eq i8 %i.s, 0
  br i1 %.not.8.i, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.u = load i8, ptr %i.t, align 1, !tbaa !32
  %.not.9.i = icmp eq i8 %i.u, 0
  br i1 %.not.9.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.w = load i8, ptr %i.v, align 2, !tbaa !32
  %.not.10.i = icmp eq i8 %i.w, 0
  br i1 %.not.10.i, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32
  %.not.11.i = icmp eq i8 %i.y, 0
  br i1 %.not.11.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.aa = load i8, ptr %i.z, align 4, !tbaa !32
  %.not.12.i = icmp eq i8 %i.aa, 0
  br i1 %.not.12.i, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32
  %.not.13.i = icmp eq i8 %i.ac, 0
  br i1 %.not.13.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !32
  %.not.14.i = icmp eq i8 %i.ae, 0
  br i1 %.not.14.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !32
  %.not.15.i = icmp eq i8 %i.ag, 0
  br i1 %.not.15.i, label %_ZNK6icu_7814SkeletonFields12getFirstCharEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa.i = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %.lcssa.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !32
  %i.aj = sext i8 %i.ai to i16
  br label %_ZNK6icu_7814SkeletonFields12getFirstCharEv.exit

_ZNK6icu_7814SkeletonFields12getFirstCharEv.exit: ; preds = %bb.p, %bb.q
  %i.ak = phi i16 [ %i.aj, %bb.q ], [ 0, %bb.p ]
  ret i16 %i.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7811PtnSkeleton6equalsERKS0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) local_unnamed_addr #12 align 2 {
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

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815DateTimeMatcherC2Ev(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7815DateTimeMatcherE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7811PtnSkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(137) %i.a)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7815DateTimeMatcherD2Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7811PtnSkeletonD1Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7815DateTimeMatcherD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7815DateTimeMatcherD1Ev(ptr noundef nonnull align 8 dead_on_return(152) dereferenceable(152) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7815DateTimeMatcherC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(152) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_7
begin_hunk_8_@_ZN6icu_7812FormatParserC2Ev:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.a, align 8, !tbaa !32
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.1, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i16 2, ptr %i.b, align 8, !tbaa !32
  %.ptr.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.2, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 2, ptr %i.c, align 8, !tbaa !32
  %.ptr.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.3, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i16 2, ptr %i.d, align 8, !tbaa !32
  %.ptr.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.4, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i16 2, ptr %i.e, align 8, !tbaa !32
  %.ptr.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.5, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i16 2, ptr %i.f, align 8, !tbaa !32
  %.ptr.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.6, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i16 2, ptr %i.g, align 8, !tbaa !32
  %.ptr.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 456
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.7, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i16 2, ptr %i.h, align 8, !tbaa !32
  %.ptr.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.8, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i16 2, ptr %i.i, align 8, !tbaa !32
  %.ptr.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 584
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.9, align 8, !tbaa !31
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i16 2, ptr %i.j, align 8, !tbaa !32
  %.ptr.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 648
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.10, align 8, !tbaa !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i16 2, ptr %i.k, align 8, !tbaa !32
  %.ptr.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 712
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.11, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 720
  store i16 2, ptr %i.l, align 8, !tbaa !32
  %.ptr.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 776
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.12, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 784
  store i16 2, ptr %i.m, align 8, !tbaa !32
  %.ptr.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 840
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.13, align 8, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 848
  store i16 2, ptr %i.n, align 8, !tbaa !32
  %.ptr.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 904
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.14, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 912
  store i16 2, ptr %i.o, align 8, !tbaa !32
  %.ptr.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 968
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.15, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 976
  store i16 2, ptr %i.p, align 8, !tbaa !32
  %.ptr.ptr.16 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.16, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1040
  store i16 2, ptr %i.q, align 8, !tbaa !32
  %.ptr.ptr.17 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.17, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i16 2, ptr %i.r, align 8, !tbaa !32
  %.ptr.ptr.18 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.18, align 8, !tbaa !31
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1168
  store i16 2, ptr %i.s, align 8, !tbaa !32
  %.ptr.ptr.19 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.19, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1232
  store i16 2, ptr %i.t, align 8, !tbaa !32
  %.ptr.ptr.20 = getelementptr inbounds nuw i8, ptr %0, i64 1288
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.20, align 8, !tbaa !31
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1296
  store i16 2, ptr %i.u, align 8, !tbaa !32
  %.ptr.ptr.21 = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.21, align 8, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1360
  store i16 2, ptr %i.v, align 8, !tbaa !32
  %.ptr.ptr.22 = getelementptr inbounds nuw i8, ptr %0, i64 1416
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.22, align 8, !tbaa !31
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1424
  store i16 2, ptr %i.w, align 8, !tbaa !32
  %.ptr.ptr.23 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.23, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1488
  store i16 2, ptr %i.x, align 8, !tbaa !32
  %.ptr.ptr.24 = getelementptr inbounds nuw i8, ptr %0, i64 1544
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.24, align 8, !tbaa !31
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1552
  store i16 2, ptr %i.y, align 8, !tbaa !32
  %.ptr.ptr.25 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.25, align 8, !tbaa !31
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1616
  store i16 2, ptr %i.z, align 8, !tbaa !32
  %.ptr.ptr.26 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.26, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1680
  store i16 2, ptr %i.aa, align 8, !tbaa !32
  %.ptr.ptr.27 = getelementptr inbounds nuw i8, ptr %0, i64 1736
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.27, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1744
  store i16 2, ptr %i.ab, align 8, !tbaa !32
  %.ptr.ptr.28 = getelementptr inbounds nuw i8, ptr %0, i64 1800
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.28, align 8, !tbaa !31
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1808
  store i16 2, ptr %i.ac, align 8, !tbaa !32
  %.ptr.ptr.29 = getelementptr inbounds nuw i8, ptr %0, i64 1864
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.29, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1872
  store i16 2, ptr %i.ad, align 8, !tbaa !32
  %.ptr.ptr.30 = getelementptr inbounds nuw i8, ptr %0, i64 1928
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.30, align 8, !tbaa !31
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1936
  store i16 2, ptr %i.ae, align 8, !tbaa !32
  %.ptr.ptr.31 = getelementptr inbounds nuw i8, ptr %0, i64 1992
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.31, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 2000
  store i16 2, ptr %i.af, align 8, !tbaa !32
  %.ptr.ptr.32 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.32, align 8, !tbaa !31
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store i16 2, ptr %i.ag, align 8, !tbaa !32
  %.ptr.ptr.33 = getelementptr inbounds nuw i8, ptr %0, i64 2120
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.33, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2128
  store i16 2, ptr %i.ah, align 8, !tbaa !32
  %.ptr.ptr.34 = getelementptr inbounds nuw i8, ptr %0, i64 2184
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.34, align 8, !tbaa !31
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2192
  store i16 2, ptr %i.ai, align 8, !tbaa !32
  %.ptr.ptr.35 = getelementptr inbounds nuw i8, ptr %0, i64 2248
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.35, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2256
  store i16 2, ptr %i.aj, align 8, !tbaa !32
  %.ptr.ptr.36 = getelementptr inbounds nuw i8, ptr %0, i64 2312
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.36, align 8, !tbaa !31
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 2320
  store i16 2, ptr %i.ak, align 8, !tbaa !32
  %.ptr.ptr.37 = getelementptr inbounds nuw i8, ptr %0, i64 2376
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.37, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2384
  store i16 2, ptr %i.al, align 8, !tbaa !32
  %.ptr.ptr.38 = getelementptr inbounds nuw i8, ptr %0, i64 2440
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.38, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2448
  store i16 2, ptr %i.am, align 8, !tbaa !32
  %.ptr.ptr.39 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.39, align 8, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 2, ptr %i.an, align 8, !tbaa !32
  %.ptr.ptr.40 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.40, align 8, !tbaa !31
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 2, ptr %i.ao, align 8, !tbaa !32
  %.ptr.ptr.41 = getelementptr inbounds nuw i8, ptr %0, i64 2632
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.41, align 8, !tbaa !31
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2640
  store i16 2, ptr %i.ap, align 8, !tbaa !32
  %.ptr.ptr.42 = getelementptr inbounds nuw i8, ptr %0, i64 2696
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.42, align 8, !tbaa !31
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 2704
  store i16 2, ptr %i.aq, align 8, !tbaa !32
  %.ptr.ptr.43 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.43, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 2, ptr %i.ar, align 8, !tbaa !32
  %.ptr.ptr.44 = getelementptr inbounds nuw i8, ptr %0, i64 2824
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.44, align 8, !tbaa !31
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2832
  store i16 2, ptr %i.as, align 8, !tbaa !32
  %.ptr.ptr.45 = getelementptr inbounds nuw i8, ptr %0, i64 2888
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.45, align 8, !tbaa !31
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2896
  store i16 2, ptr %i.at, align 8, !tbaa !32
  %.ptr.ptr.46 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.46, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 2960
  store i16 2, ptr %i.au, align 8, !tbaa !32
  %.ptr.ptr.47 = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.47, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3024
  store i16 2, ptr %i.av, align 8, !tbaa !32
  %.ptr.ptr.48 = getelementptr inbounds nuw i8, ptr %0, i64 3080
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.48, align 8, !tbaa !31
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3088
  store i16 2, ptr %i.aw, align 8, !tbaa !32
  %.ptr.ptr.49 = getelementptr inbounds nuw i8, ptr %0, i64 3144
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %.ptr.ptr.49, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3152
  store i16 2, ptr %i.ax, align 8, !tbaa !32
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3212
  store i32 0, ptr %i.ay, align 4, !tbaa !191
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 3208
  store i32 0, ptr %i.az, align 8, !tbaa !97
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812FormatParserD2Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7812FormatParserE, i64 16), ptr %0, align 8, !tbaa !31
  %.ptr1 = getelementptr inbounds nuw i8, ptr %0, i64 3144
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1) #28
  %.ptr1.1 = getelementptr inbounds nuw i8, ptr %0, i64 3080
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.1) #28
  %.ptr1.2 = getelementptr inbounds nuw i8, ptr %0, i64 3016
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.2) #28
  %.ptr1.3 = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.3) #28
  %.ptr1.4 = getelementptr inbounds nuw i8, ptr %0, i64 2888
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.4) #28
  %.ptr1.5 = getelementptr inbounds nuw i8, ptr %0, i64 2824
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.5) #28
  %.ptr1.6 = getelementptr inbounds nuw i8, ptr %0, i64 2760
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.6) #28
  %.ptr1.7 = getelementptr inbounds nuw i8, ptr %0, i64 2696
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.7) #28
  %.ptr1.8 = getelementptr inbounds nuw i8, ptr %0, i64 2632
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.8) #28
  %.ptr1.9 = getelementptr inbounds nuw i8, ptr %0, i64 2568
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.9) #28
  %.ptr1.10 = getelementptr inbounds nuw i8, ptr %0, i64 2504
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.10) #28
  %.ptr1.11 = getelementptr inbounds nuw i8, ptr %0, i64 2440
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.11) #28
  %.ptr1.12 = getelementptr inbounds nuw i8, ptr %0, i64 2376
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.12) #28
  %.ptr1.13 = getelementptr inbounds nuw i8, ptr %0, i64 2312
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.13) #28
  %.ptr1.14 = getelementptr inbounds nuw i8, ptr %0, i64 2248
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.14) #28
  %.ptr1.15 = getelementptr inbounds nuw i8, ptr %0, i64 2184
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.15) #28
  %.ptr1.16 = getelementptr inbounds nuw i8, ptr %0, i64 2120
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.16) #28
  %.ptr1.17 = getelementptr inbounds nuw i8, ptr %0, i64 2056
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.17) #28
  %.ptr1.18 = getelementptr inbounds nuw i8, ptr %0, i64 1992
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.18) #28
  %.ptr1.19 = getelementptr inbounds nuw i8, ptr %0, i64 1928
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.19) #28
  %.ptr1.20 = getelementptr inbounds nuw i8, ptr %0, i64 1864
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.20) #28
  %.ptr1.21 = getelementptr inbounds nuw i8, ptr %0, i64 1800
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.21) #28
  %.ptr1.22 = getelementptr inbounds nuw i8, ptr %0, i64 1736
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.22) #28
  %.ptr1.23 = getelementptr inbounds nuw i8, ptr %0, i64 1672
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.23) #28
  %.ptr1.24 = getelementptr inbounds nuw i8, ptr %0, i64 1608
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.24) #28
  %.ptr1.25 = getelementptr inbounds nuw i8, ptr %0, i64 1544
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.25) #28
  %.ptr1.26 = getelementptr inbounds nuw i8, ptr %0, i64 1480
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.26) #28
  %.ptr1.27 = getelementptr inbounds nuw i8, ptr %0, i64 1416
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.27) #28
  %.ptr1.28 = getelementptr inbounds nuw i8, ptr %0, i64 1352
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.28) #28
  %.ptr1.29 = getelementptr inbounds nuw i8, ptr %0, i64 1288
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.29) #28
  %.ptr1.30 = getelementptr inbounds nuw i8, ptr %0, i64 1224
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.30) #28
  %.ptr1.31 = getelementptr inbounds nuw i8, ptr %0, i64 1160
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.31) #28
  %.ptr1.32 = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.32) #28
  %.ptr1.33 = getelementptr inbounds nuw i8, ptr %0, i64 1032
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.33) #28
  %.ptr1.34 = getelementptr inbounds nuw i8, ptr %0, i64 968
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.34) #28
  %.ptr1.35 = getelementptr inbounds nuw i8, ptr %0, i64 904
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.35) #28
  %.ptr1.36 = getelementptr inbounds nuw i8, ptr %0, i64 840
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.36) #28
  %.ptr1.37 = getelementptr inbounds nuw i8, ptr %0, i64 776
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.37) #28
  %.ptr1.38 = getelementptr inbounds nuw i8, ptr %0, i64 712
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.38) #28
  %.ptr1.39 = getelementptr inbounds nuw i8, ptr %0, i64 648
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.39) #28
  %.ptr1.40 = getelementptr inbounds nuw i8, ptr %0, i64 584
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.40) #28
  %.ptr1.41 = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.41) #28
  %.ptr1.42 = getelementptr inbounds nuw i8, ptr %0, i64 456
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.42) #28
  %.ptr1.43 = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.43) #28
  %.ptr1.44 = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.44) #28
  %.ptr1.45 = getelementptr inbounds nuw i8, ptr %0, i64 264
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.45) #28
  %.ptr1.46 = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.46) #28
  %.ptr1.47 = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.47) #28
  %.ptr1.48 = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.48) #28
  %.ptr1.49 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr1.49) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812FormatParserD0Ev(ptr noundef nonnull align 8 dereferenceable(3216) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812FormatParserD1Ev(ptr noundef nonnull align 8 dead_on_return(3216) dereferenceable(3216) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 1, 4) i32 @_ZN6icu_7812FormatParser9setTokensERKNS_13UnicodeStringEiPi(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, i32 noundef %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  br i1 %i.s, label %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, label %.sink.split, !llvm.loop !192

_ZNK6icu_7813UnicodeString6charAtEi.exit.us:      ; preds = %.preheader.split.us.preheader, %.preheader.split.us
  %indvars.iv62 = phi i64 [ %i.o, %.preheader.split.us.preheader ], [ %indvars.iv.next58, %.preheader.split.us ] ; 3 uses
  %i.t = getelementptr inbounds [2 x i8], ptr %i.m, i64 %indvars.iv62
  %i.u = load i16, ptr %i.t, align 2, !tbaa !78
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
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !78
  br label %_ZNK6icu_7813UnicodeString6charAtEi.exit38.us

_ZNK6icu_7813UnicodeString6charAtEi.exit38.us:    ; preds = %bb.c, %bb.b
  %.0.i.i36.us = phi i16 [ %i.ab, %bb.c ], [ -1, %bb.b ]
  %i.ac = load i16, ptr %i.p, align 2, !tbaa !78
  %.not33.us = icmp eq i16 %.0.i.i36.us, %i.ac
  %.not34.not.us = icmp slt i64 %indvars.iv62, %i.q
  %or.cond = and i1 %.not33.us, %.not34.not.us
  br i1 %or.cond, label %.preheader.split.us, label %.split.us, !llvm.loop !192

.split.us:                                        ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.us
  %i.ad = sub nsw i32 %i.y, %2
  br label %.sink.split

.sink.split:                                      ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit.us, %.preheader.split.us, %.preheader, %.split.us
  %.sink = phi i32 [ %i.ad, %.split.us ], [ 1, %.preheader ], [ 1, %.preheader.split.us ], [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit.us ]
  store i32 %.sink, ptr %3, align 4, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.2 = phi i32 [ 3, %bb.a ], [ 1, %.sink.split ]
  ret i32 %.2
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN6icu_7812FormatParser17getCanonicalIndexERKNS_13UnicodeStringEa(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i8 noundef signext %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.o = load i16, ptr %i.n, align 2, !tbaa !78   ; 3 uses
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
  br i1 %exitcond.not, label %.critedge.outer.preheader, label %_ZNK6icu_7813UnicodeString6charAtEi.exit38, !llvm.loop !5

_ZNK6icu_7813UnicodeString6charAtEi.exit38:       ; preds = %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 1, %_ZNK6icu_7813UnicodeString6charAtEi.exit38.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %indvars.iv
  %i.q = load i16, ptr %i.p, align 2, !tbaa !78
  %.not = icmp eq i16 %i.o, %i.q
  br i1 %.not, label %bb.b, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge
  %indvars.iv56 = phi i64 [ %i.ab, %.lr.ph.preheader ], [ %indvars.iv.next57, %.critedge ] ; 3 uses
  %.in = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %indvars.iv56
  %i.r = load i16, ptr %.in, align 16, !tbaa !102
  %.not33 = icmp eq i16 %i.r, %i.o
  br i1 %.not33, label %bb.c, label %.critedge

.critedge:                                        ; preds = %.lr.ph
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1 ; 2 uses
  %i.s = and i64 %indvars.iv.next57, 4294967295
  %exitcond59 = icmp eq i64 %i.s, 86
  br i1 %exitcond59, label %.critedge.outer._crit_edge, label %.lr.ph, !llvm.loop !6

bb.c:                                             ; preds = %.lr.ph
  %i.t = trunc nsw i64 %indvars.iv56 to i32       ; 4 uses
  %i.u = add nsw i32 %i.t, 1                      ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [16 x i8], ptr @_ZN6icu_78L7dtTypesE, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 16, !tbaa !102
  %.not34 = icmp eq i16 %i.o, %i.x
  br i1 %.not34, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.z = load i16, ptr %i.y, align 2, !tbaa !103
  %i.aa = sext i16 %i.z to i32
  %.not35 = icmp slt i32 %i.h, %i.aa
  br i1 %.not35, label %.loopexit, label %.critedge.outer, !llvm.loop !6

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
define void @_ZN6icu_7812DistanceInfoD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(16) %0) unnamed_addr #0 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7812DistanceInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812DistanceInfoD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7818PatternMapIteratorC2ER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(40) initializes((0, 12), (16, 40)) %0, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7818PatternMapIteratorE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !122
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  %i.d = load i32, ptr %1, align 4, !tbaa !29
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 152) #28 ; 6 uses
  %i.g = icmp eq ptr %i.f, null                   ; 2 uses
  br i1 %i.g, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6icu_7815DateTimeMatcherC1Ev(ptr noundef nonnull align 8 dereferenceable(152) %i.f)
          to label %bb.d unwind label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %1, align 4, !tbaa !29
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.i, label %bb.e

.thread:                                          ; preds = %bb.b
  %i.j = load i32, ptr %1, align 4, !tbaa !29
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit, label %bb.e

bb.e:                                             ; preds = %.thread, %bb.d
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !124  ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(152) %i.l) #28, !inline_history !193
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  store ptr %i.f, ptr %i.c, align 8, !tbaa !124
  br i1 %i.g, label %bb.h, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.h:                                             ; preds = %bb.g
  store i32 7, ptr %1, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.i:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(152) %i.f) #28, !inline_history !193
  br label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %.thread, %bb.i, %bb.h, %bb.g, %bb.a
  ret void

bb.j:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.f) #28
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !124  ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(152) %i.u) #28, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit

_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7818PatternMapIteratorD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(40) dereferenceable(40) initializes((0, 8)) %0) unnamed_addr #7 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7818PatternMapIteratorE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !124  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(152) %i.b) #28, !inline_history !16
  br label %_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit

_ZN6icu_7812LocalPointerINS_15DateTimeMatcherEED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7818PatternMapIteratorD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7818PatternMapIteratorD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7814SkeletonFieldsC2Ev(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0) unnamed_addr #17 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6icu_7814SkeletonFields8copyFromERKS0_(ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.b, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i16 -128, 128) i16 @_ZNK6icu_7814SkeletonFields12getFirstCharEv(ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(32) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 1, !tbaa !32
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.d = load i8, ptr %i.c, align 1, !tbaa !32
  %.not.1 = icmp eq i8 %i.d, 0
  br i1 %.not.1, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.f = load i8, ptr %i.e, align 1, !tbaa !32
  %.not.2 = icmp eq i8 %i.f, 0
  br i1 %.not.2, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.h = load i8, ptr %i.g, align 1, !tbaa !32
  %.not.3 = icmp eq i8 %i.h, 0
  br i1 %.not.3, label %bb.e, label %bb.q

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i8, ptr %i.i, align 1, !tbaa !32
  %.not.4 = icmp eq i8 %i.j, 0
  br i1 %.not.4, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 21
  %i.l = load i8, ptr %i.k, align 1, !tbaa !32
  %.not.5 = icmp eq i8 %i.l, 0
  br i1 %.not.5, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 22
  %i.n = load i8, ptr %i.m, align 1, !tbaa !32
  %.not.6 = icmp eq i8 %i.n, 0
  br i1 %.not.6, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.p = load i8, ptr %i.o, align 1, !tbaa !32
  %.not.7 = icmp eq i8 %i.p, 0
  br i1 %.not.7, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32
  %.not.8 = icmp eq i8 %i.r, 0
  br i1 %.not.8, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.t = load i8, ptr %i.s, align 1, !tbaa !32
  %.not.9 = icmp eq i8 %i.t, 0
  br i1 %.not.9, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.v = load i8, ptr %i.u, align 1, !tbaa !32
  %.not.10 = icmp eq i8 %i.v, 0
  br i1 %.not.10, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 27
  %i.x = load i8, ptr %i.w, align 1, !tbaa !32
  %.not.11 = icmp eq i8 %i.x, 0
  br i1 %.not.11, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.z = load i8, ptr %i.y, align 1, !tbaa !32
  %.not.12 = icmp eq i8 %i.z, 0
  br i1 %.not.12, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !32
  %.not.13 = icmp eq i8 %i.ab, 0
  br i1 %.not.13, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !32
  %.not.14 = icmp eq i8 %i.ad, 0
  br i1 %.not.14, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 31
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !32
  %.not.15 = icmp eq i8 %i.af, 0
  br i1 %.not.15, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !32
  %i.ai = sext i8 %i.ah to i16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.p, %bb.q
  %i.aj = phi i16 [ %i.ai, %bb.q ], [ 0, %bb.p ]
  ret i16 %i.aj
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811PtnSkeletonC2Ev(ptr noundef nonnull align 8 dereferenceable(137) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @_ZN6icu_7814SkeletonFieldsC1Ev(ptr noundef nonnull align 1 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @_ZN6icu_7814SkeletonFieldsC1Ev(ptr noundef nonnull align 1 dereferenceable(32) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i8 0, ptr %i.c, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7811PtnSkeletonC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(137) initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(137) %1) unnamed_addr #1 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6icu_7811PtnSkeletonE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @_ZN6icu_7814SkeletonFieldsC1Ev(ptr noundef nonnull align 1 dereferenceable(32) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @_ZN6icu_7814SkeletonFieldsC1Ev(ptr noundef nonnull align 1 dereferenceable(32) %i.b)
end_hunk_8
begin_hunk_9_@_ZN6icu_7821DTSkeletonEnumerationC2ERNS_10PatternMapENS_9dtStrEnumER10UErrorCode:bb.a
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(40) %i.j) #28, !inline_history !13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.d, ptr %i.a, align 8, !tbaa !130
  br i1 %i.e, label %bb.g, label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

bb.g:                                             ; preds = %bb.f
  store i32 7, ptr %3, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit45

bb.h:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #28, !inline_history !13
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit: ; preds = %bb.f, %bb.h
  %.pr = load i32, ptr %3, align 4, !tbaa !29
  %i.r = icmp slt i32 %.pr, 1
  br i1 %i.r, label %.preheader, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit45

.preheader:                                       ; preds = %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.d) #28
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.j:                                             ; preds = %.invoke
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.k:                                             ; preds = %.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv
  %.13055 = load ptr, ptr %i.y, align 8, !tbaa !60 ; 2 uses
  %.not3656 = icmp eq ptr %.13055, null
  br i1 %.not3656, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit
  %.13057 = phi ptr [ %.130, %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit ], [ %.13055, %bb.k ] ; 3 uses
  switch i32 %2, label %bb.p [
    i32 0, label %.invoke
    i32 2, label %bb.l
    i32 1, label %bb.m
  ]

bb.l:                                             ; preds = %.lr.ph
  br label %.invoke

.invoke:                                          ; preds = %.lr.ph, %bb.l
  %.sink = phi i64 [ 80, %bb.l ], [ 8, %.lr.ph ]
  %i.z = getelementptr inbounds nuw i8, ptr %.13057, i64 %.sink
  %i.aa = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.z)
          to label %bb.p unwind label %bb.j       ; 0 uses

bb.m:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %.13057, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  invoke void @_ZNK6icu_7811PtnSkeleton11getSkeletonEv(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(137) %i.ac)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSEOS0_(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %5) #28 ; 0 uses
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.p:                                             ; preds = %.invoke, %bb.n, %.lr.ph
  %i.af = load i16, ptr %i.b, align 8, !tbaa !32  ; 3 uses
  %i.ag = icmp slt i16 %i.af, 0
  %i.ah = ashr i16 %i.af, 5
  %i.ai = sext i16 %i.ah to i32
  %i.aj = load i32, ptr %i.t, align 4
  %i.ak = select i1 %i.ag, i32 %i.aj, i32 %i.ai
  %.not.i = icmp eq i32 %i.ak, 1
  br i1 %.not.i, label %.preheader.i, label %bb.q

.preheader.i:                                     ; preds = %bb.p
  %i.al = and i16 %i.af, 2
  %.not.i.i.i.i = icmp eq i16 %i.al, 0
  %i.am = load ptr, ptr %i.v, align 8
  %i.an = select i1 %.not.i.i.i.i, ptr %i.am, ptr %i.u
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !78
  switch i16 %i.ao, label %bb.q [
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

bb.q:                                             ; preds = %.preheader.i, %bb.p
  %i.ap = invoke noundef ptr @_ZNK6icu_7813UnicodeString5cloneEv(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.r unwind label %bb.s       ; 8 uses

bb.r:                                             ; preds = %bb.q
  %i.aq = icmp ne ptr %i.ap, null
  %i.ar = load i32, ptr %3, align 4               ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  %or.cond.i = select i1 %i.aq, i1 true, i1 %i.as
  br i1 %or.cond.i, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %bb.r
  store i32 7, ptr %3, align 4, !tbaa !29
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit45

_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit: ; preds = %bb.r
  %i.at = icmp slt i32 %i.ar, 1
  br i1 %i.at, label %bb.v, label %.loopexit

bb.s:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.t:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aw = icmp eq ptr %i.ap, null
  br i1 %i.aw, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.az(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #28, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit

bb.v:                                             ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !130
  invoke void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef %i.ap, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.w unwind label %bb.t

bb.w:                                             ; preds = %bb.v
  %i.bb = load i32, ptr %3, align 4, !tbaa !29
  %i.bc = icmp slt i32 %i.bb, 1
  br i1 %i.bc, label %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !130 ; 3 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(40) %i.bd) #28, !inline_history !15
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit

_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit: ; preds = %bb.x, %bb.y
  store ptr null, ptr %i.a, align 8, !tbaa !130
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEEC2EPS1_R10UErrorCode.exit, %_ZN6icu_7812LocalPointerINS_7UVectorEE12adoptInsteadEPS1_.exit
  %i.bi = icmp eq ptr %i.ap, null
  br i1 %i.bi, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit45, label %bb.z

bb.z:                                             ; preds = %.loopexit
  %i.bj = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(64) %i.ap) #28, !inline_history !14
  br label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit45

_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit: ; preds = %bb.w, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.13057, i64 152
  %.130 = load ptr, ptr %i.bm, align 8, !tbaa !60 ; 2 uses
  %.not36 = icmp eq ptr %.130, null
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !194

._crit_edge:                                      ; preds = %_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE.exit, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 52
  br i1 %exitcond.not, label %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit45, label %bb.k, !llvm.loop !195

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit45: ; preds = %._crit_edge, %bb.g, %.thread, %.loopexit.thread, %bb.z, %.loopexit, %_ZN6icu_7812LocalPointerINS_7UVectorEE29adoptInsteadAndCheckErrorCodeEPS1_R10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit: ; preds = %bb.s, %bb.t, %bb.u, %bb.i, %bb.o, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ], [ %i.ae, %bb.o ], [ %i.au, %bb.s ], [ %i.av, %bb.t ], [ %i.av, %bb.u ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !130 ; 3 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(40) %i.bn) #28, !inline_history !18
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.aa, %_ZN6icu_7812LocalPointerINS_13UnicodeStringEED2Ev.exit
  call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #28
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116)) unnamed_addr #2

declare void @_ZN6icu_787UVectorC1ER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZN6icu_7821DTSkeletonEnumeration15isCanonicalItemERKNS_13UnicodeStringE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78
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

; Function Attrs: nounwind
declare void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7821DTSkeletonEnumeration5snextER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !134  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !137
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.f, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !134
  %i.k = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7821DTSkeletonEnumeration5resetER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((116, 120)) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_7821DTSkeletonEnumeration5countER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7821DTSkeletonEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7821DTSkeletonEnumerationE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 4 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.f = phi ptr [ %i.l, %bb.d ], [ %i.b, %.preheader ]
  %.08 = phi i32 [ %i.k, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.g = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %.08)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %.lr.ph
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !137
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread, !llvm.loop !196

.thread:                                          ; preds = %bb.d, %.preheader
  %.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.l, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %.lcssa, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa) #28, !inline_history !18
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.a, %.thread
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #28
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #29
  unreachable
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #22 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #28 ; 0 uses
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7821DTSkeletonEnumerationD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7821DTSkeletonEnumerationD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_7822DTRedundantEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6icu_7817StringEnumerationC2Ev(ptr noundef nonnull align 8 dereferenceable(116) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7822DTRedundantEnumerationE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4, !tbaa !139
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.b, align 8, !tbaa !130
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6icu_7822DTRedundantEnumeration5snextER10UErrorCode(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !29
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !139  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !137
  %i.i = icmp slt i32 %i.f, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.f, 1
  store i32 %i.j, ptr %i.e, align 4, !tbaa !139
  %i.k = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i32 noundef %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.k, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6icu_7822DTRedundantEnumeration5resetER10UErrorCode(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(128) initializes((116, 120)) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.a, align 4, !tbaa !139
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_7822DTRedundantEnumeration5countER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree nonnull readnone align 4 captures(none) %1) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7822DTRedundantEnumeration15isCanonicalItemERKNS_13UnicodeStringE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1) local_unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 3 uses
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
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78
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
define void @_ZN6icu_7822DTRedundantEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) initializes((0, 8)) %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7822DTRedundantEnumerationE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 4 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !137
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.f = phi ptr [ %i.l, %bb.d ], [ %i.b, %.preheader ]
  %.08 = phi i32 [ %i.k, %bb.d ], [ 0, %.preheader ] ; 2 uses
  %i.g = invoke noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %i.f, i32 noundef %.08)
          to label %bb.b unwind label %bb.e       ; 3 uses

bb.b:                                             ; preds = %.lr.ph
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(64) %i.g) #28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.k = add nuw nsw i32 %.08, 1                  ; 2 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !137
  %i.o = icmp slt i32 %i.k, %i.n
  br i1 %i.o, label %.lr.ph, label %.thread, !llvm.loop !197

.thread:                                          ; preds = %bb.d, %.preheader
  %.lcssa = phi ptr [ %i.b, %.preheader ], [ %i.l, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %.lcssa, align 8, !tbaa !31
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(40) %.lcssa) #28, !inline_history !18
  br label %_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7UVectorEED2Ev.exit:  ; preds = %bb.a, %.thread
  tail call void @_ZN6icu_7817StringEnumerationD2Ev(ptr noundef nonnull align 8 dead_on_return(116) dereferenceable(116) %0) #28
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #29
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7822DTRedundantEnumerationD0Ev(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7822DTRedundantEnumerationD1Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

declare noundef ptr @_ZNK6icu_787UObject17getDynamicClassIDEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator21AppendItemFormatsSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = tail call noundef i32 @_ZNK6icu_7824DateTimePatternGenerator21getAppendFormatNumberEPKc(ptr nonnull align 8 poison, ptr noundef %1) ; 2 uses
  %i.d = icmp eq i32 %i.c, 16
  br i1 %i.d, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !200
  store i32 0, ptr %i.a, align 4, !tbaa !76, !noalias !200
  %i.e = load ptr, ptr %2, align 8, !tbaa !31, !noalias !200
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !200
  %i.h = call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4), !noalias !200, !inline_history !19
  store ptr %i.h, ptr %5, align 8, !tbaa !92, !noalias !200
  %i.i = load i32, ptr %i.a, align 4, !tbaa !76, !noalias !200
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.i)
          to label %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit unwind label %bb.c

common.resume:                                    ; preds = %bb.e, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.c ], [ %i.y, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %5, align 8, !tbaa !92, !noalias !200
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.k) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !200
  br label %common.resume

_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit: ; preds = %bb.b
  %i.l = load ptr, ptr %5, align 8, !tbaa !92, !noalias !200
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.l) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !200
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !109, !nonnull !110, !align !111
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.o = zext nneg i32 %i.c to i64
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i16, ptr %i.q, align 8, !tbaa !32
  %i.s = icmp ult i16 %i.r, 32
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.u = load i16, ptr %i.t, align 8
  %i.v = icmp ugt i16 %i.u, 31
  %or.cond = select i1 %i.s, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.d, label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit

bb.d:                                             ; preds = %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit
  %i.w = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.noexc unwind label %bb.e     ; 0 uses

.noexc:                                           ; preds = %bb.d
  %i.x = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.p)
          to label %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume

_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit: ; preds = %.noexc, %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN6icu_7824DateTimePatternGenerator19setAppendItemFormatE21UDateTimePatternFieldRKNS_13UnicodeStringE.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator19AppendItemNamesSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.icu_78::ResourceTable", align 8 ; 5 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %8 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = call noundef i32 @_ZNK6icu_7824DateTimePatternGenerator23getFieldAndWidthIndicesEPKcP23UDateTimePGDisplayWidth(ptr nonnull align 8 poison, ptr noundef %1, ptr noundef nonnull %i.b) ; 2 uses
  %i.e = icmp eq i32 %i.d, 16
  br i1 %i.e, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.f = load ptr, ptr %2, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.i = load i32, ptr %4, align 4, !tbaa !29
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef signext i8 @_ZNK6icu_7813ResourceTable9findValueEPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %6, ptr noundef nonnull @.str.46, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not22 = icmp eq i8 %i.k, 0
  br i1 %.not22, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !203
  store i32 0, ptr %i.a, align 4, !tbaa !76, !noalias !203
  %i.l = load ptr, ptr %2, align 8, !tbaa !31, !noalias !203
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !noalias !203
  %i.o = call noundef ptr %i.n(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4), !noalias !203, !inline_history !19
  store ptr %i.o, ptr %5, align 8, !tbaa !92, !noalias !203
  %i.p = load i32, ptr %i.a, align 4, !tbaa !76, !noalias !203
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.p)
          to label %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit unwind label %bb.e

common.resume:                                    ; preds = %bb.l, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.e ], [ %.pn, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %5, align 8, !tbaa !92, !noalias !203
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.r) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !203
  br label %common.resume

_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit: ; preds = %bb.d
  %i.s = load ptr, ptr %5, align 8, !tbaa !92, !noalias !203
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.s) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !203
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.t = load i32, ptr %4, align 4, !tbaa !29
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !113, !nonnull !110, !align !111
  %i.w = load i32, ptr %i.b, align 4, !tbaa !127
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1104
  %i.y = zext nneg i32 %i.d to i64                ; 2 uses
  %i.z = getelementptr inbounds nuw [192 x i8], ptr %i.x, i64 %i.y
  %i.aa = zext i32 %i.w to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.aa
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %i.ab)
          to label %_ZNK6icu_7824DateTimePatternGenerator19getFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth.exit unwind label %bb.h

_ZNK6icu_7824DateTimePatternGenerator19getFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth.exit: ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ad = load i16, ptr %i.ac, align 8, !tbaa !32
  %i.ae = icmp ugt i16 %i.ad, 31
  br i1 %i.ae, label %.critedge.thread28, label %.critedge

.critedge.thread28:                               ; preds = %_ZNK6icu_7824DateTimePatternGenerator19getFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE.exit

.critedge:                                        ; preds = %_ZNK6icu_7824DateTimePatternGenerator19getFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidth.exit
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ag = load i16, ptr %i.af, align 8, !tbaa !32
  %i.ah = icmp ugt i16 %i.ag, 31
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br i1 %i.ah, label %bb.g, label %_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE.exit

bb.g:                                             ; preds = %.critedge
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !113, !nonnull !110, !align !111
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1104
  %i.ak = getelementptr inbounds nuw [192 x i8], ptr %i.aj, i64 %i.y
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %i.ak, i64 %i.aa ; 2 uses
  %i.am = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.al, ptr noundef nonnull align 8 dereferenceable(64) %7)
          to label %.noexc unwind label %bb.i     ; 0 uses

.noexc:                                           ; preds = %bb.g
  %i.an = invoke noundef ptr @_ZN6icu_7813UnicodeString19getTerminatedBufferEv(ptr noundef nonnull align 8 dereferenceable(64) %i.al)
          to label %_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE.exit unwind label %bb.i ; 0 uses

bb.h:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %bb.l

bb.i:                                             ; preds = %.noexc, %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE.exit: ; preds = %_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode.exit, %.noexc, %.critedge.thread28, %.critedge
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.b, %_ZN6icu_7824DateTimePatternGenerator19setFieldDisplayNameE21UDateTimePatternField23UDateTimePGDisplayWidthRKNS_13UnicodeStringE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  ret void

bb.l:                                             ; preds = %bb.h, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.i ], [ %i.ao, %bb.h ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %6 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %7 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call void @_ZN6icu_7813UnicodeStringC1EPKciNS0_10EInvariantE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %1, i32 noundef -1, i32 noundef 0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207, !nonnull !110, !align !111
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4504
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !75
  %i.g = invoke noundef i32 @uhash_geti_78(ptr noundef %i.f, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %bb.b unwind label %bb.h

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !207, !nonnull !110, !align !111
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4504
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75
  %i.l = call noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef 64) #28 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %i.l) #28
  br label %.body

_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i: ; preds = %bb.d, %bb.c
  %i.o = invoke noundef i32 @uhash_puti_78(ptr noundef %i.k, ptr noundef %i.l, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit unwind label %bb.h ; 0 uses

_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit: ; preds = %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !208
  store i32 0, ptr %i.a, align 4, !tbaa !76, !noalias !208
  %i.p = load ptr, ptr %2, align 8, !tbaa !31, !noalias !208
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !noalias !208
  %i.s = invoke noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc unwind label %bb.i, !inline_history !19

.noexc:                                           ; preds = %_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit
  store ptr %i.s, ptr %5, align 8, !tbaa !92, !noalias !208
  %i.t = load i32, ptr %i.a, align 4, !tbaa !76, !noalias !208
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.t)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load ptr, ptr %5, align 8, !tbaa !92, !noalias !208
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.v) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !208
  br label %.body

bb.g:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %5, align 8, !tbaa !92, !noalias !208
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.w) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i16, ptr %i.y, align 8, !tbaa !32   ; 2 uses
  %i.aa = and i16 %i.z, 1
  %.not.i = icmp eq i16 %i.aa, 0
  %i.ab = and i16 %i.z, 30
  %storemerge.i = select i1 %.not.i, i16 %i.ab, i16 2
  store i16 %storemerge.i, ptr %i.y, align 8, !tbaa !32
  %i.ac = load ptr, ptr %i.b, align 8, !tbaa !207, !nonnull !110, !align !111
  %i.ad = invoke noundef range(i32 0, 3) i32 @_ZN6icu_7824DateTimePatternGenerator30addPatternWithOptionalSkeletonERKNS_13UnicodeStringEPS2_aRS1_R10UErrorCode(ptr noundef nonnull readonly align 8 dereferenceable(4612) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %6, i8 noundef signext 1, ptr noundef nonnull align 8 dereferenceable(64) %i.x, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %_ZN6icu_7824DateTimePatternGenerator22addPatternWithSkeletonERKNS_13UnicodeStringES3_aRS1_R10UErrorCode.exit unwind label %bb.j ; 0 uses

_ZN6icu_7824DateTimePatternGenerator22addPatternWithSkeletonERKNS_13UnicodeStringES3_aRS1_R10UErrorCode.exit: ; preds = %bb.g
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.k

bb.h:                                             ; preds = %_ZN6icu_789Hashtable4putiERKNS_13UnicodeStringEiR10UErrorCode.exit.i, %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator18setAvailableFormatERKNS_13UnicodeStringER10UErrorCode.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.j:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %.body

bb.k:                                             ; preds = %_ZN6icu_7824DateTimePatternGenerator22addPatternWithSkeletonERKNS_13UnicodeStringES3_aRS1_R10UErrorCode.exit, %bb.b
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

.body:                                            ; preds = %bb.i, %bb.f, %bb.h, %bb.e, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.ag, %bb.j ], [ %i.ae, %bb.h ], [ %i.af, %bb.i ], [ %i.u, %bb.f ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %.pn.pn
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
define internal void @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSinkD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #28
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %5 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %7 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %"class.icu_78::ResourceTable", align 8 ; 6 uses
  %9 = alloca %"class.icu_78::ResourceTable", align 8 ; 6 uses
  %10 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  %11 = alloca %"class.icu_78::ResourceArray", align 8 ; 7 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %13 = alloca %"class.icu_78::UnicodeString", align 8 ; 6 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.e = load ptr, ptr %2, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  call void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %8, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.h = load i32, ptr %4, align 4, !tbaa !29
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %.preheader176, label %.loopexit

.preheader176:                                    ; preds = %bb.a
  %i.j = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %8, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not72221 = icmp eq i8 %i.j, 0
  br i1 %.not72221, label %.loopexit, label %.lr.ph223

.lr.ph223:                                        ; preds = %.preheader176
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %_ZN6icu_7811LocalMemoryIiED2Ev.exit
  %i.p = add nuw nsw i32 %.066222, 1              ; 2 uses
  %i.q = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %8, i32 noundef %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not72 = icmp eq i8 %i.q, 0
  br i1 %.not72, label %.loopexit, label %bb.c, !llvm.loop !209

bb.c:                                             ; preds = %.lr.ph223, %bb.b
  %.066222 = phi i32 [ 0, %.lr.ph223 ], [ %i.p, %bb.b ]
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  %i.s = load ptr, ptr %2, align 8, !tbaa !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 88
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.v = load i32, ptr %4, align 4, !tbaa !29
  %i.w = icmp slt i32 %i.v, 1
  br i1 %i.w, label %.preheader, label %.loopexit.sink.split

.preheader:                                       ; preds = %bb.c, %bb.ae
  %.sroa.0.0 = phi ptr [ %.sroa.0.2, %bb.ae ], [ null, %bb.c ] ; 14 uses
  %.062 = phi i32 [ %.163, %bb.ae ], [ 0, %bb.c ] ; 4 uses
  %.060 = phi i32 [ %.161, %bb.ae ], [ -1, %bb.c ] ; 7 uses
  %.059 = phi i32 [ %i.cx, %bb.ae ], [ 0, %bb.c ] ; 2 uses
  %i.x = invoke noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %9, i32 noundef %.059, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %.preheader
  %.not74 = icmp eq i8 %i.x, 0
  br i1 %.not74, label %bb.af, label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.i, %bb.g, %.preheader
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !218  ; 2 uses
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(8) @.str.14) #30
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.z

bb.g:                                             ; preds = %bb.f
  %i.ac = load ptr, ptr %2, align 8, !tbaa !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %bb.g
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  %i.ah = invoke noalias dereferenceable_or_null(12) ptr @uprv_malloc_78(i64 noundef 12) #31
          to label %.noexc unwind label %bb.e     ; 5 uses

.noexc:                                           ; preds = %bb.i
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ah, i8 0, i64 12, i1 false)
  invoke void @uprv_free_78(ptr noundef %.sroa.0.0)
          to label %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit unwind label %bb.e

bb.k:                                             ; preds = %.noexc
  store i32 7, ptr %4, align 4, !tbaa !29
  br label %.critedge91

_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28, !noalias !219
  store i32 0, ptr %i.c, align 4, !tbaa !76, !noalias !219
  %i.ai = load ptr, ptr %2, align 8, !tbaa !31, !noalias !219
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !noalias !219
  %i.al = invoke noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc93 unwind label %bb.n, !inline_history !19

.noexc93:                                         ; preds = %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit
  store ptr %i.al, ptr %7, align 8, !tbaa !92, !noalias !219
  %i.am = load i32, ptr %i.c, align 4, !tbaa !76, !noalias !219
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %10, i8 noundef signext 1, ptr noundef nonnull align 8 %7, i32 noundef %i.am)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.noexc93
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %7, align 8, !tbaa !92, !noalias !219
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ao) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !219
  br label %.body

bb.m:                                             ; preds = %.noexc93
  %i.ap = load ptr, ptr %7, align 8, !tbaa !92, !noalias !219
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ap) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28, !noalias !219
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.aq = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %10)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !76
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %10) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.ae

bb.n:                                             ; preds = %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.l
  %.pn82 = phi { ptr, i32 } [ %i.an, %bb.l ], [ %i.as, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.aq

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.at = load ptr, ptr %2, align 8, !tbaa !31
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 80
  %i.av = load ptr, ptr %i.au, align 8
  invoke void %i.av(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceArray") align 8 %11, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.k, align 8, !tbaa !224 ; 4 uses
  %i.ax = add i32 %i.aw, 1                        ; 2 uses
  %i.ay = icmp sgt i32 %i.aw, -2
  br i1 %i.ay, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.az = add nsw i32 %i.aw, 2
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2                ; 2 uses
  %i.bc = invoke noalias ptr @uprv_malloc_78(i64 noundef %i.bb) #31
          to label %.noexc96 unwind label %bb.s   ; 6 uses

.noexc96:                                         ; preds = %bb.q
  %.not.i95 = icmp eq ptr %i.bc, null
  br i1 %.not.i95, label %.thread, label %bb.r

bb.r:                                             ; preds = %.noexc96
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bc, i8 0, i64 %i.bb, i1 false)
  invoke void @uprv_free_78(ptr noundef %.sroa.0.0)
          to label %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98.preheader unwind label %bb.s

_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98.preheader: ; preds = %bb.r
  %.not76219 = icmp slt i32 %i.aw, 1
  br i1 %.not76219, label %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98.preheader
  %wide.trip.count = zext i32 %i.ax to i64
  br label %.lr.ph

.thread:                                          ; preds = %bb.p, %.noexc96
  store i32 7, ptr %4, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %.critedge91

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit ] ; 3 uses
  %i.be = trunc i64 %indvars.iv to i32
  %i.bf = add i32 %i.be, -1
  %i.bg = invoke noundef signext i8 @_ZNK6icu_7813ResourceArray8getValueEiRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(21) %11, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.t unwind label %bb.w       ; 0 uses

bb.t:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !225
  store i32 0, ptr %i.b, align 4, !tbaa !76, !noalias !225
  %i.bh = load ptr, ptr %2, align 8, !tbaa !31, !noalias !225
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !225
  %i.bk = invoke noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc99 unwind label %bb.x, !inline_history !19

.noexc99:                                         ; preds = %bb.t
  store ptr %i.bk, ptr %6, align 8, !tbaa !92, !noalias !225
  %i.bl = load i32, ptr %i.b, align 4, !tbaa !76, !noalias !225
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %12, i8 noundef signext 1, ptr noundef nonnull align 8 %6, i32 noundef %i.bl)
          to label %bb.v unwind label %bb.u

bb.u:                                             ; preds = %.noexc99
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %6, align 8, !tbaa !92, !noalias !225
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bn) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !225
  br label %.body100

bb.v:                                             ; preds = %.noexc99
  %i.bo = load ptr, ptr %6, align 8, !tbaa !92, !noalias !225
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bo) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !225
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bp = load i16, ptr %i.l, align 8, !tbaa !32  ; 4 uses
  %i.bq = icmp slt i16 %i.bp, 0
  %i.br = ashr i16 %i.bp, 5
  %i.bs = sext i16 %i.br to i32
  %i.bt = load i32, ptr %i.m, align 4
  %i.bu = select i1 %i.bq, i32 %i.bt, i32 %i.bs
  switch i32 %i.bu, label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit [
    i32 1, label %_ZNK6icu_7813UnicodeStringixEi.exit.i
    i32 2, label %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  ]

_ZNK6icu_7813UnicodeStringixEi.exit.i:            ; preds = %bb.v
  %i.bv = and i16 %i.bp, 2
  %.not.i.i.i.i = icmp eq i16 %i.bv, 0
  %i.bw = load ptr, ptr %i.o, align 8
  %i.bx = select i1 %.not.i.i.i.i, ptr %i.bw, ptr %i.n
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !78
  %switch.tableidx = add i16 %i.by, -72           ; 2 uses
  %i.bz = icmp ult i16 %switch.tableidx, 36
  br i1 %i.bz, label %switch.lookup, label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringixEi.exit29.i:          ; preds = %bb.v
  %i.ca = and i16 %i.bp, 2
  %.not.i.i.i28.i = icmp eq i16 %i.ca, 0          ; 4 uses
  %i.cb = load ptr, ptr %i.o, align 8             ; 4 uses
  %i.cc = select i1 %.not.i.i.i28.i, ptr %i.cb, ptr %i.n
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !78
  switch i16 %i.cd, label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit [
    i16 104, label %_ZNK6icu_7813UnicodeStringixEi.exit32.i
    i16 75, label %_ZNK6icu_7813UnicodeStringixEi.exit44.i
    i16 72, label %_ZNK6icu_7813UnicodeStringixEi.exit56.i
  ]

_ZNK6icu_7813UnicodeStringixEi.exit32.i:          ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  %.sroa.gep125 = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %.sroa.sel127 = select i1 %.not.i.i.i28.i, ptr %.sroa.gep125, ptr %i.m
  %i.ce = load i16, ptr %.sroa.sel127, align 2, !tbaa !78 ; 2 uses
  %switch.selectcmp = icmp eq i16 %i.ce, 66
  %switch.select = select i1 %switch.selectcmp, i32 5, i32 -1
  %switch.selectcmp166 = icmp eq i16 %i.ce, 98
  %switch.select167 = select i1 %switch.selectcmp166, i32 4, i32 %switch.select
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringixEi.exit44.i:          ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  %.sroa.gep119 = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %.sroa.sel121 = select i1 %.not.i.i.i28.i, ptr %.sroa.gep119, ptr %i.m
  %i.cf = load i16, ptr %.sroa.sel121, align 2, !tbaa !78 ; 2 uses
  %switch.selectcmp168 = icmp eq i16 %i.cf, 66
  %switch.select169 = select i1 %switch.selectcmp168, i32 7, i32 -1
  %switch.selectcmp170 = icmp eq i16 %i.cf, 98
  %switch.select171 = select i1 %switch.selectcmp170, i32 6, i32 %switch.select169
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZNK6icu_7813UnicodeStringixEi.exit56.i:          ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29.i
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %.sroa.sel = select i1 %.not.i.i.i28.i, ptr %.sroa.gep, ptr %i.m
  %i.cg = load i16, ptr %.sroa.sel, align 2, !tbaa !78 ; 2 uses
  %switch.selectcmp172 = icmp eq i16 %i.cg, 66
  %switch.select173 = select i1 %switch.selectcmp172, i32 9, i32 -1
  %switch.selectcmp174 = icmp eq i16 %i.cg, 98
  %switch.select175 = select i1 %switch.selectcmp174, i32 8, i32 %switch.select173
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

switch.lookup:                                    ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit.i
  %i.ch = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE, i64 %i.ch
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit

_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit: ; preds = %bb.v, %_ZNK6icu_7813UnicodeStringixEi.exit29.i, %_ZNK6icu_7813UnicodeStringixEi.exit.i, %switch.lookup, %_ZNK6icu_7813UnicodeStringixEi.exit56.i, %_ZNK6icu_7813UnicodeStringixEi.exit44.i, %_ZNK6icu_7813UnicodeStringixEi.exit32.i
  %.0.i103 = phi i32 [ %switch.select171, %_ZNK6icu_7813UnicodeStringixEi.exit44.i ], [ %switch.load, %switch.lookup ], [ %switch.select175, %_ZNK6icu_7813UnicodeStringixEi.exit56.i ], [ -1, %bb.v ], [ -1, %_ZNK6icu_7813UnicodeStringixEi.exit.i ], [ -1, %_ZNK6icu_7813UnicodeStringixEi.exit29.i ], [ %switch.select167, %_ZNK6icu_7813UnicodeStringixEi.exit32.i ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store i32 %.0.i103, ptr %i.ci, align 4, !tbaa !76
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98._crit_edge, label %.lr.ph, !llvm.loop !214

bb.w:                                             ; preds = %.lr.ph
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.t
  %i.ck = landingpad { ptr, i32 }
          cleanup
  br label %.body100

.body100:                                         ; preds = %bb.x, %bb.u
  %.pn77 = phi { ptr, i32 } [ %i.bm, %bb.u ], [ %i.ck, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %bb.y

_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98._crit_edge: ; preds = %_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE.exit, %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.ae

bb.y:                                             ; preds = %bb.w, %.body100, %bb.s
  %.sroa.0.1 = phi ptr [ %i.bc, %.body100 ], [ %i.bc, %bb.w ], [ %.sroa.0.0, %bb.s ]
  %.pn77.pn.pn = phi { ptr, i32 } [ %.pn77, %.body100 ], [ %i.cj, %bb.w ], [ %i.bd, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  br label %bb.aq

bb.z:                                             ; preds = %bb.f
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(10) @.str.15) #30
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !226
  store i32 0, ptr %i.a, align 4, !tbaa !76, !noalias !226
  %i.cn = load ptr, ptr %2, align 8, !tbaa !31, !noalias !226
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !226
  %i.cq = invoke noundef ptr %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %.noexc104 unwind label %bb.ad, !inline_history !19

.noexc104:                                        ; preds = %bb.aa
  store ptr %i.cq, ptr %5, align 8, !tbaa !92, !noalias !226
  %i.cr = load i32, ptr %i.a, align 4, !tbaa !76, !noalias !226
  invoke void @_ZN6icu_7813UnicodeStringC1EaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %13, i8 noundef signext 1, ptr noundef nonnull align 8 %5, i32 noundef %i.cr)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %.noexc104
  %i.cs = landingpad { ptr, i32 }
          cleanup
  %i.ct = load ptr, ptr %5, align 8, !tbaa !92, !noalias !226
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ct) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !226
  br label %.body105

bb.ac:                                            ; preds = %.noexc104
  %i.cu = load ptr, ptr %5, align 8, !tbaa !92, !noalias !226
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.cu) #28, !srcloc !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !226
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.cv = call fastcc noundef i32 @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %13)
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body105

.body105:                                         ; preds = %bb.ad, %bb.ab
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.ab ], [ %i.cw, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  br label %bb.aq

bb.ae:                                            ; preds = %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98._crit_edge, %bb.m, %bb.ac, %bb.z
  %.sroa.0.2 = phi ptr [ %i.ah, %bb.m ], [ %i.bc, %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98._crit_edge ], [ %.sroa.0.0, %bb.ac ], [ %.sroa.0.0, %bb.z ]
  %.163 = phi i32 [ 2, %bb.m ], [ %i.ax, %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98._crit_edge ], [ %.062, %bb.ac ], [ %.062, %bb.z ]
  %.161 = phi i32 [ %.060, %bb.m ], [ %.060, %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit98._crit_edge ], [ %i.cv, %bb.ac ], [ %.060, %bb.z ]
  %i.cx = add nuw nsw i32 %.059, 1
  br label %.preheader, !llvm.loop !217

bb.af:                                            ; preds = %bb.d
  %i.cy = icmp sgt i32 %.062, 1
  br i1 %i.cy, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %.not86 = icmp eq i32 %.060, -1
  br i1 %.not86, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !76
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.db = phi i32 [ %i.da, %bb.ah ], [ %.060, %bb.ag ]
  store i32 %i.db, ptr %.sroa.0.0, align 4, !tbaa !76
  %i.dc = zext nneg i32 %.062 to i64
  br label %bb.an

bb.aj:                                            ; preds = %bb.al, %bb.ak, %bb.an
  %.sroa.0.4 = phi ptr [ null, %bb.an ], [ %.sroa.0.0, %bb.al ], [ %.sroa.0.0, %bb.ak ]
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ak:                                            ; preds = %bb.af
  %i.de = invoke noalias dereferenceable_or_null(12) ptr @uprv_malloc_78(i64 noundef 12) #31
          to label %.noexc110 unwind label %bb.aj ; 5 uses

.noexc110:                                        ; preds = %bb.ak
  %.not.i108 = icmp eq ptr %i.de, null
  br i1 %.not.i108, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.noexc110
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.de, i8 0, i64 12, i1 false)
  invoke void @uprv_free_78(ptr noundef %.sroa.0.0)
          to label %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit112 unwind label %bb.aj

bb.am:                                            ; preds = %.noexc110
  store i32 7, ptr %4, align 4, !tbaa !29
  br label %.critedge91

_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit112: ; preds = %bb.al
  %.not85 = icmp eq i32 %.060, -1
  %i.df = select i1 %.not85, i32 1, i32 %.060     ; 2 uses
  store i32 %i.df, ptr %i.de, align 4, !tbaa !76
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !76
  br label %bb.an

bb.an:                                            ; preds = %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit112, %bb.ai
  %.sroa.0.5 = phi ptr [ %.sroa.0.0, %bb.ai ], [ %i.de, %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit112 ] ; 2 uses
  %.365 = phi i64 [ %i.dc, %bb.ai ], [ 2, %_ZN6icu_7811LocalMemoryIiE23allocateInsteadAndResetEi.exit112 ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.5, i64 %.365
  store i32 -1, ptr %i.dh, align 4, !tbaa !76
  %i.di = load ptr, ptr @_ZN6icu_7812_GLOBAL__N_129localeToAllowedHourFormatsMapE, align 8, !tbaa !77
  %i.dj = invoke ptr @uhash_put_78(ptr noundef %i.di, ptr noundef %i.r, ptr noundef nonnull %.sroa.0.5, ptr noundef nonnull %4)
          to label %bb.ao unwind label %bb.aj     ; 0 uses

bb.ao:                                            ; preds = %bb.an
  %i.dk = load i32, ptr %4, align 4, !tbaa !29
  invoke void @uprv_free_78(ptr noundef null)
          to label %_ZN6icu_7811LocalMemoryIiED2Ev.exit unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  %i.dm = extractvalue { ptr, i32 } %i.dl, 0
  call void @__clang_call_terminate(ptr %i.dm) #29
  unreachable

_ZN6icu_7811LocalMemoryIiED2Ev.exit:              ; preds = %bb.ao
  %i.dn = icmp slt i32 %i.dk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br i1 %i.dn, label %bb.b, label %.loopexit

bb.aq:                                            ; preds = %bb.e, %.body, %bb.y, %.body105, %bb.aj
  %.sroa.0.6 = phi ptr [ %.sroa.0.4, %bb.aj ], [ %i.ah, %.body ], [ %.sroa.0.0, %bb.e ], [ %.sroa.0.1, %bb.y ], [ %.sroa.0.0, %.body105 ]
  %.pn87 = phi { ptr, i32 } [ %i.dd, %bb.aj ], [ %.pn82, %.body ], [ %i.y, %bb.e ], [ %.pn77.pn.pn, %bb.y ], [ %.pn, %.body105 ]
  invoke void @uprv_free_78(ptr noundef %.sroa.0.6)
          to label %_ZN6icu_7811LocalMemoryIiED2Ev.exit113 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  %i.dp = extractvalue { ptr, i32 } %i.do, 0
  call void @__clang_call_terminate(ptr %i.dp) #29
  unreachable

_ZN6icu_7811LocalMemoryIiED2Ev.exit113:           ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %.pn87

.critedge91:                                      ; preds = %bb.k, %.thread, %bb.am
  invoke void @uprv_free_78(ptr noundef %.sroa.0.0)
          to label %.loopexit.sink.split unwind label %bb.as

bb.as:                                            ; preds = %.critedge91
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  call void @__clang_call_terminate(ptr %i.dr) #29
  unreachable

.loopexit.sink.split:                             ; preds = %bb.c, %.critedge91
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %_ZN6icu_7811LocalMemoryIiED2Ev.exit, %.loopexit.sink.split, %.preheader176, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  ret void
}

declare noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -1, 10) i32 @_ZN6icu_7812_GLOBAL__N_122AllowedHourFormatsSink30getHourFormatFromUnicodeStringERKNS_13UnicodeStringE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #11 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !32   ; 4 uses
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
  %i.n = load i16, ptr %i.m, align 2, !tbaa !78
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
  %i.u = load i16, ptr %i.t, align 2, !tbaa !78
  switch i16 %i.u, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread [
    i16 104, label %_ZNK6icu_7813UnicodeStringixEi.exit32
    i16 75, label %_ZNK6icu_7813UnicodeStringixEi.exit44
    i16 72, label %_ZNK6icu_7813UnicodeStringixEi.exit56
  ]

_ZNK6icu_7813UnicodeStringixEi.exit32:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !78
  %i.x = icmp eq i16 %i.w, 98
  br i1 %i.x, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit38

_ZNK6icu_7813UnicodeStringixEi.exit38:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit32
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.z = load i16, ptr %i.y, align 2, !tbaa !78
  %i.aa = icmp eq i16 %i.z, 66
  br i1 %i.aa, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread

_ZNK6icu_7813UnicodeStringixEi.exit44:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !78
  %i.ad = icmp eq i16 %i.ac, 98
  br i1 %i.ad, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit50

_ZNK6icu_7813UnicodeStringixEi.exit50:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !78
  %i.ag = icmp eq i16 %i.af, 66
  br i1 %i.ag, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread

_ZNK6icu_7813UnicodeStringixEi.exit56:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !78
  %i.aj = icmp eq i16 %i.ai, 98
  br i1 %i.aj, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62

_ZNK6icu_7813UnicodeStringixEi.exit62:            ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit56
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !78
  %i.am = icmp eq i16 %i.al, 66
  br i1 %i.am, label %bb.b, label %_ZNK6icu_7813UnicodeStringixEi.exit62.thread

_ZNK6icu_7813UnicodeStringixEi.exit62.thread:     ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit, %_ZNK6icu_7813UnicodeStringixEi.exit29, %_ZNK6icu_7813UnicodeStringixEi.exit50, %_ZNK6icu_7813UnicodeStringixEi.exit38, %bb.a, %_ZNK6icu_7813UnicodeStringixEi.exit62
  br label %bb.b

switch.lookup:                                    ; preds = %_ZNK6icu_7813UnicodeStringixEi.exit
  %i.an = zext nneg i16 %switch.tableidx to i64
end_hunk_9
begin_hunk_10_@llvm.umin.i32
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold nofree noreturn }
attributes #24 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #26 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { noreturn nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { allocsize(0) }

!llvm.module.flags = !{!20, !21}
!llvm.ident = !{!22}
!llvm.errno.tbaa = !{!27}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{!4, !51}
!5 = distinct !{!5, !51}
!6 = distinct !{!6, !51}
!7 = distinct !{!7, !51}
!8 = distinct !{!8, !51, !123}
!9 = distinct !{!9, !51}
!10 = distinct !{!10, !51}
!11 = distinct !{!11, !51}
!12 = distinct !{null}
!13 = distinct !{null}
!14 = distinct !{null}
!15 = distinct !{null}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{null}
!20 = !{i32 8, !"PIC Level", i32 2}
!21 = !{i32 7, !"uwtable", i32 2}
!22 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!23 = !{!"Simple C++ TBAA"}
!24 = !{!"omnipotent char", !23, i64 0}
!25 = !{!"int", !24, i64 0}
!26 = !{!"__libc_errno", !25, i64 0}
!27 = !{!26, !25, i64 0}
!28 = !{!"_ZTS10UErrorCode", !24, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"vtable pointer", !23, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!24, !24, i64 0}
!33 = !{!"_ZTSN6icu_787UObjectE"}
!34 = !{!"_ZTSN6icu_786LocaleE", !33, i64 0, !24, i64 8}
!35 = !{!"any pointer", !24, i64 0}
!36 = !{!"p1 _ZTSN6icu_7812FormatParserE", !35, i64 0}
!37 = !{!"p1 _ZTSN6icu_7815DateTimeMatcherE", !35, i64 0}
!38 = !{!"p1 _ZTSN6icu_7812DistanceInfoE", !35, i64 0}
!39 = !{!"p1 _ZTSN6icu_7810PatternMapE", !35, i64 0}
!40 = !{!"_ZTSN6icu_7811ReplaceableE", !33, i64 0}
!41 = !{!"_ZTSN6icu_7813UnicodeStringE", !40, i64 0, !24, i64 8}
!42 = !{!"p1 _ZTSN6icu_789HashtableE", !35, i64 0}
!43 = !{!"char16_t", !24, i64 0}
!44 = !{!"_ZTSN6icu_7824DateTimePatternGeneratorE", !33, i64 0, !34, i64 8, !36, i64 48, !37, i64 56, !38, i64 64, !39, i64 72, !24, i64 80, !24, i64 1104, !24, i64 4176, !41, i64 4432, !37, i64 4496, !42, i64 4504, !41, i64 4512, !43, i64 4576, !24, i64 4580, !28, i64 4608}
!45 = !{!44, !43, i64 4576}
!46 = !{!44, !28, i64 4608}
!47 = !{!44, !36, i64 48}
!48 = !{!44, !37, i64 56}
!49 = !{!44, !38, i64 64}
!50 = !{!44, !39, i64 72}
!51 = !{!"llvm.loop.mustprogress"}
!52 = !{!"_ZTSN6icu_7814SkeletonFieldsE", !24, i64 0, !24, i64 16}
!53 = !{!"_ZTSN6icu_7811PtnSkeletonE", !24, i64 8, !52, i64 72, !52, i64 104, !24, i64 136}
!54 = !{!53, !24, i64 136}
!55 = !{!44, !37, i64 4496}
!56 = !{!44, !42, i64 4504}
!57 = !{!"_ZTSN6icu_7810PatternMapE", !24, i64 8, !24, i64 424}
!58 = !{!57, !24, i64 424}
!59 = !{!"p1 _ZTSN6icu_787PtnElemE", !35, i64 0}
!60 = !{!59, !59, i64 0}
!61 = !{!"p1 _ZTSN6icu_7811PtnSkeletonE", !35, i64 0}
!62 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_11PtnSkeletonEEE", !61, i64 0}
!63 = !{!62, !61, i64 0}
!64 = !{!"_ZTSN6icu_7812LocalPointerINS_11PtnSkeletonEEE", !62, i64 0}
!65 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_7PtnElemEEE", !59, i64 0}
!66 = !{!"_ZTSN6icu_7812LocalPointerINS_7PtnElemEEE", !65, i64 0}
!67 = !{!"_ZTSN6icu_787PtnElemE", !41, i64 8, !64, i64 72, !41, i64 80, !24, i64 144, !66, i64 152}
!68 = !{!67, !24, i64 144}
!69 = !{!65, !59, i64 0}
!70 = !{!"p1 _ZTS10UHashtable", !35, i64 0}
!71 = !{!"p1 _ZTS12UHashElement", !35, i64 0}
!72 = !{!"float", !24, i64 0}
!73 = !{!"_ZTS10UHashtable", !71, i64 0, !35, i64 8, !35, i64 16, !35, i64 24, !35, i64 32, !35, i64 40, !25, i64 48, !25, i64 52, !25, i64 56, !25, i64 60, !72, i64 64, !72, i64 68, !24, i64 72, !24, i64 73}
!74 = !{!"_ZTSN6icu_789HashtableE", !70, i64 0, !73, i64 8}
!75 = !{!74, !70, i64 0}
!76 = !{!25, !25, i64 0}
!77 = !{!70, !70, i64 0}
!78 = !{!43, !43, i64 0}
!79 = !{!"p1 _ZTS15UResourceBundle", !35, i64 0}
!80 = !{!"_ZTSN6icu_7816LocalPointerBaseI15UResourceBundleEE", !79, i64 0}
!81 = !{!80, !79, i64 0}
!82 = !{!"p1 omnipotent char", !35, i64 0}
!83 = !{!"_ZTSN6icu_7815MaybeStackArrayIcLi40EEE", !82, i64 0, !25, i64 8, !24, i64 12, !24, i64 13}
!84 = !{!83, !82, i64 0}
!85 = !{!83, !25, i64 8}
!86 = !{!83, !24, i64 12}
!87 = !{!"_ZTSN6icu_7810CharStringE", !83, i64 0, !25, i64 56}
!88 = !{!87, !25, i64 56}
!89 = !{i64 2150949833}
!90 = !{!"p1 char16_t", !35, i64 0}
!91 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !90, i64 0}
!92 = !{!91, !90, i64 0}
!93 = !{!"p1 _ZTSN6icu_7824DateTimePatternGeneratorE", !35, i64 0}
!94 = !{ptr @_ZN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkD2Ev}
!95 = !{!"_ZTSN6icu_7812FormatParser11TokenStatusE", !24, i64 0}
!96 = !{!"_ZTSN6icu_7812FormatParserE", !24, i64 8, !25, i64 3208, !95, i64 3212}
!97 = !{!96, !25, i64 3208}
!98 = !{ptr @_ZN6icu_7812FormatParser3setERKNS_13UnicodeStringE}
!99 = !{!"_ZTS21UDateTimePatternField", !24, i64 0}
!100 = !{!"short", !24, i64 0}
!101 = !{!"_ZTSN6icu_7810dtTypeElemE", !43, i64 0, !99, i64 4, !100, i64 8, !100, i64 10, !100, i64 12}
!102 = !{!101, !43, i64 0}
!103 = !{!101, !100, i64 10}
!104 = !{!101, !99, i64 4}
!105 = !{!101, !100, i64 8}
!106 = !{!61, !61, i64 0}
!107 = !{!"_ZTSN6icu_7812ResourceSinkE", !33, i64 0}
!108 = !{!"_ZTSN6icu_7824DateTimePatternGenerator21AppendItemFormatsSinkE", !107, i64 0, !93, i64 8}
!109 = !{!108, !93, i64 8}
!110 = !{}
!111 = !{i64 8}
!112 = !{!"_ZTSN6icu_7824DateTimePatternGenerator19AppendItemNamesSinkE", !107, i64 0, !93, i64 8}
!113 = !{!112, !93, i64 8}
!114 = !{!"_ZTSN6icu_7812DistanceInfoE", !25, i64 8, !25, i64 12}
!115 = !{!114, !25, i64 8}
!116 = !{!114, !25, i64 12}
!117 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_15DateTimeMatcherEEE", !37, i64 0}
!118 = !{!"_ZTSN6icu_7812LocalPointerINS_15DateTimeMatcherEEE", !117, i64 0}
!119 = !{!"_ZTSN6icu_7818PatternMapIteratorE", !25, i64 8, !59, i64 16, !118, i64 24, !39, i64 32}
!120 = !{!119, !39, i64 32}
!121 = !{!119, !59, i64 16}
!122 = !{!119, !25, i64 8}
!123 = !{!"llvm.loop.peeled.count", i32 1}
!124 = !{!117, !37, i64 0}
!125 = !{!"branch_weights", i32 1, i32 1048575}
!126 = !{!"_ZTS23UDateTimePGDisplayWidth", !24, i64 0}
!127 = !{!126, !126, i64 0}
!128 = !{!"p1 _ZTSN6icu_787UVectorE", !35, i64 0}
!129 = !{!"_ZTSN6icu_7816LocalPointerBaseINS_7UVectorEEE", !128, i64 0}
!130 = !{!129, !128, i64 0}
!131 = !{!"_ZTSN6icu_7817StringEnumerationE", !33, i64 0, !41, i64 8, !24, i64 72, !82, i64 104, !25, i64 112}
!132 = !{!"_ZTSN6icu_7812LocalPointerINS_7UVectorEEE", !129, i64 0}
!133 = !{!"_ZTSN6icu_7821DTSkeletonEnumerationE", !131, i64 0, !25, i64 116, !132, i64 120}
!134 = !{!133, !25, i64 116}
!135 = !{!"p1 _ZTS8UElement", !35, i64 0}
!136 = !{!"_ZTSN6icu_787UVectorE", !33, i64 0, !25, i64 8, !25, i64 12, !135, i64 16, !35, i64 24, !35, i64 32}
!137 = !{!136, !25, i64 8}
!138 = !{!"_ZTSN6icu_7822DTRedundantEnumerationE", !131, i64 0, !25, i64 116, !132, i64 120}
!139 = !{!138, !25, i64 116}
!140 = distinct !{ptr @_ZN6icu_7824DateTimePatternGenerator14createInstanceERKNS_6LocaleER10UErrorCode, null}
!141 = distinct !{null}
!142 = !{!"_ZTSSt13__atomic_baseIiE", !25, i64 0}
!143 = !{!"_ZTSSt6atomicIiE", !142, i64 0}
!144 = !{!"_ZTSN6icu_789UInitOnceE", !143, i64 0, !28, i64 4}
!145 = !{!144, !28, i64 4}
!146 = distinct !{!146, !51}
!147 = distinct !{!147, !51}
!148 = distinct !{!148, !51}
!149 = distinct !{!149, !51}
!150 = distinct !{!150, !51}
!151 = distinct !{!151, !51}
!152 = distinct !{!152, !51}
!153 = distinct !{!153, !51}
!154 = distinct !{!154, !51}
!155 = distinct !{!155, !"_ZN6icu_7821ures_getUnicodeStringEPK15UResourceBundleP10UErrorCode"}
!156 = distinct !{!156, !155, !"_ZN6icu_7821ures_getUnicodeStringEPK15UResourceBundleP10UErrorCode: argument 0"}
!157 = distinct !{!157, !"_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode"}
!158 = distinct !{!158, !157, !"_ZN6icu_7828ures_getUnicodeStringByIndexEPK15UResourceBundleiP10UErrorCode: argument 0"}
!159 = distinct !{!159, !51}
!160 = !{!156}
!161 = !{!158}
!162 = !{!93, !93, i64 0}
!163 = distinct !{!163, !51}
!164 = distinct !{!164, !51}
!165 = distinct !{!165, !51}
!166 = distinct !{!166, !51}
!167 = distinct !{!167, !51}
!168 = distinct !{!168, !51}
!169 = distinct !{!169, !51, !123}
!170 = distinct !{!170, !51}
!171 = distinct !{!171, !51}
!172 = distinct !{!172, !51}
!173 = distinct !{!173, !51}
!174 = !{!"p1 _ZTSN6icu_7813UnicodeStringE", !35, i64 0}
!175 = !{!174, !174, i64 0}
!176 = distinct !{!176, !"_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode"}
!177 = distinct !{!177, !176, !"_ZN6icu_7824DateTimePatternGenerator17replaceFieldTypesERKNS_13UnicodeStringES3_28UDateTimePatternMatchOptionsR10UErrorCode: argument 0"}
!178 = !{!177}
!179 = distinct !{!179, !51}
!180 = distinct !{!180, !51}
!181 = distinct !{!181, !51}
!182 = distinct !{!182, !51, !123}
!183 = distinct !{!183, !51}
!184 = distinct !{!184, !51, !123}
!185 = distinct !{!185, !51}
!186 = distinct !{!186, !"_ZN6icu_7815DateTimeMatcher10getPatternEv"}
!187 = distinct !{!187, !186, !"_ZN6icu_7815DateTimeMatcher10getPatternEv: argument 0"}
!188 = !{!187}
!189 = distinct !{!189, !51}
!190 = distinct !{!190, !51}
!191 = !{!96, !95, i64 3212}
!192 = distinct !{!192, !51}
!193 = distinct !{null}
!194 = distinct !{!194, !51}
!195 = distinct !{!195, !51}
!196 = distinct !{!196, !51}
!197 = distinct !{!197, !51}
!198 = distinct !{!198, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!199 = distinct !{!199, !198, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!200 = !{!199}
!201 = distinct !{!201, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!202 = distinct !{!202, !201, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!203 = !{!202}
!204 = distinct !{!204, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!205 = distinct !{!205, !204, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!206 = !{!"_ZTSN6icu_7824DateTimePatternGenerator20AvailableFormatsSinkE", !107, i64 0, !93, i64 8, !41, i64 16}
!207 = !{!206, !93, i64 8}
!208 = !{!205}
!209 = distinct !{!209, !51}
!210 = distinct !{!210, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!211 = distinct !{!211, !210, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!212 = distinct !{!212, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!213 = distinct !{!213, !212, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!214 = distinct !{!214, !51}
!215 = distinct !{!215, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode"}
!216 = distinct !{!216, !215, !"_ZNK6icu_7813ResourceValue16getUnicodeStringER10UErrorCode: argument 0"}
!217 = distinct !{!217, !51}
!218 = !{!82, !82, i64 0}
!219 = !{!211}
!220 = !{!"p1 short", !35, i64 0}
!221 = !{!"p1 int", !35, i64 0}
!222 = !{!"_ZTSN6icu_7814ResourceTracerE"}
!223 = !{!"_ZTSN6icu_7813ResourceArrayE", !220, i64 0, !221, i64 8, !25, i64 16, !222, i64 20}
!224 = !{!223, !25, i64 16}
!225 = !{!213}
!226 = !{!216}
end_hunk_10
