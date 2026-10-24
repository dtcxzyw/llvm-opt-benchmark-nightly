Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfprint?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sfprint:bb.a
  %i.ah = load i8, ptr %.2678, align 1, !tbaa !40 ; 3 uses
  %i.ai = sext i8 %i.ah to i32                    ; 10 uses
  switch i8 %i.ah, label %bb.bb [
    i8 0, label %bb.f
    i8 37, label %bb.g
    i8 40, label %.outer
    i8 45, label %bb.q
    i8 48, label %bb.r
    i8 32, label %bb.s
    i8 43, label %bb.t
    i8 35, label %bb.u
    i8 39, label %bb.v
    i8 46, label %bb.ac
    i8 42, label %bb.al
    i8 49, label %bb.an
    i8 50, label %bb.an
    i8 51, label %bb.an
    i8 52, label %bb.an
    i8 53, label %bb.an
    i8 54, label %bb.an
    i8 55, label %bb.an
    i8 56, label %bb.an
    i8 57, label %bb.an
    i8 73, label %bb.ar
    i8 108, label %bb.av
    i8 104, label %bb.aw
    i8 76, label %bb.ax
    i8 106, label %bb.ay
    i8 122, label %bb.az
    i8 116, label %bb.ba
  ]

bb.f:                                             ; preds = %.backedge
  %i.aj = call i32 @putc(i32 noundef 37, ptr noundef %0) ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %.backedge
  %i.ak = call i32 @putc(i32 noundef 37, ptr noundef %0)
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %.thread, label %.backedge1189

bb.h:                                             ; preds = %.outer, %bb.h
  %.3679 = phi ptr [ %i.am, %bb.h ], [ %.3679.ph, %.outer ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.3679, i64 1 ; 7 uses
  %i.an = load i8, ptr %.3679, align 1, !tbaa !40
  switch i8 %i.an, label %bb.h [
    i8 0, label %.backedge.backedge
    i8 40, label %bb.i
    i8 41, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %.0657.ph, 1
  br label %.outer.backedge

.outer:                                           ; preds = %.backedge, %.outer.backedge
  %.3679.ph = phi ptr [ %i.am, %.outer.backedge ], [ %i.ag, %.backedge ]
  %.0657.ph = phi i32 [ %.0657.ph.be, %.outer.backedge ], [ 1, %.backedge ] ; 2 uses
  br label %bb.h

bb.j:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %.0657.ph, -1               ; 2 uses
  %.not928 = icmp eq i32 %i.ap, 0
  br i1 %.not928, label %bb.k, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.j, %bb.i
  %.0657.ph.be = phi i32 [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  br label %.outer

bb.k:                                             ; preds = %bb.j
  %i.aq = load i8, ptr %i.ag, align 1, !tbaa !40
  %.not929 = icmp eq i8 %i.aq, 42
  br i1 %.not929, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ar = ptrtoint ptr %.3679 to i64
  %i.as = ptrtoint ptr %i.ag to i64
  %i.at = sub i64 %i.ar, %i.as
  br label %.backedge.backedge

bb.m:                                             ; preds = %bb.k
  %i.au = add nsw i32 %.1707, 1                   ; 3 uses
  store ptr %i.am, ptr %i.i, align 8, !tbaa !43
  store i32 40, ptr %i.k, align 8, !tbaa !47
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, i8 0, i64 40, i1 false)
  %i.av = load ptr, ptr %1, align 8, !tbaa !48
  %i.aw = call i32 %i.av(ptr noundef nonnull %2, ptr noundef nonnull %1) #8 ; 4 uses
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = load ptr, ptr %2, align 16, !tbaa !40   ; 4 uses
  %.not930 = icmp eq ptr %i.ay, null
  br i1 %.not930, label %.backedge.backedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load i64, ptr %i.l, align 8, !tbaa !49
  %i.ba = shl i64 %i.az, 32
  %i.bb = ashr exact i64 %i.ba, 32                ; 2 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.p, label %.backedge.backedge

bb.p:                                             ; preds = %bb.o
  %i.bd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #9
  br label %.backedge.backedge

bb.q:                                             ; preds = %.backedge
  %i.be = and i32 %.0825, -577
  %i.bf = or disjoint i32 %i.be, 64
  br label %.backedge.backedge

bb.r:                                             ; preds = %.backedge
  %i.bg = shl i32 %.0825, 3
  %i.bh = and i32 %i.bg, 512
  %i.bi = xor i32 %i.bh, 512
  %spec.select = or i32 %i.bi, %.0825
  br label %.backedge.backedge

bb.s:                                             ; preds = %.backedge
  %i.bj = shl i32 %.0825, 1
  %i.bk = and i32 %i.bj, 256
  %i.bl = xor i32 %i.bk, 256
  %spec.select1021 = or i32 %i.bl, %.0825
  br label %.backedge.backedge

bb.t:                                             ; preds = %.backedge
  %i.bm = and i32 %.0825, -385
  %i.bn = or disjoint i32 %i.bm, 128
  br label %.backedge.backedge

bb.u:                                             ; preds = %.backedge
  %i.bo = or i32 %.0825, 1024
  br label %.backedge.backedge

bb.v:                                             ; preds = %.backedge
  %i.bp = icmp eq i8 %.1697, 0
  br i1 %i.bp, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bq = call ptr @localeconv() #8               ; 3 uses
  %.not920 = icmp eq ptr %i.bq, null
  br i1 %.not920, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !51 ; 2 uses
  %.not921 = icmp eq ptr %i.br, null
  br i1 %.not921, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !40  ; 2 uses
  %.not922 = icmp eq i8 %i.bs, 0
  %spec.select1022 = select i1 %.not922, i8 46, i8 %i.bs
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2698 = phi i8 [ 46, %bb.x ], [ %spec.select1022, %bb.y ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !52 ; 2 uses
  %.not923 = icmp eq ptr %i.bu, null
  br i1 %.not923, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !40  ; 2 uses
  %.not924 = icmp eq i8 %i.bv, 0
  %spec.select1023 = select i1 %.not924, i8 %.1690, i8 %i.bv
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.z, %bb.v
  %.3699 = phi i8 [ %.1697, %bb.v ], [ %.2698, %bb.aa ], [ %.2698, %bb.z ], [ 46, %bb.w ]
  %.2691 = phi i8 [ %.1690, %bb.v ], [ %spec.select1023, %bb.aa ], [ %.1690, %bb.z ], [ %.1690, %bb.w ] ; 2 uses
  %.not925 = icmp eq i8 %.2691, 0
  %i.bw = or i32 %.0825, 2048
  %spec.select1024 = select i1 %.not925, i32 %.0825, i32 %i.bw
  br label %.backedge.backedge

bb.ac:                                            ; preds = %.backedge
  %i.bx = add nsw i32 %.0759, 1                   ; 4 uses
  %i.by = icmp eq i32 %.0759, 0
  br i1 %i.by, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.bz = load i8, ptr %i.ag, align 1, !tbaa !40  ; 2 uses
  %.not918 = icmp eq i8 %i.bz, 46
  %spec.select1025 = select i1 %.not918, i32 %.0740, i32 0
  br label %thread-pre-split

bb.ae:                                            ; preds = %bb.ac
  %i.ca = icmp eq i32 %i.bx, 2
  %.pr.pre = load i8, ptr %i.ag, align 1, !tbaa !40 ; 6 uses
  br i1 %i.ca, label %bb.af, label %thread-pre-split

bb.af:                                            ; preds = %bb.ae
  %i.cb = sext i8 %.pr.pre to i32                 ; 3 uses
  switch i8 %.pr.pre, label %bb.ag [
    i8 99, label %.backedge.backedge
    i8 115, label %.backedge.backedge
    i8 0, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %.lr.ph, %bb.h, %bb.au, %bb.as, %bb.ap, %bb.ao, %bb.aq, %.fold.split, %.loopexit1156, %bb.af, %bb.af, %bb.af, %bb.l, %bb.p, %bb.o, %bb.n, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.ab, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %.thread1127, %bb.ai
  %.0852.be = phi i32 [ %.0852, %bb.ba ], [ %.0852, %bb.au ], [ %.0852, %bb.q ], [ %.0852, %bb.r ], [ %.0852, %bb.s ], [ %.0852, %bb.t ], [ %.0852, %bb.u ], [ %.0852, %bb.ab ], [ 0, %bb.af ], [ %.1853, %.thread1127 ], [ %.0852, %bb.l ], [ %i.cb, %bb.ai ], [ %.5857, %.fold.split ], [ %.0852, %bb.av ], [ %.0852, %bb.aw ], [ %.0852, %bb.ax ], [ %.0852, %bb.ay ], [ %.0852, %bb.az ], [ %.0852, %bb.n ], [ %.0852, %bb.o ], [ %.0852, %bb.p ], [ 0, %bb.af ], [ %.5857, %bb.ap ], [ %.5857, %bb.ao ], [ %.5857, %.loopexit1156 ], [ %.2, %bb.aq ], [ %.0852, %bb.h ], [ %.0852, %bb.as ], [ 0, %bb.af ], [ %.0852, %.lr.ph ]
  %.0825.be = phi i32 [ %i.fa, %bb.ba ], [ %i.dr, %bb.au ], [ %i.bf, %bb.q ], [ %spec.select, %bb.r ], [ %spec.select1021, %bb.s ], [ %i.bn, %bb.t ], [ %i.bo, %bb.u ], [ %spec.select1024, %bb.ab ], [ %.0825, %bb.af ], [ %.0825, %.thread1127 ], [ %.0825, %bb.l ], [ %.0825, %bb.ai ], [ %.0825, %.fold.split ], [ %.5830, %bb.av ], [ %.6831, %bb.aw ], [ %i.eu, %bb.ax ], [ %i.ew, %bb.ay ], [ %i.ey, %bb.az ], [ %.0825, %bb.n ], [ %.0825, %bb.o ], [ %.0825, %bb.p ], [ %.0825, %bb.af ], [ %i.dp, %bb.ap ], [ %.0825, %bb.ao ], [ %.0825, %.loopexit1156 ], [ %.0825, %bb.aq ], [ %.0825, %bb.h ], [ %i.dr, %bb.as ], [ %.0825, %bb.af ], [ %i.dr, %.lr.ph ]
  %.0759.be = phi i32 [ %.0759, %bb.ba ], [ %.0759, %bb.au ], [ %.0759, %bb.q ], [ %.0759, %bb.r ], [ %.0759, %bb.s ], [ %.0759, %bb.t ], [ %.0759, %bb.u ], [ %.0759, %bb.ab ], [ 2, %bb.af ], [ %i.bx, %.thread1127 ], [ %.0759, %bb.l ], [ 2, %bb.ai ], [ %.3762, %.fold.split ], [ %.0759, %bb.av ], [ %.0759, %bb.aw ], [ %.0759, %bb.ax ], [ %.0759, %bb.ay ], [ %.0759, %bb.az ], [ %.0759, %bb.n ], [ %.0759, %bb.o ], [ %.0759, %bb.p ], [ 2, %bb.af ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ %.3762, %.loopexit1156 ], [ %.3762, %bb.aq ], [ %.0759, %bb.h ], [ %.0759, %bb.as ], [ 2, %bb.af ], [ %.0759, %.lr.ph ]
  %.0756.be = phi i32 [ %.0756, %bb.ba ], [ %.0756, %bb.au ], [ %.0756, %bb.q ], [ %.0756, %bb.r ], [ %.0756, %bb.s ], [ %.0756, %bb.t ], [ %.0756, %bb.u ], [ %.0756, %bb.ab ], [ %.0756, %bb.af ], [ %.0756, %.thread1127 ], [ %.0756, %bb.l ], [ %.0756, %bb.ai ], [ %.0756, %.fold.split ], [ %.0756, %bb.av ], [ %.0756, %bb.aw ], [ %.0756, %bb.ax ], [ %.0756, %bb.ay ], [ %.0756, %bb.az ], [ %.0756, %bb.n ], [ %.0756, %bb.o ], [ %.0756, %bb.p ], [ %.0756, %bb.af ], [ %i.dn, %bb.ap ], [ %.2, %bb.ao ], [ %.0756, %.loopexit1156 ], [ %.0756, %bb.aq ], [ %.0756, %bb.h ], [ %.0756, %bb.as ], [ %.0756, %bb.af ], [ %.0756, %.lr.ph ]
  %.0740.be = phi i32 [ %.0740, %bb.ba ], [ %.0740, %bb.au ], [ %.0740, %bb.q ], [ %.0740, %bb.r ], [ %.0740, %bb.s ], [ %.0740, %bb.t ], [ %.0740, %bb.u ], [ %.0740, %bb.ab ], [ %.0740, %bb.af ], [ %.1741, %.thread1127 ], [ %.0740, %bb.l ], [ %.0740, %bb.ai ], [ %.5745, %.fold.split ], [ %.0740, %bb.av ], [ %.0740, %bb.aw ], [ %.0740, %bb.ax ], [ %.0740, %bb.ay ], [ %.0740, %bb.az ], [ %.0740, %bb.n ], [ %.0740, %bb.o ], [ %.0740, %bb.p ], [ %.0740, %bb.af ], [ %.5745, %bb.ap ], [ %.5745, %bb.ao ], [ %.2, %.loopexit1156 ], [ %.5745, %bb.aq ], [ %.0740, %bb.h ], [ %.0740, %bb.as ], [ %.0740, %bb.af ], [ %.0740, %.lr.ph ]
  %.0723.be = phi i32 [ %.0723, %bb.ba ], [ %i.ei, %bb.au ], [ %.0723, %bb.q ], [ %.0723, %bb.r ], [ %.0723, %bb.s ], [ %.0723, %bb.t ], [ %.0723, %bb.u ], [ %.0723, %bb.ab ], [ %.0723, %bb.af ], [ %.0723, %.thread1127 ], [ %.0723, %bb.l ], [ %.0723, %bb.ai ], [ %.2725, %.fold.split ], [ %.0723, %bb.av ], [ %.0723, %bb.aw ], [ %.0723, %bb.ax ], [ %.0723, %bb.ay ], [ %.0723, %bb.az ], [ %i.aw, %bb.n ], [ %i.aw, %bb.o ], [ %i.aw, %bb.p ], [ %.0723, %bb.af ], [ %.2725, %bb.ap ], [ %.2725, %bb.ao ], [ %.2725, %.loopexit1156 ], [ %.2725, %bb.aq ], [ %.0723, %bb.h ], [ %.0723, %bb.as ], [ %.0723, %bb.af ], [ %.3726, %.lr.ph ]
  %.0717.be = phi i64 [ -1, %bb.ba ], [ %i.ek, %bb.au ], [ %.0717, %bb.q ], [ %.0717, %bb.r ], [ %.0717, %bb.s ], [ %.0717, %bb.t ], [ %.0717, %bb.u ], [ %.0717, %bb.ab ], [ %.0717, %bb.af ], [ %.0717, %.thread1127 ], [ %.0717, %bb.l ], [ %.0717, %bb.ai ], [ %.0717, %.fold.split ], [ -1, %bb.av ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.az ], [ %.0717, %bb.n ], [ %.0717, %bb.o ], [ %.0717, %bb.p ], [ %.0717, %bb.af ], [ %.0717, %bb.ap ], [ %.0717, %bb.ao ], [ %.0717, %.loopexit1156 ], [ %.0717, %bb.aq ], [ %.0717, %bb.h ], [ 0, %bb.as ], [ %.0717, %bb.af ], [ %i.dx, %.lr.ph ]
  %.0713.be = phi ptr [ %.0713, %bb.ba ], [ %.0713, %bb.au ], [ %.0713, %bb.q ], [ %.0713, %bb.r ], [ %.0713, %bb.s ], [ %.0713, %bb.t ], [ %.0713, %bb.u ], [ %.0713, %bb.ab ], [ %.0713, %bb.af ], [ %.0713, %.thread1127 ], [ %i.ag, %bb.l ], [ %.0713, %bb.ai ], [ %.0713, %.fold.split ], [ %.0713, %bb.av ], [ %.0713, %bb.aw ], [ %.0713, %bb.ax ], [ %.0713, %bb.ay ], [ %.0713, %bb.az ], [ null, %bb.n ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %.0713, %bb.af ], [ %.0713, %bb.ap ], [ %.0713, %bb.ao ], [ %.0713, %.loopexit1156 ], [ %.0713, %bb.aq ], [ null, %bb.h ], [ %.0713, %bb.as ], [ %.0713, %bb.af ], [ %.0713, %.lr.ph ]
  %.0711.be = phi i64 [ %.0711, %bb.ba ], [ %.0711, %bb.au ], [ %.0711, %bb.q ], [ %.0711, %bb.r ], [ %.0711, %bb.s ], [ %.0711, %bb.t ], [ %.0711, %bb.u ], [ %.0711, %bb.ab ], [ %.0711, %bb.af ], [ %.0711, %.thread1127 ], [ %i.at, %bb.l ], [ %.0711, %bb.ai ], [ %.0711, %.fold.split ], [ %.0711, %bb.av ], [ %.0711, %bb.aw ], [ %.0711, %bb.ax ], [ %.0711, %bb.ay ], [ %.0711, %bb.az ], [ %.0711, %bb.n ], [ %i.bb, %bb.o ], [ %i.bd, %bb.p ], [ %.0711, %bb.af ], [ %.0711, %bb.ap ], [ %.0711, %bb.ao ], [ %.0711, %.loopexit1156 ], [ %.0711, %bb.aq ], [ 0, %bb.h ], [ %.0711, %bb.as ], [ %.0711, %bb.af ], [ %.0711, %.lr.ph ]
  %.1707.be = phi i32 [ %.1707, %bb.ba ], [ %i.ei, %bb.au ], [ %.1707, %bb.q ], [ %.1707, %bb.r ], [ %.1707, %bb.s ], [ %.1707, %bb.t ], [ %.1707, %bb.u ], [ %.1707, %bb.ab ], [ %.1707, %bb.af ], [ %.1707, %.thread1127 ], [ %.1707, %bb.l ], [ %.1707, %bb.ai ], [ %.3709, %.fold.split ], [ %.1707, %bb.av ], [ %.1707, %bb.aw ], [ %.1707, %bb.ax ], [ %.1707, %bb.ay ], [ %.1707, %bb.az ], [ %i.au, %bb.n ], [ %i.au, %bb.o ], [ %i.au, %bb.p ], [ %.1707, %bb.af ], [ %.3709, %bb.ap ], [ %.3709, %bb.ao ], [ %.3709, %.loopexit1156 ], [ %.3709, %bb.aq ], [ %.1707, %bb.h ], [ %.1707, %bb.as ], [ %.1707, %bb.af ], [ %.1707, %.lr.ph ]
  %.1697.be = phi i8 [ %.1697, %bb.ba ], [ %.1697, %bb.au ], [ %.1697, %bb.q ], [ %.1697, %bb.r ], [ %.1697, %bb.s ], [ %.1697, %bb.t ], [ %.1697, %bb.u ], [ %.3699, %bb.ab ], [ %.1697, %bb.af ], [ %.1697, %.thread1127 ], [ %.1697, %bb.l ], [ %.1697, %bb.ai ], [ %.1697, %.fold.split ], [ %.1697, %bb.av ], [ %.1697, %bb.aw ], [ %.1697, %bb.ax ], [ %.1697, %bb.ay ], [ %.1697, %bb.az ], [ %.1697, %bb.n ], [ %.1697, %bb.o ], [ %.1697, %bb.p ], [ %.1697, %bb.af ], [ %.1697, %bb.ap ], [ %.1697, %bb.ao ], [ %.1697, %.loopexit1156 ], [ %.1697, %bb.aq ], [ %.1697, %bb.h ], [ %.1697, %bb.as ], [ %.1697, %bb.af ], [ %.1697, %.lr.ph ]
  %.1690.be = phi i8 [ %.1690, %bb.ba ], [ %.1690, %bb.au ], [ %.1690, %bb.q ], [ %.1690, %bb.r ], [ %.1690, %bb.s ], [ %.1690, %bb.t ], [ %.1690, %bb.u ], [ %.2691, %bb.ab ], [ %.1690, %bb.af ], [ %.1690, %.thread1127 ], [ %.1690, %bb.l ], [ %.1690, %bb.ai ], [ %.1690, %.fold.split ], [ %.1690, %bb.av ], [ %.1690, %bb.aw ], [ %.1690, %bb.ax ], [ %.1690, %bb.ay ], [ %.1690, %bb.az ], [ %.1690, %bb.n ], [ %.1690, %bb.o ], [ %.1690, %bb.p ], [ %.1690, %bb.af ], [ %.1690, %bb.ap ], [ %.1690, %bb.ao ], [ %.1690, %.loopexit1156 ], [ %.1690, %bb.aq ], [ %.1690, %bb.h ], [ %.1690, %bb.as ], [ %.1690, %bb.af ], [ %.1690, %.lr.ph ]
  %.2678.be = phi ptr [ %i.ag, %bb.ba ], [ %i.ee, %bb.au ], [ %i.ag, %bb.q ], [ %i.ag, %bb.r ], [ %i.ag, %bb.s ], [ %i.ag, %bb.t ], [ %i.ag, %bb.u ], [ %i.ag, %bb.ab ], [ %i.ag, %bb.af ], [ %i.ag, %.thread1127 ], [ %i.am, %bb.l ], [ %i.ci, %bb.ai ], [ %.7683, %.fold.split ], [ %.10686, %bb.av ], [ %.11687, %bb.aw ], [ %i.ag, %bb.ax ], [ %i.ag, %bb.ay ], [ %i.ag, %bb.az ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.am, %bb.p ], [ %i.ag, %bb.af ], [ %.7683, %bb.ap ], [ %.7683, %bb.ao ], [ %.7683, %.loopexit1156 ], [ %.7683, %bb.aq ], [ %i.ag, %bb.h ], [ %i.ag, %bb.as ], [ %i.ag, %bb.af ], [ %i.dy, %.lr.ph ]
  br label %.backedge

bb.ag:                                            ; preds = %bb.af
  %i.cc = and i32 %i.cb, -33
  %i.cd = add nsw i32 %i.cc, -65
  %i.ce = icmp ult i32 %i.cd, 26
  %i.cf = add nsw i32 %i.cb, -48
  %i.cg = icmp ult i32 %i.cf, 10
  %i.ch = select i1 %i.ce, i1 true, i1 %i.cg
  br i1 %i.ch, label %thread-pre-split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ci = getelementptr inbounds nuw i8, ptr %.2678, i64 2 ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !40
  switch i8 %i.cj, label %thread-pre-split [
    i8 99, label %bb.ai
    i8 115, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.ck = icmp eq i8 %.pr.pre, 42
  br i1 %i.ck, label %bb.ak, label %.backedge.backedge

thread-pre-split:                                 ; preds = %bb.ah, %bb.ae, %bb.ag, %bb.ad
  %i.cl = phi i8 [ %i.bz, %bb.ad ], [ %.pr.pre, %bb.ag ], [ %.pr.pre, %bb.ae ], [ %.pr.pre, %bb.ah ] ; 2 uses
  %.1853 = phi i32 [ %.0852, %bb.ad ], [ 0, %bb.ag ], [ %.0852, %bb.ae ], [ 0, %bb.ah ] ; 3 uses
  %.1741 = phi i32 [ %spec.select1025, %bb.ad ], [ %.0740, %bb.ag ], [ %.0740, %bb.ae ], [ %.0740, %bb.ah ] ; 3 uses
  %i.cm = sext i8 %i.cl to i32                    ; 2 uses
  %i.cn = add nsw i32 %i.cm, -48
  %i.co = icmp ult i32 %i.cn, 10
  br i1 %i.co, label %bb.aj, label %.thread1127

bb.aj:                                            ; preds = %thread-pre-split
  %i.cp = getelementptr inbounds nuw i8, ptr %.2678, i64 2
  br label %bb.an

.thread1127:                                      ; preds = %thread-pre-split
  %.not919 = icmp eq i8 %i.cl, 42
  br i1 %.not919, label %bb.ak, label %.backedge.backedge

bb.ak:                                            ; preds = %.thread1127, %bb.ai
  %.2854 = phi i32 [ %.1853, %.thread1127 ], [ 0, %bb.ai ]
  %.2742 = phi i32 [ %.1741, %.thread1127 ], [ %.0740, %bb.ai ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.2678, i64 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.backedge
  %.3855 = phi i32 [ %.2854, %bb.ak ], [ %.0852, %.backedge ]
  %.1760 = phi i32 [ %i.bx, %bb.ak ], [ %.0759, %.backedge ] ; 2 uses
  %.3743 = phi i32 [ %.2742, %bb.ak ], [ %.0740, %.backedge ]
  %.4680 = phi ptr [ %i.cq, %bb.ak ], [ %i.ag, %.backedge ]
  %i.cr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 400), align 16, !tbaa !53
  %i.cs = call ptr %i.cr(ptr noundef nonnull %.4680) #8 ; 2 uses
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !43
  store i32 46, ptr %i.k, align 8, !tbaa !47
  %i.ct = sext i32 %.1760 to i64
  store i64 %i.ct, ptr %i.l, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.cu = load ptr, ptr %1, align 8, !tbaa !48
  %i.cv = call i32 %i.cu(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cx = add nsw i32 %.1707, 1                   ; 2 uses
  %i.cy = load i32, ptr %2, align 16, !tbaa !40
  br label %.loopexit1156

bb.an:                                            ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %bb.aj
  %.4856 = phi i32 [ %.1853, %bb.aj ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ] ; 2 uses
  %.0843 = phi i32 [ %i.cm, %bb.aj ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ]
  %.2761 = phi i32 [ %i.bx, %bb.aj ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ] ; 2 uses
  %.4744 = phi i32 [ %.1741, %bb.aj ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ] ; 2 uses
  %.5681 = phi ptr [ %i.cp, %bb.aj ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ] ; 3 uses
  %i.cz = add nsw i32 %.0843, -48                 ; 2 uses
  %i.da = load i8, ptr %.5681, align 1, !tbaa !40
  %i.db = sext i8 %i.da to i32
  %i.dc = add nsw i32 %i.db, -48                  ; 2 uses
  %i.dd = icmp ult i32 %i.dc, 10
  br i1 %i.dd, label %.lr.ph1272, label %.loopexit1156

.lr.ph1272:                                       ; preds = %bb.an, %.lr.ph1272
  %i.de = phi i32 [ %i.dk, %.lr.ph1272 ], [ %i.dc, %bb.an ]
  %.11271 = phi i32 [ %i.dg, %.lr.ph1272 ], [ %i.cz, %bb.an ]
  %.66821270 = phi ptr [ %i.dh, %.lr.ph1272 ], [ %.5681, %bb.an ]
  %i.df = mul nsw i32 %.11271, 10
  %i.dg = add nsw i32 %i.de, %i.df                ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.66821270, i64 1 ; 3 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !40
  %i.dj = sext i8 %i.di to i32
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %i.dl = icmp ult i32 %i.dk, 10
  br i1 %i.dl, label %.lr.ph1272, label %.loopexit1156, !llvm.loop !9

.loopexit1156:                                    ; preds = %.lr.ph1272, %bb.an, %bb.am
  %.5857 = phi i32 [ %.3855, %bb.am ], [ %.4856, %bb.an ], [ %.4856, %.lr.ph1272 ] ; 4 uses
  %.3762 = phi i32 [ %.1760, %bb.am ], [ %.2761, %bb.an ], [ %.2761, %.lr.ph1272 ] ; 4 uses
  %.5745 = phi i32 [ %.3743, %bb.am ], [ %.4744, %bb.an ], [ %.4744, %.lr.ph1272 ] ; 4 uses
  %.2725 = phi i32 [ %i.cx, %bb.am ], [ %.0723, %bb.an ], [ %.0723, %.lr.ph1272 ] ; 5 uses
  %.3709 = phi i32 [ %i.cx, %bb.am ], [ %.1707, %bb.an ], [ %.1707, %.lr.ph1272 ] ; 5 uses
  %.7683 = phi ptr [ %i.cs, %bb.am ], [ %.5681, %bb.an ], [ %i.dh, %.lr.ph1272 ] ; 5 uses
  %.2 = phi i32 [ %i.cy, %bb.am ], [ %i.cz, %bb.an ], [ %i.dg, %.lr.ph1272 ] ; 5 uses
  switch i32 %.3762, label %.fold.split [
    i32 0, label %bb.ao
    i32 1, label %.backedge.backedge
    i32 2, label %bb.aq
  ]

bb.ao:                                            ; preds = %.loopexit1156
  %i.dm = icmp slt i32 %.2, 0
  br i1 %i.dm, label %bb.ap, label %.backedge.backedge

bb.ap:                                            ; preds = %bb.ao
  %i.dn = sub nsw i32 0, %.2
  %i.do = and i32 %.0825, -577
  %i.dp = or disjoint i32 %i.do, 64
  br label %.backedge.backedge

bb.aq:                                            ; preds = %.loopexit1156
  br label %.backedge.backedge

.fold.split:                                      ; preds = %.loopexit1156
  br label %.backedge.backedge

bb.ar:                                            ; preds = %.backedge
  %i.dq = and i32 %.0825, -1695801
  %i.dr = or disjoint i32 %i.dq, 524288           ; 3 uses
  %i.ds = load i8, ptr %i.ag, align 1, !tbaa !40  ; 2 uses
  %3 = sext i8 %i.ds to i32
  %4 = add nsw i32 %3, -48                        ; 2 uses
  %i.dt = icmp ult i32 %4, 10
  br i1 %i.dt, label %.lr.ph, label %bb.as

.lr.ph:                                           ; preds = %bb.ar, %.lr.ph
  %i.du = phi i32 [ %i.dz, %.lr.ph ], [ %4, %bb.ar ]
  %.86841267 = phi ptr [ %i.dy, %.lr.ph ], [ %i.ag, %bb.ar ]
  %.17181266 = phi i64 [ %i.dx, %.lr.ph ], [ 0, %bb.ar ]
  %i.dv = mul nsw i64 %.17181266, 10
  %i.dw = zext nneg i32 %i.du to i64
  %i.dx = add nsw i64 %i.dv, %i.dw                ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.86841267, i64 1 ; 3 uses
  %.3726.in = load i8, ptr %i.dy, align 1, !tbaa !40
  %.3726 = sext i8 %.3726.in to i32               ; 2 uses
  %i.dz = add nsw i32 %.3726, -48                 ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 10
  br i1 %i.ea, label %.lr.ph, label %.backedge.backedge, !llvm.loop !10

bb.as:                                            ; preds = %bb.ar
  %i.eb = icmp eq i8 %i.ds, 42
  br i1 %i.eb, label %bb.at, label %.backedge.backedge

bb.at:                                            ; preds = %bb.as
  %i.ec = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 400), align 16, !tbaa !53
  %i.ed = getelementptr inbounds nuw i8, ptr %.2678, i64 2
  %i.ee = call ptr %i.ec(ptr noundef nonnull %i.ed) #8 ; 2 uses
  store ptr %i.ee, ptr %i.i, align 8, !tbaa !43
  store i32 73, ptr %i.k, align 8, !tbaa !47
  store i64 4, ptr %i.l, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.ef = load ptr, ptr %1, align 8, !tbaa !48
  %i.eg = call i32 %i.ef(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.eh = icmp slt i32 %i.eg, 0
  br i1 %i.eh, label %.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = add nsw i32 %.1707, 1                   ; 2 uses
  %i.ej = load i32, ptr %2, align 16, !tbaa !40
  %i.ek = sext i32 %i.ej to i64
  br label %.backedge.backedge

bb.av:                                            ; preds = %.backedge
  %i.el = and i32 %.0825, -1695801
  %i.em = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.en = icmp eq i8 %i.em, 108                   ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.2678, i64 2
  %.5830.v = select i1 %i.en, i32 32768, i32 16384
  %.5830 = or disjoint i32 %.5830.v, %i.el
  %.10686 = select i1 %i.en, ptr %i.eo, ptr %i.ag
  br label %.backedge.backedge

bb.aw:                                            ; preds = %.backedge
  %i.ep = and i32 %.0825, -1695801
  %i.eq = load i8, ptr %i.ag, align 1, !tbaa !40
  %i.er = icmp eq i8 %i.eq, 104                   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.2678, i64 2
  %.6831.v = select i1 %i.er, i32 8, i32 8192
  %.6831 = or disjoint i32 %.6831.v, %i.ep
  %.11687 = select i1 %i.er, ptr %i.es, ptr %i.ag
  br label %.backedge.backedge

bb.ax:                                            ; preds = %.backedge
  %i.et = and i32 %.0825, -1695801
  %i.eu = or disjoint i32 %i.et, 65536
  br label %.backedge.backedge

bb.ay:                                            ; preds = %.backedge
  %i.ev = and i32 %.0825, -1695801
  %i.ew = or disjoint i32 %i.ev, 1048576
  br label %.backedge.backedge

bb.az:                                            ; preds = %.backedge
  %i.ex = and i32 %.0825, -1695801
  %i.ey = or disjoint i32 %i.ex, 32
  br label %.backedge.backedge

bb.ba:                                            ; preds = %.backedge
  %i.ez = and i32 %.0825, -1695801
  %i.fa = or disjoint i32 %i.ez, 16
  br label %.backedge.backedge

bb.bb:                                            ; preds = %.backedge
  %i.fb = and i32 %.0825, 1171512
  %.not931 = icmp eq i32 %i.fb, 0
  br i1 %.not931, label %bb.bk, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fc = sext i8 %i.ah to i64
  %i.fd = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 920), i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !40
  %i.ff = zext i8 %i.fe to i32                    ; 2 uses
  %i.fg = and i32 %i.ff, 3
  %.not932 = icmp eq i32 %i.fg, 0
  br i1 %.not932, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.fh = and i32 %.0825, 49152
  %or.cond1026 = icmp eq i32 %i.fh, 0
  br i1 %or.cond1026, label %bb.be, label %bb.bk

bb.be:                                            ; preds = %bb.bd
  %i.fi = and i32 %.0825, 8192
  %.not938 = icmp eq i32 %i.fi, 0
  br i1 %.not938, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.fj = and i32 %.0825, 8
  %.not939 = icmp eq i32 %i.fj, 0
  br i1 %.not939, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.fk = and i32 %.0825, 1048576
  %.not940 = icmp eq i32 %i.fk, 0
  br i1 %.not940, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  %i.fl = and i32 %.0825, 48
  %i.fm = icmp eq i32 %i.fl, 0
  %i.fn = select i1 %i.fm, i64 -1, i64 8
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bc
  %i.fo = and i32 %i.ff, 4
  %.not933 = icmp eq i32 %i.fo, 0
  br i1 %.not933, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fp = and i32 %.0825, 65536
  %.not934 = icmp eq i32 %i.fp, 0
  %i.fq = and i32 %.0825, 49152
  %.not935 = icmp eq i32 %i.fq, 0
  %i.fr = select i1 %.not935, i64 -1, i64 8
  %i.fs = select i1 %.not934, i64 %i.fr, i64 16
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bd, %bb.be, %bb.bh, %bb.bg, %bb.bf, %bb.bj, %bb.bi, %bb.bb
  %.3720 = phi i64 [ %.0717, %bb.bb ], [ %i.fs, %bb.bj ], [ %.0717, %bb.bi ], [ 8, %bb.bd ], [ 8, %bb.bg ], [ 2, %bb.be ], [ 1, %bb.bf ], [ %i.fn, %bb.bh ]
  %i.ft = add nsw i32 %.1707, 1                   ; 10 uses
  store ptr %i.ag, ptr %i.i, align 8, !tbaa !43
  store i32 %i.ai, ptr %i.k, align 8, !tbaa !47
  store i64 %.3720, ptr %i.l, align 8, !tbaa !49
  %i.fu = and i32 %.0825, 2097144
  store i32 %i.fu, ptr %i.m, align 8, !tbaa !54
  store i32 %.0756, ptr %i.n, align 4, !tbaa !55
  store i32 %.0740, ptr %i.o, align 8, !tbaa !56
  store i32 %.0852, ptr %i.p, align 4, !tbaa !57
  store ptr %.0713, ptr %i.q, align 8, !tbaa !58
  store i64 %.0711, ptr %i.r, align 8, !tbaa !59
  %i.fv = load ptr, ptr %1, align 8, !tbaa !48
  %i.fw = call i32 %i.fv(ptr noundef nonnull %2, ptr noundef nonnull %1) #8 ; 3 uses
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.fy = icmp eq i32 %i.fw, 0
  br i1 %i.fy, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fz = load ptr, ptr %i.i, align 8, !tbaa !43  ; 10 uses
  %i.ga = load i32, ptr %i.k, align 8, !tbaa !47  ; 5 uses
  %i.gb = load i64, ptr %i.l, align 8, !tbaa !49  ; 4 uses
  %i.gc = and i32 %.0825, -2097145
  %i.gd = load i32, ptr %i.m, align 8, !tbaa !54  ; 11 uses
  %i.ge = and i32 %i.gd, 2097144
  %i.gf = or disjoint i32 %i.ge, %i.gc            ; 7 uses
  %i.gg = load i32, ptr %i.n, align 4, !tbaa !55  ; 8 uses
  %i.gh = load i32, ptr %i.o, align 8, !tbaa !56  ; 15 uses
  %i.gi = load i32, ptr %i.p, align 4, !tbaa !57  ; 9 uses
  switch i32 %i.ga, label %bb.bo [
    i32 115, label %bb.bp
    i32 99, label %bb.ch
    i32 112, label %bb.cu
    i32 111, label %bb.cv
    i32 88, label %bb.cw
    i32 120, label %bb.cx
    i32 105, label %bb.cz
    i32 117, label %bb.cy
    i32 100, label %bb.cz
    i32 103, label %bb.fk
    i32 71, label %bb.fk
    i32 101, label %bb.fk
    i32 69, label %bb.fk
    i32 102, label %bb.fk
  ]

bb.bn:                                            ; preds = %bb.bl
  %i.gj = add nuw nsw i32 %i.fw, %.0722
  br label %.backedge1189

.backedge1189:                                    ; preds = %bb.ic, %.thread1071, %.thread1065, %bb.hx, %bb.ib, %bb.ci, %bb.cj, %bb.bq, %bb.br, %bb.d, %.critedge, %bb.bn, %bb.bo, %bb.g
  %.0722.be = phi i32 [ %.0722, %.thread1071 ], [ %.0722, %bb.bo ], [ %.0722, %bb.g ], [ %.0722, %bb.d ], [ %.0722, %bb.hx ], [ %.0722, %bb.bq ], [ %.0722, %bb.ci ], [ %i.gj, %bb.bn ], [ %.0722, %.critedge ], [ %.0722, %bb.br ], [ %.0722, %bb.cj ], [ %.0722, %.thread1065 ], [ %.0722, %bb.ib ], [ %.0722, %bb.ic ]
  %.0706.be = phi i32 [ %i.ft, %.thread1071 ], [ %.1707, %bb.bo ], [ %.1707, %bb.g ], [ %.0706, %bb.d ], [ %i.ft, %bb.hx ], [ %i.ft, %bb.bq ], [ %i.ft, %bb.ci ], [ %i.ft, %bb.bn ], [ %.0706, %.critedge ], [ %i.ft, %bb.br ], [ %i.ft, %bb.cj ], [ %i.ft, %.thread1065 ], [ %i.ft, %bb.ib ], [ %i.ft, %bb.ic ]
  %.0696.be = phi i8 [ %.1697, %.thread1071 ], [ %.1697, %bb.bo ], [ %.1697, %bb.g ], [ %.0696, %bb.d ], [ %.97051116, %bb.hx ], [ %.1697, %bb.bq ], [ %.1697, %bb.ci ], [ %.1697, %bb.bn ], [ %.0696, %.critedge ], [ %.1697, %bb.br ], [ %.1697, %bb.cj ], [ %.1697, %.thread1065 ], [ %.97051116, %bb.ib ], [ %.97051116, %bb.ic ]
  %.0689.be = phi i8 [ %.1690, %.thread1071 ], [ %.1690, %bb.bo ], [ %.1690, %bb.g ], [ %.0689, %bb.d ], [ %.66951118, %bb.hx ], [ %.1690, %bb.bq ], [ %.1690, %bb.ci ], [ %.1690, %bb.bn ], [ %.0689, %.critedge ], [ %.1690, %bb.br ], [ %.1690, %bb.cj ], [ %.1690, %.thread1065 ], [ %.66951118, %bb.ib ], [ %.66951118, %bb.ic ]
  %.0676.be = phi ptr [ %i.fz, %.thread1071 ], [ %i.gk, %bb.bo ], [ %i.ag, %bb.g ], [ %i.ab, %bb.d ], [ %i.fz, %bb.hx ], [ %i.fz, %bb.bq ], [ %i.fz, %bb.ci ], [ %i.ag, %bb.bn ], [ %i.ab, %.critedge ], [ %i.fz, %bb.br ], [ %i.fz, %bb.cj ], [ %i.fz, %.thread1065 ], [ %i.fz, %bb.ib ], [ %i.fz, %bb.ic ]
  br label %bb.b, !llvm.loop !11

bb.bo:                                            ; preds = %bb.bm
  %i.gk = getelementptr inbounds i8, ptr %i.fz, i64 -1
  br label %.backedge1189

bb.bp:                                            ; preds = %bb.bm
  %i.gl = icmp sgt i32 %i.gi, -1
  %i.gm = load ptr, ptr %2, align 16, !tbaa !40   ; 4 uses
  %.not1013 = icmp eq ptr %i.gm, null             ; 2 uses
  br i1 %i.gl, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
end_hunk_0
begin_hunk_1_@sfprint:bb.a
bb.fa:                                            ; preds = %bb.ex
  %i.pc = icmp slt i32 %i.gg, 1
  %i.pd = and i32 %.138381086, 512
  %.not988 = icmp eq i32 %i.pd, 0
  %or.cond1037 = select i1 %i.pc, i1 true, i1 %.not988
  %.pre1468 = and i32 %.68491085, -33             ; 2 uses
  br i1 %or.cond1037, label %.loopexit1171, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %or.cond23 = icmp eq i32 %.pre1468, 88
  br i1 %or.cond23, label %bb.fe, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.pe = icmp slt i32 %.0759, 2
  br i1 %i.pe, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.pf = icmp slt i32 %.108621084, 10
  %i.pg = select i1 %i.pf, i32 2, i32 3
  br label %bb.fe

bb.fe:                                            ; preds = %bb.fc, %bb.fb, %bb.fd
  %.9732 = phi i32 [ %i.pg, %bb.fd ], [ 0, %bb.fb ], [ %i.gg, %bb.fc ] ; 2 uses
  %i.ph = and i32 %.138381086, 268435584
  %.not989 = icmp ne i32 %i.ph, 0
  %.neg1323 = sext i1 %.not989 to i32             ; 2 uses
  %i.pi = ptrtoint ptr %.0785 to i64              ; 2 uses
  %i.pj = ptrtoint ptr %.14816 to i64             ; 2 uses
  %.neg1321 = sub i64 %i.pj, %i.pi
  %.neg1322 = trunc i64 %.neg1321 to i32
  %.neg1139 = add nsw i32 %i.gg, %.neg1323
  %.neg1140 = add i32 %.neg1139, %.neg1322
  %i.pk = sub i32 %.neg1140, %.9732               ; 2 uses
  %i.pl = icmp sgt i32 %i.pk, 0
  br i1 %i.pl, label %.lr.ph1301.preheader, label %.loopexit1171

.lr.ph1301.preheader:                             ; preds = %bb.fe
  %scevgep1448 = getelementptr i8, ptr %.14816, i64 -1
  %i.pm = add nsw i32 %i.gg, -1
  %i.pn = add nsw i32 %i.pm, %.neg1323
  %i.po = trunc i64 %i.pj to i32
  %i.pp = add i32 %i.pn, %i.po
  %i.pq = trunc i64 %i.pi to i32
  %i.pr = add i32 %.9732, %i.pq
  %i.ps = sub i32 %i.pp, %i.pr
  %i.pt = zext i32 %i.ps to i64
  %i.pu = sub nsw i64 0, %i.pt
  %scevgep1449 = getelementptr i8, ptr %scevgep1448, i64 %i.pu ; 2 uses
  %i.pv = zext nneg i32 %i.pk to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep1449, i8 48, i64 %i.pv, i1 false), !tbaa !40
  br label %.loopexit1171

.loopexit1171:                                    ; preds = %bb.fa, %.lr.ph1301.preheader, %bb.fe
  %.16818 = phi ptr [ %.14816, %bb.fe ], [ %scevgep1449, %.lr.ph1301.preheader ], [ %.14816, %bb.fa ] ; 7 uses
  %or.cond25 = icmp eq i32 %.pre1468, 88
  br i1 %or.cond25, label %bb.ff, label %bb.fg

bb.ff:                                            ; preds = %.loopexit1171
  %i.pw = trunc nuw nsw i32 %.68491085 to i8
  %i.px = getelementptr inbounds i8, ptr %.16818, i64 -1
  store i8 %i.pw, ptr %i.px, align 1, !tbaa !40
  %i.py = getelementptr inbounds i8, ptr %.16818, i64 -2 ; 2 uses
  store i8 48, ptr %i.py, align 1, !tbaa !40
  br label %.thread1093

bb.fg:                                            ; preds = %.loopexit1171
  %i.pz = icmp sgt i32 %.0759, 1
  br i1 %i.pz, label %bb.fh, label %.thread1093

bb.fh:                                            ; preds = %bb.fg
  %i.qa = getelementptr inbounds i8, ptr %.16818, i64 -1
  store i8 35, ptr %i.qa, align 1, !tbaa !40
  %i.qb = icmp slt i32 %.108621084, 10
  br i1 %i.qb, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.qc = trunc i32 %.108621084 to i8
  %i.qd = add i8 %i.qc, 48
  %i.qe = getelementptr inbounds i8, ptr %.16818, i64 -2 ; 2 uses
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !40
  br label %.thread1093

bb.fj:                                            ; preds = %bb.fh
  %i.qf = shl nuw i32 %.108621084, 1
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 192), i64 %i.qg ; 2 uses
  %i.qi = getelementptr i8, ptr %i.qh, i64 1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !40
  %i.qk = getelementptr inbounds i8, ptr %.16818, i64 -2
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !40
  %i.ql = load i8, ptr %i.qh, align 2, !tbaa !40
  %i.qm = getelementptr inbounds i8, ptr %.16818, i64 -3 ; 2 uses
  store i8 %i.ql, ptr %i.qm, align 1, !tbaa !40
  br label %.thread1093

bb.fk:                                            ; preds = %bb.bm, %bb.bm, %bb.bm, %bb.bm, %bb.bm
  %i.qn = and i32 %i.gd, 131072
  %i.qo = icmp eq i32 %i.qn, 0
  %i.qp = icmp eq i64 %i.gb, 8
  %i.qq = icmp eq i64 %i.gb, 64
  %i.qr = or i1 %i.qp, %i.qq
  %or.cond1038 = select i1 %i.qo, i1 true, i1 %i.qr
  %i.qs = load float, ptr %2, align 16
  %i.qt = fpext float %i.qs to double
  %i.qu = load double, ptr %2, align 16
  %storemerge = select i1 %or.cond1038, double %i.qu, double %i.qt
  store double %storemerge, ptr %i.c, align 8, !tbaa !65
  %i.qv = and i32 %i.ga, -33
  %i.qw = icmp slt i32 %i.gh, 0                   ; 3 uses
  switch i32 %i.qv, label %bb.fn [
    i32 69, label %bb.fl
    i32 70, label %bb.fm
  ]

bb.fl:                                            ; preds = %bb.fk
  %i.qx = select i1 %i.qw, i32 6, i32 %i.gh       ; 2 uses
  %i.qy = call i32 @llvm.smin.i32(i32 %i.qx, i32 255)
  %i.qz = add nsw i32 %i.qy, 1
  %i.ra = call ptr @_sfcvt(ptr noundef nonnull %i.c, i32 noundef %i.qz, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 134217728) #8
  br label %bb.fw

bb.fm:                                            ; preds = %bb.fk
  %i.rb = select i1 %i.qw, i32 6, i32 %i.gh       ; 2 uses
  %i.rc = call noundef i32 @llvm.smin.i32(i32 %i.rb, i32 256)
  %i.rd = call ptr @_sfcvt(ptr noundef nonnull %i.c, i32 noundef %i.rc, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 0) #8
  br label %bb.gl

bb.fn:                                            ; preds = %bb.fk
  %i.re = call i32 @llvm.umax.i32(i32 %i.gh, i32 1)
  %i.rf = select i1 %i.qw, i32 6, i32 %i.re       ; 4 uses
  %i.rg = call noundef i32 @llvm.smin.i32(i32 %i.rf, i32 256)
  %i.rh = call ptr @_sfcvt(ptr noundef nonnull %i.c, i32 noundef %i.rg, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a, i32 noundef 134217728) #8 ; 5 uses
  %i.ri = load double, ptr %i.c, align 8, !tbaa !65
  %i.rj = fcmp oeq double %i.ri, 0.000000e+00
  br i1 %i.rj, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  store i32 1, ptr %i.b, align 4, !tbaa !66
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fn
  %i.rk = load i8, ptr %i.rh, align 1, !tbaa !40
  %i.rl = icmp eq i8 %i.rk, 73
  br i1 %i.rl, label %bb.gm, label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  %i.rm = and i32 %i.gd, 1024
  %.not943 = icmp eq i32 %i.rm, 0
  br i1 %.not943, label %bb.fr, label %.critedge35

bb.fr:                                            ; preds = %bb.fq
  %i.rn = call i64 @sfslen() #8
  %i.ro = trunc i64 %i.rn to i32
  %spec.select1039 = call i32 @llvm.smin.i32(i32 %i.rf, i32 %i.ro) ; 4 uses
  %smin1437 = call i32 @llvm.smin.i32(i32 %spec.select1039, i32 1) ; 2 uses
  %i.rp = icmp sgt i32 %spec.select1039, 1
  br i1 %i.rp, label %.lr.ph1762, label %.critedge35

.lr.ph1762:                                       ; preds = %bb.fr
  %i.rq = zext nneg i32 %spec.select1039 to i64
  br label %bb.ft

bb.fs:                                            ; preds = %bb.ft
  %i.rr = trunc nuw i64 %i.ru to i32              ; 2 uses
  %i.rs = icmp sgt i32 %i.rr, 1
  br i1 %i.rs, label %bb.ft, label %.critedge35, !llvm.loop !27

bb.ft:                                            ; preds = %.lr.ph1762, %bb.fs
  %i.rt = phi i32 [ %spec.select1039, %.lr.ph1762 ], [ %i.rr, %bb.fs ]
  %indvars.iv1760 = phi i64 [ %i.rq, %.lr.ph1762 ], [ %i.ru, %bb.fs ]
  %i.ru = add nsw i64 %indvars.iv1760, -1         ; 3 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.ru
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !40
  %i.rx = icmp eq i8 %i.rw, 48
  br i1 %i.rx, label %bb.fs, label %..critedge35.loopexit_crit_edge1763, !llvm.loop !27

..critedge35.loopexit_crit_edge1763:              ; preds = %bb.ft
  br label %.critedge35, !llvm.loop !27

.critedge35:                                      ; preds = %bb.fs, %bb.fr, %..critedge35.loopexit_crit_edge1763, %bb.fq
  %.13736 = phi i32 [ %i.rf, %bb.fq ], [ %smin1437, %bb.fr ], [ %i.rt, %..critedge35.loopexit_crit_edge1763 ], [ %smin1437, %bb.fs ] ; 2 uses
  %i.ry = load i32, ptr %i.b, align 4, !tbaa !66  ; 3 uses
  %i.rz = icmp slt i32 %i.ry, -3
  %i.sa = icmp sgt i32 %i.ry, %i.rf
  %or.cond1040 = or i1 %i.rz, %i.sa
  br i1 %or.cond1040, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %.critedge35
  %i.sb = add nsw i32 %.13736, -1
  br label %bb.fw

bb.fv:                                            ; preds = %.critedge35
  %i.sc = sub nsw i32 %.13736, %i.ry
  br label %bb.gl

bb.fw:                                            ; preds = %bb.fu, %bb.fl
  %.4771 = phi ptr [ %i.ra, %bb.fl ], [ %i.rh, %bb.fu ] ; 3 uses
  %.10750 = phi i32 [ %i.qx, %bb.fl ], [ %i.sb, %bb.fu ] ; 3 uses
  %i.sd = load i8, ptr %.4771, align 1, !tbaa !40 ; 3 uses
  %i.se = and i8 %i.sd, -33
  %5 = sext i8 %i.se to i32
  %6 = add nsw i32 %5, -65
  %i.sf = icmp ult i32 %6, 26
  br i1 %i.sf, label %bb.gm, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %.not957 = icmp ne i8 %i.sd, 0                  ; 2 uses
  %spec.select1041.idx = zext i1 %.not957 to i64
  %spec.select1041 = getelementptr inbounds nuw i8, ptr %.4771, i64 %spec.select1041.idx ; 2 uses
  %spec.select1042 = select i1 %.not957, i8 %i.sd, i8 48
  store i8 %spec.select1042, ptr %.ptr953, align 1, !tbaa !40
  %i.sg = icmp eq i8 %.1697, 0
  br i1 %i.sg, label %bb.fy, label %bb.gd

bb.fy:                                            ; preds = %bb.fx
  %i.sh = call ptr @localeconv() #8               ; 3 uses
  %.not958 = icmp eq ptr %i.sh, null
  br i1 %.not958, label %bb.gd, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !51 ; 2 uses
  %.not959 = icmp eq ptr %i.si, null
  br i1 %.not959, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.sj = load i8, ptr %i.si, align 1, !tbaa !40  ; 2 uses
  %.not960 = icmp eq i8 %i.sj, 0
  %spec.select1043 = select i1 %.not960, i8 46, i8 %i.sj
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fz
  %.4700 = phi i8 [ 46, %bb.fz ], [ %spec.select1043, %bb.ga ] ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8, !tbaa !52 ; 2 uses
  %.not961 = icmp eq ptr %i.sl, null
  br i1 %.not961, label %bb.gd, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !40  ; 2 uses
  %.not962 = icmp eq i8 %i.sm, 0
  %spec.select1044 = select i1 %.not962, i8 %.1690, i8 %i.sm
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.fy, %bb.gb, %bb.fx
  %.5701 = phi i8 [ %.1697, %bb.fx ], [ %.4700, %bb.gc ], [ %.4700, %bb.gb ], [ 46, %bb.fy ] ; 2 uses
  %.3692 = phi i8 [ %.1690, %bb.fx ], [ %spec.select1044, %bb.gc ], [ %.1690, %bb.gb ], [ %.1690, %bb.fy ]
  %i.sn = icmp slt i32 %.10750, 1
  %i.so = and i32 %i.gd, 1024
  %.not963 = icmp eq i32 %i.so, 0
  %or.cond1045 = select i1 %i.sn, i1 %.not963, i1 false
  br i1 %or.cond1045, label %bb.gf, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  store i8 %.5701, ptr %i.s, align 2, !tbaa !40
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge
  %.1786 = phi ptr [ %i.t, %bb.ge ], [ %i.s, %bb.gd ] ; 2 uses
  %i.sp = sext i32 %.10750 to i64
  %i.sq = getelementptr inbounds i8, ptr %spec.select1041, i64 %i.sp
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gg, %bb.gf
  %.2787 = phi ptr [ %.1786, %bb.gf ], [ %i.st, %bb.gg ] ; 4 uses
  %.6773 = phi ptr [ %spec.select1041, %bb.gf ], [ %i.sr, %bb.gg ] ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.6773, i64 1 ; 2 uses
  %i.ss = load i8, ptr %.6773, align 1, !tbaa !40 ; 2 uses
  %i.st = getelementptr inbounds nuw i8, ptr %.2787, i64 1
  store i8 %i.ss, ptr %.2787, align 1, !tbaa !40
  %i.su = icmp ne i8 %i.ss, 0
  %i.sv = icmp ule ptr %i.sr, %i.sq
  %i.sw = select i1 %i.su, i1 %i.sv, i1 false
  br i1 %i.sw, label %bb.gg, label %bb.gh, !llvm.loop !28

bb.gh:                                            ; preds = %bb.gg
  %i.sx = ptrtoint ptr %.2787 to i64
  %i.sy = ptrtoint ptr %.1786 to i64
  %.neg964 = sub i64 %i.sy, %i.sx
  %i.sz = trunc i64 %.neg964 to i32
  %i.ta = add i32 %.10750, %i.sz
  %i.tb = load double, ptr %i.c, align 8, !tbaa !65
  %i.tc = fcmp oeq double %i.tb, 0.000000e+00     ; 2 uses
  br i1 %i.tc, label %.loopexit1182, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.td = load i32, ptr %i.b, align 4, !tbaa !66  ; 3 uses
  %i.te = add nsw i32 %i.td, -1
  %i.tf = icmp slt i32 %i.td, 1
  %i.tg = sub nsw i32 1, %i.td
  %spec.select1046 = select i1 %i.tf, i32 %i.tg, i32 %i.te ; 3 uses
  %i.th = icmp sgt i32 %spec.select1046, 9
  br i1 %i.th, label %.lr.ph1286, label %.loopexit1182

.lr.ph1286:                                       ; preds = %bb.gi, %.lr.ph1286
  %.157381285 = phi i32 [ %i.ti, %.lr.ph1286 ], [ %spec.select1046, %bb.gi ] ; 3 uses
  %.77741284 = phi ptr [ %i.tm, %.lr.ph1286 ], [ %.ptr982, %bb.gi ]
  %i.ti = udiv i32 %.157381285, 10                ; 3 uses
  %.neg965 = mul i32 %i.ti, 246
  %i.tj = add i32 %.neg965, %.157381285
  %i.tk = trunc i32 %i.tj to i8
  %i.tl = add i8 %i.tk, 48
  %i.tm = getelementptr inbounds i8, ptr %.77741284, i64 -1 ; 3 uses
  store i8 %i.tl, ptr %i.tm, align 1, !tbaa !40
  %i.tn = icmp samesign ugt i32 %.157381285, 99
  br i1 %i.tn, label %.lr.ph1286, label %.loopexit1182, !llvm.loop !29

.loopexit1182:                                    ; preds = %.lr.ph1286, %bb.gi, %bb.gh
  %.8775 = phi ptr [ %.ptr982, %bb.gh ], [ %.ptr982, %bb.gi ], [ %i.tm, %.lr.ph1286 ] ; 3 uses
  %.16739 = phi i32 [ 0, %bb.gh ], [ %spec.select1046, %bb.gi ], [ %i.ti, %.lr.ph1286 ]
  %i.to = trunc i32 %.16739 to i8
  %i.tp = add i8 %i.to, 48
  %i.tq = getelementptr inbounds i8, ptr %.8775, i64 -1 ; 2 uses
  store i8 %i.tp, ptr %i.tq, align 1, !tbaa !40
  %i.tr = ptrtoint ptr %i.tq to i64
  %i.ts = sub i64 %i.u, %i.tr
  %i.tt = icmp slt i64 %i.ts, 2
  br i1 %i.tt, label %bb.gj, label %bb.gk

bb.gj:                                            ; preds = %.loopexit1182
  %i.tu = getelementptr inbounds i8, ptr %.8775, i64 -2
  store i8 48, ptr %i.tu, align 1, !tbaa !40
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %.loopexit1182
  %i.tv = phi i64 [ -2, %bb.gj ], [ -1, %.loopexit1182 ]
  %i.tw = getelementptr inbounds i8, ptr %.8775, i64 %i.tv ; 2 uses
  %i.tx = load i32, ptr %i.b, align 4, !tbaa !66
  %i.ty = icmp sgt i32 %i.tx, 0
  %i.tz = or i1 %i.ty, %i.tc
  %i.ua = select i1 %i.tz, i8 43, i8 45
  %i.ub = getelementptr inbounds i8, ptr %i.tw, i64 -1
  store i8 %i.ua, ptr %i.ub, align 1, !tbaa !40
  %i.uc = add i32 %i.ga, -65
  %i.ud = icmp ult i32 %i.uc, 26
  %i.ue = select i1 %i.ud, i8 69, i8 101
  %i.uf = getelementptr inbounds i8, ptr %i.tw, i64 -2 ; 2 uses
  store i8 %i.ue, ptr %i.uf, align 1, !tbaa !40
  br label %bb.hg

bb.gl:                                            ; preds = %bb.fv, %bb.fm
  %.10777 = phi ptr [ %i.rd, %bb.fm ], [ %i.rh, %bb.fv ] ; 6 uses
  %.11751 = phi i32 [ %i.rb, %bb.fm ], [ %i.sc, %bb.fv ] ; 5 uses
  %i.ug = load i8, ptr %.10777, align 1, !tbaa !40
  %i.uh = and i8 %i.ug, -33
  %7 = sext i8 %i.uh to i32
  %8 = add nsw i32 %7, -65
  %i.ui = icmp ult i32 %8, 26
  br i1 %i.ui, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl, %bb.fw, %bb.fp
  %.11778 = phi ptr [ %.4771, %bb.fw ], [ %.10777, %bb.gl ], [ %i.rh, %bb.fp ] ; 2 uses
  %i.uj = call i64 @sfslen() #8
  %i.uk = getelementptr inbounds i8, ptr %.11778, i64 %i.uj
  br label %bb.hg

bb.gn:                                            ; preds = %bb.gl
  %i.ul = icmp eq i8 %.1697, 0
  br i1 %i.ul, label %bb.go, label %bb.gt

bb.go:                                            ; preds = %bb.gn
  %i.um = call ptr @localeconv() #8               ; 3 uses
  %.not944 = icmp eq ptr %i.um, null
  br i1 %.not944, label %bb.gt, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.un = load ptr, ptr %i.um, align 8, !tbaa !51 ; 2 uses
  %.not945 = icmp eq ptr %i.un, null
  br i1 %.not945, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.uo = load i8, ptr %i.un, align 1, !tbaa !40  ; 2 uses
  %.not946 = icmp eq i8 %i.uo, 0
  %spec.select1047 = select i1 %.not946, i8 46, i8 %i.uo
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %.6702 = phi i8 [ 46, %bb.gp ], [ %spec.select1047, %bb.gq ] ; 2 uses
  %i.up = getelementptr inbounds nuw i8, ptr %i.um, i64 8
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !52 ; 2 uses
  %.not947 = icmp eq ptr %i.uq, null
  br i1 %.not947, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.ur = load i8, ptr %i.uq, align 1, !tbaa !40  ; 2 uses
  %.not948 = icmp eq i8 %i.ur, 0
  %spec.select1048 = select i1 %.not948, i8 %.1690, i8 %i.ur
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.go, %bb.gr, %bb.gn
  %.7703 = phi i8 [ %.1697, %bb.gn ], [ %.6702, %bb.gs ], [ %.6702, %bb.gr ], [ 46, %bb.go ] ; 2 uses
  %.4693 = phi i8 [ %.1690, %bb.gn ], [ %spec.select1048, %bb.gs ], [ %.1690, %bb.gr ], [ %.1690, %bb.go ] ; 2 uses
  %i.us = load i32, ptr %i.b, align 4, !tbaa !66  ; 7 uses
  %i.ut = sext i32 %i.us to i64
  %i.uu = getelementptr inbounds i8, ptr %.10777, i64 %i.ut ; 3 uses
  %i.uv = icmp slt i32 %i.us, 4
  %i.uw = and i32 %i.gd, 2048
  %.not949 = icmp eq i32 %i.uw, 0
  %or.cond1049 = select i1 %i.uv, i1 true, i1 %.not949
  br i1 %or.cond1049, label %.preheader1184.preheader, label %.lr.ph1278

.preheader1184.preheader:                         ; preds = %bb.gt
  %i.ux = icmp sgt i32 %i.us, 0
  br i1 %i.ux, label %.lr.ph1767, label %.critedge38

.lr.ph1278:                                       ; preds = %bb.gt
  %i.uy = urem i32 %i.us, 3                       ; 2 uses
  %i.uz = icmp eq i32 %i.uy, 0
  %spec.store.select36 = select i1 %i.uz, i32 3, i32 %i.uy
  %i.va = getelementptr inbounds i8, ptr %i.uu, i64 -3
  br label %bb.gu

bb.gu:                                            ; preds = %.lr.ph1278, %bb.gy
  %.171277 = phi i32 [ %spec.store.select36, %.lr.ph1278 ], [ %.18, %bb.gy ]
  %.127791276 = phi ptr [ %.10777, %.lr.ph1278 ], [ %i.vb, %bb.gy ] ; 2 uses
  %.3788.idx1275 = phi i64 [ 1, %.lr.ph1278 ], [ %.4789.idx, %bb.gy ] ; 3 uses
  %.3788.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.3788.idx1275
  %i.vb = getelementptr inbounds nuw i8, ptr %.127791276, i64 1 ; 5 uses
  %i.vc = load i8, ptr %.127791276, align 1, !tbaa !40 ; 2 uses
  %.3788.add = add nuw nsw i64 %.3788.idx1275, 1  ; 4 uses
  %.ptr952 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.3788.add
  store i8 %i.vc, ptr %.3788.ptr, align 1, !tbaa !40
  %.not951 = icmp eq i8 %i.vc, 0
  br i1 %.not951, label %.critedge38.thread, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.vd = add nsw i32 %.171277, -1                ; 2 uses
  %i.ve = icmp eq i32 %i.vd, 0
  br i1 %i.ve, label %bb.gw, label %bb.gy

bb.gw:                                            ; preds = %bb.gv
  %.not956 = icmp ugt ptr %i.vb, %i.va
  br i1 %.not956, label %bb.gy, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %.add = add nuw nsw i64 %.3788.idx1275, 2
  store i8 %.4693, ptr %.ptr952, align 1, !tbaa !40
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %bb.gw, %bb.gv
  %.4789.idx = phi i64 [ %.add, %bb.gx ], [ %.3788.add, %bb.gw ], [ %.3788.add, %bb.gv ] ; 2 uses
  %.18 = phi i32 [ 3, %bb.gx ], [ 0, %bb.gw ], [ %i.vd, %bb.gv ]
  %i.vf = icmp ult ptr %i.vb, %i.uu
  br i1 %i.vf, label %bb.gu, label %.critedge38.thread1523, !llvm.loop !30

.critedge38.thread1523:                           ; preds = %bb.gy
  %.6791.ptr1526 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.4789.idx
  br label %bb.ha

.preheader1184:                                   ; preds = %.lr.ph1767
  %i.vg = icmp ult ptr %i.vh, %i.uu
  br i1 %i.vg, label %.lr.ph1767, label %.critedge38, !llvm.loop !31

.lr.ph1767:                                       ; preds = %.preheader1184.preheader, %.preheader1184
  %.137801766 = phi ptr [ %i.vh, %.preheader1184 ], [ %.10777, %.preheader1184.preheader ] ; 2 uses
  %.5790.idx1765 = phi i64 [ %.5790.add, %.preheader1184 ], [ 1, %.preheader1184.preheader ] ; 2 uses
  %.5790.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.5790.idx1765
  %i.vh = getelementptr inbounds nuw i8, ptr %.137801766, i64 1 ; 4 uses
  %i.vi = load i8, ptr %.137801766, align 1, !tbaa !40 ; 2 uses
  %.5790.add = add nuw nsw i64 %.5790.idx1765, 1  ; 3 uses
  store i8 %i.vi, ptr %.5790.ptr, align 1, !tbaa !40
  %.not950 = icmp eq i8 %i.vi, 0
  br i1 %.not950, label %.critedge38.thread, label %.preheader1184, !llvm.loop !31

.critedge38.thread:                               ; preds = %bb.gu, %.lr.ph1767
  %.6791.idx.ph = phi i64 [ %.5790.add, %.lr.ph1767 ], [ %.3788.add, %bb.gu ]
  %.14781.ph = phi ptr [ %i.vh, %.lr.ph1767 ], [ %i.vb, %bb.gu ]
  %.6791.ptr1090 = getelementptr inbounds nuw i8, ptr %i.e, i64 %.6791.idx.ph
  br label %bb.ha

.critedge38:                                      ; preds = %.preheader1184, %.preheader1184.preheader
  %.5790.idx.lcssa = phi i64 [ 1, %.preheader1184.preheader ], [ %.5790.add, %.preheader1184 ] ; 2 uses
  %.13780.lcssa = phi ptr [ %.10777, %.preheader1184.preheader ], [ %i.vh, %.preheader1184 ] ; 2 uses
  %.6791.ptr = getelementptr inbounds nuw i8, ptr %i.e, i64 %.5790.idx.lcssa ; 3 uses
  %i.vj = icmp eq i64 %.5790.idx.lcssa, 1
  br i1 %i.vj, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %.critedge38
  %i.vk = getelementptr inbounds nuw i8, ptr %.6791.ptr, i64 1
  store i8 48, ptr %.6791.ptr, align 1, !tbaa !40
  br label %bb.ha

bb.ha:                                            ; preds = %.critedge38.thread1523, %.critedge38.thread, %bb.gz, %.critedge38
  %.147811091 = phi ptr [ %.13780.lcssa, %bb.gz ], [ %.13780.lcssa, %.critedge38 ], [ %.14781.ph, %.critedge38.thread ], [ %i.vb, %.critedge38.thread1523 ] ; 2 uses
  %.7792 = phi ptr [ %i.vk, %bb.gz ], [ %.6791.ptr, %.critedge38 ], [ %.6791.ptr1090, %.critedge38.thread ], [ %.6791.ptr1526, %.critedge38.thread1523 ] ; 3 uses
  %i.vl = icmp slt i32 %.11751, 1
  %i.vm = and i32 %i.gd, 1024
  %.not955 = icmp eq i32 %i.vm, 0
  %or.cond1050 = select i1 %i.vl, i1 %.not955, i1 false
  br i1 %or.cond1050, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.vn = getelementptr inbounds nuw i8, ptr %.7792, i64 1
  store i8 %.7703, ptr %.7792, align 1, !tbaa !40
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.hb
  %.8793 = phi ptr [ %i.vn, %bb.hb ], [ %.7792, %bb.ha ] ; 5 uses
  %.87931439 = ptrtoaddr ptr %.8793 to i64        ; 3 uses
  %i.vo = icmp slt i32 %i.us, 0
  br i1 %i.vo, label %bb.hd, label %.loopexit1183

bb.hd:                                            ; preds = %bb.hc
  %i.vp = add nsw i32 %i.us, %.11751              ; 2 uses
  %i.vq = icmp sgt i32 %.11751, 0
  br i1 %i.vq, label %.lr.ph1282.preheader, label %.loopexit1183

.lr.ph1282.preheader:                             ; preds = %bb.hd
  %i.vr = sub nsw i32 0, %i.us
  %i.vs = call i32 @llvm.umin.i32(i32 %i.vr, i32 %.11751)
  %i.vt = zext nneg i32 %i.vs to i64
  %i.vu = add i64 %.87931439, %i.vt
  %i.vv = add i64 %.87931439, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.vu, i64 %i.vv)
  %i.vw = sub i64 %umax, %.87931439               ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.8793, i8 48, i64 %i.vw, i1 false), !tbaa !40
  %scevgep = getelementptr i8, ptr %.8793, i64 %i.vw
  br label %.loopexit1183

.loopexit1183:                                    ; preds = %.lr.ph1282.preheader, %bb.hd, %bb.hc
  %.10795 = phi ptr [ %.8793, %bb.hc ], [ %.8793, %bb.hd ], [ %scevgep, %.lr.ph1282.preheader ] ; 2 uses
  %.12752 = phi i32 [ %.11751, %bb.hc ], [ %i.vp, %bb.hd ], [ %i.vp, %.lr.ph1282.preheader ] ; 2 uses
  %i.vx = sext i32 %.12752 to i64
  %i.vy = getelementptr inbounds i8, ptr %.147811091, i64 %i.vx ; 3 uses
  br label %bb.he

bb.he:                                            ; preds = %bb.he, %.loopexit1183
  %.11796 = phi ptr [ %.10795, %.loopexit1183 ], [ %i.wb, %bb.he ] ; 4 uses
  %.15782 = phi ptr [ %.147811091, %.loopexit1183 ], [ %i.vz, %bb.he ] ; 2 uses
  %i.vz = getelementptr inbounds nuw i8, ptr %.15782, i64 1 ; 2 uses
  %i.wa = load i8, ptr %.15782, align 1, !tbaa !40 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %.11796, i64 1
  store i8 %i.wa, ptr %.11796, align 1, !tbaa !40
  %i.wc = icmp ne i8 %i.wa, 0
  %i.wd = icmp ule ptr %i.vz, %i.vy
  %i.we = select i1 %i.wc, i1 %i.wd, i1 false
  br i1 %i.we, label %bb.he, label %bb.hf, !llvm.loop !32

bb.hf:                                            ; preds = %bb.he
  %i.wf = ptrtoint ptr %.11796 to i64
  %i.wg = ptrtoint ptr %.10795 to i64
  %.neg = sub i64 %i.wg, %i.wf
  %i.wh = trunc i64 %.neg to i32
  %i.wi = add i32 %.12752, %i.wh
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.gm, %bb.gk
  %.17819 = phi ptr [ %.11778, %bb.gm ], [ %.ptr953, %bb.gk ], [ %.ptr953, %bb.hf ]
end_hunk_1
