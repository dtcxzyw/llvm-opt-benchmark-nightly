Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_libvscanf?download=true
inline.NumInlined: 1
begin_hunk_0_@vscanf_internal:bb.a
  %.0431790 = phi i1 [ false, %.lr.ph804 ], [ %.2433, %bb.gz ] ; 5 uses
  %.0455789 = phi ptr [ %2, %.lr.ph804 ], [ %.5460, %bb.gz ]
  %.0788 = phi i32 [ %i.h, %.lr.ph804 ], [ %.26, %bb.gz ] ; 3 uses
  %i.m = sext i8 %i.l to i32
  %i.n = call i32 @isspace(i32 noundef %i.m) #16
  %.not491 = icmp eq i32 %i.n, 0
  br i1 %.not491, label %.loopexit687, label %.preheader686

.preheader686:                                    ; preds = %bb.b
  %i.o = call i32 @isspace(i32 noundef %.0788) #16
  %.not492706 = icmp eq i32 %i.o, 0
  br i1 %.not492706, label %.loopexit687, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader686, %.lr.ph
  %i.p = load ptr, ptr %i.f, align 8
  %i.q = call i32 %i.p(ptr noundef nonnull %0) #15 ; 2 uses
  %i.r = call i32 @isspace(i32 noundef %i.q) #16
  %.not492 = icmp eq i32 %i.r, 0
  br i1 %.not492, label %.loopexit687, label %.lr.ph, !llvm.loop !7

.loopexit687:                                     ; preds = %.lr.ph, %.preheader686, %bb.b
  %.2611 = phi i32 [ %.0788, %bb.b ], [ %.0788, %.preheader686 ], [ %i.q, %.lr.ph ] ; 18 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.loopexit687
  %.1456 = phi ptr [ %.0455789, %.loopexit687 ], [ %i.v, %bb.c ] ; 4 uses
  %i.s = load i8, ptr %.1456, align 1             ; 2 uses
  %i.t = sext i8 %i.s to i32                      ; 2 uses
  %i.u = call i32 @isspace(i32 noundef %i.t) #16
  %.not493 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %.1456, i64 1 ; 5 uses
  br i1 %.not493, label %bb.d, label %bb.c, !llvm.loop !8

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i8 %i.s, 37
  br i1 %i.w, label %.preheader685, label %bb.gx

.preheader685:                                    ; preds = %bb.d
  %i.x = load i8, ptr %i.v, align 1               ; 2 uses
  %.not495708 = icmp eq i8 %i.x, 0
  br i1 %.not495708, label %.thread, label %.lr.ph714

.lr.ph714:                                        ; preds = %.preheader685, %bb.n
  %i.y = phi i8 [ %i.aq, %bb.n ], [ %i.x, %.preheader685 ]
  %.2457713 = phi ptr [ %.2457, %bb.n ], [ %i.v, %.preheader685 ] ; 11 uses
  %.1406712 = phi i32 [ %.2407, %bb.n ], [ 0, %.preheader685 ] ; 14 uses
  %.1436711 = phi i8 [ %.2437, %bb.n ], [ 0, %.preheader685 ] ; 11 uses
  %.1440710 = phi i32 [ %.2441, %bb.n ], [ 0, %.preheader685 ] ; 4 uses
  %.1456.pn709 = phi ptr [ %.4459, %bb.n ], [ %.1456, %.preheader685 ] ; 7 uses
  %i.z = sext i8 %i.y to i32
  %i.aa = call ptr @strchr(ptr noundef nonnull @.str, i32 noundef range(i32 -128, 128) %i.z) #14
  %.not496 = icmp eq ptr %i.aa, null
  %i.ab = load i8, ptr %.2457713, align 1         ; 5 uses
  br i1 %.not496, label %bb.e, label %bb.o

bb.e:                                             ; preds = %.lr.ph714
  switch i8 %i.ab, label %bb.l [
    i8 42, label %bb.n
    i8 108, label %bb.f
    i8 76, label %bb.f
    i8 122, label %bb.h
    i8 106, label %bb.i
    i8 104, label %bb.j
    i8 72, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.1456.pn709, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 1
  switch i8 %i.ad, label %bb.n [
    i8 108, label %bb.g
    i8 76, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  br label %bb.n

bb.h:                                             ; preds = %bb.e
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  br label %bb.n

bb.j:                                             ; preds = %bb.e, %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %.1456.pn709, i64 2 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1
  switch i8 %i.af, label %bb.n [
    i8 104, label %bb.k
    i8 72, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  br label %bb.n

bb.l:                                             ; preds = %bb.e
  %i.ag = add i8 %i.ab, -49
  %or.cond526 = icmp ult i8 %i.ag, 9
  br i1 %or.cond526, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.l, %.preheader
  %.3458 = phi ptr [ %i.aj, %.preheader ], [ %.2457713, %bb.l ] ; 4 uses
  %i.ah = load i8, ptr %.3458, align 1
  %i.ai = sext i8 %i.ah to i32
  %isdigittmp = add nsw i32 %i.ai, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  %i.aj = getelementptr inbounds nuw i8, ptr %.3458, i64 1
  br i1 %isdigit, label %.preheader, label %bb.m, !llvm.loop !9

bb.m:                                             ; preds = %.preheader
  %i.ak = ptrtoint ptr %.3458 to i64
  %i.al = ptrtoint ptr %.2457713 to i64
  %reass.sub = sub i64 %i.ak, %i.al
  %i.am = add i64 %reass.sub, 1
  %i.an = call i64 @strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull dereferenceable(1) %.2457713, i64 noundef %i.am) #15 ; 0 uses
  %i.ao = call i32 @atoi(ptr noundef nonnull %i.a) #14
  %i.ap = getelementptr inbounds i8, ptr %.3458, i64 -1
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.e, %bb.f, %bb.h, %bb.k, %bb.m, %bb.l, %bb.i, %bb.g
  %.4459 = phi ptr [ %.2457713, %bb.l ], [ %i.ac, %bb.g ], [ %.2457713, %bb.f ], [ %.2457713, %bb.h ], [ %.2457713, %bb.i ], [ %i.ae, %bb.k ], [ %.2457713, %bb.j ], [ %i.ap, %bb.m ], [ %.2457713, %bb.e ] ; 3 uses
  %.2441 = phi i32 [ %.1440710, %bb.l ], [ 2, %bb.g ], [ 1, %bb.f ], [ 1, %bb.h ], [ 2, %bb.i ], [ -2, %bb.k ], [ -1, %bb.j ], [ %.1440710, %bb.m ], [ %.1440710, %bb.e ] ; 2 uses
  %.2437 = phi i8 [ %.1436711, %bb.l ], [ %.1436711, %bb.g ], [ %.1436711, %bb.f ], [ %.1436711, %bb.h ], [ %.1436711, %bb.i ], [ %.1436711, %bb.k ], [ %.1436711, %bb.j ], [ %.1436711, %bb.m ], [ 1, %bb.e ] ; 2 uses
  %.2407 = phi i32 [ %.1406712, %bb.l ], [ %.1406712, %bb.g ], [ %.1406712, %bb.f ], [ %.1406712, %bb.h ], [ %.1406712, %bb.i ], [ %.1406712, %bb.k ], [ %.1406712, %bb.j ], [ %i.ao, %bb.m ], [ %.1406712, %bb.e ] ; 2 uses
  %.2457 = getelementptr inbounds nuw i8, ptr %.4459, i64 1 ; 3 uses
  %i.aq = load i8, ptr %.2457, align 1            ; 2 uses
  %.not495 = icmp eq i8 %i.aq, 0
  br i1 %.not495, label %.thread, label %.lr.ph714, !llvm.loop !10

bb.o:                                             ; preds = %.lr.ph714
  %.not497 = icmp ne i8 %i.ab, 37
  %spec.select = select i1 %.not497, i1 true, i1 %.0431790 ; 5 uses
  %i.ar = sext i8 %i.ab to i32
  switch i8 %i.ab, label %.thread [
    i8 115, label %bb.p
    i8 99, label %bb.ah
  ]

bb.p:                                             ; preds = %bb.o
  %i.as = trunc nuw i8 %.1436711 to i1            ; 3 uses
  br i1 %i.as, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %3, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.at = load i32, ptr %4, align 8               ; 3 uses
  %i.au = icmp ult i32 %i.at, 41
  br i1 %i.au, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr %i.k, align 8
  %i.aw = zext nneg i32 %i.at to i64
  %i.ax = getelementptr i8, ptr %i.av, i64 %i.aw
  %i.ay = add nuw nsw i32 %i.at, 8
  store i32 %i.ay, ptr %4, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.j, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bb = phi ptr [ %i.ax, %bb.s ], [ %i.az, %bb.t ]
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr %4, align 8               ; 2 uses
  %i.be = sext i32 %.1406712 to i64
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.be
  store ptr %i.bf, ptr %4, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bg = phi ptr [ %i.bc, %bb.u ], [ %i.bd, %bb.v ] ; 2 uses
  store i8 0, ptr %i.bg, align 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.p
  %.0443 = phi ptr [ null, %bb.p ], [ %i.bg, %bb.w ] ; 2 uses
  %i.bh = call i32 @isspace(i32 noundef %.2611) #16
  %.not522725 = icmp eq i32 %i.bh, 0
  br i1 %.not522725, label %._crit_edge728, label %.lr.ph727

.lr.ph727:                                        ; preds = %bb.x, %.lr.ph727
  %i.bi = load ptr, ptr %i.f, align 8
  %i.bj = call i32 %i.bi(ptr noundef nonnull %0) #15 ; 2 uses
  %i.bk = call i32 @isspace(i32 noundef %i.bj) #16
  %.not522 = icmp eq i32 %i.bk, 0
  br i1 %.not522, label %._crit_edge728, label %.lr.ph727, !llvm.loop !11

._crit_edge728:                                   ; preds = %.lr.ph727, %bb.x
  %.3612.lcssa = phi i32 [ %.2611, %bb.x ], [ %i.bj, %.lr.ph727 ] ; 3 uses
  %i.bl = icmp sgt i32 %.3612.lcssa, 0
  br i1 %i.bl, label %.preheader684, label %.thread652

.preheader684:                                    ; preds = %._crit_edge728
  %.not523 = icmp eq i32 %.1406712, 0
  %5 = sext i32 %.1406712 to i64
  br label %bb.y

bb.y:                                             ; preds = %.preheader684, %bb.ae
  %indvars.iv840 = phi i64 [ 0, %.preheader684 ], [ %indvars.iv.next841, %bb.ae ] ; 4 uses
  %.4613.a = phi i32 [ %.3612.lcssa, %.preheader684 ], [ %i.bs, %bb.ae ] ; 5 uses
  br i1 %.not523, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = icmp slt i64 %indvars.iv840, %5
  %i.bn = icmp sgt i32 %.4613.a, 0
  %or.cond = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond, label %bb.ab, label %.critedge

bb.aa:                                            ; preds = %bb.y
  %.old4 = icmp sgt i32 %.4613.a, 0
  br i1 %.old4, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.bo = call i32 @isspace(i32 noundef %.4613.a) #16
  %.not524 = icmp eq i32 %i.bo, 0
  br i1 %.not524, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.as, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bp = trunc i32 %.4613.a to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %.0443, i64 %indvars.iv840
  store i8 %i.bp, ptr %i.bq, align 1
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next841 = add nuw nsw i64 %indvars.iv840, 1
  %i.br = load ptr, ptr %i.f, align 8
  %i.bs = call i32 %i.br(ptr noundef nonnull %0) #15
  br label %bb.y, !llvm.loop !12

.critedge:                                        ; preds = %bb.aa, %bb.z, %bb.ab
  br i1 %i.as, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %.0443, i64 %indvars.iv840
  store i8 0, ptr %i.bt, align 1
  %i.bu = add nsw i32 %.0418791, 1
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.critedge
  %.1419 = phi i32 [ %.0418791, %.critedge ], [ %i.bu, %bb.af ]
  %i.bv = add nsw i32 %.0409792, 1
  br label %.thread652

bb.ah:                                            ; preds = %bb.o
  %i.bw = trunc nuw i8 %.1436711 to i1            ; 3 uses
  br i1 %i.bw, label %bb.ap, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %3, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.bx = load i32, ptr %4, align 8               ; 3 uses
  %i.by = icmp ult i32 %i.bx, 41
  br i1 %i.by, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bz = load ptr, ptr %i.k, align 8
  %i.ca = zext nneg i32 %i.bx to i64
  %i.cb = getelementptr i8, ptr %i.bz, i64 %i.ca
  %i.cc = add nuw nsw i32 %i.bx, 8
  store i32 %i.cc, ptr %4, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.cd = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 8
  store ptr %i.ce, ptr %i.j, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.cf = phi ptr [ %i.cb, %bb.ak ], [ %i.cd, %bb.al ]
  %i.cg = load ptr, ptr %i.cf, align 8
  br label %bb.ao

bb.an:                                            ; preds = %bb.ai
  %i.ch = load ptr, ptr %4, align 8               ; 2 uses
  %i.ci = sext i32 %.1406712 to i64
  %i.cj = getelementptr inbounds i8, ptr %i.ch, i64 %i.ci
  store ptr %i.cj, ptr %4, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ck = phi ptr [ %i.cg, %bb.am ], [ %i.ch, %bb.an ] ; 2 uses
  store i8 0, ptr %i.ck, align 1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.ah
  %.1444 = phi ptr [ null, %bb.ah ], [ %i.ck, %bb.ao ]
  %i.cl = icmp sgt i32 %.2611, 0
  br i1 %i.cl, label %bb.aq, label %.thread652

bb.aq:                                            ; preds = %bb.ap
  %spec.store.select5 = call i32 @llvm.umax.i32(i32 %.1406712, i32 1) ; 3 uses
  %i.cm = icmp sgt i32 %spec.store.select5, 0
  br i1 %i.cm, label %.lr.ph722.preheader, label %._crit_edge.thread

.lr.ph722.preheader:                              ; preds = %bb.aq
  %i.cn = zext nneg i32 %spec.store.select5 to i64
  br label %.lr.ph722

.lr.ph722:                                        ; preds = %.lr.ph722.preheader, %bb.as
  %indvars.iv = phi i64 [ 0, %.lr.ph722.preheader ], [ %indvars.iv.next, %bb.as ] ; 2 uses
  %.5614720 = phi i32 [ %.2611, %.lr.ph722.preheader ], [ %i.cr, %bb.as ]
  br i1 %i.bw, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph722
  %i.co = trunc i32 %.5614720 to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %.1444, i64 %indvars.iv
  store i8 %i.co, ptr %i.cp, align 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph722
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cq = load ptr, ptr %i.f, align 8
  %i.cr = call i32 %i.cq(ptr noundef nonnull %0) #15 ; 4 uses
  %i.cs = icmp samesign ult i64 %indvars.iv.next, %i.cn
  %i.ct = icmp sgt i32 %i.cr, 0
  %i.cu = select i1 %i.cs, i1 %i.ct, i1 false
  br i1 %i.cu, label %.lr.ph722, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.as
  %i.cv = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cw = icmp eq i32 %spec.store.select5, %i.cv
  br i1 %i.cw, label %bb.at, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.aq, %._crit_edge
  %.5614.lcssa868 = phi i32 [ %i.cr, %._crit_edge ], [ %.2611, %bb.aq ]
  br i1 %i.e, label %.cont581, label %.else583

.else583:                                         ; preds = %._crit_edge.thread
  store i32 %.5614.lcssa868, ptr %1, align 4
  br label %.cont581

bb.at:                                            ; preds = %._crit_edge
  %not. = xor i1 %i.bw, true
  %i.cx = zext i1 %not. to i32
  %spec.select527 = add nsw i32 %.0418791, %i.cx
  %i.cy = add nsw i32 %.0409792, 1
  br label %.thread652

.thread:                                          ; preds = %bb.n, %.preheader685, %bb.o
  %.1456.pn699 = phi ptr [ %.1456.pn709, %bb.o ], [ %.1456, %.preheader685 ], [ %.4459, %bb.n ] ; 7 uses
  %.1440696 = phi i32 [ %.1440710, %bb.o ], [ 0, %.preheader685 ], [ %.2441, %bb.n ] ; 6 uses
  %.1436694 = phi i8 [ %.1436711, %bb.o ], [ 0, %.preheader685 ], [ %.2437, %bb.n ] ; 3 uses
  %.1406692 = phi i32 [ %.1406712, %bb.o ], [ 0, %.preheader685 ], [ %.2407, %bb.n ] ; 4 uses
  %.2457690 = phi ptr [ %.2457713, %bb.o ], [ %i.v, %.preheader685 ], [ %.2457, %bb.n ] ; 3 uses
  %i.cz = phi i32 [ %i.ar, %bb.o ], [ 0, %.preheader685 ], [ 0, %bb.n ]
  %.1432626 = phi i1 [ %spec.select, %bb.o ], [ %.0431790, %.preheader685 ], [ %.0431790, %bb.n ] ; 8 uses
  %i.da = call ptr @strchr(ptr noundef nonnull @.str.1, i32 noundef range(i32 -128, 128) %i.cz) #14
  %.not498 = icmp eq ptr %i.da, null
  br i1 %.not498, label %bb.dx, label %bb.au

bb.au:                                            ; preds = %.thread
  %i.db = trunc nuw i8 %.1436694 to i1            ; 2 uses
  br i1 %i.db, label %bb.cf, label %bb.av

bb.av:                                            ; preds = %bb.au
  switch i32 %.1440696, label %bb.br [
    i32 -2, label %bb.aw
    i32 -1, label %bb.bd
    i32 0, label %bb.bk
    i32 2, label %bb.by
  ]

bb.aw:                                            ; preds = %bb.av
  br i1 %3, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.dc = load i32, ptr %4, align 8               ; 3 uses
  %i.dd = icmp ult i32 %i.dc, 41
  br i1 %i.dd, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.de = load ptr, ptr %i.k, align 8
  %i.df = zext nneg i32 %i.dc to i64
  %i.dg = getelementptr i8, ptr %i.de, i64 %i.df
  %i.dh = add nuw nsw i32 %i.dc, 8
  store i32 %i.dh, ptr %4, align 8
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
  %i.di = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  store ptr %i.dj, ptr %i.j, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.dk = phi ptr [ %i.dg, %bb.ay ], [ %i.di, %bb.az ]
  %i.dl = load ptr, ptr %i.dk, align 8
  br label %bb.bc

bb.bb:                                            ; preds = %bb.aw
  %i.dm = load ptr, ptr %4, align 8               ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  store ptr %i.dn, ptr %4, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.do = phi ptr [ %i.dl, %bb.ba ], [ %i.dm, %bb.bb ] ; 2 uses
  store i8 0, ptr %i.do, align 1
  br label %bb.cf

bb.bd:                                            ; preds = %bb.av
  br i1 %3, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %bb.bd
  %i.dp = load i32, ptr %4, align 8               ; 3 uses
  %i.dq = icmp ult i32 %i.dp, 41
  br i1 %i.dq, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dr = load ptr, ptr %i.k, align 8
  %i.ds = zext nneg i32 %i.dp to i64
  %i.dt = getelementptr i8, ptr %i.dr, i64 %i.ds
  %i.du = add nuw nsw i32 %i.dp, 8
  store i32 %i.du, ptr %4, align 8
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.dv = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  store ptr %i.dw, ptr %i.j, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.dx = phi ptr [ %i.dt, %bb.bf ], [ %i.dv, %bb.bg ]
  %i.dy = load ptr, ptr %i.dx, align 8
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bd
  %i.dz = load ptr, ptr %4, align 8               ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 2
  store ptr %i.ea, ptr %4, align 8
  br label %bb.bj
end_hunk_0
begin_hunk_1_@vscanf_internal:bb.a
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fm
  %i.lr = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lr, i64 8
  store ptr %i.ls, ptr %i.j, align 8
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.lt = phi ptr [ %i.lp, %bb.fn ], [ %i.lr, %bb.fo ]
  %i.lu = load ptr, ptr %i.lt, align 8
  br label %bb.fr

bb.fq:                                            ; preds = %bb.fl
  %i.lv = load ptr, ptr %4, align 8               ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 1
  store ptr %i.lw, ptr %4, align 8
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.lx = phi ptr [ %i.lu, %bb.fp ], [ %i.lv, %bb.fq ] ; 2 uses
  %i.ly = trunc i64 %spec.select546 to i8
  store i8 %i.ly, ptr %i.lx, align 1
  br label %bb.gu

bb.fs:                                            ; preds = %bb.fk
  br i1 %3, label %bb.ft, label %bb.fx

bb.ft:                                            ; preds = %bb.fs
  %i.lz = load i32, ptr %4, align 8               ; 3 uses
  %i.ma = icmp ult i32 %i.lz, 41
  br i1 %i.ma, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.mb = load ptr, ptr %i.k, align 8
  %i.mc = zext nneg i32 %i.lz to i64
  %i.md = getelementptr i8, ptr %i.mb, i64 %i.mc
  %i.me = add nuw nsw i32 %i.lz, 8
  store i32 %i.me, ptr %4, align 8
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.mf = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.mg = getelementptr i8, ptr %i.mf, i64 8
  store ptr %i.mg, ptr %i.j, align 8
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.mh = phi ptr [ %i.md, %bb.fu ], [ %i.mf, %bb.fv ]
  %i.mi = load ptr, ptr %i.mh, align 8
  br label %bb.fy

bb.fx:                                            ; preds = %bb.fs
  %i.mj = load ptr, ptr %4, align 8               ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 2
  store ptr %i.mk, ptr %4, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.ml = phi ptr [ %i.mi, %bb.fw ], [ %i.mj, %bb.fx ] ; 2 uses
  %i.mm = trunc i64 %spec.select546 to i16
  store i16 %i.mm, ptr %i.ml, align 2
  br label %bb.gu

bb.fz:                                            ; preds = %bb.fk
  br i1 %3, label %bb.ga, label %bb.ge

bb.ga:                                            ; preds = %bb.fz
  %i.mn = load i32, ptr %4, align 8               ; 3 uses
  %i.mo = icmp ult i32 %i.mn, 41
  br i1 %i.mo, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.mp = load ptr, ptr %i.k, align 8
  %i.mq = zext nneg i32 %i.mn to i64
  %i.mr = getelementptr i8, ptr %i.mp, i64 %i.mq
  %i.ms = add nuw nsw i32 %i.mn, 8
  store i32 %i.ms, ptr %4, align 8
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.mt = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.mu = getelementptr i8, ptr %i.mt, i64 8
  store ptr %i.mu, ptr %i.j, align 8
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.mv = phi ptr [ %i.mr, %bb.gb ], [ %i.mt, %bb.gc ]
  %i.mw = load ptr, ptr %i.mv, align 8
  br label %bb.gf

bb.ge:                                            ; preds = %bb.fz
  %i.mx = load ptr, ptr %4, align 8               ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  store ptr %i.my, ptr %4, align 8
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.mz = phi ptr [ %i.mw, %bb.gd ], [ %i.mx, %bb.ge ] ; 2 uses
  %i.na = trunc i64 %spec.select546 to i32
  store i32 %i.na, ptr %i.mz, align 4
  br label %bb.gu

bb.gg:                                            ; preds = %bb.fk
  br i1 %3, label %bb.gh, label %bb.gl

bb.gh:                                            ; preds = %bb.gg
  %i.nb = load i32, ptr %4, align 8               ; 3 uses
  %i.nc = icmp ult i32 %i.nb, 41
  br i1 %i.nc, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.nd = load ptr, ptr %i.k, align 8
  %i.ne = zext nneg i32 %i.nb to i64
  %i.nf = getelementptr i8, ptr %i.nd, i64 %i.ne
  %i.ng = add nuw nsw i32 %i.nb, 8
  store i32 %i.ng, ptr %4, align 8
  br label %bb.gk

bb.gj:                                            ; preds = %bb.gh
  %i.nh = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.ni = getelementptr i8, ptr %i.nh, i64 8
  store ptr %i.ni, ptr %i.j, align 8
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.nj = phi ptr [ %i.nf, %bb.gi ], [ %i.nh, %bb.gj ]
  %i.nk = load ptr, ptr %i.nj, align 8
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gg
  %i.nl = load ptr, ptr %4, align 8               ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 8
  store ptr %i.nm, ptr %4, align 8
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %i.nn = phi ptr [ %i.nk, %bb.gk ], [ %i.nl, %bb.gl ] ; 2 uses
  store i64 %spec.select546, ptr %i.nn, align 8
  br label %bb.gu

bb.gn:                                            ; preds = %bb.fk
  br i1 %3, label %bb.go, label %bb.gs

bb.go:                                            ; preds = %bb.gn
  %i.no = load i32, ptr %4, align 8               ; 3 uses
  %i.np = icmp ult i32 %i.no, 41
  br i1 %i.np, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.nq = load ptr, ptr %i.k, align 8
  %i.nr = zext nneg i32 %i.no to i64
  %i.ns = getelementptr i8, ptr %i.nq, i64 %i.nr
  %i.nt = add nuw nsw i32 %i.no, 8
  store i32 %i.nt, ptr %4, align 8
  br label %bb.gr

bb.gq:                                            ; preds = %bb.go
  %i.nu = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.nv = getelementptr i8, ptr %i.nu, i64 8
  store ptr %i.nv, ptr %i.j, align 8
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp
  %i.nw = phi ptr [ %i.ns, %bb.gp ], [ %i.nu, %bb.gq ]
  %i.nx = load ptr, ptr %i.nw, align 8
  br label %bb.gt

bb.gs:                                            ; preds = %bb.gn
  %i.ny = load ptr, ptr %4, align 8               ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 8
  store ptr %i.nz, ptr %4, align 8
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gs, %bb.gr
  %i.oa = phi ptr [ %i.nx, %bb.gr ], [ %i.ny, %bb.gs ] ; 2 uses
  store i64 %spec.select546, ptr %i.oa, align 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.fr, %bb.fy, %bb.gf, %bb.gm, %bb.gt, %bb.fj
  %.3389 = phi ptr [ %.0386793, %bb.fj ], [ %.0386793, %bb.gm ], [ %.0386793, %bb.fr ], [ %.0386793, %bb.fy ], [ %.0386793, %bb.gf ], [ %i.oa, %bb.gt ]
  %.3383 = phi ptr [ %.0380795, %bb.fj ], [ %i.nn, %bb.gm ], [ %.0380795, %bb.fr ], [ %.0380795, %bb.fy ], [ %.0380795, %bb.gf ], [ %.0380795, %bb.gt ]
  %.3377 = phi ptr [ %.0374797, %bb.fj ], [ %.0374797, %bb.gm ], [ %.0374797, %bb.fr ], [ %.0374797, %bb.fy ], [ %i.mz, %bb.gf ], [ %.0374797, %bb.gt ]
  %.3371 = phi ptr [ %.0368799, %bb.fj ], [ %.0368799, %bb.gm ], [ %.0368799, %bb.fr ], [ %i.ml, %bb.fy ], [ %.0368799, %bb.gf ], [ %.0368799, %bb.gt ]
  %.3365 = phi ptr [ %.0362801, %bb.fj ], [ %.0362801, %bb.gm ], [ %i.lx, %bb.fr ], [ %.0362801, %bb.fy ], [ %.0362801, %bb.gf ], [ %.0362801, %bb.gt ]
  %i.ob = add nsw i32 %.0409792, 1
  br label %.thread652

bb.gv:                                            ; preds = %bb.fi
  %.not500 = icmp eq i32 %.2611, 37
  br i1 %.not500, label %bb.gw, label %._crit_edge805.loopexit

bb.gw:                                            ; preds = %bb.gv
  %i.oc = load ptr, ptr %i.f, align 8
  %i.od = call i32 %i.oc(ptr noundef nonnull %0) #15
  br label %.thread652

.thread652:                                       ; preds = %._crit_edge774, %._crit_edge733, %bb.fh, %bb.dw, %bb.fi, %bb.at, %bb.ap, %bb.gw, %bb.gu, %._crit_edge728, %bb.ag
  %.1456.pn698 = phi ptr [ %.1456.pn699, %bb.fi ], [ %.1456.pn699, %bb.gu ], [ %.1456.pn699, %bb.gw ], [ %.1456.pn699, %bb.fh ], [ %.1456.pn699, %bb.dw ], [ %.1456.pn709, %bb.ag ], [ %.1456.pn709, %._crit_edge728 ], [ %.1456.pn709, %bb.at ], [ %.1456.pn709, %bb.ap ], [ %.1456.pn699, %._crit_edge733 ], [ %.1456.pn699, %._crit_edge774 ]
  %.1432625 = phi i1 [ %.1432626, %bb.fi ], [ %.1432626, %bb.gu ], [ %.1432626, %bb.gw ], [ %.1432626, %bb.fh ], [ %.1432626, %bb.dw ], [ %spec.select, %bb.ag ], [ %spec.select, %._crit_edge728 ], [ %spec.select, %bb.at ], [ %spec.select, %bb.ap ], [ %.1432626, %._crit_edge733 ], [ %.1432626, %._crit_edge774 ]
  %.25 = phi i32 [ %.2611, %bb.fi ], [ %.2611, %bb.gu ], [ %i.od, %bb.gw ], [ %.21.lcssa, %bb.fh ], [ %.17, %bb.dw ], [ %.4613.a, %bb.ag ], [ %.3612.lcssa, %._crit_edge728 ], [ %i.cr, %bb.at ], [ %.2611, %bb.ap ], [ %.6615.lcssa, %._crit_edge733 ], [ %.20.lcssa, %._crit_edge774 ]
  %.11429 = phi i32 [ %.0418791, %bb.fi ], [ %.0418791, %bb.gu ], [ %.0418791, %bb.gw ], [ %.7425, %bb.fh ], [ %.3421, %bb.dw ], [ %.1419, %bb.ag ], [ %.0418791, %._crit_edge728 ], [ %spec.select527, %bb.at ], [ %.0418791, %bb.ap ], [ %.0418791, %._crit_edge733 ], [ %.0418791, %._crit_edge774 ]
  %.7416 = phi i32 [ %.0409792, %bb.fi ], [ %i.ob, %bb.gu ], [ %.0409792, %bb.gw ], [ %i.ld, %bb.fh ], [ %i.ip, %bb.dw ], [ %i.bv, %bb.ag ], [ %.0409792, %._crit_edge728 ], [ %i.cy, %bb.at ], [ %.0409792, %bb.ap ], [ %.0409792, %._crit_edge733 ], [ %.0409792, %._crit_edge774 ]
  %.4390 = phi ptr [ %.0386793, %bb.fi ], [ %.3389, %bb.gu ], [ %.0386793, %bb.gw ], [ %.0386793, %bb.fh ], [ %.1387, %bb.dw ], [ %.0386793, %bb.ag ], [ %.0386793, %._crit_edge728 ], [ %.0386793, %bb.at ], [ %.0386793, %bb.ap ], [ %.1387, %._crit_edge733 ], [ %.0386793, %._crit_edge774 ]
  %.4384 = phi ptr [ %.0380795, %bb.fi ], [ %.3383, %bb.gu ], [ %.0380795, %bb.gw ], [ %.0380795, %bb.fh ], [ %.1381, %bb.dw ], [ %.0380795, %bb.ag ], [ %.0380795, %._crit_edge728 ], [ %.0380795, %bb.at ], [ %.0380795, %bb.ap ], [ %.1381, %._crit_edge733 ], [ %.0380795, %._crit_edge774 ]
  %.4378 = phi ptr [ %.0374797, %bb.fi ], [ %.3377, %bb.gu ], [ %.0374797, %bb.gw ], [ %.0374797, %bb.fh ], [ %.1375, %bb.dw ], [ %.0374797, %bb.ag ], [ %.0374797, %._crit_edge728 ], [ %.0374797, %bb.at ], [ %.0374797, %bb.ap ], [ %.1375, %._crit_edge733 ], [ %.0374797, %._crit_edge774 ]
  %.4372 = phi ptr [ %.0368799, %bb.fi ], [ %.3371, %bb.gu ], [ %.0368799, %bb.gw ], [ %.0368799, %bb.fh ], [ %.1369, %bb.dw ], [ %.0368799, %bb.ag ], [ %.0368799, %._crit_edge728 ], [ %.0368799, %bb.at ], [ %.0368799, %bb.ap ], [ %.1369, %._crit_edge733 ], [ %.0368799, %._crit_edge774 ]
  %.4366 = phi ptr [ %.0362801, %bb.fi ], [ %.3365, %bb.gu ], [ %.0362801, %bb.gw ], [ %.0362801, %bb.fh ], [ %.1363, %bb.dw ], [ %.0362801, %bb.ag ], [ %.0362801, %._crit_edge728 ], [ %.0362801, %bb.at ], [ %.0362801, %bb.ap ], [ %.1363, %._crit_edge733 ], [ %.0362801, %._crit_edge774 ]
  %i.oe = getelementptr inbounds nuw i8, ptr %.1456.pn698, i64 2
  br label %bb.gz

bb.gx:                                            ; preds = %bb.d
  %i.of = icmp sgt i32 %.2611, 0
  %.not494 = icmp eq i32 %.2611, %i.t
  %or.cond547 = and i1 %i.of, %.not494
  br i1 %or.cond547, label %bb.gy, label %._crit_edge805.loopexit

bb.gy:                                            ; preds = %bb.gx
  %i.og = load ptr, ptr %i.f, align 8
  %i.oh = call i32 %i.og(ptr noundef nonnull %0) #15
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %.thread652
  %.26 = phi i32 [ %.25, %.thread652 ], [ %i.oh, %bb.gy ] ; 2 uses
  %.5460 = phi ptr [ %i.oe, %.thread652 ], [ %i.v, %bb.gy ] ; 2 uses
  %.2433 = phi i1 [ %.1432625, %.thread652 ], [ %.0431790, %bb.gy ] ; 2 uses
  %.12430 = phi i32 [ %.11429, %.thread652 ], [ %.0418791, %bb.gy ] ; 2 uses
  %.8417 = phi i32 [ %.7416, %.thread652 ], [ %.0409792, %bb.gy ] ; 2 uses
  %.5391 = phi ptr [ %.4390, %.thread652 ], [ %.0386793, %bb.gy ]
  %.5385 = phi ptr [ %.4384, %.thread652 ], [ %.0380795, %bb.gy ]
  %.5379 = phi ptr [ %.4378, %.thread652 ], [ %.0374797, %bb.gy ]
  %.5373 = phi ptr [ %.4372, %.thread652 ], [ %.0368799, %bb.gy ]
  %.5367 = phi ptr [ %.4366, %.thread652 ], [ %.0362801, %bb.gy ]
  %i.oi = load i8, ptr %.5460, align 1            ; 2 uses
  %.not = icmp eq i8 %i.oi, 0
  br i1 %.not, label %._crit_edge805.loopexit, label %bb.b, !llvm.loop !22

._crit_edge805.loopexit:                          ; preds = %bb.gx, %bb.gv, %bb.gz
  %.0418.lcssa.ph = phi i32 [ %.12430, %bb.gz ], [ %.0418791, %bb.gv ], [ %.0418791, %bb.gx ]
  %.0409.lcssa.ph = phi i32 [ %.8417, %bb.gz ], [ %.0409792, %bb.gv ], [ %.0409792, %bb.gx ]
  %.27.ph = phi i32 [ %.26, %bb.gz ], [ %.2611, %bb.gv ], [ %.2611, %bb.gx ]
  %.3434.ph = phi i1 [ %.2433, %bb.gz ], [ %.1432626, %bb.gv ], [ %.0431790, %bb.gx ]
  %i.oj = icmp eq i32 %.0409.lcssa.ph, 0
  %i.ok = select i1 %i.oj, i1 %.3434.ph, i1 false
  %i.ol = select i1 %i.ok, i32 -1, i32 %.0418.lcssa.ph
  br label %._crit_edge805

._crit_edge805:                                   ; preds = %._crit_edge805.loopexit, %bb.a
  %.0409.lcssa = phi i32 [ 0, %bb.a ], [ %i.ol, %._crit_edge805.loopexit ] ; 2 uses
  %.27 = phi i32 [ %i.h, %bb.a ], [ %.27.ph, %._crit_edge805.loopexit ]
  br i1 %i.e, label %.cont581, label %.else

.else:                                            ; preds = %._crit_edge805
  store i32 %.27, ptr %1, align 4
  br label %.cont581

.cont581:                                         ; preds = %.else, %._crit_edge805, %.thread671, %.thread659, %.else583, %._crit_edge.thread
  %.9454 = phi i32 [ %.0418791, %.else583 ], [ %.0418791, %.thread659 ], [ %.0418791, %.thread671 ], [ %.0418791, %._crit_edge.thread ], [ %.0409.lcssa, %._crit_edge805 ], [ %.0409.lcssa, %.else ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.9454
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_scanf(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, ...) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %union.vabuf_u, align 8             ; 5 uses
  %4 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.va_start.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.va_copy.p0(ptr nonnull %3, ptr nonnull %4)
  %i.a = call fastcc i32 @vscanf_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext true, ptr noundef nonnull byval(%union.vabuf_u) align 8 %3) #14
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.va_end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: noredzone nounwind optsize uwtable
define dso_local i32 @lib_bscanf(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %4 = alloca %union.vabuf_u, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr %3, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.b = tail call fastcc i32 @vscanf_internal(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext false, ptr noundef nonnull byval(%union.vabuf_u) align 8 %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree noredzone nounwind optsize willreturn memory(read)
declare dso_local i32 @isspace(i32 noundef) local_unnamed_addr #6

; Function Attrs: alwaysinline nobuiltin noredzone nounwind optsize uwtable
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree noredzone optsize
declare dso_local i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(read)
declare dso_local i32 @atoi(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noredzone optsize
declare dso_local ptr @__errno() local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local i64 @strtoul(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local i64 @strtoull(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree noredzone nounwind optsize willreturn
declare dso_local float @strtof(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memcpy" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-memset" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { noredzone nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree noredzone nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { alwaysinline nobuiltin noredzone nounwind optsize uwtable "no-builtin-strchr" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noredzone optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree noredzone nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noredzone optsize }
attributes #15 = { noredzone nounwind optsize }
attributes #16 = { noredzone nounwind optsize willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = distinct !{!7, !23}
!8 = distinct !{!8, !23}
!9 = distinct !{!9, !23}
!10 = distinct !{!10, !23}
!11 = distinct !{!11, !23}
!12 = distinct !{!12, !23}
!13 = distinct !{!13, !23}
!14 = distinct !{!14, !23}
!15 = distinct !{!15, !23}
!16 = distinct !{!16, !23}
!17 = distinct !{!17, !23}
!18 = distinct !{!18, !23}
!19 = distinct !{!19, !23}
!20 = distinct !{!20, !23}
!21 = distinct !{!21, !23}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{i64 523129}
end_hunk_1
