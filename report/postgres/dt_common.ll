Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/dt_common?download=true
inline.NumInlined: 40
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@DecodeNumber:bb.a

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr %3, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.b, ptr %i.bx, align 8
  br label %bb.z

bb.r:                                             ; preds = %.thread
  %.not = xor i1 %7, true
  %i.by = and i32 %2, 2
  %.not100 = icmp eq i32 %i.by, 0                 ; 2 uses
  %or.cond104 = and i1 %.not100, %.not
  br i1 %or.cond104, label %._crit_edge, label %bb.s

._crit_edge:                                      ; preds = %bb.r
  %.pre114 = add i32 %i.b, -1
  br label %.thread107

bb.s:                                             ; preds = %bb.r
  %i.bz = and i32 %2, 8
  %i.ca = icmp eq i32 %i.bz, 0
  %i.cb = add i32 %i.b, -1                        ; 2 uses
  %i.cc = icmp ult i32 %i.cb, 31
  %or.cond11 = select i1 %i.ca, i1 %i.cc, i1 false
  br i1 %or.cond11, label %bb.t, label %.thread107

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %3, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.b, ptr %i.cd, align 4
  br label %bb.z

.thread107:                                       ; preds = %bb.p, %._crit_edge, %bb.s
  %.pre-phi115 = phi i32 [ %.pre114, %._crit_edge ], [ %i.cb, %bb.s ], [ %i.bv, %bb.p ] ; 2 uses
  %.not100113 = phi i1 [ true, %._crit_edge ], [ %.not100, %bb.s ], [ %i.bu, %bb.p ]
  %i.ce = icmp ult i32 %.pre-phi115, 12
  %or.cond15 = select i1 %.not100113, i1 %i.ce, i1 false
  br i1 %or.cond15, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread107
  store i32 2, ptr %3, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.b, ptr %i.cf, align 8
  br label %bb.z

bb.v:                                             ; preds = %.thread107
  %i.cg = and i32 %2, 8
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = icmp ult i32 %.pre-phi115, 31
  %or.cond19 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond19, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 8, ptr %3, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 %i.b, ptr %i.cj, align 4
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.ck = icmp eq i32 %0, 2
  %or.cond105 = and i1 %i.ck, %.not99
  br i1 %or.cond105, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 4, ptr %3, align 4
  %i.cl = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %i.b, ptr %i.cl, align 4
  store i8 1, ptr %6, align 1
  br label %bb.z

bb.z:                                             ; preds = %j2date.exit, %bb.q, %bb.u, %bb.y, %bb.w, %bb.t, %bb.o, %bb.x, %bb.b, %bb.e, %bb.a, %bb.d
  %.0 = phi i32 [ -1, %bb.e ], [ %i.k, %bb.d ], [ -1, %bb.a ], [ -1, %bb.x ], [ -1, %bb.b ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.w ], [ 0, %bb.y ], [ 0, %bb.u ], [ 0, %bb.q ], [ 0, %j2date.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @PGTYPEStimestamp_defmt_scan(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) local_unnamed_addr #5 {
bb.a:
  %10 = alloca %union.un_fmt_comb, align 8        ; 37 uses
  %i.a = alloca ptr, align 8                      ; 43 uses
  %11 = alloca %struct.tm, align 8                ; 9 uses
  %12 = alloca %struct.tm, align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.c = load ptr, ptr %0, align 8
  store ptr %i.c, ptr %i.a, align 8
  %i.d = load i8, ptr %1, align 1                 ; 2 uses
  %.not353 = icmp eq i8 %i.d, 0
  br i1 %.not353, label %.loopexit316, label %.preheader315

.preheader315:                                    ; preds = %bb.a, %.backedge
  %i.e = phi i8 [ %i.p, %.backedge ], [ %i.d, %bb.a ]
  %.0261354 = phi ptr [ %.0261.be, %.backedge ], [ %1, %bb.a ] ; 2 uses
  %i.f = icmp eq i8 %i.e, 32
  br i1 %i.f, label %.lr.ph, label %.preheader314

.preheader314:                                    ; preds = %.lr.ph, %.preheader315
  %.1262.lcssa = phi ptr [ %.0261354, %.preheader315 ], [ %i.g, %.lr.ph ] ; 34 uses
  %.promoted = load ptr, ptr %i.a, align 8
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader315, %.lr.ph
  %.1262338 = phi ptr [ %i.g, %.lr.ph ], [ %.0261354, %.preheader315 ]
  %i.g = getelementptr inbounds nuw i8, ptr %.1262338, i64 1 ; 3 uses
  %.pr = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %.pr, 32
  br i1 %i.h, label %.lr.ph, label %.preheader314, !llvm.loop !29

bb.b:                                             ; preds = %bb.b, %.preheader314
  %i.i = phi ptr [ %.promoted, %.preheader314 ], [ %i.l, %bb.b ] ; 21 uses
  %i.j = load i8, ptr %i.i, align 1               ; 7 uses
  %i.k = icmp eq i8 %i.j, 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 7 uses
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !30

bb.c:                                             ; preds = %bb.b
  store ptr %i.i, ptr %i.a, align 8
  %i.m = load i8, ptr %.1262.lcssa, align 1       ; 2 uses
  %.not285 = icmp eq i8 %i.m, 37
  br i1 %.not285, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i8 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %.loopexit316

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 1
  store ptr %i.l, ptr %i.a, align 8
  br label %.backedgethread-pre-split

.backedgethread-pre-split:                        ; preds = %bb.r, %bb.o, %bb.k, %bb.h, %bb.e, %bb.p, %bb.m, %bb.j, %bb.g, %bb.bm, %bb.av, %bb.ad, %bb.bb, %bb.az, %bb.bn, %bb.bh, %.loopexit313, %bb.bf, %bb.bg, %bb.aw, %.tail306.thread, %bb.am, %.tail298.thread, %bb.ai, %bb.ae, %bb.x, %bb.y, %bb.q, %bb.n, %bb.l, %bb.i, %bb.be, %bb.bd, %bb.bc, %bb.ba, %bb.au, %bb.at, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.w, %bb.t, %bb.s
  %.0261.be.ph = phi ptr [ %i.s, %bb.h ], [ %i.aa, %bb.k ], [ %i.o, %bb.e ], [ %i.ai, %bb.o ], [ %i.ar, %bb.p ], [ %i.he, %bb.bn ], [ %i.gt, %.loopexit313 ], [ %i.gt, %bb.bh ], [ %i.gp, %bb.bg ], [ %i.gp, %bb.bf ], [ %i.gm, %bb.be ], [ %i.gi, %bb.bd ], [ %i.ge, %bb.bc ], [ %i.ga, %bb.bb ], [ %i.fw, %bb.ba ], [ %i.fs, %bb.az ], [ %i.ck, %bb.ad ], [ %i.fk, %bb.aw ], [ %i.fh, %bb.au ], [ %i.eq, %bb.at ], [ %i.di, %.tail306.thread ], [ %i.di, %bb.am ], [ %i.cm, %.tail298.thread ], [ %i.cm, %bb.ai ], [ %i.fk, %bb.av ], [ %i.ck, %bb.ae ], [ %i.ch, %bb.ac ], [ %i.cf, %bb.ab ], [ %i.ca, %bb.aa ], [ %i.bx, %bb.z ], [ %i.bq, %bb.x ], [ %i.bq, %bb.y ], [ %i.bn, %bb.w ], [ %i.be, %bb.t ], [ %i.ba, %bb.s ], [ %i.aa, %bb.j ], [ %i.ar, %bb.q ], [ %i.s, %bb.g ], [ %i.ai, %bb.n ], [ %i.ai, %bb.m ], [ %i.aa, %bb.l ], [ %i.he, %bb.bm ], [ %i.s, %bb.i ], [ %i.ar, %bb.r ] ; 2 uses
  %.0256.be.ph = phi i32 [ 1, %bb.h ], [ 1, %bb.k ], [ 0, %bb.e ], [ 1, %bb.o ], [ 1, %bb.p ], [ 0, %bb.bn ], [ %.8, %.loopexit313 ], [ 1, %bb.bh ], [ %i.gs, %bb.bg ], [ 1, %bb.bf ], [ %i.gn, %bb.be ], [ %spec.store.select5, %bb.bd ], [ %spec.store.select4, %bb.bc ], [ %spec.store.select7, %bb.bb ], [ %spec.store.select, %bb.ba ], [ %spec.store.select6, %bb.az ], [ 1, %bb.ad ], [ 0, %bb.aw ], [ %i.fi, %bb.au ], [ %.7, %bb.at ], [ %.6, %.tail306.thread ], [ 0, %bb.am ], [ %.3259, %.tail298.thread ], [ 0, %bb.ai ], [ 1, %bb.av ], [ 0, %bb.ae ], [ %i.ci, %bb.ac ], [ %i.cg, %bb.ab ], [ %i.cb, %bb.aa ], [ %i.by, %bb.z ], [ %i.br, %bb.x ], [ %i.br, %bb.y ], [ %i.bo, %bb.w ], [ %i.bf, %bb.t ], [ %i.bb, %bb.s ], [ 1, %bb.j ], [ 0, %bb.q ], [ 1, %bb.g ], [ 0, %bb.n ], [ 1, %bb.m ], [ 0, %bb.l ], [ 1, %bb.bm ], [ 0, %bb.i ], [ 1, %bb.r ]
  %.pr409 = load i8, ptr %.0261.be.ph, align 1
  br label %.backedge

.backedge:                                        ; preds = %.backedgethread-pre-split, %bb.f, %bb.f, %bb.bo, %bb.f, %bb.f
  %i.p = phi i8 [ %.pr409, %.backedgethread-pre-split ], [ %i.r, %bb.f ], [ %i.r, %bb.f ], [ %i.r, %bb.bo ], [ %i.r, %bb.f ], [ %i.r, %bb.f ] ; 2 uses
  %.0261.be = phi ptr [ %.0261.be.ph, %.backedgethread-pre-split ], [ %i.q, %bb.f ], [ %i.q, %bb.f ], [ %i.q, %bb.bo ], [ %i.q, %bb.f ], [ %i.q, %bb.f ]
  %.0256.be = phi i32 [ %.0256.be.ph, %.backedgethread-pre-split ], [ 0, %bb.f ], [ 0, %bb.f ], [ 1, %bb.bo ], [ 0, %bb.f ], [ 0, %bb.f ] ; 2 uses
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %._crit_edge, label %.preheader315, !llvm.loop !31

bb.f:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 1 ; 6 uses
  %i.r = load i8, ptr %i.q, align 1               ; 6 uses
  switch i8 %i.r, label %bb.bo [
    i8 97, label %bb.g
    i8 65, label %bb.j
    i8 98, label %bb.m
    i8 104, label %bb.m
    i8 66, label %bb.p
    i8 99, label %.backedge
    i8 67, label %bb.s
    i8 100, label %bb.t
    i8 101, label %bb.t
    i8 68, label %bb.u
    i8 109, label %bb.w
    i8 121, label %bb.x
    i8 103, label %bb.x
    i8 71, label %bb.z
    i8 72, label %bb.aa
    i8 73, label %bb.aa
    i8 107, label %bb.aa
    i8 108, label %bb.aa
    i8 106, label %bb.ab
    i8 77, label %bb.ac
    i8 110, label %bb.ad
    i8 112, label %sub_0
    i8 80, label %sub_0303
    i8 114, label %bb.an
    i8 82, label %bb.ap
    i8 115, label %bb.ar
    i8 83, label %bb.au
    i8 116, label %bb.av
    i8 84, label %bb.ax
    i8 117, label %bb.az
    i8 85, label %bb.ba
    i8 86, label %bb.bb
    i8 119, label %bb.bc
    i8 87, label %bb.bd
    i8 120, label %.backedge
    i8 88, label %.backedge
    i8 89, label %bb.be
    i8 122, label %bb.bf
    i8 90, label %bb.bh
    i8 43, label %.backedge
    i8 37, label %bb.bm
  ]

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 3 uses
  %i.t = load ptr, ptr @pgtypes_date_weekdays_short, align 16 ; 2 uses
  %.not296350 = icmp eq ptr %i.t, null
  br i1 %.not296350, label %.backedgethread-pre-split, label %.lr.ph352

bb.h:                                             ; preds = %.lr.ph352
  %13 = add i32 %.0351, 1                         ; 2 uses
  %14 = zext i32 %13 to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @pgtypes_date_weekdays_short, i64 %14
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not296 = icmp eq ptr %i.v, null
  br i1 %.not296, label %.backedgethread-pre-split, label %.lr.ph352, !llvm.loop !32

.lr.ph352:                                        ; preds = %bb.g, %bb.h
  %15 = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.g ]  ; 2 uses
  %.0351 = phi i32 [ %13, %bb.h ], [ 0, %bb.g ]
  %i.w = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #15 ; 2 uses
  %i.x = call i32 @strncmp(ptr noundef nonnull %15, ptr noundef nonnull %i.i, i64 noundef %i.w) #15
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph352
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.w
  store ptr %i.z, ptr %i.a, align 8
  br label %.backedgethread-pre-split

bb.j:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 3 uses
  %i.ab = load ptr, ptr @days, align 16           ; 2 uses
  %.not295347 = icmp eq ptr %i.ab, null
  br i1 %.not295347, label %.backedgethread-pre-split, label %.lr.ph349

bb.k:                                             ; preds = %.lr.ph349
  %16 = add i32 %.1348, 1                         ; 2 uses
  %17 = zext i32 %16 to i64
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr @days, i64 %17
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not295 = icmp eq ptr %i.ad, null
  br i1 %.not295, label %.backedgethread-pre-split, label %.lr.ph349, !llvm.loop !33

.lr.ph349:                                        ; preds = %bb.j, %bb.k
  %18 = phi ptr [ %i.ad, %bb.k ], [ %i.ab, %bb.j ] ; 2 uses
  %.1348 = phi i32 [ %16, %bb.k ], [ 0, %bb.j ]
  %i.ae = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %18) #15 ; 2 uses
  %i.af = call i32 @strncmp(ptr noundef nonnull %18, ptr noundef nonnull %i.i, i64 noundef %i.ae) #15
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph349
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  store ptr %i.ah, ptr %i.a, align 8
  br label %.backedgethread-pre-split

bb.m:                                             ; preds = %bb.f, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 3 uses
  %i.aj = load ptr, ptr @months, align 16         ; 2 uses
  %.not294344 = icmp eq ptr %i.aj, null
  br i1 %.not294344, label %.backedgethread-pre-split, label %.lr.ph346

.lr.ph346:                                        ; preds = %bb.m, %bb.o
  %19 = phi ptr [ %i.aq, %bb.o ], [ %i.aj, %bb.m ] ; 2 uses
  %.2345 = phi i32 [ %20, %bb.o ], [ 0, %bb.m ]   ; 2 uses
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %19) #15 ; 2 uses
  %i.al = call i32 @strncmp(ptr noundef nonnull %19, ptr noundef nonnull %i.i, i64 noundef %i.ak) #15
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph346
  %i.an = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ak
  store ptr %i.an, ptr %i.a, align 8
  %i.ao = add i32 %.2345, 1
  store i32 %i.ao, ptr %4, align 4
  br label %.backedgethread-pre-split

bb.o:                                             ; preds = %.lr.ph346
  %20 = add i32 %.2345, 1                         ; 2 uses
  %21 = zext i32 %20 to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @months, i64 %21
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not294 = icmp eq ptr %i.aq, null
  br i1 %.not294, label %.backedgethread-pre-split, label %.lr.ph346, !llvm.loop !34

bb.p:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 3 uses
  %i.as = load ptr, ptr @pgtypes_date_months, align 16 ; 2 uses
  %.not293341 = icmp eq ptr %i.as, null
  br i1 %.not293341, label %.backedgethread-pre-split, label %.lr.ph343

.lr.ph343:                                        ; preds = %bb.p, %bb.r
  %22 = phi ptr [ %i.az, %bb.r ], [ %i.as, %bb.p ] ; 2 uses
  %.3342 = phi i32 [ %23, %bb.r ], [ 0, %bb.p ]   ; 2 uses
  %i.at = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %22) #15 ; 2 uses
  %i.au = call i32 @strncmp(ptr noundef nonnull %22, ptr noundef nonnull %i.i, i64 noundef %i.at) #15
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph343
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.at
  store ptr %i.aw, ptr %i.a, align 8
  %i.ax = add i32 %.3342, 1
  store i32 %i.ax, ptr %4, align 4
  br label %.backedgethread-pre-split

bb.r:                                             ; preds = %.lr.ph343
  %23 = add i32 %.3342, 1                         ; 2 uses
  %24 = zext i32 %23 to i64
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @pgtypes_date_months, i64 %24
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not293 = icmp eq ptr %i.az, null
  br i1 %.not293, label %.backedgethread-pre-split, label %.lr.ph343, !llvm.loop !35

bb.s:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.bb = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.ba)
  %i.bc = load i32, ptr %10, align 8
  %i.bd = mul i32 %i.bc, 100
  store i32 %i.bd, ptr %3, align 4
  br label %.backedgethread-pre-split

bb.t:                                             ; preds = %bb.f, %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.bf = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.be)
  %i.bg = load i32, ptr %10, align 8
  store i32 %i.bg, ptr %5, align 4
  br label %.backedgethread-pre-split

bb.u:                                             ; preds = %bb.f
  %i.bh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.i) #15
  %i.bi = add i64 %i.bh, 9
  %i.bj = call ptr @pgtypes_alloc(i64 noundef %i.bi) #16 ; 5 uses
  %.not292 = icmp eq ptr %i.bj, null
  br i1 %.not292, label %.loopexit316, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.bj, ptr noundef nonnull align 1 dereferenceable(9) @.str.65, i64 9, i1 false) #16
  %i.bl = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.bj, ptr noundef nonnull dereferenceable(1) %i.bk) #16 ; 0 uses
  %i.bm = call i32 @PGTYPEStimestamp_defmt_scan(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bj, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  call void @free(ptr noundef nonnull %i.bj) #16
  br label %.loopexit316

bb.w:                                             ; preds = %bb.f
  %i.bn = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.bo = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.bn)
  %i.bp = load i32, ptr %10, align 8
  store i32 %i.bp, ptr %4, align 4
  br label %.backedgethread-pre-split

bb.x:                                             ; preds = %bb.f, %bb.f
  %i.bq = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 3 uses
  %i.br = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.bq) ; 2 uses
  %i.bs = load i32, ptr %3, align 4
  %i.bt = load i32, ptr %10, align 8
  %i.bu = call i32 @llvm.smax.i32(i32 %i.bs, i32 0)
  %storemerge = add i32 %i.bt, %i.bu              ; 3 uses
  store i32 %storemerge, ptr %3, align 4
  %i.bv = icmp slt i32 %storemerge, 100
  br i1 %i.bv, label %bb.y, label %.backedgethread-pre-split

bb.y:                                             ; preds = %bb.x
  %i.bw = add nsw i32 %storemerge, 1900
  store i32 %i.bw, ptr %3, align 4
  br label %.backedgethread-pre-split

bb.z:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.by = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.bx)
  %i.bz = load i32, ptr %10, align 8
  store i32 %i.bz, ptr %3, align 4
  br label %.backedgethread-pre-split

bb.aa:                                            ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.ca = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.cb = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.ca)
  %i.cc = load i32, ptr %10, align 8
  %i.cd = load i32, ptr %6, align 4
  %i.ce = add i32 %i.cd, %i.cc
  store i32 %i.ce, ptr %6, align 4
  br label %.backedgethread-pre-split

bb.ab:                                            ; preds = %bb.f
  %i.cf = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.cg = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.cf)
  br label %.backedgethread-pre-split

bb.ac:                                            ; preds = %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.ci = call fastcc i32 @pgtypes_defmt_scan(ptr noundef %10, i32 noundef 6, ptr noundef %i.a, ptr noundef nonnull %i.ch)
  %i.cj = load i32, ptr %10, align 8
  store i32 %i.cj, ptr %7, align 4
  br label %.backedgethread-pre-split

bb.ad:                                            ; preds = %bb.f
  %i.ck = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %i.cl = icmp eq i8 %i.j, 10
  br i1 %i.cl, label %bb.ae, label %.backedgethread-pre-split

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.l, ptr %i.a, align 8
  br label %.backedgethread-pre-split

sub_0:                                            ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %.not358 = icmp eq i8 %i.j, 97
  br i1 %.not358, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.cn = load i8, ptr %i.l, align 1
  %i.co = icmp eq i8 %i.cn, 109
  br i1 %i.co, label %bb.af, label %.tail.thread

bb.af:                                            ; preds = %.tail
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  store ptr %i.cp, ptr %i.a, align 8
  br label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %bb.af, %.tail
  %i.cq = phi ptr [ %i.cp, %bb.af ], [ %i.i, %.tail ], [ %i.i, %sub_0 ] ; 3 uses
  %.1257 = phi i32 [ 0, %bb.af ], [ 1, %.tail ], [ 1, %sub_0 ]
  %i.cr = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull dereferenceable(5) @.str.67, i64 noundef 4) #15
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %bb.ag, label %sub_0299

bb.ag:                                            ; preds = %.tail.thread
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 4 ; 2 uses
  store ptr %i.ct, ptr %i.a, align 8
  br label %sub_0299

sub_0299:                                         ; preds = %bb.ag, %.tail.thread
  %i.cu = phi ptr [ %i.ct, %bb.ag ], [ %i.cq, %.tail.thread ] ; 5 uses
  %.2258 = phi i32 [ 0, %bb.ag ], [ %.1257, %.tail.thread ] ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1
  %.not359 = icmp eq i8 %i.cv, 112
  br i1 %.not359, label %.tail298, label %.tail298.thread

.tail298:                                         ; preds = %sub_0299
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 1
  %i.cx = load i8, ptr %i.cw, align 1
  %i.cy = icmp eq i8 %i.cx, 109
  br i1 %i.cy, label %bb.ah, label %.tail298.thread

bb.ah:                                            ; preds = %.tail298
  %i.cz = load i32, ptr %6, align 4
  %i.da = add i32 %i.cz, 12
  store i32 %i.da, ptr %6, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 2 ; 2 uses
  store ptr %i.db, ptr %i.a, align 8
  br label %.tail298.thread

.tail298.thread:                                  ; preds = %sub_0299, %bb.ah, %.tail298
  %i.dc = phi ptr [ %i.db, %bb.ah ], [ %i.cu, %.tail298 ], [ %i.cu, %sub_0299 ] ; 2 uses
  %.3259 = phi i32 [ 0, %bb.ah ], [ %.2258, %.tail298 ], [ %.2258, %sub_0299 ]
  %i.dd = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.dc, ptr noundef nonnull dereferenceable(5) @.str.69, i64 noundef 4) #15
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.ai, label %.backedgethread-pre-split

bb.ai:                                            ; preds = %.tail298.thread
  %i.df = load i32, ptr %6, align 4
  %i.dg = add i32 %i.df, 12
  store i32 %i.dg, ptr %6, align 4
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store ptr %i.dh, ptr %i.a, align 8
  br label %.backedgethread-pre-split

sub_0303:                                         ; preds = %bb.f
  %i.di = getelementptr inbounds nuw i8, ptr %.1262.lcssa, i64 2 ; 2 uses
  %.not356 = icmp eq i8 %i.j, 65
  br i1 %.not356, label %.tail302, label %.tail302.thread

.tail302:                                         ; preds = %sub_0303
  %i.dj = load i8, ptr %i.l, align 1
  %i.dk = icmp eq i8 %i.dj, 77
  br i1 %i.dk, label %bb.aj, label %.tail302.thread

bb.aj:                                            ; preds = %.tail302
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 2 ; 2 uses
  store ptr %i.dl, ptr %i.a, align 8
  br label %.tail302.thread

.tail302.thread:                                  ; preds = %sub_0303, %bb.aj, %.tail302
  %i.dm = phi ptr [ %i.dl, %bb.aj ], [ %i.i, %.tail302 ], [ %i.i, %sub_0303 ] ; 3 uses
  %.4260 = phi i32 [ 0, %bb.aj ], [ 1, %.tail302 ], [ 1, %sub_0303 ]
  %i.dn = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.dm, ptr noundef nonnull dereferenceable(5) @.str.71, i64 noundef 4) #15
  %i.do = icmp eq i32 %i.dn, 0
  br i1 %i.do, label %bb.ak, label %sub_0307

bb.ak:                                            ; preds = %.tail302.thread
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 4 ; 2 uses
  store ptr %i.dp, ptr %i.a, align 8
  br label %sub_0307

sub_0307:                                         ; preds = %bb.ak, %.tail302.thread
  %i.dq = phi ptr [ %i.dp, %bb.ak ], [ %i.dm, %.tail302.thread ] ; 5 uses
  %.5 = phi i32 [ 0, %bb.ak ], [ %.4260, %.tail302.thread ] ; 2 uses
  %i.dr = load i8, ptr %i.dq, align 1
  %.not357 = icmp eq i8 %i.dr, 80
  br i1 %.not357, label %.tail306, label %.tail306.thread

.tail306:                                         ; preds = %sub_0307
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dt = load i8, ptr %i.ds, align 1
  %i.du = icmp eq i8 %i.dt, 77
  br i1 %i.du, label %bb.al, label %.tail306.thread

bb.al:                                            ; preds = %.tail306
  %i.dv = load i32, ptr %6, align 4
  %i.dw = add i32 %i.dv, 12
end_hunk_0
