inline.NumInlined: 130
inline.NumDeleted: 29
begin_hunk_0_@init_lists:bb.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !109
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 6368
  store i32 %i.al, ptr %i.am, align 8, !tbaa !110
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv866
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !55 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !103
  %i.ar = icmp eq i32 %i.aq, 3
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !62 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 6376
  %i.av = load i32, ptr %i.au, align 8, !tbaa !102
  %.not276.1 = icmp eq i32 %i.av, 0
  br i1 %.not276.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 6372
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !109
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 6368
  store i32 %i.ax, ptr %i.ay, align 8, !tbaa !110
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %indvars.iv.next867.1 = add nuw nsw i64 %indvars.iv866, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit651.loopexit.unr-lcssa, label %bb.g, !llvm.loop !111

bb.n:                                             ; preds = %bb.a
  %i.az = icmp ne i32 %1, 1                       ; 2 uses
  %. = zext i1 %i.az to i32                       ; 2 uses
  %not. = xor i1 %i.az, true
  %.279 = zext i1 %not. to i32                    ; 2 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 4 uses
  %.not791 = icmp eq i32 %i.ba, 0
  br i1 %.not791, label %.preheader653, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.bc = load ptr, ptr @img, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 15332
  %wide.trip.count = zext i32 %i.ba to i64
  br label %bb.o

.preheader653:                                    ; preds = %bb.t, %bb.n
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 2 uses
  %.not792 = icmp eq i32 %i.be, 0
  br i1 %.not792, label %.loopexit651, label %.lr.ph704

.lr.ph704:                                        ; preds = %.preheader653
  %i.bf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %wide.trip.count859 = zext i32 %i.be to i64
  br label %bb.u

bb.o:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !55 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !112 ; 3 uses
  %.not259 = icmp eq i32 %i.bj, 0
  br i1 %.not259, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !104 ; 2 uses
  %i.bm = load i32, ptr %i.bd, align 4, !tbaa !105
  %i.bn = icmp ugt i32 %i.bl, %i.bm
  %i.bo = select i1 %i.bn, i32 %i.c, i32 0
  %spec.select1056 = sub i32 %i.bl, %i.bo         ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i32 %spec.select1056, ptr %i.bp, align 8, !tbaa !106
  %i.bq = and i32 %i.bj, 1
  %.not260 = icmp eq i32 %i.bq, 0
  br i1 %.not260, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = shl nsw i32 %spec.select1056, 1
  %i.bs = or disjoint i32 %i.br, %.279
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 6364
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !107
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bw = and i32 %i.bj, 2
  %.not261 = icmp eq i32 %i.bw, 0
  br i1 %.not261, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = shl nsw i32 %spec.select1056, 1
  %i.by = or disjoint i32 %i.bx, %.
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bh, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !65
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 6364
  store i32 %i.by, ptr %i.cb, align 4, !tbaa !107
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.s, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader653, label %bb.o, !llvm.loop !113

bb.u:                                             ; preds = %.lr.ph704, %bb.y
  %indvars.iv856 = phi i64 [ 0, %.lr.ph704 ], [ %indvars.iv.next857, %bb.y ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv856
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !55 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !114 ; 2 uses
  %i.cg = and i32 %i.cf, 1
  %.not = icmp eq i32 %i.cg, 0
  br i1 %.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 6372
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !109
  %i.cl = shl nsw i32 %i.ck, 1
  %i.cm = or disjoint i32 %i.cl, %.279
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 6368
  store i32 %i.cm, ptr %i.cn, align 8, !tbaa !110
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.co = and i32 %i.cf, 2
  %.not258 = icmp eq i32 %i.co, 0
  br i1 %.not258, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 56
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !65 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 6372
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !109
  %i.ct = shl nsw i32 %i.cs, 1
  %i.cu = or disjoint i32 %i.ct, %.
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 6368
  store i32 %i.cu, ptr %i.cv, align 8, !tbaa !110
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %indvars.iv.next857 = add nuw nsw i64 %indvars.iv856, 1 ; 2 uses
  %exitcond860.not = icmp eq i64 %indvars.iv.next857, %wide.trip.count859
  br i1 %exitcond860.not, label %.loopexit651, label %bb.u, !llvm.loop !115

.loopexit651.loopexit.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit651, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit651.loopexit.unr-lcssa, %.lr.ph708
  %indvars.iv866.epil.init = phi i64 [ 0, %.lr.ph708 ], [ %indvars.iv.next867.1, %.loopexit651.loopexit.unr-lcssa ]
  %lcmp.mod1243 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod1243)
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv866.epil.init
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !55 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !103
  %i.cz = icmp eq i32 %i.cy, 3
  br i1 %i.cz, label %bb.z, label %.loopexit651

bb.z:                                             ; preds = %.epil.preheader
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 40
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !62 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 6376
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !102
  %.not276.epil = icmp eq i32 %i.dd, 0
  br i1 %.not276.epil, label %.loopexit651, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 6372
  %i.df = load i32, ptr %i.de, align 4, !tbaa !109
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 6368
  store i32 %i.df, ptr %i.dg, align 8, !tbaa !110
  br label %.loopexit651

.loopexit651:                                     ; preds = %bb.y, %.loopexit651.loopexit.unr-lcssa, %bb.aa, %bb.z, %.epil.preheader, %.preheader653, %.preheader650
  %i.dh = phi i32 [ %i.e, %.loopexit651.loopexit.unr-lcssa ], [ %i.e, %.preheader650 ], [ %i.ba, %.preheader653 ], [ %i.e, %.epil.preheader ], [ %i.e, %bb.z ], [ %i.e, %bb.aa ], [ %i.ba, %bb.y ] ; 4 uses
  switch i32 %0, label %bb.bn [
    i32 4, label %bb.ab
    i32 2, label %bb.ab
    i32 3, label %bb.ac
    i32 0, label %bb.ac
  ]

bb.ab:                                            ; preds = %.loopexit651, %.loopexit651
  store i32 0, ptr @listXsize, align 16, !tbaa !4
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  br label %.loopexit

bb.ac:                                            ; preds = %.loopexit651, %.loopexit651
  br i1 %i.d, label %.preheader649, label %bb.am

.preheader649:                                    ; preds = %bb.ac
  %.not797 = icmp eq i32 %i.dh, 0
  %.pre959 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not797, label %._crit_edge723, label %.lr.ph722

.lr.ph722:                                        ; preds = %.preheader649
  %i.di = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %wide.trip.count886 = zext i32 %i.dh to i64
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph722, %bb.ah
  %indvars.iv883 = phi i64 [ 0, %.lr.ph722 ], [ %indvars.iv.next884, %bb.ah ] ; 2 uses
  %.0225721 = phi i32 [ 0, %.lr.ph722 ], [ %.1226, %bb.ah ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %indvars.iv883
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !55 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !103
  %i.dm = icmp eq i32 %i.dl, 3
  br i1 %i.dm, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !62 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 6380
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !101
  %.not274 = icmp eq i32 %i.dq, 0
  br i1 %.not274, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 6376
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !102
  %.not275 = icmp eq i32 %i.ds, 0
  br i1 %.not275, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dt = add nsw i32 %.0225721, 1
  %i.du = sext i32 %.0225721 to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %.pre959, i64 %i.du
  store ptr %i.do, ptr %i.dv, align 8, !tbaa !58
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ad, %bb.ag, %bb.af, %bb.ae
  %.1226 = phi i32 [ %.0225721, %bb.af ], [ %i.dt, %bb.ag ], [ %.0225721, %bb.ae ], [ %.0225721, %bb.ad ] ; 2 uses
  %indvars.iv.next884 = add nuw nsw i64 %indvars.iv883, 1 ; 2 uses
  %exitcond887.not = icmp eq i64 %indvars.iv.next884, %wide.trip.count886
  br i1 %exitcond887.not, label %._crit_edge723.loopexit, label %bb.ad, !llvm.loop !116

._crit_edge723.loopexit:                          ; preds = %bb.ah
  %.pre = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge723

._crit_edge723:                                   ; preds = %._crit_edge723.loopexit, %.preheader649
  %2 = phi ptr [ %.pre959, %.preheader649 ], [ %.pre, %._crit_edge723.loopexit ]
  %.0225.lcssa = phi i32 [ 0, %.preheader649 ], [ %.1226, %._crit_edge723.loopexit ] ; 5 uses
  %i.dw = sext i32 %.0225.lcssa to i64            ; 2 uses
  tail call void @qsort(ptr noundef %2, i64 noundef %i.dw, i64 noundef 8, ptr noundef nonnull @compare_pic_by_pic_num_desc) #16
  store i32 %.0225.lcssa, ptr @listXsize, align 16, !tbaa !4
  %i.dx = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 2 uses
  %.not798 = icmp eq i32 %i.dx, 0
  %.pre961 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not798, label %._crit_edge729, label %.lr.ph728

.lr.ph728:                                        ; preds = %._crit_edge723
  %i.dy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %wide.trip.count891 = zext i32 %i.dx to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph728, %bb.al
  %indvars.iv888 = phi i64 [ 0, %.lr.ph728 ], [ %indvars.iv.next889, %bb.al ] ; 2 uses
  %.2726 = phi i32 [ %.0225.lcssa, %.lr.ph728 ], [ %.3, %bb.al ] ; 4 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv888
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !55 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !103
  %i.ec = icmp eq i32 %i.eb, 3
  br i1 %i.ec, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !62 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 6376
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !102
  %.not273 = icmp eq i32 %i.eg, 0
  br i1 %.not273, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.eh = add nsw i32 %.2726, 1
  %i.ei = sext i32 %.2726 to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %.pre961, i64 %i.ei
  store ptr %i.ee, ptr %i.ej, align 8, !tbaa !58
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.ak, %bb.aj
  %.3 = phi i32 [ %i.eh, %bb.ak ], [ %.2726, %bb.aj ], [ %.2726, %bb.ai ] ; 2 uses
  %indvars.iv.next889 = add nuw nsw i64 %indvars.iv888, 1 ; 2 uses
  %exitcond892.not = icmp eq i64 %indvars.iv.next889, %wide.trip.count891
  br i1 %exitcond892.not, label %._crit_edge729.loopexit, label %bb.ai, !llvm.loop !117

._crit_edge729.loopexit:                          ; preds = %bb.al
  %.pre960 = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge729

._crit_edge729:                                   ; preds = %._crit_edge729.loopexit, %._crit_edge723
  %3 = phi ptr [ %.pre961, %._crit_edge723 ], [ %.pre960, %._crit_edge729.loopexit ]
  %.2.lcssa = phi i32 [ %.0225.lcssa, %._crit_edge723 ], [ %.3, %._crit_edge729.loopexit ] ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %3, i64 %i.dw
  %i.el = sub nsw i32 %.2.lcssa, %.0225.lcssa
  %i.em = sext i32 %i.el to i64
  tail call void @qsort(ptr noundef %i.ek, i64 noundef %i.em, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #16
  store i32 %.2.lcssa, ptr @listXsize, align 16, !tbaa !4
  br label %bb.dz

bb.am:                                            ; preds = %bb.ac
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.eo = zext i32 %i.en to i64
  %i.ep = tail call noalias ptr @calloc(i64 noundef %i.eo, i64 noundef 8) #17 ; 10 uses
  %i.eq = icmp eq ptr %i.ep, null
  br i1 %i.eq, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.er = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.es = zext i32 %i.er to i64
  %i.et = tail call noalias ptr @calloc(i64 noundef %i.es, i64 noundef 8) #17 ; 15 uses
  %i.eu = ptrtoaddr ptr %i.et to i64
  %i.ev = icmp eq ptr %i.et, null
  br i1 %i.ev, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.ew = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 4 uses
  %.not795 = icmp eq i32 %i.ew, 0
  br i1 %.not795, label %._crit_edge, label %.lr.ph711

.lr.ph711:                                        ; preds = %bb.aq
  %i.ex = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51 ; 3 uses
  %wide.trip.count874 = zext i32 %i.ew to i64     ; 2 uses
  %xtraiter1245 = and i64 %wide.trip.count874, 1
  %i.ey = icmp eq i32 %i.ew, 1
  br i1 %i.ey, label %.epil.preheader1244, label %.lr.ph711.new

.lr.ph711.new:                                    ; preds = %.lr.ph711
  %unroll_iter1249 = and i64 %wide.trip.count874, 4294967294
  br label %bb.ar

bb.ar:                                            ; preds = %bb.av, %.lr.ph711.new
  %indvars.iv871 = phi i64 [ 0, %.lr.ph711.new ], [ %indvars.iv.next872.1, %bb.av ] ; 3 uses
  %.4710 = phi i32 [ 0, %.lr.ph711.new ], [ %.5.1, %bb.av ] ; 3 uses
  %niter1250 = phi i64 [ 0, %.lr.ph711.new ], [ %niter1250.next.1, %bb.av ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv871
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !55 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !112
  %.not270 = icmp eq i32 %i.fc, 0
  br i1 %.not270, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fd = add nsw i32 %.4710, 1
  %i.fe = sext i32 %.4710 to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.fe
  store ptr %i.fa, ptr %i.ff, align 8, !tbaa !55
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.5 = phi i32 [ %i.fd, %bb.as ], [ %.4710, %bb.ar ] ; 3 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv871
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !55 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !112
  %.not270.1 = icmp eq i32 %i.fk, 0
  br i1 %.not270.1, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fl = add nsw i32 %.5, 1
  %i.fm = sext i32 %.5 to i64
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.fm
  store ptr %i.fi, ptr %i.fn, align 8, !tbaa !55
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.5.1 = phi i32 [ %i.fl, %bb.au ], [ %.5, %bb.at ] ; 3 uses
  %indvars.iv.next872.1 = add nuw nsw i64 %indvars.iv871, 2 ; 2 uses
  %niter1250.next.1 = add i64 %niter1250, 2       ; 2 uses
  %niter1250.ncmp.1 = icmp eq i64 %niter1250.next.1, %unroll_iter1249
  br i1 %niter1250.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.ar, !llvm.loop !118

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.av
  %lcmp.mod1246.not = icmp eq i64 %xtraiter1245, 0
  br i1 %lcmp.mod1246.not, label %._crit_edge, label %.epil.preheader1244

.epil.preheader1244:                              ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph711
  %indvars.iv871.epil.init = phi i64 [ 0, %.lr.ph711 ], [ %indvars.iv.next872.1, %._crit_edge.loopexit.unr-lcssa ]
  %.4710.epil.init = phi i32 [ 0, %.lr.ph711 ], [ %.5.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod1248 = trunc i32 %i.ew to i1
  tail call void @llvm.assume(i1 %lcmp.mod1248)
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %indvars.iv871.epil.init
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !55 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !112
  %.not270.epil = icmp eq i32 %i.fr, 0
  br i1 %.not270.epil, label %._crit_edge, label %bb.aw

bb.aw:                                            ; preds = %.epil.preheader1244
  %i.fs = add nsw i32 %.4710.epil.init, 1
  %i.ft = sext i32 %.4710.epil.init to i64
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ft
  store ptr %i.fp, ptr %i.fu, align 8, !tbaa !55
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.aw, %.epil.preheader1244, %bb.aq
  %.4.lcssa = phi i32 [ 0, %bb.aq ], [ %.5.1, %._crit_edge.loopexit.unr-lcssa ], [ %i.fs, %bb.aw ], [ %.4710.epil.init, %.epil.preheader1244 ] ; 20 uses
  %i.fv = sext i32 %.4.lcssa to i64
  tail call void @qsort(ptr noundef %i.ep, i64 noundef %i.fv, i64 noundef 8, ptr noundef nonnull @compare_fs_by_frame_num_desc) #16
  store i32 0, ptr @listXsize, align 16, !tbaa !4
  %i.fw = load ptr, ptr @listX, align 16, !tbaa !53 ; 4 uses
  %i.fx = icmp eq i32 %1, 1                       ; 3 uses
  br i1 %i.fx, label %.preheader88.i, label %.loopexit89.i

.preheader88.i:                                   ; preds = %._crit_edge
  %i.fy = icmp sgt i32 %.4.lcssa, 0
  br i1 %i.fy, label %.preheader86.i, label %gen_pic_list_from_frame_list.exit

.preheader86.i:                                   ; preds = %.preheader88.i, %.loopexit85.i
  %i.fz = phi i32 [ %i.hj, %.loopexit85.i ], [ 0, %.preheader88.i ] ; 4 uses
  %.066104.i = phi i32 [ %.2.i, %.loopexit85.i ], [ 0, %.preheader88.i ] ; 3 uses
  %.067103.i = phi i32 [ %.269.i, %.loopexit85.i ], [ 0, %.preheader88.i ] ; 3 uses
  %i.ga = icmp slt i32 %.067103.i, %.4.lcssa
  br i1 %i.ga, label %.lr.ph.preheader.i, label %.loopexit87.i

.lr.ph.preheader.i:                               ; preds = %.preheader86.i
  %i.gb = sext i32 %.067103.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %is_short_ref.exit548.thread, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.gb, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %is_short_ref.exit548.thread ] ; 3 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %indvars.iv.i
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !55 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !103
  %i.gf = and i32 %i.ge, 1
  %.not78.i = icmp eq i32 %i.gf, 0
  br i1 %.not78.i, label %is_short_ref.exit548.thread, label %bb.ax

bb.ax:                                            ; preds = %.lr.ph.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 48
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !64 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 6380
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !101
  %.not.i546 = icmp eq i32 %i.gj, 0
  br i1 %.not.i546, label %is_short_ref.exit548.thread, label %is_short_ref.exit548

is_short_ref.exit548:                             ; preds = %bb.ax
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gh, i64 6376
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !102
  %.not2.i547.not = icmp eq i32 %i.gl, 0
  br i1 %.not2.i547.not, label %bb.ay, label %is_short_ref.exit548.thread

bb.ay:                                            ; preds = %is_short_ref.exit548
  %i.gm = trunc nsw i64 %indvars.iv.i to i32
  %i.gn = sext i32 %i.fz to i64
  %i.go = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.gn
  store ptr %i.gh, ptr %i.go, align 8, !tbaa !58
  %i.gp = add nsw i32 %i.fz, 1                    ; 2 uses
  store i32 %i.gp, ptr @listXsize, align 16, !tbaa !4
  %i.gq = add nsw i32 %i.gm, 1
  br label %.loopexit87.i

is_short_ref.exit548.thread:                      ; preds = %bb.ax, %is_short_ref.exit548, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %.4.lcssa, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %.loopexit87.i, label %.lr.ph.i, !llvm.loop !119

.loopexit87.i:                                    ; preds = %is_short_ref.exit548.thread, %bb.ay, %.preheader86.i
  %i.gr = phi i32 [ %i.gp, %bb.ay ], [ %i.fz, %.preheader86.i ], [ %i.fz, %is_short_ref.exit548.thread ] ; 4 uses
  %.269.i = phi i32 [ %i.gq, %bb.ay ], [ %.067103.i, %.preheader86.i ], [ %.4.lcssa, %is_short_ref.exit548.thread ] ; 3 uses
  %i.gs = icmp slt i32 %.066104.i, %.4.lcssa
  br i1 %i.gs, label %.lr.ph101.preheader.i, label %.loopexit85.i

.lr.ph101.preheader.i:                            ; preds = %.loopexit87.i
  %i.gt = sext i32 %.066104.i to i64
  br label %.lr.ph101.i

.lr.ph101.i:                                      ; preds = %is_short_ref.exit545.thread, %.lr.ph101.preheader.i
  %indvars.iv132.i = phi i64 [ %i.gt, %.lr.ph101.preheader.i ], [ %indvars.iv.next133.i, %is_short_ref.exit545.thread ] ; 3 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %indvars.iv132.i
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !55 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !103
  %i.gx = and i32 %i.gw, 2
  %.not80.i = icmp eq i32 %i.gx, 0
  br i1 %.not80.i, label %is_short_ref.exit545.thread, label %bb.az

bb.az:                                            ; preds = %.lr.ph101.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 56
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !65 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 6380
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !101
  %.not.i543 = icmp eq i32 %i.hb, 0
  br i1 %.not.i543, label %is_short_ref.exit545.thread, label %is_short_ref.exit545

end_hunk_0
begin_hunk_1_@init_lists:bb.a
  br label %.loopexit87.i311

is_long_ref.exit555.thread:                       ; preds = %bb.bf, %is_long_ref.exit555, %.lr.ph.i324
  %indvars.iv.next.i328 = add nsw i64 %indvars.iv.i325, 1 ; 2 uses
  %lftr.wideiv.i329 = trunc i64 %indvars.iv.next.i328 to i32
  %exitcond.not.i330 = icmp eq i32 %i.jf, %lftr.wideiv.i329
  br i1 %exitcond.not.i330, label %.loopexit87.i311, label %.lr.ph.i324, !llvm.loop !119

.loopexit87.i311:                                 ; preds = %is_long_ref.exit555.thread, %bb.bg, %.preheader86.i308
  %i.la = phi i32 [ %i.ky, %bb.bg ], [ %i.ki, %.preheader86.i308 ], [ %i.ki, %is_long_ref.exit555.thread ] ; 4 uses
  %.269.i312 = phi i32 [ %i.kz, %bb.bg ], [ %.067103.i310, %.preheader86.i308 ], [ %i.jf, %is_long_ref.exit555.thread ] ; 3 uses
  %i.lb = icmp slt i32 %.066104.i309, %i.jf
  br i1 %i.lb, label %.lr.ph101.preheader.i315, label %.loopexit85.i313

.lr.ph101.preheader.i315:                         ; preds = %.loopexit87.i311
  %i.lc = sext i32 %.066104.i309 to i64
  br label %.lr.ph101.i316

.lr.ph101.i316:                                   ; preds = %is_long_ref.exit553.thread, %.lr.ph101.preheader.i315
  %indvars.iv132.i317 = phi i64 [ %i.lc, %.lr.ph101.preheader.i315 ], [ %indvars.iv.next133.i320, %is_long_ref.exit553.thread ] ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv132.i317
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !55 ; 2 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !103
  %i.lg = and i32 %i.lf, 2
  %.not80.i318 = icmp eq i32 %i.lg, 0
  br i1 %.not80.i318, label %is_long_ref.exit553.thread, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph101.i316
  %i.lh = getelementptr inbounds nuw i8, ptr %i.le, i64 56
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !65 ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 6380
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !101
  %.not.i552 = icmp eq i32 %i.lk, 0
  br i1 %.not.i552, label %is_long_ref.exit553.thread, label %is_long_ref.exit553

is_long_ref.exit553:                              ; preds = %bb.bh
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 6376
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !102
  %.not632 = icmp eq i32 %i.lm, 0
  br i1 %.not632, label %is_long_ref.exit553.thread, label %bb.bi

bb.bi:                                            ; preds = %is_long_ref.exit553
  %i.ln = trunc nsw i64 %indvars.iv132.i317 to i32
  %i.lo = sext i32 %i.la to i64
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.kg, i64 %i.lo
  store ptr %i.li, ptr %i.lp, align 8, !tbaa !58
  %i.lq = add nsw i32 %i.la, 1                    ; 2 uses
  store i32 %i.lq, ptr @listXsize, align 16, !tbaa !4
  %i.lr = add nsw i32 %i.ln, 1
  br label %.loopexit85.i313

is_long_ref.exit553.thread:                       ; preds = %bb.bh, %is_long_ref.exit553, %.lr.ph101.i316
  %indvars.iv.next133.i320 = add nsw i64 %indvars.iv132.i317, 1 ; 2 uses
  %lftr.wideiv135.i321 = trunc i64 %indvars.iv.next133.i320 to i32
  %exitcond136.not.i322 = icmp eq i32 %i.jf, %lftr.wideiv135.i321
  br i1 %exitcond136.not.i322, label %.loopexit85.i313, label %.lr.ph101.i316, !llvm.loop !120

.loopexit85.i313:                                 ; preds = %is_long_ref.exit553.thread, %bb.bi, %.loopexit87.i311
  %i.ls = phi i32 [ %i.lq, %bb.bi ], [ %i.la, %.loopexit87.i311 ], [ %i.la, %is_long_ref.exit553.thread ]
  %.2.i314 = phi i32 [ %i.lr, %bb.bi ], [ %.066104.i309, %.loopexit87.i311 ], [ %i.jf, %is_long_ref.exit553.thread ] ; 3 uses
  %i.lt = icmp slt i32 %.269.i312, %i.jf
  %i.lu = icmp slt i32 %.2.i314, %i.jf
  %i.lv = select i1 %i.lt, i1 true, i1 %i.lu
  br i1 %i.lv, label %.preheader86.i308, label %.loopexit89.i280, !llvm.loop !121

.loopexit89.i280:                                 ; preds = %.loopexit85.i313, %._crit_edge716.thread, %._crit_edge716
  %i.lw = phi ptr [ %i.kg, %._crit_edge716 ], [ %i.kh, %._crit_edge716.thread ], [ %i.kg, %.loopexit85.i313 ] ; 2 uses
  %.0224.lcssa994 = phi i32 [ %i.jf, %._crit_edge716 ], [ 0, %._crit_edge716.thread ], [ %i.jf, %.loopexit85.i313 ] ; 10 uses
  %.370.i281 = phi i32 [ 0, %._crit_edge716 ], [ 0, %._crit_edge716.thread ], [ %.269.i312, %.loopexit85.i313 ] ; 2 uses
  %.3.i282 = phi i32 [ 0, %._crit_edge716 ], [ 0, %._crit_edge716.thread ], [ %.2.i314, %.loopexit85.i313 ] ; 2 uses
  %i.lx = icmp eq i32 %1, 2
  br i1 %i.lx, label %.preheader83.i283, label %gen_pic_list_from_frame_list.exit331

.preheader83.i283:                                ; preds = %.loopexit89.i280
  %i.ly = icmp slt i32 %.370.i281, %.0224.lcssa994
  %i.lz = icmp slt i32 %.3.i282, %.0224.lcssa994
  %i.ma = select i1 %i.ly, i1 true, i1 %i.lz
  br i1 %i.ma, label %.preheader.i284.preheader, label %gen_pic_list_from_frame_list.exit331

.preheader.i284.preheader:                        ; preds = %.preheader83.i283
  %listXsize.promoted719 = load i32, ptr @listXsize, align 16
  br label %.preheader.i284

.preheader.i284:                                  ; preds = %.preheader.i284.preheader, %.loopexit.i289
  %i.mb = phi i32 [ %i.nl, %.loopexit.i289 ], [ %listXsize.promoted719, %.preheader.i284.preheader ] ; 4 uses
  %.4115.i285 = phi i32 [ %.6.i288, %.loopexit.i289 ], [ %.3.i282, %.preheader.i284.preheader ] ; 3 uses
  %.471114.i286 = phi i32 [ %.673.i290, %.loopexit.i289 ], [ %.370.i281, %.preheader.i284.preheader ] ; 3 uses
  %i.mc = icmp slt i32 %.4115.i285, %.0224.lcssa994
  br i1 %i.mc, label %.lr.ph109.preheader.i299, label %.loopexit82.i287

.lr.ph109.preheader.i299:                         ; preds = %.preheader.i284
  %i.md = sext i32 %.4115.i285 to i64
  br label %.lr.ph109.i300

.lr.ph109.i300:                                   ; preds = %is_long_ref.exit551.thread, %.lr.ph109.preheader.i299
  %indvars.iv137.i301 = phi i64 [ %i.md, %.lr.ph109.preheader.i299 ], [ %indvars.iv.next138.i304, %is_long_ref.exit551.thread ] ; 3 uses
  %i.me = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv137.i301
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !55 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !103
  %i.mh = and i32 %i.mg, 2
  %.not74.i302 = icmp eq i32 %i.mh, 0
  br i1 %.not74.i302, label %is_long_ref.exit551.thread, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph109.i300
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !65 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 6380
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !101
  %.not.i550 = icmp eq i32 %i.ml, 0
  br i1 %.not.i550, label %is_long_ref.exit551.thread, label %is_long_ref.exit551

is_long_ref.exit551:                              ; preds = %bb.bj
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 6376
  %i.mn = load i32, ptr %i.mm, align 8, !tbaa !102
  %.not633 = icmp eq i32 %i.mn, 0
  br i1 %.not633, label %is_long_ref.exit551.thread, label %bb.bk

bb.bk:                                            ; preds = %is_long_ref.exit551
  %i.mo = trunc nsw i64 %indvars.iv137.i301 to i32
  %i.mp = sext i32 %i.mb to i64
  %i.mq = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.mp
  store ptr %i.mj, ptr %i.mq, align 8, !tbaa !58
  %i.mr = add nsw i32 %i.mb, 1                    ; 2 uses
  store i32 %i.mr, ptr @listXsize, align 16, !tbaa !4
  %i.ms = add nsw i32 %i.mo, 1
  br label %.loopexit82.i287

is_long_ref.exit551.thread:                       ; preds = %bb.bj, %is_long_ref.exit551, %.lr.ph109.i300
  %indvars.iv.next138.i304 = add nsw i64 %indvars.iv137.i301, 1 ; 2 uses
  %lftr.wideiv140.i305 = trunc i64 %indvars.iv.next138.i304 to i32
  %exitcond141.not.i306 = icmp eq i32 %.0224.lcssa994, %lftr.wideiv140.i305
  br i1 %exitcond141.not.i306, label %.loopexit82.i287, label %.lr.ph109.i300, !llvm.loop !122

.loopexit82.i287:                                 ; preds = %is_long_ref.exit551.thread, %bb.bk, %.preheader.i284
  %i.mt = phi i32 [ %i.mr, %bb.bk ], [ %i.mb, %.preheader.i284 ], [ %i.mb, %is_long_ref.exit551.thread ] ; 4 uses
  %.6.i288 = phi i32 [ %i.ms, %bb.bk ], [ %.4115.i285, %.preheader.i284 ], [ %.0224.lcssa994, %is_long_ref.exit551.thread ] ; 2 uses
  %i.mu = icmp slt i32 %.471114.i286, %.0224.lcssa994
  br i1 %i.mu, label %.lr.ph112.preheader.i291, label %.loopexit.i289

.lr.ph112.preheader.i291:                         ; preds = %.loopexit82.i287
  %i.mv = sext i32 %.471114.i286 to i64
  br label %.lr.ph112.i292

.lr.ph112.i292:                                   ; preds = %is_long_ref.exit.thread, %.lr.ph112.preheader.i291
  %indvars.iv142.i293 = phi i64 [ %i.mv, %.lr.ph112.preheader.i291 ], [ %indvars.iv.next143.i296, %is_long_ref.exit.thread ] ; 3 uses
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.et, i64 %indvars.iv142.i293
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !55 ; 2 uses
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !103
  %i.mz = and i32 %i.my, 1
  %.not76.i294 = icmp eq i32 %i.mz, 0
  br i1 %.not76.i294, label %is_long_ref.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %.lr.ph112.i292
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 48
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !64 ; 3 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 6380
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !101
  %.not.i549 = icmp eq i32 %i.nd, 0
  br i1 %.not.i549, label %is_long_ref.exit.thread, label %is_long_ref.exit

is_long_ref.exit:                                 ; preds = %bb.bl
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nb, i64 6376
  %i.nf = load i32, ptr %i.ne, align 8, !tbaa !102
  %.not634 = icmp eq i32 %i.nf, 0
  br i1 %.not634, label %is_long_ref.exit.thread, label %bb.bm

bb.bm:                                            ; preds = %is_long_ref.exit
  %i.ng = trunc nsw i64 %indvars.iv142.i293 to i32
  %i.nh = sext i32 %i.mt to i64
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.lw, i64 %i.nh
  store ptr %i.nb, ptr %i.ni, align 8, !tbaa !58
  %i.nj = add nsw i32 %i.mt, 1                    ; 2 uses
  store i32 %i.nj, ptr @listXsize, align 16, !tbaa !4
  %i.nk = add nsw i32 %i.ng, 1
  br label %.loopexit.i289

is_long_ref.exit.thread:                          ; preds = %bb.bl, %is_long_ref.exit, %.lr.ph112.i292
  %indvars.iv.next143.i296 = add nsw i64 %indvars.iv142.i293, 1 ; 2 uses
  %lftr.wideiv145.i297 = trunc i64 %indvars.iv.next143.i296 to i32
  %exitcond146.not.i298 = icmp eq i32 %.0224.lcssa994, %lftr.wideiv145.i297
  br i1 %exitcond146.not.i298, label %.loopexit.i289, label %.lr.ph112.i292, !llvm.loop !123

.loopexit.i289:                                   ; preds = %is_long_ref.exit.thread, %bb.bm, %.loopexit82.i287
  %i.nl = phi i32 [ %i.nj, %bb.bm ], [ %i.mt, %.loopexit82.i287 ], [ %i.mt, %is_long_ref.exit.thread ]
  %.673.i290 = phi i32 [ %i.nk, %bb.bm ], [ %.471114.i286, %.loopexit82.i287 ], [ %.0224.lcssa994, %is_long_ref.exit.thread ] ; 2 uses
  %i.nm = icmp slt i32 %.673.i290, %.0224.lcssa994
  %i.nn = icmp slt i32 %.6.i288, %.0224.lcssa994
  %i.no = select i1 %i.nm, i1 true, i1 %i.nn
  br i1 %i.no, label %.preheader.i284, label %gen_pic_list_from_frame_list.exit331, !llvm.loop !124

gen_pic_list_from_frame_list.exit331:             ; preds = %.loopexit.i289, %._crit_edge716.thread, %.loopexit89.i280, %.preheader83.i283
  tail call void @free(ptr noundef %i.ep) #16
  tail call void @free(ptr noundef %i.et) #16
  br label %bb.dz

bb.bn:                                            ; preds = %.loopexit651
  br i1 %i.d, label %.preheader647, label %bb.ce

.preheader647:                                    ; preds = %bb.bn
  %.not802 = icmp eq i32 %i.dh, 0
  %.pre964 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not802, label %._crit_edge764, label %.lr.ph763

.lr.ph763:                                        ; preds = %.preheader647
  %i.np = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %wide.trip.count921 = zext i32 %i.dh to i64
  br label %bb.bo

bb.bo:                                            ; preds = %.lr.ph763, %bb.bt
  %indvars.iv918 = phi i64 [ 0, %.lr.ph763 ], [ %indvars.iv.next919, %bb.bt ] ; 2 uses
  %.6762 = phi i32 [ 0, %.lr.ph763 ], [ %.7, %bb.bt ] ; 6 uses
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %i.np, i64 %indvars.iv918
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !55 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 8, !tbaa !103
  %i.nt = icmp eq i32 %i.ns, 3
  br i1 %i.nt, label %bb.bp, label %bb.bt

bb.bp:                                            ; preds = %bb.bo
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 40
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !62 ; 4 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 6380
  %i.nx = load i32, ptr %i.nw, align 4, !tbaa !101
  %.not268 = icmp eq i32 %i.nx, 0
  br i1 %.not268, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 6376
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !102
  %.not269 = icmp eq i32 %i.nz, 0
  br i1 %.not269, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.oa = load ptr, ptr @img, align 8, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 15324
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !131
  %i.od = getelementptr inbounds nuw i8, ptr %i.nv, i64 4
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !132
  %i.of = icmp sgt i32 %i.oc, %i.oe
  br i1 %i.of, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.og = add nsw i32 %.6762, 1
  %i.oh = sext i32 %.6762 to i64
  %i.oi = getelementptr inbounds [8 x i8], ptr %.pre964, i64 %i.oh
  store ptr %i.nv, ptr %i.oi, align 8, !tbaa !58
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bo, %bb.br, %bb.bs, %bb.bq, %bb.bp
  %.7 = phi i32 [ %.6762, %bb.bq ], [ %i.og, %bb.bs ], [ %.6762, %bb.br ], [ %.6762, %bb.bp ], [ %.6762, %bb.bo ] ; 2 uses
  %indvars.iv.next919 = add nuw nsw i64 %indvars.iv918, 1 ; 2 uses
  %exitcond922.not = icmp eq i64 %indvars.iv.next919, %wide.trip.count921
  br i1 %exitcond922.not, label %._crit_edge764.loopexit, label %bb.bo, !llvm.loop !133

._crit_edge764.loopexit:                          ; preds = %bb.bt
  %.pre963 = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge764

._crit_edge764:                                   ; preds = %._crit_edge764.loopexit, %.preheader647
  %4 = phi ptr [ %.pre964, %.preheader647 ], [ %.pre963, %._crit_edge764.loopexit ]
  %.6.lcssa = phi i32 [ 0, %.preheader647 ], [ %.7, %._crit_edge764.loopexit ] ; 8 uses
  %i.oj = sext i32 %.6.lcssa to i64               ; 13 uses
  tail call void @qsort(ptr noundef %4, i64 noundef %i.oj, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_desc) #16
  %i.ok = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 2 uses
  %.not803 = icmp eq i32 %i.ok, 0
  %.pre966 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not803, label %._crit_edge770, label %.lr.ph769

.lr.ph769:                                        ; preds = %._crit_edge764
  %i.ol = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %wide.trip.count926 = zext i32 %i.ok to i64
  br label %bb.bu

bb.bu:                                            ; preds = %.lr.ph769, %bb.bz
  %indvars.iv923 = phi i64 [ 0, %.lr.ph769 ], [ %indvars.iv.next924, %bb.bz ] ; 2 uses
  %.8767 = phi i32 [ %.6.lcssa, %.lr.ph769 ], [ %.9, %bb.bz ] ; 6 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %indvars.iv923
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !55 ; 2 uses
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !103
  %i.op = icmp eq i32 %i.oo, 3
  br i1 %i.op, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.oq = getelementptr inbounds nuw i8, ptr %i.on, i64 40
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !62 ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 6380
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !101
  %.not266 = icmp eq i32 %i.ot, 0
  br i1 %.not266, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 6376
  %i.ov = load i32, ptr %i.ou, align 8, !tbaa !102
  %.not267 = icmp eq i32 %i.ov, 0
  br i1 %.not267, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw
  %i.ow = load ptr, ptr @img, align 8, !tbaa !8
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 15324
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !131
  %i.oz = getelementptr inbounds nuw i8, ptr %i.or, i64 4
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !132
  %i.pb = icmp slt i32 %i.oy, %i.pa
  br i1 %i.pb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.pc = add nsw i32 %.8767, 1
  %i.pd = sext i32 %.8767 to i64
  %i.pe = getelementptr inbounds [8 x i8], ptr %.pre966, i64 %i.pd
  store ptr %i.or, ptr %i.pe, align 8, !tbaa !58
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.bx, %bb.by, %bb.bw, %bb.bv
  %.9 = phi i32 [ %.8767, %bb.bw ], [ %i.pc, %bb.by ], [ %.8767, %bb.bx ], [ %.8767, %bb.bv ], [ %.8767, %bb.bu ] ; 2 uses
  %indvars.iv.next924 = add nuw nsw i64 %indvars.iv923, 1 ; 2 uses
  %exitcond927.not = icmp eq i64 %indvars.iv.next924, %wide.trip.count926
  br i1 %exitcond927.not, label %._crit_edge770.loopexit, label %bb.bu, !llvm.loop !134

._crit_edge770.loopexit:                          ; preds = %bb.bz
  %.pre965 = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge770

._crit_edge770:                                   ; preds = %._crit_edge770.loopexit, %._crit_edge764
  %5 = phi ptr [ %.pre966, %._crit_edge764 ], [ %.pre965, %._crit_edge770.loopexit ]
  %.8.lcssa = phi i32 [ %.6.lcssa, %._crit_edge764 ], [ %.9, %._crit_edge770.loopexit ] ; 10 uses
  %i.pf = getelementptr inbounds [8 x i8], ptr %5, i64 %i.oj
  %i.pg = sub nsw i32 %.8.lcssa, %.6.lcssa        ; 2 uses
  %i.ph = sext i32 %i.pg to i64                   ; 4 uses
  tail call void @qsort(ptr noundef %i.pf, i64 noundef %i.ph, i64 noundef 8, ptr noundef nonnull @compare_pic_by_poc_asc) #16
  %i.pi = icmp sgt i32 %.6.lcssa, 0
  br i1 %i.pi, label %.lr.ph774, label %.preheader646

.lr.ph774:                                        ; preds = %._crit_edge770
  %6 = load ptr, ptr @listX, align 16, !tbaa !53  ; 7 uses
  %i.pj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53 ; 2 uses
  %wide.trip.count931 = zext nneg i32 %.6.lcssa to i64 ; 5 uses
  %invariant.gep1053 = getelementptr [8 x i8], ptr %i.pj, i64 %i.ph ; 6 uses
  %min.iters.check1141 = icmp ult i32 %.6.lcssa, 18
  br i1 %min.iters.check1141, label %scalar.ph1140.preheader, label %vector.memcheck1137

vector.memcheck1137:                              ; preds = %.lr.ph774
  %i.pk = ptrtoaddr ptr %i.pj to i64
  %7 = ptrtoaddr ptr %6 to i64
  %i.pl = sext i32 %.8.lcssa to i64
  %i.pm = shl nsw i64 %i.pl, 3
  %i.pn = add i64 %i.pm, %i.pk
  %i.po = shl nuw nsw i64 %i.oj, 3
  %i.pp = add i64 %i.po, %7
  %i.pq = sub i64 %i.pn, %i.pp
  %diff.check1139 = icmp ult i64 %i.pq, 32
  br i1 %diff.check1139, label %scalar.ph1140.preheader, label %vector.ph1142

vector.ph1142:                                    ; preds = %vector.memcheck1137
  %n.vec1144 = and i64 %wide.trip.count931, 2147483644 ; 3 uses
  br label %vector.body1145

vector.body1145:                                  ; preds = %vector.body1145, %vector.ph1142
  %index1146 = phi i64 [ 0, %vector.ph1142 ], [ %index.next1149, %vector.body1145 ] ; 3 uses
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %index1146 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  %wide.load1147.a = load <2 x ptr>, ptr %i.pr, align 8, !tbaa !58
  %wide.load1148 = load <2 x ptr>, ptr %i.ps, align 8, !tbaa !58
  %i.pt = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %index1146 ; 2 uses
  %i.pu = getelementptr i8, ptr %i.pt, i64 16
  store <2 x ptr> %wide.load1147.a, ptr %i.pt, align 8, !tbaa !58
  store <2 x ptr> %wide.load1148, ptr %i.pu, align 8, !tbaa !58
  %index.next1149 = add nuw i64 %index1146, 4     ; 2 uses
  %i.pv = icmp eq i64 %index.next1149, %n.vec1144
  br i1 %i.pv, label %middle.block1150, label %vector.body1145, !llvm.loop !135

middle.block1150:                                 ; preds = %vector.body1145
  %cmp.n1151 = icmp eq i64 %n.vec1144, %wide.trip.count931
  br i1 %cmp.n1151, label %.preheader646, label %scalar.ph1140.preheader

scalar.ph1140.preheader:                          ; preds = %vector.memcheck1137, %.lr.ph774, %middle.block1150
  %indvars.iv928.ph = phi i64 [ 0, %vector.memcheck1137 ], [ 0, %.lr.ph774 ], [ %n.vec1144, %middle.block1150 ] ; 3 uses
  %xtraiter1256 = and i64 %wide.trip.count931, 3  ; 2 uses
  %lcmp.mod1257.not = icmp eq i64 %xtraiter1256, 0
  br i1 %lcmp.mod1257.not, label %scalar.ph1140.prol.loopexit, label %scalar.ph1140.prol

scalar.ph1140.prol:                               ; preds = %scalar.ph1140.preheader, %scalar.ph1140.prol
  %indvars.iv928.prol = phi i64 [ %indvars.iv.next929.prol, %scalar.ph1140.prol ], [ %indvars.iv928.ph, %scalar.ph1140.preheader ] ; 3 uses
  %prol.iter1258 = phi i64 [ %prol.iter1258.next, %scalar.ph1140.prol ], [ 0, %scalar.ph1140.preheader ]
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv928.prol
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !58
  %gep1054.prol = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv928.prol
  store ptr %i.px, ptr %gep1054.prol, align 8, !tbaa !58
  %indvars.iv.next929.prol = add nuw nsw i64 %indvars.iv928.prol, 1 ; 2 uses
  %prol.iter1258.next = add i64 %prol.iter1258, 1 ; 2 uses
  %prol.iter1258.cmp.not = icmp eq i64 %prol.iter1258.next, %xtraiter1256
  br i1 %prol.iter1258.cmp.not, label %scalar.ph1140.prol.loopexit, label %scalar.ph1140.prol, !llvm.loop !136

scalar.ph1140.prol.loopexit:                      ; preds = %scalar.ph1140.prol, %scalar.ph1140.preheader
  %indvars.iv928.unr = phi i64 [ %indvars.iv928.ph, %scalar.ph1140.preheader ], [ %indvars.iv.next929.prol, %scalar.ph1140.prol ]
  %i.py = sub nsw i64 %indvars.iv928.ph, %wide.trip.count931
  %i.pz = icmp ugt i64 %i.py, -4
  br i1 %i.pz, label %.preheader646, label %scalar.ph1140

.preheader646:                                    ; preds = %scalar.ph1140.prol.loopexit, %scalar.ph1140, %middle.block1150, %._crit_edge770
  %i.qa = icmp slt i32 %.6.lcssa, %.8.lcssa
  br i1 %i.qa, label %.lr.ph776, label %._crit_edge777

.lr.ph776:                                        ; preds = %.preheader646
  %8 = load ptr, ptr @listX, align 16, !tbaa !53  ; 7 uses
  %i.qb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53 ; 7 uses
  %wide.trip.count937 = sext i32 %.8.lcssa to i64 ; 3 uses
  %min.iters.check1156 = icmp ult i32 %i.pg, 8
  br i1 %min.iters.check1156, label %scalar.ph1155.preheader, label %vector.memcheck1153

vector.memcheck1153:                              ; preds = %.lr.ph776
  %i.qc = ptrtoaddr ptr %i.qb to i64
  %9 = ptrtoaddr ptr %8 to i64
  %i.qd = shl nsw i64 %i.oj, 3
  %i.qe = add i64 %i.qd, %9
  %i.qf = sub i64 %i.qc, %i.qe
  %diff.check1154 = icmp ult i64 %i.qf, 32
  br i1 %diff.check1154, label %scalar.ph1155.preheader, label %vector.ph1157

vector.ph1157:                                    ; preds = %vector.memcheck1153
  %n.vec1159 = and i64 %i.ph, -4                  ; 3 uses
  %i.qg = add nsw i64 %n.vec1159, %i.oj
  %invariant.gep1314 = getelementptr [8 x i8], ptr %8, i64 %i.oj
  br label %vector.body1160

vector.body1160:                                  ; preds = %vector.body1160, %vector.ph1157
  %index1161 = phi i64 [ 0, %vector.ph1157 ], [ %index.next1164, %vector.body1160 ] ; 3 uses
  %gep1315 = getelementptr [8 x i8], ptr %invariant.gep1314, i64 %index1161 ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %gep1315, i64 16
  %wide.load1162.a = load <2 x ptr>, ptr %gep1315, align 8, !tbaa !58
  %wide.load1163 = load <2 x ptr>, ptr %i.qh, align 8, !tbaa !58
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %index1161 ; 2 uses
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  store <2 x ptr> %wide.load1162.a, ptr %i.qi, align 8, !tbaa !58
  store <2 x ptr> %wide.load1163, ptr %i.qj, align 8, !tbaa !58
  %index.next1164 = add nuw i64 %index1161, 4     ; 2 uses
  %i.qk = icmp eq i64 %index.next1164, %n.vec1159
  br i1 %i.qk, label %middle.block1165, label %vector.body1160, !llvm.loop !137

middle.block1165:                                 ; preds = %vector.body1160
  %cmp.n1166 = icmp eq i64 %n.vec1159, %i.ph
  br i1 %cmp.n1166, label %._crit_edge777, label %scalar.ph1155.preheader

scalar.ph1155.preheader:                          ; preds = %vector.memcheck1153, %.lr.ph776, %middle.block1165
  %indvars.iv934.ph = phi i64 [ %i.oj, %vector.memcheck1153 ], [ %i.oj, %.lr.ph776 ], [ %i.qg, %middle.block1165 ] ; 4 uses
  %i.ql = sub nsw i64 %wide.trip.count937, %indvars.iv934.ph
  %xtraiter1259 = and i64 %i.ql, 3                ; 2 uses
  %lcmp.mod1260.not = icmp eq i64 %xtraiter1259, 0
  br i1 %lcmp.mod1260.not, label %scalar.ph1155.prol.loopexit, label %scalar.ph1155.prol

scalar.ph1155.prol:                               ; preds = %scalar.ph1155.preheader, %scalar.ph1155.prol
  %indvars.iv934.prol = phi i64 [ %indvars.iv.next935.prol, %scalar.ph1155.prol ], [ %indvars.iv934.ph, %scalar.ph1155.preheader ] ; 3 uses
  %prol.iter1261 = phi i64 [ %prol.iter1261.next, %scalar.ph1155.prol ], [ 0, %scalar.ph1155.preheader ]
  %i.qm = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv934.prol
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !58
  %i.qo = sub nsw i64 %indvars.iv934.prol, %i.oj
  %i.qp = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.qo
  store ptr %i.qn, ptr %i.qp, align 8, !tbaa !58
  %indvars.iv.next935.prol = add nsw i64 %indvars.iv934.prol, 1 ; 2 uses
  %prol.iter1261.next = add i64 %prol.iter1261, 1 ; 2 uses
  %prol.iter1261.cmp.not = icmp eq i64 %prol.iter1261.next, %xtraiter1259
  br i1 %prol.iter1261.cmp.not, label %scalar.ph1155.prol.loopexit, label %scalar.ph1155.prol, !llvm.loop !138

scalar.ph1155.prol.loopexit:                      ; preds = %scalar.ph1155.prol, %scalar.ph1155.preheader
  %indvars.iv934.unr = phi i64 [ %indvars.iv934.ph, %scalar.ph1155.preheader ], [ %indvars.iv.next935.prol, %scalar.ph1155.prol ]
  %i.qq = sub nsw i64 %indvars.iv934.ph, %wide.trip.count937
  %i.qr = icmp ugt i64 %i.qq, -4
  br i1 %i.qr, label %._crit_edge777, label %scalar.ph1155

scalar.ph1140:                                    ; preds = %scalar.ph1140.prol.loopexit, %scalar.ph1140
  %indvars.iv928 = phi i64 [ %indvars.iv.next929.3, %scalar.ph1140 ], [ %indvars.iv928.unr, %scalar.ph1140.prol.loopexit ] ; 6 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv928
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !58
  %gep1054 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv928
  store ptr %i.qt, ptr %gep1054, align 8, !tbaa !58
  %indvars.iv.next929 = add nuw nsw i64 %indvars.iv928, 1 ; 2 uses
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next929
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !58
  %gep1054.1 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv.next929
  store ptr %i.qv, ptr %gep1054.1, align 8, !tbaa !58
  %indvars.iv.next929.1 = add nuw nsw i64 %indvars.iv928, 2 ; 2 uses
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next929.1
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !58
  %gep1054.2 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv.next929.1
  store ptr %i.qx, ptr %gep1054.2, align 8, !tbaa !58
  %indvars.iv.next929.2 = add nuw nsw i64 %indvars.iv928, 3 ; 2 uses
  %i.qy = getelementptr inbounds nuw [8 x i8], ptr %6, i64 %indvars.iv.next929.2
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !58
  %gep1054.3 = getelementptr [8 x i8], ptr %invariant.gep1053, i64 %indvars.iv.next929.2
  store ptr %i.qz, ptr %gep1054.3, align 8, !tbaa !58
  %indvars.iv.next929.3 = add nuw nsw i64 %indvars.iv928, 4 ; 2 uses
  %exitcond932.not.3 = icmp eq i64 %indvars.iv.next929.3, %wide.trip.count931
  br i1 %exitcond932.not.3, label %.preheader646, label %scalar.ph1140, !llvm.loop !139

scalar.ph1155:                                    ; preds = %scalar.ph1155.prol.loopexit, %scalar.ph1155
  %indvars.iv934 = phi i64 [ %indvars.iv.next935.3, %scalar.ph1155 ], [ %indvars.iv934.unr, %scalar.ph1155.prol.loopexit ] ; 6 uses
  %i.ra = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv934
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !58
  %i.rc = sub nsw i64 %indvars.iv934, %i.oj
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.rc
  store ptr %i.rb, ptr %i.rd, align 8, !tbaa !58
  %indvars.iv.next935 = add nsw i64 %indvars.iv934, 1 ; 2 uses
  %i.re = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv.next935
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !58
  %i.rg = sub nsw i64 %indvars.iv.next935, %i.oj
  %i.rh = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.rg
  store ptr %i.rf, ptr %i.rh, align 8, !tbaa !58
  %indvars.iv.next935.1 = add nsw i64 %indvars.iv934, 2 ; 2 uses
  %i.ri = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv.next935.1
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !58
  %i.rk = sub nsw i64 %indvars.iv.next935.1, %i.oj
  %i.rl = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.rk
  store ptr %i.rj, ptr %i.rl, align 8, !tbaa !58
  %indvars.iv.next935.2 = add nsw i64 %indvars.iv934, 3 ; 2 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %8, i64 %indvars.iv.next935.2
  %i.rn = load ptr, ptr %i.rm, align 8, !tbaa !58
  %i.ro = sub nsw i64 %indvars.iv.next935.2, %i.oj
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.qb, i64 %i.ro
  store ptr %i.rn, ptr %i.rp, align 8, !tbaa !58
  %indvars.iv.next935.3 = add nsw i64 %indvars.iv934, 4 ; 2 uses
  %exitcond938.not.3 = icmp eq i64 %indvars.iv.next935.3, %wide.trip.count937
  br i1 %exitcond938.not.3, label %._crit_edge777, label %scalar.ph1155, !llvm.loop !140

._crit_edge777:                                   ; preds = %scalar.ph1155.prol.loopexit, %scalar.ph1155, %middle.block1165, %.preheader646
  store i32 %.8.lcssa, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  store i32 %.8.lcssa, ptr @listXsize, align 16, !tbaa !4
  %i.rq = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 36), align 4, !tbaa !19 ; 2 uses
  %.not804 = icmp eq i32 %i.rq, 0
  %.pre968 = load ptr, ptr @listX, align 16       ; 2 uses
  br i1 %.not804, label %._crit_edge782, label %.lr.ph781

.lr.ph781:                                        ; preds = %._crit_edge777
  %i.rr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 16), align 8, !tbaa !52
  %i.rs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8
  %wide.trip.count942 = zext i32 %i.rq to i64
  br label %bb.ca

bb.ca:                                            ; preds = %.lr.ph781, %bb.cd
  %indvars.iv939 = phi i64 [ 0, %.lr.ph781 ], [ %indvars.iv.next940, %bb.cd ] ; 2 uses
  %.10779 = phi i32 [ %.8.lcssa, %.lr.ph781 ], [ %.11, %bb.cd ] ; 4 uses
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rr, i64 %indvars.iv939
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !55 ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !103
  %i.rw = icmp eq i32 %i.rv, 3
  br i1 %i.rw, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 40 ; 2 uses
  %i.ry = load ptr, ptr %i.rx, align 8, !tbaa !62 ; 2 uses
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 6376
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !102
  %.not265 = icmp eq i32 %i.sa, 0
  br i1 %.not265, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.sb = sext i32 %.10779 to i64                 ; 2 uses
  %i.sc = getelementptr inbounds [8 x i8], ptr %.pre968, i64 %i.sb
  store ptr %i.ry, ptr %i.sc, align 8, !tbaa !58
  %i.sd = load ptr, ptr %i.rx, align 8, !tbaa !62
  %i.se = add nsw i32 %.10779, 1
  %i.sf = getelementptr inbounds [8 x i8], ptr %i.rs, i64 %i.sb
  store ptr %i.sd, ptr %i.sf, align 8, !tbaa !58
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ca, %bb.cc, %bb.cb
  %.11 = phi i32 [ %i.se, %bb.cc ], [ %.10779, %bb.cb ], [ %.10779, %bb.ca ] ; 2 uses
  %indvars.iv.next940 = add nuw nsw i64 %indvars.iv939, 1 ; 2 uses
  %exitcond943.not = icmp eq i64 %indvars.iv.next940, %wide.trip.count942
  br i1 %exitcond943.not, label %._crit_edge782.loopexit, label %bb.ca, !llvm.loop !141

._crit_edge782.loopexit:                          ; preds = %bb.cd
  %.pre967 = load ptr, ptr @listX, align 16, !tbaa !53
  br label %._crit_edge782

._crit_edge782:                                   ; preds = %._crit_edge782.loopexit, %._crit_edge777
  %10 = phi ptr [ %.pre968, %._crit_edge777 ], [ %.pre967, %._crit_edge782.loopexit ]
  %.10.lcssa = phi i32 [ %.8.lcssa, %._crit_edge777 ], [ %.11, %._crit_edge782.loopexit ] ; 4 uses
  %i.sg = sext i32 %.8.lcssa to i64
  %i.sh = getelementptr inbounds [8 x i8], ptr %10, i64 %i.sg
  %i.si = sub nsw i32 %.10.lcssa, %.8.lcssa
  %i.sj = sext i32 %i.si to i64
  tail call void @qsort(ptr noundef %i.sh, i64 noundef %i.sj, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #16
  %i.sk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @listX, i64 8), align 8, !tbaa !53
  %i.sl = load i32, ptr @listXsize, align 16, !tbaa !4 ; 2 uses
  %i.sm = sext i32 %i.sl to i64
  %i.sn = getelementptr inbounds [8 x i8], ptr %i.sk, i64 %i.sm
  %i.so = sub nsw i32 %.10.lcssa, %i.sl
  %i.sp = sext i32 %i.so to i64
  tail call void @qsort(ptr noundef %i.sn, i64 noundef %i.sp, i64 noundef 8, ptr noundef nonnull @compare_pic_by_lt_pic_num_asc) #16
  store i32 %.10.lcssa, ptr @listXsize, align 16, !tbaa !4
  br label %bb.dz

bb.ce:                                            ; preds = %bb.bn
  %i.sq = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.sr = zext i32 %i.sq to i64
  %i.ss = tail call noalias ptr @calloc(i64 noundef %i.sr, i64 noundef 8) #17 ; 13 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  tail call void @no_mem_exit(ptr noundef nonnull @.str.10) #16
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  %i.su = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.sv = zext i32 %i.su to i64
  %i.sw = tail call noalias ptr @calloc(i64 noundef %i.sv, i64 noundef 8) #17 ; 8 uses
  %i.sx = icmp eq ptr %i.sw, null
  br i1 %i.sx, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  tail call void @no_mem_exit(ptr noundef nonnull @.str.12) #16
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.sy = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 24), align 8, !tbaa !44
  %i.sz = zext i32 %i.sy to i64
  %i.ta = tail call noalias ptr @calloc(i64 noundef %i.sz, i64 noundef 8) #17 ; 19 uses
  %i.tb = ptrtoaddr ptr %i.ta to i64
  %i.tc = icmp eq ptr %i.ta, null
  br i1 %i.tc, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  tail call void @no_mem_exit(ptr noundef nonnull @.str.11) #16
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  store i32 0, ptr @listXsize, align 16, !tbaa !4
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @listXsize, i64 4), align 4, !tbaa !4
  %i.td = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 2 uses
  %.not799 = icmp eq i32 %i.td, 0
  br i1 %.not799, label %._crit_edge735, label %.lr.ph734

.lr.ph734:                                        ; preds = %bb.ck
  %i.te = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.tf = load ptr, ptr @img, align 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tf, i64 15328
  %wide.trip.count896 = zext i32 %i.td to i64
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph734, %bb.co
  %indvars.iv893 = phi i64 [ 0, %.lr.ph734 ], [ %indvars.iv.next894, %bb.co ] ; 2 uses
  %.12732 = phi i32 [ 0, %.lr.ph734 ], [ %.13, %bb.co ] ; 4 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.te, i64 %indvars.iv893
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !55 ; 3 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !103
  %.not263 = icmp eq i32 %i.tj, 0
  br i1 %.not263, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tk = load i32, ptr %i.tg, align 8, !tbaa !142
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 36
  %i.tm = load i32, ptr %i.tl, align 4, !tbaa !143
  %.not264 = icmp slt i32 %i.tk, %i.tm
  br i1 %.not264, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.tn = add nsw i32 %.12732, 1
  %i.to = sext i32 %.12732 to i64
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.to
  store ptr %i.ti, ptr %i.tp, align 8, !tbaa !55
  br label %bb.co

bb.co:                                            ; preds = %bb.cl, %bb.cn, %bb.cm
  %.13 = phi i32 [ %i.tn, %bb.cn ], [ %.12732, %bb.cm ], [ %.12732, %bb.cl ] ; 2 uses
  %indvars.iv.next894 = add nuw nsw i64 %indvars.iv893, 1 ; 2 uses
  %exitcond897.not = icmp eq i64 %indvars.iv.next894, %wide.trip.count896
  br i1 %exitcond897.not, label %._crit_edge735, label %bb.cl, !llvm.loop !144

._crit_edge735:                                   ; preds = %bb.co, %bb.ck
  %.12.lcssa = phi i32 [ 0, %bb.ck ], [ %.13, %bb.co ] ; 9 uses
  %i.tq = sext i32 %.12.lcssa to i64              ; 3 uses
  tail call void @qsort(ptr noundef %i.ss, i64 noundef %i.tq, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_desc) #16
  %i.tr = load i32, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 32), align 8, !tbaa !24 ; 2 uses
  %.not800 = icmp eq i32 %i.tr, 0
  br i1 %.not800, label %._crit_edge741, label %.lr.ph740

.lr.ph740:                                        ; preds = %._crit_edge735
  %i.ts = load ptr, ptr getelementptr inbounds nuw (i8, ptr @dpb, i64 8), align 8, !tbaa !51
  %i.tt = load ptr, ptr @img, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 15328
  %wide.trip.count901 = zext i32 %i.tr to i64
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph740, %bb.cs
  %indvars.iv898 = phi i64 [ 0, %.lr.ph740 ], [ %indvars.iv.next899, %bb.cs ] ; 2 uses
  %.14738 = phi i32 [ %.12.lcssa, %.lr.ph740 ], [ %.15, %bb.cs ] ; 4 uses
  %i.tv = getelementptr inbounds nuw [8 x i8], ptr %i.ts, i64 %indvars.iv898
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !55 ; 3 uses
  %i.tx = load i32, ptr %i.tw, align 8, !tbaa !103
  %.not262 = icmp eq i32 %i.tx, 0
  br i1 %.not262, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ty = load i32, ptr %i.tu, align 8, !tbaa !142
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 36
  %i.ua = load i32, ptr %i.tz, align 4, !tbaa !143
  %i.ub = icmp slt i32 %i.ty, %i.ua
  br i1 %i.ub, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.uc = add nsw i32 %.14738, 1
  %i.ud = sext i32 %.14738 to i64
  %i.ue = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.ud
  store ptr %i.tw, ptr %i.ue, align 8, !tbaa !55
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cp, %bb.cr, %bb.cq
  %.15 = phi i32 [ %i.uc, %bb.cr ], [ %.14738, %bb.cq ], [ %.14738, %bb.cp ] ; 2 uses
  %indvars.iv.next899 = add nuw nsw i64 %indvars.iv898, 1 ; 2 uses
  %exitcond902.not = icmp eq i64 %indvars.iv.next899, %wide.trip.count901
  br i1 %exitcond902.not, label %._crit_edge741, label %bb.cp, !llvm.loop !145

._crit_edge741:                                   ; preds = %bb.cs, %._crit_edge735
  %.14.lcssa = phi i32 [ %.12.lcssa, %._crit_edge735 ], [ %.15, %bb.cs ] ; 41 uses
  %i.uf = getelementptr inbounds [8 x i8], ptr %i.ss, i64 %i.tq
  %i.ug = sub nsw i32 %.14.lcssa, %.12.lcssa
  %i.uh = sext i32 %i.ug to i64                   ; 2 uses
  tail call void @qsort(ptr noundef %i.uf, i64 noundef %i.uh, i64 noundef 8, ptr noundef nonnull @compare_fs_by_poc_asc) #16
  %i.ui = icmp sgt i32 %.12.lcssa, 0
  br i1 %i.ui, label %.lr.ph745.preheader, label %.preheader648

.lr.ph745.preheader:                              ; preds = %._crit_edge741
  %wide.trip.count906 = zext nneg i32 %.12.lcssa to i64 ; 3 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.sw, i64 %i.uh ; 2 uses
  %min.iters.check1110 = icmp ult i32 %.12.lcssa, 4
  br i1 %min.iters.check1110, label %.lr.ph745.preheader1224, label %vector.ph1111

vector.ph1111:                                    ; preds = %.lr.ph745.preheader
  %n.vec1113 = and i64 %wide.trip.count906, 2147483644 ; 3 uses
  br label %vector.body1114

vector.body1114:                                  ; preds = %vector.body1114, %vector.ph1111
  %index1115 = phi i64 [ 0, %vector.ph1111 ], [ %index.next1118, %vector.body1114 ] ; 3 uses
  %i.uj = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %index1115 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 16
  %wide.load1116 = load <2 x ptr>, ptr %i.uj, align 8, !tbaa !55
  %wide.load1117 = load <2 x ptr>, ptr %i.uk, align 8, !tbaa !55
  %i.ul = getelementptr [8 x i8], ptr %invariant.gep, i64 %index1115 ; 2 uses
  %i.um = getelementptr i8, ptr %i.ul, i64 16
  store <2 x ptr> %wide.load1116, ptr %i.ul, align 8, !tbaa !55
  store <2 x ptr> %wide.load1117, ptr %i.um, align 8, !tbaa !55
  %index.next1118 = add nuw i64 %index1115, 4     ; 2 uses
  %i.un = icmp eq i64 %index.next1118, %n.vec1113
  br i1 %i.un, label %middle.block1119, label %vector.body1114, !llvm.loop !146

middle.block1119:                                 ; preds = %vector.body1114
  %cmp.n1120 = icmp eq i64 %n.vec1113, %wide.trip.count906
  br i1 %cmp.n1120, label %.preheader648, label %.lr.ph745.preheader1224

.lr.ph745.preheader1224:                          ; preds = %.lr.ph745.preheader, %middle.block1119
  %indvars.iv903.ph = phi i64 [ 0, %.lr.ph745.preheader ], [ %n.vec1113, %middle.block1119 ]
  br label %.lr.ph745

.preheader648:                                    ; preds = %.lr.ph745, %middle.block1119, %._crit_edge741
  %i.uo = icmp slt i32 %.12.lcssa, %.14.lcssa
  br i1 %i.uo, label %.lr.ph747.preheader, label %._crit_edge748

.lr.ph747.preheader:                              ; preds = %.preheader648
  %i.up = shl nsw i64 %i.tq, 3
  %scevgep = getelementptr i8, ptr %i.ss, i64 %i.up
  %i.uq = xor i32 %.12.lcssa, -1
  %i.ur = add i32 %.14.lcssa, %i.uq
  %i.us = zext i32 %i.ur to i64
  %i.ut = shl nuw nsw i64 %i.us, 3
  %i.uu = add nuw nsw i64 %i.ut, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.sw, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %i.uu, i1 false), !tbaa !55
  br label %._crit_edge748

.lr.ph745:                                        ; preds = %.lr.ph745.preheader1224, %.lr.ph745
  %indvars.iv903 = phi i64 [ %indvars.iv.next904, %.lr.ph745 ], [ %indvars.iv903.ph, %.lr.ph745.preheader1224 ] ; 3 uses
  %i.uv = getelementptr inbounds nuw [8 x i8], ptr %i.ss, i64 %indvars.iv903
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !55
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv903
  store ptr %i.uw, ptr %gep, align 8, !tbaa !55
  %indvars.iv.next904 = add nuw nsw i64 %indvars.iv903, 1 ; 2 uses
  %exitcond907.not = icmp eq i64 %indvars.iv.next904, %wide.trip.count906
  br i1 %exitcond907.not, label %.preheader648, label %.lr.ph745, !llvm.loop !147

end_hunk_1
