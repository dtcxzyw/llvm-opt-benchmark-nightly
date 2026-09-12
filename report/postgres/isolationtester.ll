Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/isolationtester?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@run_permutation:bb.a
.lr.ph24:                                         ; preds = %._crit_edge
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.b

.preheader4:                                      ; preds = %bb.f, %._crit_edge
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8 ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph26, label %.preheader3

.lr.ph26:                                         ; preds = %.preheader4
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre95 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 24), align 8
  br label %bb.g

bb.b:                                             ; preds = %.lr.ph24, %bb.f
  %indvars.iv70 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next71, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr @conns, align 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load ptr, ptr @parseresult, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv70
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call ptr @PQexec(ptr noundef %i.t, ptr noundef %i.w) #16 ; 4 uses
  %i.y = call i32 @PQresultStatus(ptr noundef %i.x) #16
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i64 40, i1 false)
  store i8 1, ptr %5, align 8
  store i8 1, ptr %i.m, align 1
  store ptr @.str.32, ptr %i.n, align 8
  %i.aa = load ptr, ptr @stdout, align 8
  call void @PQprint(ptr noundef %i.aa, ptr noundef %i.x, ptr noundef nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ab = call i32 @PQresultStatus(ptr noundef %i.x) #16
  %.not149 = icmp eq i32 %i.ab, 1
  br i1 %.not149, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = load ptr, ptr @stderr, align 8
  %i.ad = load ptr, ptr @conns, align 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call ptr @PQerrorMessage(ptr noundef %i.ae) #16
  %i.ag = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ac, ptr noundef nonnull @.str.24, ptr noundef %i.af) #16 ; 0 uses
  call void @exit(i32 noundef 1) #19
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  call void @PQclear(ptr noundef %i.x) #16
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 8), align 8
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next71, %i.ai
  br i1 %i.aj, label %bb.b, label %.preheader4, !llvm.loop !36

.preheader3:                                      ; preds = %bb.m, %.preheader4
  br i1 %i.e, label %.lr.ph41, label %.preheader1.preheader

.lr.ph41:                                         ; preds = %.preheader3
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %wide.trip.count87 = zext nneg i32 %0 to i64
  br label %bb.n

bb.g:                                             ; preds = %.lr.ph26, %bb.m
  %i.am = phi i32 [ %i.o, %.lr.ph26 ], [ %i.bj, %bb.m ]
  %i.an = phi ptr [ %.pre95, %.lr.ph26 ], [ %i.bk, %bb.m ] ; 2 uses
  %indvars.iv73 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next74.pre-phi, %bb.m ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv73
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not147 = icmp eq ptr %i.ar, null
  br i1 %.not147, label %._crit_edge106, label %bb.h

._crit_edge106:                                   ; preds = %bb.g
  %.pre107 = add nuw nsw i64 %indvars.iv73, 1
  br label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.as = load ptr, ptr @conns, align 8
  %i.at = add nuw nsw i64 %indvars.iv73, 1        ; 3 uses
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.as, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = call ptr @PQexec(ptr noundef %i.av, ptr noundef nonnull %i.ar) #16 ; 4 uses
  %i.ax = call i32 @PQresultStatus(ptr noundef %i.aw) #16
  %i.ay = icmp eq i32 %i.ax, 2
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store i8 1, ptr %4, align 8
  store i8 1, ptr %i.q, align 1
  store ptr @.str.32, ptr %i.r, align 8
  %i.az = load ptr, ptr @stdout, align 8
  call void @PQprint(ptr noundef %i.az, ptr noundef %i.aw, ptr noundef nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.ba = call i32 @PQresultStatus(ptr noundef %i.aw) #16
  %.not148 = icmp eq i32 %i.ba, 1
  br i1 %.not148, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr @stderr, align 8
  %i.bc = load ptr, ptr @conns, align 8
  %i.bd = getelementptr inbounds nuw [48 x i8], ptr %i.bc, i64 %i.at ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load ptr, ptr %i.bd, align 8
  %i.bh = call ptr @PQerrorMessage(ptr noundef %i.bg) #16
  %i.bi = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.bb, ptr noundef nonnull @.str.25, ptr noundef %i.bf, ptr noundef %i.bh) #16 ; 0 uses
  call void @exit(i32 noundef 1) #19
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  call void @PQclear(ptr noundef %i.aw) #16
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 24), align 8
  %.pre96 = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge106, %bb.l
  %indvars.iv.next74.pre-phi = phi i64 [ %.pre107, %._crit_edge106 ], [ %i.at, %bb.l ] ; 2 uses
  %i.bj = phi i32 [ %i.am, %._crit_edge106 ], [ %.pre96, %bb.l ] ; 2 uses
  %i.bk = phi ptr [ %i.an, %._crit_edge106 ], [ %.pre, %bb.l ]
  %i.bl = sext i32 %i.bj to i64
  %i.bm = icmp slt i64 %indvars.iv.next74.pre-phi, %i.bl
  br i1 %i.bm, label %bb.g, label %.preheader3, !llvm.loop !37

bb.n:                                             ; preds = %.lr.ph41, %bb.au
  %indvars.iv84 = phi i64 [ 0, %.lr.ph41 ], [ %indvars.iv.next85, %bb.au ] ; 2 uses
  %.012240 = phi i32 [ 0, %.lr.ph41 ], [ %.4, %bb.au ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv84
  %i.bo = load ptr, ptr %i.bn, align 8            ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8            ; 3 uses
  %i.br = load ptr, ptr @conns, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = add i32 %i.bt, 1
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [48 x i8], ptr %i.br, i64 %i.bv ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 6 uses
  %i.bz = load ptr, ptr %i.by, align 8
  %.not141 = icmp eq ptr %i.bz, null
  br i1 %.not141, label %bb.ag, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.ca = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #16 ; 0 uses
  %i.cb = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not14230 = icmp eq ptr %i.cb, null
  br i1 %.not14230, label %._crit_edge34, label %.lr.ph33

.lr.ph33:                                         ; preds = %bb.o
  %i.cc = load i64, ptr %6, align 8
  %i.cd = load i64, ptr %i.al, align 8
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph33, %bb.af
  %i.ce = phi ptr [ %i.cb, %.lr.ph33 ], [ %.pre100, %bb.af ] ; 2 uses
  %.112331 = phi i32 [ %.012240, %.lr.ph33 ], [ %.125.lcssa7.i, %bb.af ] ; 6 uses
  %i.cf = call fastcc zeroext i1 @try_complete_step(ptr noundef nonnull %i.ce, i32 noundef 2)
  br i1 %i.cf, label %.preheader166, label %.preheader2

.preheader2:                                      ; preds = %bb.p
  %i.cg = icmp sgt i32 %.112331, 0
  br i1 %i.cg, label %.lr.ph28.preheader, label %.preheader2._crit_edge

.lr.ph28.preheader:                               ; preds = %.preheader2
  %wide.trip.count79 = zext nneg i32 %.112331 to i64
  br label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph28.preheader, %bb.q
  %indvars.iv76 = phi i64 [ 0, %.lr.ph28.preheader ], [ %indvars.iv.next77, %bb.q ] ; 4 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv76
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = icmp eq ptr %i.ce, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph28
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader2._crit_edge, label %.lr.ph28, !llvm.loop !38

.preheader2._crit_edge:                           ; preds = %.preheader2, %bb.q
  call void @abort() #17
  unreachable

bb.r:                                             ; preds = %.lr.ph28
  %i.ck = trunc nuw nsw i64 %indvars.iv76 to i32
  %i.cl = add nuw nsw i32 %i.ck, 1                ; 3 uses
  %i.cm = icmp slt i32 %i.cl, %.112331
  br i1 %i.cm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv76
  %i.co = sext i32 %i.cl to i64
  %i.cp = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.co
  %i.cq = sub nuw i32 %.112331, %i.cl
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw nsw i64 %i.cr, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.cp, i64 %i.cs, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = add nsw i32 %.112331, -1
  br label %.preheader166

.preheader166:                                    ; preds = %bb.t, %bb.p
  %.024.i.ph = phi i32 [ %i.ct, %bb.t ], [ %.112331, %bb.p ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader166, %bb.aa
  %.024.i = phi i32 [ %.226.i, %bb.aa ], [ %.024.i.ph, %.preheader166 ] ; 4 uses
  store i1 false, ptr @any_new_notice, align 1
  %i.cu = icmp sgt i32 %.024.i, 0
  br i1 %i.cu, label %.lr.ph.i, label %try_complete_steps.exit

.lr.ph.i:                                         ; preds = %bb.u, %bb.z
  %.03.i = phi i32 [ %.1.i, %bb.z ], [ 0, %bb.u ] ; 4 uses
  %.0222.i = phi i1 [ %.2.i, %bb.z ], [ false, %bb.u ] ; 2 uses
  %.1251.i = phi i32 [ %.226.i, %bb.z ], [ %.024.i, %bb.u ] ; 4 uses
  %i.cv = sext i32 %.03.i to i64
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cv ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = call fastcc zeroext i1 @try_complete_step(ptr noundef %i.cx, i32 noundef 3)
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i
  %i.cz = load ptr, ptr %i.cw, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 8
  %i.dc = icmp sgt i32 %i.db, 0
  %spec.select.i = select i1 %i.dc, i1 true, i1 %.0222.i
  %i.dd = add nsw i32 %.03.i, 1
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph.i
  %i.de = add nsw i32 %.03.i, 1                   ; 3 uses
  %i.df = icmp slt i32 %i.de, %.1251.i
  br i1 %i.df, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dg = sext i32 %i.de to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.dg
  %i.di = sub i32 %.1251.i, %i.de
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cw, ptr align 8 %i.dh, i64 %i.dk, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dl = add nsw i32 %.1251.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.226.i = phi i32 [ %.1251.i, %bb.v ], [ %i.dl, %bb.y ] ; 6 uses
  %.2.i = phi i1 [ %spec.select.i, %bb.v ], [ %.0222.i, %bb.y ] ; 2 uses
  %.1.i = phi i32 [ %i.dd, %bb.v ], [ %.03.i, %bb.y ] ; 2 uses
  %i.dm = icmp slt i32 %.1.i, %.226.i
  br i1 %i.dm, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %bb.z
  br i1 %.2.i, label %bb.aa, label %try_complete_steps.exit

bb.aa:                                            ; preds = %._crit_edge.i
  %i.dn = icmp slt i32 %.226.i, %.024.i
  %.b.i = load i1, ptr @any_new_notice, align 1
  %i.do = select i1 %i.dn, i1 true, i1 %.b.i
  br i1 %i.do, label %bb.u, label %try_complete_steps.exit, !llvm.loop !40

try_complete_steps.exit:                          ; preds = %bb.u, %._crit_edge.i, %bb.aa
  %.125.lcssa7.i = phi i32 [ %.226.i, %bb.aa ], [ %.226.i, %._crit_edge.i ], [ %.024.i, %bb.u ] ; 3 uses
  %i.dp = load ptr, ptr %i.by, align 8
  %.not145 = icmp eq ptr %i.dp, null
  br i1 %.not145, label %._crit_edge34, label %bb.ab

bb.ab:                                            ; preds = %try_complete_steps.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.dq = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #16 ; 0 uses
  %i.dr = load i64, ptr %7, align 8
  %i.ds = sub i64 %i.dr, %i.cc
  %i.dt = mul i64 %i.ds, 1000000
  %i.du = load i64, ptr %i.ak, align 8
  %i.dv = sub i64 %i.du, %i.cd
  %i.dw = add i64 %i.dv, %i.dt                    ; 2 uses
  %i.dx = load i64, ptr @max_step_wait, align 8
  %i.dy = shl nsw i64 %i.dx, 1
  %i.dz = icmp sgt i64 %i.dw, %i.dy
  br i1 %i.dz, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.ea = load ptr, ptr @stderr, align 8
  %i.eb = load ptr, ptr %i.by, align 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = sdiv i64 %i.dw, 1000000
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ea, ptr noundef nonnull @.str.26, ptr noundef %i.ec, i32 noundef %i.ee) #16 ; 0 uses
  %i.eg = load ptr, ptr @stderr, align 8
  %i.eh = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.eg, ptr noundef nonnull @.str.27) #16 ; 0 uses
  %i.ei = load i32, ptr @nconns, align 4          ; 2 uses
  %i.ej = icmp sgt i32 %i.ei, 1
  br i1 %i.ej, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %bb.ac
  %.pre98 = load ptr, ptr @conns, align 8
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.ae
  %i.ek = phi i32 [ %i.ei, %.lr.ph48.preheader ], [ %i.es, %bb.ae ]
  %i.el = phi ptr [ %.pre98, %.lr.ph48.preheader ], [ %i.et, %bb.ae ] ; 2 uses
  %indvars.iv89 = phi i64 [ 1, %.lr.ph48.preheader ], [ %indvars.iv.next90, %bb.ae ] ; 2 uses
  %i.em = getelementptr inbounds nuw [48 x i8], ptr %i.el, i64 %indvars.iv89
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not146 = icmp eq ptr %i.eo, null
  br i1 %.not146, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph48
  %i.ep = load ptr, ptr @stderr, align 8
  %i.eq = load ptr, ptr %i.eo, align 8
  %i.er = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ep, ptr noundef nonnull @.str.22, ptr noundef %i.eq) #16 ; 0 uses
  %.pre97 = load ptr, ptr @conns, align 8
  %.pre99 = load i32, ptr @nconns, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph48
  %i.es = phi i32 [ %.pre99, %bb.ad ], [ %i.ek, %.lr.ph48 ] ; 2 uses
  %i.et = phi ptr [ %.pre97, %bb.ad ], [ %i.el, %.lr.ph48 ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.eu = sext i32 %i.es to i64
  %i.ev = icmp slt i64 %indvars.iv.next90, %i.eu
  br i1 %i.ev, label %.lr.ph48, label %._crit_edge49, !llvm.loop !41

._crit_edge49:                                    ; preds = %bb.ae, %bb.ac
  %i.ew = load ptr, ptr @stderr, align 8
  %i.ex = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ew, ptr noundef nonnull @.str.23) #16 ; 0 uses
  call void @exit(i32 noundef 1) #19
  unreachable

bb.af:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.pre100 = load ptr, ptr %i.by, align 8         ; 2 uses
  %.not142 = icmp eq ptr %.pre100, null
  br i1 %.not142, label %._crit_edge34, label %bb.p, !llvm.loop !42

._crit_edge34:                                    ; preds = %try_complete_steps.exit, %bb.af, %bb.o
  %.1123.lcssa = phi i32 [ %.012240, %bb.o ], [ %.125.lcssa7.i, %bb.af ], [ %.125.lcssa7.i, %try_complete_steps.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %bb.ag

bb.ag:                                            ; preds = %._crit_edge34, %bb.n
  %.3 = phi i32 [ %.1123.lcssa, %._crit_edge34 ], [ %.012240, %bb.n ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = call i32 @PQsendQuery(ptr noundef %i.bx, ptr noundef %i.ez) #16
  %.not143 = icmp eq i32 %i.fa, 0
  br i1 %.not143, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fb = load ptr, ptr @stdout, align 8
  %i.fc = load ptr, ptr %i.bq, align 8
  %i.fd = call ptr @PQerrorMessage(ptr noundef %i.bx) #16
  %i.fe = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.fb, ptr noundef nonnull @.str.28, ptr noundef %i.fc, ptr noundef %i.fd) #16 ; 0 uses
  call void @exit(i32 noundef 1) #19
  unreachable

bb.ai:                                            ; preds = %bb.ag
  store ptr %i.bo, ptr %i.by, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %bb.ai
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.fj = load ptr, ptr @conns, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph37, %bb.al
  %i.fk = phi i32 [ %i.fg, %.lr.ph37 ], [ %i.ge, %bb.al ]
  %indvars.iv81 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next82, %bb.al ] ; 2 uses
  %i.fl = load ptr, ptr %i.fi, align 8
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv81
  %i.fn = load ptr, ptr %i.fm, align 8            ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = icmp eq i32 %i.fp, 2
  br i1 %i.fq, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 12
  %i.fs = load i32, ptr %i.fr, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fw = load i32, ptr %i.fv, align 8
  %i.fx = add i32 %i.fw, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds [48 x i8], ptr %i.fj, i64 %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load i32, ptr %i.ga, align 8
end_hunk_0
