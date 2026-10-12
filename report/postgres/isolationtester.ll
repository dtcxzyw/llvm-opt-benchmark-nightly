Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/isolationtester?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@run_permutation:bb.a
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
  br i1 %.not147, label %._crit_edge108, label %bb.h

._crit_edge108:                                   ; preds = %bb.g
  %.pre109 = add nuw nsw i64 %indvars.iv73, 1
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

bb.m:                                             ; preds = %._crit_edge108, %bb.l
  %indvars.iv.next74.pre-phi = phi i64 [ %.pre109, %._crit_edge108 ], [ %i.at, %bb.l ] ; 2 uses
  %i.bj = phi i32 [ %i.am, %._crit_edge108 ], [ %.pre96, %bb.l ] ; 2 uses
  %i.bk = phi ptr [ %i.an, %._crit_edge108 ], [ %.pre, %bb.l ]
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
  br i1 %i.cf, label %.preheader168, label %.preheader2

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
  %8 = sext i32 %i.cl to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.c, i64 %8
  %i.cp = sub nuw nsw i32 %.112331, %i.cl
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr nonnull align 8 %i.co, i64 %i.cr, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cs = add nsw i32 %.112331, -1
  br label %.preheader168

.preheader168:                                    ; preds = %bb.t, %bb.p
  %.024.i.ph = phi i32 [ %i.cs, %bb.t ], [ %.112331, %bb.p ]
  br label %bb.u

bb.u:                                             ; preds = %.preheader168, %bb.aa
  %.024.i = phi i32 [ %.226.i, %bb.aa ], [ %.024.i.ph, %.preheader168 ] ; 4 uses
  store i1 false, ptr @any_new_notice, align 1
  %i.ct = icmp sgt i32 %.024.i, 0
  br i1 %i.ct, label %.lr.ph.i, label %try_complete_steps.exit

.lr.ph.i:                                         ; preds = %bb.u, %bb.z
  %.03.i = phi i32 [ %.1.i, %bb.z ], [ 0, %bb.u ] ; 4 uses
  %.0222.i = phi i1 [ %.2.i, %bb.z ], [ false, %bb.u ] ; 2 uses
  %.1251.i = phi i32 [ %.226.i, %bb.z ], [ %.024.i, %bb.u ] ; 4 uses
  %i.cu = sext i32 %.03.i to i64
  %i.cv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.cu ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = call fastcc zeroext i1 @try_complete_step(ptr noundef %i.cw, i32 noundef 3)
  br i1 %i.cx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i
  %i.cy = load ptr, ptr %i.cv, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = icmp sgt i32 %i.da, 0
  %spec.select.i = select i1 %i.db, i1 true, i1 %.0222.i
  %i.dc = add nsw i32 %.03.i, 1
  br label %bb.z

bb.w:                                             ; preds = %.lr.ph.i
  %i.dd = add nsw i32 %.03.i, 1                   ; 3 uses
  %i.de = icmp slt i32 %i.dd, %.1251.i
  br i1 %i.de, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.df
  %i.dh = sub i32 %.1251.i, %i.dd
  %i.di = sext i32 %i.dh to i64
  %i.dj = shl nsw i64 %i.di, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cv, ptr align 8 %i.dg, i64 %i.dj, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dk = add nsw i32 %.1251.i, -1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.226.i = phi i32 [ %.1251.i, %bb.v ], [ %i.dk, %bb.y ] ; 6 uses
  %.2.i = phi i1 [ %spec.select.i, %bb.v ], [ %.0222.i, %bb.y ] ; 2 uses
  %.1.i = phi i32 [ %i.dc, %bb.v ], [ %.03.i, %bb.y ] ; 2 uses
  %i.dl = icmp slt i32 %.1.i, %.226.i
  br i1 %i.dl, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !39

._crit_edge.i:                                    ; preds = %bb.z
  br i1 %.2.i, label %bb.aa, label %try_complete_steps.exit

bb.aa:                                            ; preds = %._crit_edge.i
  %i.dm = icmp slt i32 %.226.i, %.024.i
  %.b.i = load i1, ptr @any_new_notice, align 1
  %i.dn = select i1 %i.dm, i1 true, i1 %.b.i
  br i1 %i.dn, label %bb.u, label %try_complete_steps.exit, !llvm.loop !40

try_complete_steps.exit:                          ; preds = %bb.u, %._crit_edge.i, %bb.aa
  %.125.lcssa7.i = phi i32 [ %.226.i, %bb.aa ], [ %.226.i, %._crit_edge.i ], [ %.024.i, %bb.u ] ; 3 uses
  %i.do = load ptr, ptr %i.by, align 8
  %.not145 = icmp eq ptr %i.do, null
  br i1 %.not145, label %._crit_edge34, label %bb.ab

bb.ab:                                            ; preds = %try_complete_steps.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.dp = call i32 @gettimeofday(ptr noundef nonnull %7, ptr noundef null) #16 ; 0 uses
  %i.dq = load i64, ptr %7, align 8
  %i.dr = sub i64 %i.dq, %i.cc
  %i.ds = mul i64 %i.dr, 1000000
  %i.dt = load i64, ptr %i.ak, align 8
  %i.du = sub i64 %i.dt, %i.cd
  %i.dv = add i64 %i.du, %i.ds                    ; 2 uses
  %i.dw = load i64, ptr @max_step_wait, align 8
  %i.dx = shl nsw i64 %i.dw, 1
  %i.dy = icmp sgt i64 %i.dv, %i.dx
  br i1 %i.dy, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dz = load ptr, ptr @stderr, align 8
  %i.ea = load ptr, ptr %i.by, align 8
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = sdiv i64 %i.dv, 1000000
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.26, ptr noundef %i.eb, i32 noundef %i.ed) #16 ; 0 uses
  %i.ef = load ptr, ptr @stderr, align 8
  %i.eg = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.27) #16 ; 0 uses
  %i.eh = load i32, ptr @nconns, align 4          ; 2 uses
  %i.ei = icmp sgt i32 %i.eh, 1
  br i1 %i.ei, label %.lr.ph48.preheader, label %._crit_edge49

.lr.ph48.preheader:                               ; preds = %bb.ac
  %.pre98 = load ptr, ptr @conns, align 8
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %bb.ae
  %i.ej = phi i32 [ %i.eh, %.lr.ph48.preheader ], [ %i.er, %bb.ae ]
  %i.ek = phi ptr [ %.pre98, %.lr.ph48.preheader ], [ %i.es, %bb.ae ] ; 2 uses
  %indvars.iv89 = phi i64 [ 1, %.lr.ph48.preheader ], [ %indvars.iv.next90, %bb.ae ] ; 2 uses
  %i.el = getelementptr inbounds nuw [48 x i8], ptr %i.ek, i64 %indvars.iv89
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %.not146 = icmp eq ptr %i.en, null
  br i1 %.not146, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph48
  %i.eo = load ptr, ptr @stderr, align 8
  %i.ep = load ptr, ptr %i.en, align 8
  %i.eq = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.eo, ptr noundef nonnull @.str.22, ptr noundef %i.ep) #16 ; 0 uses
  %.pre97 = load ptr, ptr @conns, align 8
  %.pre99 = load i32, ptr @nconns, align 4
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.lr.ph48
  %i.er = phi i32 [ %.pre99, %bb.ad ], [ %i.ej, %.lr.ph48 ] ; 2 uses
  %i.es = phi ptr [ %.pre97, %bb.ad ], [ %i.ek, %.lr.ph48 ]
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.et = sext i32 %i.er to i64
  %i.eu = icmp slt i64 %indvars.iv.next90, %i.et
  br i1 %i.eu, label %.lr.ph48, label %._crit_edge49, !llvm.loop !41

._crit_edge49:                                    ; preds = %bb.ae, %bb.ac
  %i.ev = load ptr, ptr @stderr, align 8
  %i.ew = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.23) #16 ; 0 uses
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
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = call i32 @PQsendQuery(ptr noundef %i.bx, ptr noundef %i.ey) #16
  %.not143 = icmp eq i32 %i.ez, 0
  br i1 %.not143, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fa = load ptr, ptr @stdout, align 8
  %i.fb = load ptr, ptr %i.bq, align 8
  %i.fc = call ptr @PQerrorMessage(ptr noundef %i.bx) #16
  %i.fd = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.fa, ptr noundef nonnull @.str.28, ptr noundef %i.fb, ptr noundef %i.fc) #16 ; 0 uses
  call void @exit(i32 noundef 1) #19
  unreachable

bb.ai:                                            ; preds = %bb.ag
  store ptr %i.bo, ptr %i.by, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8            ; 2 uses
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph37, label %._crit_edge38

.lr.ph37:                                         ; preds = %bb.ai
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 2 uses
  %i.fi = load ptr, ptr @conns, align 8
  %.pre102 = load ptr, ptr %i.fh, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph37, %bb.al
  %i.fj = phi i32 [ %i.ff, %.lr.ph37 ], [ %i.gd, %bb.al ]
  %i.fk = phi ptr [ %.pre102, %.lr.ph37 ], [ %i.ge, %bb.al ] ; 2 uses
  %indvars.iv81 = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next82, %bb.al ] ; 2 uses
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %indvars.iv81
  %i.fm = load ptr, ptr %i.fl, align 8            ; 4 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = icmp eq i32 %i.fo, 2
  br i1 %i.fp, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load i32, ptr %i.fu, align 8
end_hunk_0
