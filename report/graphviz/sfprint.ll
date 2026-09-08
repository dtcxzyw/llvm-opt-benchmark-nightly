Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/sfprint?download=true
inline.NumInlined: 16
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@sfprint:bb.a
  %i.e = alloca [2308 x i8], align 16             ; 36 uses
  %i.f = alloca [41 x i8], align 16               ; 4 uses
  %i.g = alloca [41 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !39
  store ptr %1, ptr %2, align 16, !tbaa !40
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !43
  %.ptr984 = getelementptr inbounds nuw i8, ptr %i.e, i64 2307 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.ptr953 = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 3
  %i.u = ptrtoint ptr %.ptr984 to i64
  %.ptr986 = getelementptr inbounds nuw i8, ptr %i.e, i64 2306 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 1024 ; 3 uses
  %i.w = ptrtoint ptr %i.e to i64                 ; 2 uses
  %invariant.op = sub i64 -64, %i.w
  br label %bb.b

bb.b:                                             ; preds = %.backedge1191, %bb.a
  %.0722 = phi i32 [ 0, %bb.a ], [ %.0722.be, %.backedge1191 ] ; 15 uses
  %.0706 = phi i32 [ -1, %bb.a ], [ %.0706.be, %.backedge1191 ] ; 3 uses
  %.0696 = phi i8 [ 0, %bb.a ], [ %.0696.be, %.backedge1191 ] ; 3 uses
  %.0689 = phi i8 [ 0, %bb.a ], [ %.0689.be, %.backedge1191 ] ; 3 uses
  %.0676 = phi ptr [ %i.j, %bb.a ], [ %.0676.be, %.backedge1191 ] ; 5 uses
  %i.x = load i8, ptr %.0676, align 1, !tbaa !40
  switch i8 %i.x, label %.preheader1161 [
    i8 0, label %.thread
    i8 37, label %bb.e
  ]

.preheader1161:                                   ; preds = %bb.b, %bb.c
  %.0675 = phi i64 [ %i.aa, %bb.c ], [ 1, %bb.b ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0676, i64 %.0675
  %i.z = load i8, ptr %i.y, align 1, !tbaa !40
  switch i8 %i.z, label %bb.c [
    i8 0, label %.critedge
    i8 37, label %.critedge
  ]

bb.c:                                             ; preds = %.preheader1161
  %i.aa = add i64 %.0675, 1
  br label %.preheader1161, !llvm.loop !8

.critedge:                                        ; preds = %.preheader1161, %.preheader1161
  %i.ab = getelementptr inbounds nuw i8, ptr %.0676, i64 %.0675 ; 2 uses
  %.not1022 = icmp eq i64 %.0675, 0
  br i1 %.not1022, label %.backedge1191, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.ac = call i64 @fwrite(ptr noundef nonnull %.0676, i64 noundef %.0675, i64 noundef 1, ptr noundef %0)
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %.thread, label %.backedge1191

bb.e:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.0676, i64 1
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 392), align 8, !tbaa !46 ; 7 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.e
  %.0852 = phi i32 [ -1, %bb.e ], [ %.0852.be, %.backedge.backedge ] ; 33 uses
  %.0825 = phi i32 [ 0, %bb.e ], [ %.0825.be, %.backedge.backedge ] ; 41 uses
  %.0759 = phi i32 [ 0, %bb.e ], [ %.0759.be, %.backedge.backedge ] ; 34 uses
  %.0756 = phi i32 [ -1, %bb.e ], [ %.0756.be, %.backedge.backedge ] ; 29 uses
  %.0740 = phi i32 [ -1, %bb.e ], [ %.0740.be, %.backedge.backedge ] ; 40 uses
  %.0723 = phi i32 [ 37, %bb.e ], [ %.0723.be, %.backedge.backedge ] ; 23 uses
  %.0717 = phi i64 [ -1, %bb.e ], [ %.0717.be, %.backedge.backedge ] ; 23 uses
  %.0713 = phi ptr [ null, %bb.e ], [ %.0713.be, %.backedge.backedge ] ; 26 uses
  %.0711 = phi i64 [ 0, %bb.e ], [ %.0711.be, %.backedge.backedge ] ; 27 uses
  %.1707 = phi i32 [ %.0706, %bb.e ], [ %.1707.be, %.backedge.backedge ] ; 29 uses
  %.1697 = phi i8 [ %.0696, %bb.e ], [ %.1697.be, %.backedge.backedge ] ; 53 uses
  %.1690 = phi i8 [ %.0689, %bb.e ], [ %.1690.be, %.backedge.backedge ] ; 60 uses
  %.2678 = phi ptr [ %i.ae, %bb.e ], [ %.2678.be, %.backedge.backedge ] ; 8 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.2678, i64 1 ; 41 uses
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
  br i1 %i.al, label %.thread, label %.backedge1191

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
  %sext = shl i64 %i.az, 32
  %i.ba = ashr exact i64 %sext, 32                ; 2 uses
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.p, label %.backedge.backedge

bb.p:                                             ; preds = %bb.o
  %i.bc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ay) #9
  br label %.backedge.backedge

bb.q:                                             ; preds = %.backedge
  %i.bd = and i32 %.0825, -577
  %i.be = or disjoint i32 %i.bd, 64
  br label %.backedge.backedge

bb.r:                                             ; preds = %.backedge
  %i.bf = shl nuw nsw i32 %.0825, 3
  %i.bg = and i32 %i.bf, 512
  %i.bh = xor i32 %i.bg, 512
  %spec.select = or i32 %i.bh, %.0825
  br label %.backedge.backedge

bb.s:                                             ; preds = %.backedge
  %i.bi = shl nuw nsw i32 %.0825, 1
  %i.bj = and i32 %i.bi, 256
  %i.bk = xor i32 %i.bj, 256
  %spec.select1023 = or i32 %i.bk, %.0825
  br label %.backedge.backedge

bb.t:                                             ; preds = %.backedge
  %i.bl = and i32 %.0825, -385
  %i.bm = or disjoint i32 %i.bl, 128
  br label %.backedge.backedge

bb.u:                                             ; preds = %.backedge
  %i.bn = or i32 %.0825, 1024
  br label %.backedge.backedge

bb.v:                                             ; preds = %.backedge
  %i.bo = icmp eq i8 %.1697, 0
  br i1 %i.bo, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bp = call ptr @localeconv() #8               ; 3 uses
  %.not920 = icmp eq ptr %i.bp, null
  br i1 %.not920, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !51 ; 2 uses
  %.not921 = icmp eq ptr %i.bq, null
  br i1 %.not921, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !40  ; 2 uses
  %.not922 = icmp eq i8 %i.br, 0
  %spec.select1024 = select i1 %.not922, i8 46, i8 %i.br
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2698 = phi i8 [ 46, %bb.x ], [ %spec.select1024, %bb.y ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52 ; 2 uses
  %.not923 = icmp eq ptr %i.bt, null
  br i1 %.not923, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !40  ; 2 uses
  %.not924 = icmp eq i8 %i.bu, 0
  %spec.select1025 = select i1 %.not924, i8 %.1690, i8 %i.bu
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.z, %bb.v
  %.3699 = phi i8 [ %.1697, %bb.v ], [ %.2698, %bb.aa ], [ %.2698, %bb.z ], [ 46, %bb.w ]
  %.2691 = phi i8 [ %.1690, %bb.v ], [ %spec.select1025, %bb.aa ], [ %.1690, %bb.z ], [ %.1690, %bb.w ] ; 2 uses
  %.not925 = icmp eq i8 %.2691, 0
  %i.bv = or i32 %.0825, 2048
  %spec.select1026 = select i1 %.not925, i32 %.0825, i32 %i.bv
  br label %.backedge.backedge

bb.ac:                                            ; preds = %.backedge
  %i.bw = add nsw i32 %.0759, 1                   ; 4 uses
  %i.bx = icmp eq i32 %.0759, 0
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.by = load i8, ptr %i.ag, align 1, !tbaa !40  ; 2 uses
  %.not918 = icmp eq i8 %i.by, 46
  %spec.select1027 = select i1 %.not918, i32 %.0740, i32 0
  br label %thread-pre-split

bb.ae:                                            ; preds = %bb.ac
  %i.bz = icmp eq i32 %i.bw, 2
  %.pr.pre = load i8, ptr %i.ag, align 1, !tbaa !40 ; 6 uses
  br i1 %i.bz, label %bb.af, label %thread-pre-split

bb.af:                                            ; preds = %bb.ae
  %i.ca = sext i8 %.pr.pre to i32                 ; 3 uses
  switch i8 %.pr.pre, label %bb.ag [
    i8 99, label %.backedge.backedge
    i8 115, label %.backedge.backedge
    i8 0, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %.lr.ph, %bb.h, %bb.au, %bb.as, %bb.ap, %bb.ao, %bb.aq, %.fold.split, %.loopexit1158, %bb.af, %bb.af, %bb.af, %bb.l, %bb.p, %bb.o, %bb.n, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.ab, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %.thread1129, %bb.ai
  %.0852.be = phi i32 [ %.0852, %bb.ba ], [ %.0852, %bb.au ], [ %.0852, %bb.q ], [ %.0852, %bb.r ], [ %.0852, %bb.s ], [ %.0852, %bb.t ], [ %.0852, %bb.u ], [ %.0852, %bb.ab ], [ 0, %bb.af ], [ %.1853, %.thread1129 ], [ %.0852, %bb.l ], [ %i.ca, %bb.ai ], [ %.5857, %.fold.split ], [ %.0852, %bb.av ], [ %.0852, %bb.aw ], [ %.0852, %bb.ax ], [ %.0852, %bb.ay ], [ %.0852, %bb.az ], [ %.0852, %bb.n ], [ %.0852, %bb.o ], [ %.0852, %bb.p ], [ 0, %bb.af ], [ %.5857, %bb.ap ], [ %.5857, %bb.ao ], [ %.5857, %.loopexit1158 ], [ %.2, %bb.aq ], [ %.0852, %bb.h ], [ %.0852, %bb.as ], [ 0, %bb.af ], [ %.0852, %.lr.ph ]
  %.0825.be = phi i32 [ %i.fb, %bb.ba ], [ %i.dq, %bb.au ], [ %i.be, %bb.q ], [ %spec.select, %bb.r ], [ %spec.select1023, %bb.s ], [ %i.bm, %bb.t ], [ %i.bn, %bb.u ], [ %spec.select1026, %bb.ab ], [ %.0825, %bb.af ], [ %.0825, %.thread1129 ], [ %.0825, %bb.l ], [ %.0825, %bb.ai ], [ %.0825, %.fold.split ], [ %.5830, %bb.av ], [ %.6831, %bb.aw ], [ %i.ev, %bb.ax ], [ %i.ex, %bb.ay ], [ %i.ez, %bb.az ], [ %.0825, %bb.n ], [ %.0825, %bb.o ], [ %.0825, %bb.p ], [ %.0825, %bb.af ], [ %i.do, %bb.ap ], [ %.0825, %bb.ao ], [ %.0825, %.loopexit1158 ], [ %.0825, %bb.aq ], [ %.0825, %bb.h ], [ %i.dq, %bb.as ], [ %.0825, %bb.af ], [ %i.dq, %.lr.ph ]
  %.0759.be = phi i32 [ %.0759, %bb.ba ], [ %.0759, %bb.au ], [ %.0759, %bb.q ], [ %.0759, %bb.r ], [ %.0759, %bb.s ], [ %.0759, %bb.t ], [ %.0759, %bb.u ], [ %.0759, %bb.ab ], [ 2, %bb.af ], [ %i.bw, %.thread1129 ], [ %.0759, %bb.l ], [ 2, %bb.ai ], [ %.3762, %.fold.split ], [ %.0759, %bb.av ], [ %.0759, %bb.aw ], [ %.0759, %bb.ax ], [ %.0759, %bb.ay ], [ %.0759, %bb.az ], [ %.0759, %bb.n ], [ %.0759, %bb.o ], [ %.0759, %bb.p ], [ 2, %bb.af ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ %.3762, %.loopexit1158 ], [ %.3762, %bb.aq ], [ %.0759, %bb.h ], [ %.0759, %bb.as ], [ 2, %bb.af ], [ %.0759, %.lr.ph ]
  %.0756.be = phi i32 [ %.0756, %bb.ba ], [ %.0756, %bb.au ], [ %.0756, %bb.q ], [ %.0756, %bb.r ], [ %.0756, %bb.s ], [ %.0756, %bb.t ], [ %.0756, %bb.u ], [ %.0756, %bb.ab ], [ %.0756, %bb.af ], [ %.0756, %.thread1129 ], [ %.0756, %bb.l ], [ %.0756, %bb.ai ], [ %.0756, %.fold.split ], [ %.0756, %bb.av ], [ %.0756, %bb.aw ], [ %.0756, %bb.ax ], [ %.0756, %bb.ay ], [ %.0756, %bb.az ], [ %.0756, %bb.n ], [ %.0756, %bb.o ], [ %.0756, %bb.p ], [ %.0756, %bb.af ], [ %i.dm, %bb.ap ], [ %.2, %bb.ao ], [ %.0756, %.loopexit1158 ], [ %.0756, %bb.aq ], [ %.0756, %bb.h ], [ %.0756, %bb.as ], [ %.0756, %bb.af ], [ %.0756, %.lr.ph ]
  %.0740.be = phi i32 [ %.0740, %bb.ba ], [ %.0740, %bb.au ], [ %.0740, %bb.q ], [ %.0740, %bb.r ], [ %.0740, %bb.s ], [ %.0740, %bb.t ], [ %.0740, %bb.u ], [ %.0740, %bb.ab ], [ %.0740, %bb.af ], [ %.1741, %.thread1129 ], [ %.0740, %bb.l ], [ %.0740, %bb.ai ], [ %.5745, %.fold.split ], [ %.0740, %bb.av ], [ %.0740, %bb.aw ], [ %.0740, %bb.ax ], [ %.0740, %bb.ay ], [ %.0740, %bb.az ], [ %.0740, %bb.n ], [ %.0740, %bb.o ], [ %.0740, %bb.p ], [ %.0740, %bb.af ], [ %.5745, %bb.ap ], [ %.5745, %bb.ao ], [ %.2, %.loopexit1158 ], [ %.5745, %bb.aq ], [ %.0740, %bb.h ], [ %.0740, %bb.as ], [ %.0740, %bb.af ], [ %.0740, %.lr.ph ]
  %.0723.be = phi i32 [ %.0723, %bb.ba ], [ %i.ej, %bb.au ], [ %.0723, %bb.q ], [ %.0723, %bb.r ], [ %.0723, %bb.s ], [ %.0723, %bb.t ], [ %.0723, %bb.u ], [ %.0723, %bb.ab ], [ %.0723, %bb.af ], [ %.0723, %.thread1129 ], [ %.0723, %bb.l ], [ %.0723, %bb.ai ], [ %.2725, %.fold.split ], [ %.0723, %bb.av ], [ %.0723, %bb.aw ], [ %.0723, %bb.ax ], [ %.0723, %bb.ay ], [ %.0723, %bb.az ], [ %i.aw, %bb.n ], [ %i.aw, %bb.o ], [ %i.aw, %bb.p ], [ %.0723, %bb.af ], [ %.2725, %bb.ap ], [ %.2725, %bb.ao ], [ %.2725, %.loopexit1158 ], [ %.2725, %bb.aq ], [ %.0723, %bb.h ], [ %.0723, %bb.as ], [ %.0723, %bb.af ], [ %.3726, %.lr.ph ]
  %.0717.be = phi i64 [ -1, %bb.ba ], [ %i.el, %bb.au ], [ %.0717, %bb.q ], [ %.0717, %bb.r ], [ %.0717, %bb.s ], [ %.0717, %bb.t ], [ %.0717, %bb.u ], [ %.0717, %bb.ab ], [ %.0717, %bb.af ], [ %.0717, %.thread1129 ], [ %.0717, %bb.l ], [ %.0717, %bb.ai ], [ %.0717, %.fold.split ], [ -1, %bb.av ], [ -1, %bb.aw ], [ -1, %bb.ax ], [ -1, %bb.ay ], [ -1, %bb.az ], [ %.0717, %bb.n ], [ %.0717, %bb.o ], [ %.0717, %bb.p ], [ %.0717, %bb.af ], [ %.0717, %bb.ap ], [ %.0717, %bb.ao ], [ %.0717, %.loopexit1158 ], [ %.0717, %bb.aq ], [ %.0717, %bb.h ], [ 0, %bb.as ], [ %.0717, %bb.af ], [ %i.dy, %.lr.ph ]
  %.0713.be = phi ptr [ %.0713, %bb.ba ], [ %.0713, %bb.au ], [ %.0713, %bb.q ], [ %.0713, %bb.r ], [ %.0713, %bb.s ], [ %.0713, %bb.t ], [ %.0713, %bb.u ], [ %.0713, %bb.ab ], [ %.0713, %bb.af ], [ %.0713, %.thread1129 ], [ %i.ag, %bb.l ], [ %.0713, %bb.ai ], [ %.0713, %.fold.split ], [ %.0713, %bb.av ], [ %.0713, %bb.aw ], [ %.0713, %bb.ax ], [ %.0713, %bb.ay ], [ %.0713, %bb.az ], [ null, %bb.n ], [ %i.ay, %bb.o ], [ %i.ay, %bb.p ], [ %.0713, %bb.af ], [ %.0713, %bb.ap ], [ %.0713, %bb.ao ], [ %.0713, %.loopexit1158 ], [ %.0713, %bb.aq ], [ null, %bb.h ], [ %.0713, %bb.as ], [ %.0713, %bb.af ], [ %.0713, %.lr.ph ]
  %.0711.be = phi i64 [ %.0711, %bb.ba ], [ %.0711, %bb.au ], [ %.0711, %bb.q ], [ %.0711, %bb.r ], [ %.0711, %bb.s ], [ %.0711, %bb.t ], [ %.0711, %bb.u ], [ %.0711, %bb.ab ], [ %.0711, %bb.af ], [ %.0711, %.thread1129 ], [ %i.at, %bb.l ], [ %.0711, %bb.ai ], [ %.0711, %.fold.split ], [ %.0711, %bb.av ], [ %.0711, %bb.aw ], [ %.0711, %bb.ax ], [ %.0711, %bb.ay ], [ %.0711, %bb.az ], [ %.0711, %bb.n ], [ %i.ba, %bb.o ], [ %i.bc, %bb.p ], [ %.0711, %bb.af ], [ %.0711, %bb.ap ], [ %.0711, %bb.ao ], [ %.0711, %.loopexit1158 ], [ %.0711, %bb.aq ], [ 0, %bb.h ], [ %.0711, %bb.as ], [ %.0711, %bb.af ], [ %.0711, %.lr.ph ]
  %.1707.be = phi i32 [ %.1707, %bb.ba ], [ %i.ej, %bb.au ], [ %.1707, %bb.q ], [ %.1707, %bb.r ], [ %.1707, %bb.s ], [ %.1707, %bb.t ], [ %.1707, %bb.u ], [ %.1707, %bb.ab ], [ %.1707, %bb.af ], [ %.1707, %.thread1129 ], [ %.1707, %bb.l ], [ %.1707, %bb.ai ], [ %.3709, %.fold.split ], [ %.1707, %bb.av ], [ %.1707, %bb.aw ], [ %.1707, %bb.ax ], [ %.1707, %bb.ay ], [ %.1707, %bb.az ], [ %i.au, %bb.n ], [ %i.au, %bb.o ], [ %i.au, %bb.p ], [ %.1707, %bb.af ], [ %.3709, %bb.ap ], [ %.3709, %bb.ao ], [ %.3709, %.loopexit1158 ], [ %.3709, %bb.aq ], [ %.1707, %bb.h ], [ %.1707, %bb.as ], [ %.1707, %bb.af ], [ %.1707, %.lr.ph ]
  %.1697.be = phi i8 [ %.1697, %bb.ba ], [ %.1697, %bb.au ], [ %.1697, %bb.q ], [ %.1697, %bb.r ], [ %.1697, %bb.s ], [ %.1697, %bb.t ], [ %.1697, %bb.u ], [ %.3699, %bb.ab ], [ %.1697, %bb.af ], [ %.1697, %.thread1129 ], [ %.1697, %bb.l ], [ %.1697, %bb.ai ], [ %.1697, %.fold.split ], [ %.1697, %bb.av ], [ %.1697, %bb.aw ], [ %.1697, %bb.ax ], [ %.1697, %bb.ay ], [ %.1697, %bb.az ], [ %.1697, %bb.n ], [ %.1697, %bb.o ], [ %.1697, %bb.p ], [ %.1697, %bb.af ], [ %.1697, %bb.ap ], [ %.1697, %bb.ao ], [ %.1697, %.loopexit1158 ], [ %.1697, %bb.aq ], [ %.1697, %bb.h ], [ %.1697, %bb.as ], [ %.1697, %bb.af ], [ %.1697, %.lr.ph ]
  %.1690.be = phi i8 [ %.1690, %bb.ba ], [ %.1690, %bb.au ], [ %.1690, %bb.q ], [ %.1690, %bb.r ], [ %.1690, %bb.s ], [ %.1690, %bb.t ], [ %.1690, %bb.u ], [ %.2691, %bb.ab ], [ %.1690, %bb.af ], [ %.1690, %.thread1129 ], [ %.1690, %bb.l ], [ %.1690, %bb.ai ], [ %.1690, %.fold.split ], [ %.1690, %bb.av ], [ %.1690, %bb.aw ], [ %.1690, %bb.ax ], [ %.1690, %bb.ay ], [ %.1690, %bb.az ], [ %.1690, %bb.n ], [ %.1690, %bb.o ], [ %.1690, %bb.p ], [ %.1690, %bb.af ], [ %.1690, %bb.ap ], [ %.1690, %bb.ao ], [ %.1690, %.loopexit1158 ], [ %.1690, %bb.aq ], [ %.1690, %bb.h ], [ %.1690, %bb.as ], [ %.1690, %bb.af ], [ %.1690, %.lr.ph ]
  %.2678.be = phi ptr [ %i.ag, %bb.ba ], [ %i.ef, %bb.au ], [ %i.ag, %bb.q ], [ %i.ag, %bb.r ], [ %i.ag, %bb.s ], [ %i.ag, %bb.t ], [ %i.ag, %bb.u ], [ %i.ag, %bb.ab ], [ %i.ag, %bb.af ], [ %i.ag, %.thread1129 ], [ %i.am, %bb.l ], [ %i.ch, %bb.ai ], [ %.7683, %.fold.split ], [ %.10686, %bb.av ], [ %.11687, %bb.aw ], [ %i.ag, %bb.ax ], [ %i.ag, %bb.ay ], [ %i.ag, %bb.az ], [ %i.am, %bb.n ], [ %i.am, %bb.o ], [ %i.am, %bb.p ], [ %i.ag, %bb.af ], [ %.7683, %bb.ap ], [ %.7683, %bb.ao ], [ %.7683, %.loopexit1158 ], [ %.7683, %bb.aq ], [ %i.ag, %bb.h ], [ %i.ag, %bb.as ], [ %i.ag, %bb.af ], [ %i.dz, %.lr.ph ]
  br label %.backedge

bb.ag:                                            ; preds = %bb.af
  %i.cb = and i32 %i.ca, -33
  %i.cc = add nsw i32 %i.cb, -65
  %i.cd = icmp ult i32 %i.cc, 26
  %i.ce = add nsw i32 %i.ca, -48
  %i.cf = icmp ult i32 %i.ce, 10
  %i.cg = select i1 %i.cd, i1 true, i1 %i.cf
  br i1 %i.cg, label %thread-pre-split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = getelementptr inbounds nuw i8, ptr %.2678, i64 2 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !40
  switch i8 %i.ci, label %thread-pre-split [
    i8 99, label %bb.ai
    i8 115, label %bb.ai
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ah
  %i.cj = icmp eq i8 %.pr.pre, 42
  br i1 %i.cj, label %bb.ak, label %.backedge.backedge

thread-pre-split:                                 ; preds = %bb.ah, %bb.ae, %bb.ag, %bb.ad
  %i.ck = phi i8 [ %i.by, %bb.ad ], [ %.pr.pre, %bb.ag ], [ %.pr.pre, %bb.ae ], [ %.pr.pre, %bb.ah ] ; 2 uses
  %.1853 = phi i32 [ %.0852, %bb.ad ], [ 0, %bb.ag ], [ %.0852, %bb.ae ], [ 0, %bb.ah ] ; 3 uses
  %.1741 = phi i32 [ %spec.select1027, %bb.ad ], [ %.0740, %bb.ag ], [ %.0740, %bb.ae ], [ %.0740, %bb.ah ] ; 3 uses
  %i.cl = sext i8 %i.ck to i32                    ; 2 uses
  %i.cm = add nsw i32 %i.cl, -48
  %i.cn = icmp ult i32 %i.cm, 10
  br i1 %i.cn, label %bb.aj, label %.thread1129

bb.aj:                                            ; preds = %thread-pre-split
  %i.co = getelementptr inbounds nuw i8, ptr %.2678, i64 2
  br label %bb.an

.thread1129:                                      ; preds = %thread-pre-split
  %.not919 = icmp eq i8 %i.ck, 42
  br i1 %.not919, label %bb.ak, label %.backedge.backedge

bb.ak:                                            ; preds = %.thread1129, %bb.ai
  %.2854 = phi i32 [ %.1853, %.thread1129 ], [ 0, %bb.ai ]
  %.2742 = phi i32 [ %.1741, %.thread1129 ], [ %.0740, %bb.ai ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.2678, i64 2
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.backedge
  %.3855 = phi i32 [ %.2854, %bb.ak ], [ %.0852, %.backedge ]
  %.1760 = phi i32 [ %i.bw, %bb.ak ], [ %.0759, %.backedge ] ; 2 uses
  %.3743 = phi i32 [ %.2742, %bb.ak ], [ %.0740, %.backedge ]
  %.4680 = phi ptr [ %i.cp, %bb.ak ], [ %i.ag, %.backedge ]
  %i.cq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Sftable, i64 400), align 16, !tbaa !53
  %i.cr = call ptr %i.cq(ptr noundef nonnull %.4680) #8 ; 2 uses
  store ptr %i.cr, ptr %i.i, align 8, !tbaa !43
  store i32 46, ptr %i.k, align 8, !tbaa !47
  %i.cs = sext i32 %.1760 to i64
  store i64 %i.cs, ptr %i.l, align 8, !tbaa !49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, i8 0, i64 32, i1 false)
  %i.ct = load ptr, ptr %1, align 8, !tbaa !48
  %i.cu = call i32 %i.ct(ptr noundef nonnull %2, ptr noundef nonnull %1) #8
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cw = add nsw i32 %.1707, 1                   ; 2 uses
  %i.cx = load i32, ptr %2, align 16, !tbaa !40
  br label %.loopexit1158

bb.an:                                            ; preds = %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %.backedge, %bb.aj
  %.4856 = phi i32 [ %.1853, %bb.aj ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ], [ %.0852, %.backedge ] ; 2 uses
  %.0843 = phi i32 [ %i.cl, %bb.aj ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ], [ %i.ai, %.backedge ]
  %.2761 = phi i32 [ %i.bw, %bb.aj ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ], [ %.0759, %.backedge ] ; 2 uses
  %.4744 = phi i32 [ %.1741, %bb.aj ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ], [ %.0740, %.backedge ] ; 2 uses
  %.5681 = phi ptr [ %i.co, %bb.aj ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ], [ %i.ag, %.backedge ] ; 3 uses
  %i.cy = add nsw i32 %.0843, -48                 ; 2 uses
  %i.cz = load i8, ptr %.5681, align 1, !tbaa !40
  %i.da = sext i8 %i.cz to i32
  %i.db = add nsw i32 %i.da, -48                  ; 2 uses
  %i.dc = icmp ult i32 %i.db, 10
  br i1 %i.dc, label %.lr.ph1274, label %.loopexit1158

.lr.ph1274:                                       ; preds = %bb.an, %.lr.ph1274
  %i.dd = phi i32 [ %i.dj, %.lr.ph1274 ], [ %i.db, %bb.an ]
  %.11273 = phi i32 [ %i.df, %.lr.ph1274 ], [ %i.cy, %bb.an ]
  %.66821272 = phi ptr [ %i.dg, %.lr.ph1274 ], [ %.5681, %bb.an ]
  %i.de = mul nsw i32 %.11273, 10
  %i.df = add nsw i32 %i.dd, %i.de                ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.66821272, i64 1 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !40
  %i.di = sext i8 %i.dh to i32
  %i.dj = add nsw i32 %i.di, -48                  ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 10
  br i1 %i.dk, label %.lr.ph1274, label %.loopexit1158, !llvm.loop !9

.loopexit1158:                                    ; preds = %.lr.ph1274, %bb.an, %bb.am
  %.5857 = phi i32 [ %.3855, %bb.am ], [ %.4856, %bb.an ], [ %.4856, %.lr.ph1274 ] ; 4 uses
  %.3762 = phi i32 [ %.1760, %bb.am ], [ %.2761, %bb.an ], [ %.2761, %.lr.ph1274 ] ; 4 uses
  %.5745 = phi i32 [ %.3743, %bb.am ], [ %.4744, %bb.an ], [ %.4744, %.lr.ph1274 ] ; 4 uses
  %.2725 = phi i32 [ %i.cw, %bb.am ], [ %.0723, %bb.an ], [ %.0723, %.lr.ph1274 ] ; 5 uses
  %.3709 = phi i32 [ %i.cw, %bb.am ], [ %.1707, %bb.an ], [ %.1707, %.lr.ph1274 ] ; 5 uses
  %.7683 = phi ptr [ %i.cr, %bb.am ], [ %.5681, %bb.an ], [ %i.dg, %.lr.ph1274 ] ; 5 uses
  %.2 = phi i32 [ %i.cx, %bb.am ], [ %i.cy, %bb.an ], [ %i.df, %.lr.ph1274 ] ; 5 uses
  switch i32 %.3762, label %.fold.split [
    i32 0, label %bb.ao
    i32 1, label %.backedge.backedge
    i32 2, label %bb.aq
  ]
end_hunk_0
