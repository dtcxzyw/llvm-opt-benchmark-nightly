Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-print?download=true
inline.NumInlined: 12
inline.NumDeleted: 4
begin_hunk_0_@PQprint:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #15 ; 4 uses
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %sext = shl i64 %i.f, 32
  %i.h = ashr exact i64 %sext, 32
  %i.i = icmp ult i64 %i.h, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr @stderr, align 8
  %i.k = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.j, ptr noundef nonnull @.str) #14 ; 0 uses
  br label %bb.cw

bb.d:                                             ; preds = %bb.b
  %i.l = tail call i32 @PQntuples(ptr noundef %1) #14 ; 14 uses
  %i.m = zext nneg i32 %i.b to i64                ; 5 uses
  %i.n = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 8) #16 ; 13 uses
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 1) #16 ; 11 uses
  %i.p = tail call noalias ptr @calloc(i64 noundef %i.m, i64 noundef 4) #16 ; 11 uses
  %i.q = icmp ne ptr %i.n, null
  %i.r = icmp ne ptr %i.o, null
  %or.cond = and i1 %i.q, %i.r
  %i.s = icmp ne ptr %i.p, null
  %or.cond3 = and i1 %or.cond, %i.s
  br i1 %or.cond3, label %.preheader317, label %bb.e

.preheader317:                                    ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %.lr.ph327.preheader, label %.lr.ph.split

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @stderr, align 8
  %i.w = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.v, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.cw

.lr.ph.split:                                     ; preds = %.preheader317, %.lr.ph.split
  %.0213320 = phi i32 [ %i.aa, %.lr.ph.split ], [ 0, %.preheader317 ] ; 3 uses
  %i.x = sext i32 %.0213320 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8
  %.not252 = icmp eq ptr %i.z, null
  %i.aa = add i32 %.0213320, 1
  br i1 %.not252, label %.critedge.loopexit, label %.lr.ph.split

.critedge.loopexit:                               ; preds = %.lr.ph.split
  %i.ab = sext i32 %.0213320 to i64
  br label %.lr.ph327.preheader

.lr.ph327.preheader:                              ; preds = %.preheader317, %.critedge.loopexit
  %.0213.lcssa = phi i64 [ 0, %.preheader317 ], [ %i.ab, %.critedge.loopexit ]
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.lr.ph327

.lr.ph327:                                        ; preds = %.lr.ph327.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph327.preheader ], [ %indvars.iv.next, %bb.i ] ; 7 uses
  %.0212326 = phi i32 [ 0, %.lr.ph327.preheader ], [ %i.ar, %bb.i ]
  %.0214325 = phi i32 [ 0, %.lr.ph327.preheader ], [ %spec.select, %bb.i ]
  %i.ac = icmp slt i64 %indvars.iv, %.0213.lcssa
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph327
  %i.ad = load ptr, ptr %i.t, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load ptr, ptr %i.ae, align 8            ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1
  %.not298 = icmp eq i8 %i.ag, 0
  br i1 %.not298, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.af, ptr %i.ah, align 8
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph327, %bb.f
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = tail call ptr @PQfname(ptr noundef %1, i32 noundef %i.ai) #14 ; 3 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.aj, ptr %i.ak, align 8
  %.not299 = icmp eq ptr %i.aj, null
  br i1 %.not299, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g
  %i.al = phi ptr [ %i.af, %.thread ], [ %i.aj, %bb.g ]
  %i.am = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #15
  %i.an = trunc i64 %i.am to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ao = phi i32 [ %i.an, %bb.h ], [ 0, %bb.g ]  ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = add i32 %i.ao, %i.g                     ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 %.0214325) ; 3 uses
  %i.ar = add i32 %i.aq, %.0212326                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph327, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.i
  %i.as = load ptr, ptr %i.d, align 8
  %i.at = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.as) #15
  %i.au = trunc i64 %i.at to i32
  %i.av = mul i32 %i.b, %i.au
  %i.aw = add i32 %i.ar, 1
  %i.ax = add i32 %i.aw, %i.av
  %i.ay = icmp eq ptr %0, null
  %i.az = load ptr, ptr @stdout, align 8          ; 2 uses
  %spec.select302 = select i1 %i.ay, ptr %i.az, ptr %0 ; 9 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.bb = load i8, ptr %i.ba, align 1
  %.not253 = icmp ne i8 %i.bb, 0
  %i.bc = icmp eq ptr %spec.select302, %i.az
  %or.cond304 = select i1 %.not253, i1 %i.bc, i1 false
  br i1 %or.cond304, label %bb.j, label %bb.w

bb.j:                                             ; preds = %._crit_edge
  %i.bd = load ptr, ptr @stdin, align 8
  %i.be = tail call i32 @fileno(ptr noundef %i.bd) #14
  %i.bf = tail call i32 @isatty(i32 noundef %i.be) #14
  %.not254 = icmp eq i32 %i.bf, 0
  br i1 %.not254, label %bb.w, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load ptr, ptr @stdout, align 8
  %i.bh = tail call i32 @fileno(ptr noundef %i.bg) #14
  %i.bi = tail call i32 @isatty(i32 noundef %i.bh) #14
  %.not255 = icmp eq i32 %i.bi, 0
  br i1 %.not255, label %bb.w, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load ptr, ptr @stdout, align 8
  %i.bk = tail call i32 @fileno(ptr noundef %i.bj) #14
  %i.bl = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.bk, i64 noundef 21523, ptr noundef nonnull %4) #14
  %i.bm = icmp eq i32 %i.bl, -1
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %i.bo = load i16, ptr %i.bn, align 2            ; 2 uses
  %i.bp = icmp eq i16 %i.bo, 0
  %or.cond7 = select i1 %i.bm, i1 true, i1 %i.bp
  %i.bq = load i16, ptr %4, align 2               ; 2 uses
  %i.br = icmp eq i16 %i.bq, 0
  %or.cond11 = select i1 %or.cond7, i1 true, i1 %i.br
  br i1 %or.cond11, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i16 24, ptr %4, align 2
  store i16 80, ptr %i.bn, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.bs = phi i16 [ %i.bo, %bb.l ], [ 80, %bb.m ]
  %i.bt = phi i16 [ %i.bq, %bb.l ], [ 24, %bb.m ] ; 2 uses
  %i.bu = call ptr @getenv(ptr noundef nonnull @.str.2) #14 ; 4 uses
  %.not256 = icmp eq ptr %i.bu, null
  br i1 %.not256, label %bb.w, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = call i64 @strspn(ptr noundef nonnull %i.bu, ptr noundef nonnull @.str.3) #15
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bu) #15
  %.not257 = icmp eq i64 %i.bv, %i.bw
  br i1 %.not257, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.by = load i8, ptr %i.bx, align 1
  %.not258 = icmp eq i8 %i.by, 0
  br i1 %.not258, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ca = load i8, ptr %i.bz, align 4
  %.not259 = icmp eq i8 %i.ca, 0
  br i1 %.not259, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cb = add nuw i32 %i.b, 1
  %i.cc = mul i32 %i.l, %i.cb
  %i.cd = zext i16 %i.bt to i32
  %.not260 = icmp slt i32 %i.cc, %i.cd
  br i1 %.not260, label %bb.w, label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ce = zext i16 %i.bs to i32
  %i.cf = sdiv i32 %i.ax, %i.ce                   ; 2 uses
  %.neg357 = xor i32 %i.cf, -1
  %i.cg = add i32 %i.cf, 1
  %i.ch = mul i32 %i.cg, %i.l
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.cj = load i8, ptr %i.ci, align 2
  %.not262 = icmp ne i8 %i.cj, 0
  %i.ck = zext i1 %.not262 to i32
  %i.cl = shl i32 %i.ch, %i.ck
  %i.cm = zext i16 %i.bt to i32
  %i.cn = load i8, ptr %2, align 8
  %.not263 = icmp eq i8 %i.cn, 0                  ; 2 uses
  %.neg358 = shl i32 %.neg357, 1
  %.neg359 = select i1 %.not263, i32 0, i32 %.neg358
  %i.co = add i32 %.neg359, %i.cm
  %.neg = select i1 %.not263, i32 0, i32 -2
  %i.cp = add i32 %i.co, %.neg
  %.not264 = icmp slt i32 %i.cl, %i.cp
  br i1 %.not264, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cq = call i32 @fflush(ptr noundef null)      ; 0 uses
  %i.cr = call noalias ptr @popen(ptr noundef nonnull %i.bu, ptr noundef nonnull @.str.4) ; 2 uses
  %.not265 = icmp eq ptr %i.cr, null
  br i1 %.not265, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @pq_block_sigpipe(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #14
  %i.ct = icmp eq i32 %i.cs, 0
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cu = load ptr, ptr @stdout, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.u, %bb.n, %bb.o, %bb.p, %bb.s, %bb.v, %bb.k, %bb.j, %._crit_edge
  %.1230 = phi ptr [ %spec.select302, %bb.p ], [ %spec.select302, %._crit_edge ], [ %i.cr, %bb.u ], [ %i.cu, %bb.v ], [ %spec.select302, %bb.j ], [ %spec.select302, %bb.s ], [ %spec.select302, %bb.o ], [ %spec.select302, %bb.n ], [ %spec.select302, %bb.k ], [ %spec.select302, %bb.r ] ; 37 uses
  %.0210 = phi i1 [ false, %bb.p ], [ false, %._crit_edge ], [ true, %bb.u ], [ false, %bb.v ], [ false, %bb.j ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.r ] ; 5 uses
  %.0208 = phi i1 [ false, %bb.p ], [ false, %._crit_edge ], [ %i.ct, %bb.u ], [ false, %bb.v ], [ false, %bb.j ], [ false, %bb.s ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.r ] ; 5 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 8 uses
  %i.cw = load i8, ptr %i.cv, align 4
  %.not266 = icmp eq i8 %i.cw, 0                  ; 2 uses
  br i1 %.not266, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %bb.w
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.cy = load i8, ptr %i.cx, align 1
  %.not267 = icmp eq i8 %i.cy, 0
  br i1 %.not267, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.da = load i8, ptr %i.cz, align 1
  %.not268 = icmp eq i8 %i.da, 0
  br i1 %.not268, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.db = sext i32 %i.l to i64
  %i.dc = add nsw i64 %i.db, 1
  %i.dd = shl nuw nsw i64 %i.m, 3
  %i.de = call noalias ptr @calloc(i64 noundef %i.dc, i64 noundef %i.dd) #16 ; 2 uses
  %.not269 = icmp eq ptr %i.de, null
  br i1 %.not269, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.df = load ptr, ptr @stderr, align 8
  %i.dg = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.1) #14 ; 0 uses
  br label %bb.cw

bb.ab:                                            ; preds = %bb.y, %bb.w
  %i.dh = load i8, ptr %2, align 8
  %.not270 = icmp eq i8 %i.dh, 0
  br i1 %.not270, label %bb.aj, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.dj = load i8, ptr %i.di, align 1
  %.not271 = icmp eq i8 %i.dj, 0
  br i1 %.not271, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  br i1 %.not266, label %.lr.ph331.preheader, label %bb.ae

.lr.ph331.preheader:                              ; preds = %bb.ad
  %i.dk = zext nneg i32 %i.b to i64
  %wide.trip.count367 = zext nneg i32 %i.b to i64
  br label %.lr.ph331

bb.ae:                                            ; preds = %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.dm = load i8, ptr %i.dl, align 1
  %.not274 = icmp eq i8 %i.dm, 0
  br i1 %.not274, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dn = sub i32 %spec.select, %i.g
  %i.do = load ptr, ptr %i.d, align 8
  %i.dp = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.5, i32 noundef %i.dn, ptr noundef nonnull @.str.6, ptr noundef %i.do) #14 ; 0 uses
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ae
  %i.dq = load ptr, ptr %i.d, align 8
  %i.dr = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.6, ptr noundef %i.dq) #14 ; 0 uses
  br label %bb.aj

.lr.ph331:                                        ; preds = %.lr.ph331.preheader, %bb.ai
  %indvars.iv363 = phi i64 [ 0, %.lr.ph331.preheader ], [ %indvars.iv.next364, %bb.ai ] ; 2 uses
  %.0207330 = phi i32 [ 0, %.lr.ph331.preheader ], [ %i.dy, %bb.ai ]
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv363
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = call i32 @fputs(ptr noundef %i.dt, ptr noundef %.1230) ; 0 uses
  %i.dv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dt) #15
  %i.dw = add i64 %i.dv, %i.f
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = add i32 %.0207330, %i.dx                ; 2 uses
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 3 uses
  %i.dz = icmp samesign ult i64 %indvars.iv.next364, %i.dk
  br i1 %i.dz, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.lr.ph331
  %i.ea = load ptr, ptr %i.d, align 8
  %i.eb = call i32 @fputs(ptr noundef %i.ea, ptr noundef %.1230) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.lr.ph331
  %exitcond368.not = icmp eq i64 %indvars.iv.next364, %wide.trip.count367
  br i1 %exitcond368.not, label %._crit_edge332, label %.lr.ph331, !llvm.loop !5

._crit_edge332:                                   ; preds = %bb.ai
  %i.ec = call i32 @fputc(i32 noundef 10, ptr noundef %.1230) ; 0 uses
  %i.ed = sub i32 %i.dy, %i.g                     ; 2 uses
  %.not273334 = icmp eq i32 %i.ed, 0
  br i1 %.not273334, label %._crit_edge338, label %.lr.ph337

.lr.ph337:                                        ; preds = %._crit_edge332, %.lr.ph337
  %.1335 = phi i32 [ %i.ee, %.lr.ph337 ], [ %i.ed, %._crit_edge332 ]
  %i.ee = add i32 %.1335, -1                      ; 2 uses
  %i.ef = call i32 @fputc(i32 noundef 45, ptr noundef %.1230) ; 0 uses
  %.not273 = icmp eq i32 %i.ee, 0
  br i1 %.not273, label %._crit_edge338, label %.lr.ph337, !llvm.loop !6

._crit_edge338:                                   ; preds = %.lr.ph337, %._crit_edge332
  %i.eg = call i32 @fputc(i32 noundef 10, ptr noundef %.1230) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ab, %bb.ac, %bb.af, %bb.ag, %._crit_edge338, %bb.z
  %.0217 = phi ptr [ null, %bb.ac ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %._crit_edge338 ], [ null, %bb.ab ], [ %i.de, %bb.z ] ; 6 uses
  %i.eh = load i8, ptr %i.cv, align 4
  %.not275 = icmp eq i8 %i.eh, 0
  br i1 %.not275, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.ej = load i8, ptr %i.ei, align 1
  %.not276 = icmp eq i8 %i.ej, 0
  br i1 %.not276, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.el = load ptr, ptr %i.ek, align 8            ; 2 uses
  %.not277 = icmp eq ptr %i.el, null
  br i1 %.not277, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.em = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.el) #14 ; 0 uses
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.en = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.9, i32 noundef %i.l, i32 noundef %i.b) #14 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an, %bb.ak, %bb.aj
  %i.eo = icmp sgt i32 %i.l, 0                    ; 2 uses
  br i1 %i.eo, label %.lr.ph347, label %._crit_edge348

.lr.ph347:                                        ; preds = %bb.ao
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 156
  %i.et = sub i32 %spec.select, %i.g
  %i.eu = zext nneg i32 %i.b to i64
  %wide.trip.count373 = zext nneg i32 %i.b to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph347, %bb.br
  %.0227345 = phi i32 [ 0, %.lr.ph347 ], [ %i.hb, %bb.br ] ; 6 uses
  %i.ev = load i8, ptr %i.cv, align 4
  %.not292 = icmp eq i8 %i.ev, 0
  br i1 %.not292, label %.lr.ph343, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ew = load i8, ptr %i.ep, align 1
  %.not293 = icmp eq i8 %i.ew, 0
  br i1 %.not293, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ex = load ptr, ptr %i.eq, align 8            ; 2 uses
  %.not294 = icmp eq ptr %i.ex, null
  %spec.select306 = select i1 %.not294, ptr @.str.11, ptr %i.ex
  %i.ey = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.10, ptr noundef nonnull %spec.select306, i32 noundef %.0227345) #14 ; 0 uses
  br label %.lr.ph343

bb.as:                                            ; preds = %bb.aq
  %i.ez = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %.1230, ptr noundef nonnull @.str.12, i32 noundef %.0227345) #14 ; 0 uses
  br label %.lr.ph343

.lr.ph343:                                        ; preds = %bb.ap, %bb.as, %bb.ar
  %i.fa = mul i32 %.0227345, %i.b
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph343, %bb.bo
  %indvars.iv369 = phi i64 [ 0, %.lr.ph343 ], [ %indvars.iv.next370, %bb.bo ] ; 8 uses
  %i.fb = trunc nuw nsw i64 %indvars.iv369 to i32 ; 3 uses
  %i.fc = call i32 @PQgetlength(ptr noundef %1, i32 noundef %.0227345, i32 noundef range(i32 -2147483648, 2147483647) %i.fb) #14 ; 3 uses
  %i.fd = call ptr @PQgetvalue(ptr noundef %1, i32 noundef %.0227345, i32 noundef range(i32 -2147483648, 2147483647) %i.fb) #14 ; 9 uses
  %i.fe = icmp sgt i32 %i.fc, 0
end_hunk_0
