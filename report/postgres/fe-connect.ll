Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-connect?download=true
inline.NumInlined: 99
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@pqConnectOptions2:bb.a
  %.04.i = phi ptr [ %i.j, %bb.d ], [ %i.f, %bb.b ]
  %.0.i = phi i32 [ %.1.i, %bb.d ], [ 1, %bb.b ]  ; 3 uses
  switch i8 %i.h, label %bb.d [
    i8 0, label %count_comma_separated_elems.exit
    i8 44, label %bb.c
  ]

bb.c:                                             ; preds = %.preheader688
  %i.i = add i32 %.0.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader688
  %.1.i = phi i32 [ %i.i, %bb.c ], [ %.0.i, %.preheader688 ]
  %i.j = getelementptr inbounds nuw i8, ptr %.04.i, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.j, align 1
  br label %.preheader688, !llvm.loop !15

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr %0, align 8                ; 3 uses
  %.not478 = icmp eq ptr %i.k, null
  br i1 %.not478, label %count_comma_separated_elems.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load i8, ptr %i.k, align 1               ; 2 uses
  %.not479 = icmp eq i8 %i.l, 0
  br i1 %.not479, label %count_comma_separated_elems.exit, label %.preheader687

.preheader687:                                    ; preds = %bb.f, %bb.h
  %i.m = phi i8 [ %.pr602, %bb.h ], [ %i.l, %bb.f ]
  %.04.i549 = phi ptr [ %i.o, %bb.h ], [ %i.k, %bb.f ]
  %.0.i550 = phi i32 [ %.1.i551, %bb.h ], [ 1, %bb.f ] ; 3 uses
  switch i8 %i.m, label %bb.h [
    i8 0, label %count_comma_separated_elems.exit
    i8 44, label %bb.g
  ]

bb.g:                                             ; preds = %.preheader687
  %i.n = add i32 %.0.i550, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader687
  %.1.i551 = phi i32 [ %i.n, %bb.g ], [ %.0.i550, %.preheader687 ]
  %i.o = getelementptr inbounds nuw i8, ptr %.04.i549, i64 1 ; 2 uses
  %.pr602 = load i8, ptr %i.o, align 1
  br label %.preheader687, !llvm.loop !15

count_comma_separated_elems.exit:                 ; preds = %.preheader688, %.preheader687, %bb.e, %bb.f
  %.0.i550.lcssa.sink = phi i32 [ %.0.i550, %.preheader687 ], [ 1, %bb.e ], [ 1, %bb.f ], [ %.0.i, %.preheader688 ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 576
  store i32 %.0.i550.lcssa.sink, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 12 uses
  %i.r = sext i32 %.0.i550.lcssa.sink to i64
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.r, i64 noundef 40) #27 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 14 uses
  store ptr %i.s, ptr %i.t, align 8
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %.thread613, label %bb.i

bb.i:                                             ; preds = %count_comma_separated_elems.exit
  br i1 %.not476, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = load i8, ptr %i.f, align 1
  %.not481 = icmp eq i8 %i.v, 0
  br i1 %.not481, label %.thread, label %.preheader685

.preheader685:                                    ; preds = %bb.j
  %i.w = load i32, ptr %i.q, align 8
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.preheader684, label %.thread

.preheader684:                                    ; preds = %.preheader685, %bb.n
  %i.y = phi ptr [ %i.ak, %bb.n ], [ %i.s, %.preheader685 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.preheader685 ] ; 3 uses
  %.0601717 = phi ptr [ %i.ap, %bb.n ], [ %i.f, %.preheader685 ] ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %.preheader684, %bb.l
  %.0.i553 = phi ptr [ %i.aa, %bb.l ], [ %.0601717, %.preheader684 ] ; 4 uses
  %i.z = load i8, ptr %.0.i553, align 1           ; 2 uses
  switch i8 %i.z, label %bb.l [
    i8 0, label %.critedge.i
    i8 44, label %.critedge.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i553, i64 1
  br label %bb.k, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.k, %bb.k
  %i.ab = icmp eq i8 %i.z, 44
  %i.ac = ptrtoint ptr %.0.i553 to i64
  %i.ad = ptrtoint ptr %.0601717 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = add i64 %i.ae, 1
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.af) #26 ; 4 uses
  %.not21.i = icmp eq ptr %i.ag, null
  br i1 %.not21.i, label %parse_comma_separated_list.exit, label %bb.m

bb.m:                                             ; preds = %.critedge.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull align 1 %.0601717, i64 %i.ae, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ae
  store i8 0, ptr %i.ah, align 1
  br label %parse_comma_separated_list.exit

parse_comma_separated_list.exit:                  ; preds = %.critedge.i, %bb.m
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.y, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %i.ag, ptr %i.aj, align 8
  %i.ak = load ptr, ptr %i.t, align 8             ; 3 uses
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.thread613, label %bb.n

bb.n:                                             ; preds = %parse_comma_separated_list.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i553, i64 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = load i32, ptr %i.q, align 8
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  %i.at = and i1 %i.ab, %i.as
  br i1 %i.at, label %.preheader684, label %.thread, !llvm.loop !17

.thread:                                          ; preds = %bb.n, %.preheader685, %bb.j, %bb.i
  %i.au = phi ptr [ %i.s, %bb.i ], [ %i.s, %.preheader685 ], [ %i.s, %bb.j ], [ %i.ak, %bb.n ]
  %i.av = load ptr, ptr %0, align 8               ; 3 uses
  %.not482 = icmp eq ptr %i.av, null
  br i1 %.not482, label %.thread..thread606_crit_edge, label %bb.o

.thread..thread606_crit_edge:                     ; preds = %.thread
  %.pre = load i32, ptr %i.q, align 8
  br label %.thread606

bb.o:                                             ; preds = %.thread
  %i.aw = load i8, ptr %i.av, align 1
  %.not483 = icmp eq i8 %i.aw, 0
  %.pre797 = load i32, ptr %i.q, align 8          ; 3 uses
  br i1 %.not483, label %.thread606, label %.preheader682

.preheader682:                                    ; preds = %bb.o
  %i.ax = icmp sgt i32 %.pre797, 0
  br i1 %i.ax, label %.preheader681, label %._crit_edge.thread

.preheader681:                                    ; preds = %.preheader682, %bb.s
  %i.ay = phi ptr [ %i.bk, %bb.s ], [ %i.au, %.preheader682 ]
  %indvars.iv776 = phi i64 [ %indvars.iv.next777, %bb.s ], [ 0, %.preheader682 ] ; 3 uses
  %.0599719 = phi ptr [ %i.bp, %bb.s ], [ %i.av, %.preheader682 ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %.preheader681, %bb.q
  %.0.i554 = phi ptr [ %i.ba, %bb.q ], [ %.0599719, %.preheader681 ] ; 4 uses
  %i.az = load i8, ptr %.0.i554, align 1          ; 2 uses
  switch i8 %i.az, label %bb.q [
    i8 0, label %.critedge.i555
    i8 44, label %.critedge.i555
  ]

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i554, i64 1
  br label %bb.p, !llvm.loop !16

.critedge.i555:                                   ; preds = %bb.p, %bb.p
  %i.bb = icmp eq i8 %i.az, 44                    ; 2 uses
  %i.bc = ptrtoint ptr %.0.i554 to i64
  %i.bd = ptrtoint ptr %.0599719 to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 3 uses
  %i.bf = add i64 %i.be, 1
  %i.bg = tail call noalias ptr @malloc(i64 noundef %i.bf) #26 ; 4 uses
  %.not21.i556 = icmp eq ptr %i.bg, null
  br i1 %.not21.i556, label %parse_comma_separated_list.exit557, label %bb.r

bb.r:                                             ; preds = %.critedge.i555
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull align 1 %.0599719, i64 %i.be, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.be
  store i8 0, ptr %i.bh, align 1
  br label %parse_comma_separated_list.exit557

parse_comma_separated_list.exit557:               ; preds = %.critedge.i555, %bb.r
  %i.bi = getelementptr inbounds nuw [40 x i8], ptr %i.ay, i64 %indvars.iv776
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.bg, ptr %i.bj, align 8
  %i.bk = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %i.bk, i64 %indvars.iv776
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %.thread613, label %bb.s

bb.s:                                             ; preds = %parse_comma_separated_list.exit557
  %i.bp = getelementptr inbounds nuw i8, ptr %.0.i554, i64 1
  %indvars.iv.next777 = add nuw nsw i64 %indvars.iv776, 1 ; 3 uses
  %i.bq = load i32, ptr %i.q, align 8             ; 3 uses
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next777, %i.br
  %i.bt = and i1 %i.bb, %i.bs
  br i1 %i.bt, label %.preheader681, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.s
  %i.bu = trunc nuw nsw i64 %indvars.iv.next777 to i32 ; 2 uses
  %.not484 = icmp ne i32 %i.bq, %i.bu
  %or.cond544.not = or i1 %i.bb, %.not484
  br i1 %or.cond544.not, label %._crit_edge.thread, label %.thread606

._crit_edge.thread:                               ; preds = %.preheader682, %._crit_edge
  %.lcssa712858 = phi i32 [ %i.bq, %._crit_edge ], [ %.pre797, %.preheader682 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 1, ptr %i.bv, align 8
  %i.bw = load ptr, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %._crit_edge.thread
  %.04.i558 = phi ptr [ %i.bw, %._crit_edge.thread ], [ %i.bz, %bb.v ] ; 2 uses
  %.0.i559 = phi i32 [ 1, %._crit_edge.thread ], [ %.1.i560, %bb.v ] ; 3 uses
  %i.bx = load i8, ptr %.04.i558, align 1
  switch i8 %i.bx, label %bb.v [
    i8 0, label %.thread604
    i8 44, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.by = add i32 %.0.i559, 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i560 = phi i32 [ %i.by, %bb.u ], [ %.0.i559, %bb.t ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.04.i558, i64 1
  br label %bb.t, !llvm.loop !15

.thread604:                                       ; preds = %bb.t
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, i32 noundef %.0.i559, i32 noundef %.lcssa712858) #23
  br label %.thread659

.thread606:                                       ; preds = %.thread..thread606_crit_edge, %._crit_edge, %bb.o
  %5 = phi i32 [ %.pre, %.thread..thread606_crit_edge ], [ %i.bu, %._crit_edge ], [ %.pre797, %bb.o ] ; 2 uses
  %i.ca = icmp sgt i32 %5, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge724

.lr.ph:                                           ; preds = %.thread606, %bb.ab
  %indvars.iv779 = phi i64 [ %indvars.iv.next780, %bb.ab ], [ 0, %.thread606 ] ; 2 uses
  %i.cb = load ptr, ptr %i.t, align 8
  %i.cc = getelementptr inbounds nuw [40 x i8], ptr %i.cb, i64 %indvars.iv779 ; 5 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not539 = icmp eq ptr %i.ce, null
  br i1 %.not539, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.cf = load i8, ptr %i.ce, align 1
  %.not540 = icmp eq i8 %i.cf, 0
  br i1 %.not540, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w, %.lr.ph
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 8 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8            ; 4 uses
  %.not541 = icmp eq ptr %i.ch, null
  br i1 %.not541, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ci = load i8, ptr %i.ch, align 1
  %.not542 = icmp eq i8 %i.ci, 0
  br i1 %.not542, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cc, align 8
  %.val = load i8, ptr %i.ch, align 1
  switch i8 %.val, label %bb.ab [
    i8 64, label %.sink.split
    i8 47, label %.sink.split
  ]

bb.aa:                                            ; preds = %bb.y, %bb.x
  tail call void @free(ptr noundef %i.ch) #23
  %i.cj = tail call noalias dereferenceable_or_null(5) ptr @strdup(ptr noundef nonnull @.str.2) #23 ; 2 uses
  store ptr %i.cj, ptr %i.cg, align 8
  store i32 2, ptr %i.cc, align 8
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread613, label %bb.ab

.sink.split:                                      ; preds = %bb.z, %bb.z, %bb.w
  %.sink = phi i32 [ 1, %bb.w ], [ 2, %bb.z ], [ 2, %bb.z ]
  store i32 %.sink, ptr %i.cc, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.z, %bb.aa
  %indvars.iv.next780 = add nuw nsw i64 %indvars.iv779, 1 ; 2 uses
  %i.cl = load i32, ptr %i.q, align 8             ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next780, %i.cm
  br i1 %i.cn, label %.lr.ph, label %._crit_edge724, !llvm.loop !19

._crit_edge724:                                   ; preds = %bb.ab, %.thread606
  %i.co = phi i32 [ %5, %.thread606 ], [ %i.cl, %bb.ab ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8            ; 3 uses
  %.not485 = icmp eq ptr %i.cq, null
  br i1 %.not485, label %.thread610, label %bb.ac

bb.ac:                                            ; preds = %._crit_edge724
  %i.cr = load i8, ptr %i.cq, align 1
  %.not486 = icmp eq i8 %i.cr, 0
  br i1 %.not486, label %.thread610, label %.preheader678

.preheader678:                                    ; preds = %bb.ac
  %i.cs = icmp sgt i32 %i.co, 0
  br i1 %i.cs, label %.preheader677, label %.thread864

.preheader677:                                    ; preds = %.preheader678, %bb.ag
  %indvars.iv782 = phi i64 [ %indvars.iv.next783, %bb.ag ], [ 0, %.preheader678 ] ; 4 uses
  %.0597725 = phi ptr [ %i.dk, %bb.ag ], [ %i.cq, %.preheader678 ] ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.preheader677, %bb.ae
  %.0.i562 = phi ptr [ %i.cu, %bb.ae ], [ %.0597725, %.preheader677 ] ; 4 uses
  %i.ct = load i8, ptr %.0.i562, align 1          ; 2 uses
  switch i8 %i.ct, label %bb.ae [
    i8 0, label %.critedge.i563
    i8 44, label %.critedge.i563
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i562, i64 1
  br label %bb.ad, !llvm.loop !16

.critedge.i563:                                   ; preds = %bb.ad, %bb.ad
  %i.cv = icmp eq i8 %i.ct, 44                    ; 3 uses
  %i.cw = ptrtoint ptr %.0.i562 to i64
  %i.cx = ptrtoint ptr %.0597725 to i64
  %i.cy = sub i64 %i.cw, %i.cx                    ; 3 uses
  %i.cz = add i64 %i.cy, 1
  %i.da = tail call noalias ptr @malloc(i64 noundef %i.cz) #26 ; 4 uses
  %.not21.i564 = icmp eq ptr %i.da, null
  br i1 %.not21.i564, label %parse_comma_separated_list.exit565, label %bb.af

bb.af:                                            ; preds = %.critedge.i563
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.da, ptr nonnull align 1 %.0597725, i64 %i.cy, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cy
  store i8 0, ptr %i.db, align 1
  br label %parse_comma_separated_list.exit565

parse_comma_separated_list.exit565:               ; preds = %.critedge.i563, %bb.af
  %i.dc = load ptr, ptr %i.t, align 8
  %i.dd = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %indvars.iv782
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr %i.da, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.t, align 8
  %i.dg = getelementptr inbounds nuw [40 x i8], ptr %i.df, i64 %indvars.iv782
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = icmp eq ptr %i.di, null
  br i1 %i.dj, label %.thread613, label %bb.ag

bb.ag:                                            ; preds = %parse_comma_separated_list.exit565
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i562, i64 1
  %indvars.iv.next783 = add nuw nsw i64 %indvars.iv782, 1 ; 3 uses
  %i.dl = load i32, ptr %i.q, align 8             ; 4 uses
  %i.dm = sext i32 %i.dl to i64
  %i.dn = icmp slt i64 %indvars.iv.next783, %i.dm
  %i.do = and i1 %i.cv, %i.dn
  br i1 %i.do, label %.preheader677, label %._crit_edge727, !llvm.loop !20

._crit_edge727:                                   ; preds = %bb.ag
  %i.dp = icmp ne i64 %indvars.iv782, 0
  %or.cond = or i1 %i.cv, %i.dp
  br i1 %or.cond, label %bb.ai, label %.preheader675

.preheader675:                                    ; preds = %._crit_edge727
  %i.dq = icmp sgt i32 %i.dl, 1
  br i1 %i.dq, label %.lr.ph732.preheader, label %.thread610

.lr.ph732.preheader:                              ; preds = %.preheader675
  %.pre798 = load ptr, ptr %i.t, align 8
  br label %.lr.ph732

bb.ah:                                            ; preds = %.lr.ph732
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %i.dr = load i32, ptr %i.q, align 8
  %i.ds = sext i32 %i.dr to i64
  %i.dt = icmp slt i64 %indvars.iv.next786, %i.ds
  br i1 %i.dt, label %.lr.ph732, label %.thread610, !llvm.loop !21

.lr.ph732:                                        ; preds = %.lr.ph732.preheader, %bb.ah
  %i.du = phi ptr [ %.pre798, %.lr.ph732.preheader ], [ %i.ea, %bb.ah ] ; 2 uses
  %indvars.iv785 = phi i64 [ 1, %.lr.ph732.preheader ], [ %indvars.iv.next786, %bb.ah ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = tail call noalias ptr @strdup(ptr noundef %i.dw) #23
  %i.dy = getelementptr inbounds nuw [40 x i8], ptr %i.du, i64 %indvars.iv785
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store ptr %i.dx, ptr %i.dz, align 8
  %i.ea = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.eb = getelementptr inbounds nuw [40 x i8], ptr %i.ea, i64 %indvars.iv785
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.thread613, label %bb.ah

bb.ai:                                            ; preds = %._crit_edge727
  %i.ef = trunc nuw nsw i64 %indvars.iv.next783 to i32
  %.not487 = icmp ne i32 %i.dl, %i.ef
  %or.cond547.not = or i1 %i.cv, %.not487
  br i1 %or.cond547.not, label %.thread864, label %.thread610

.thread864:                                       ; preds = %.preheader678, %bb.ai
  %i.eg = phi i32 [ %i.dl, %bb.ai ], [ %i.co, %.preheader678 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 1, ptr %i.eh, align 8
  %i.ei = load ptr, ptr %i.cp, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.thread864
  %.04.i566 = phi ptr [ %i.ei, %.thread864 ], [ %i.el, %bb.al ] ; 2 uses
  %.0.i567 = phi i32 [ 1, %.thread864 ], [ %.1.i568, %bb.al ] ; 3 uses
  %i.ej = load i8, ptr %.04.i566, align 1
  switch i8 %i.ej, label %bb.al [
    i8 0, label %bb.am
    i8 44, label %bb.ak
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.ek = add i32 %.0.i567, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1.i568 = phi i32 [ %i.ek, %bb.ak ], [ %.0.i567, %bb.aj ]
  %i.el = getelementptr inbounds nuw i8, ptr %.04.i566, i64 1
  br label %bb.aj, !llvm.loop !15

bb.am:                                            ; preds = %bb.aj
  tail call void (ptr, ptr, ...) @libpq_append_conn_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, i32 noundef %.0.i567, i32 noundef %i.eg) #23
  br label %.thread659

.thread610:                                       ; preds = %bb.ah, %.preheader675, %bb.ai, %bb.ac, %._crit_edge724
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.en = load ptr, ptr %i.em, align 8            ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.thread610
  %i.ep = load i8, ptr %i.en, align 1
end_hunk_0
