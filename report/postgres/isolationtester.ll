Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/isolationtester?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main
define dso_local range(i32 0, 2) i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.PQExpBufferData, align 8    ; 9 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.b = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str) #16
  switch i32 %i.b, label %bb.c [
    i32 -1, label %bb.d
    i32 86, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  tail call void @exit(i32 noundef 0) #17
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @stderr, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.2) #16 ; 0 uses
  br label %run_testspec.exit

bb.d:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @stdout, align 8
  tail call void @setbuf(ptr noundef %i.f, ptr noundef null) #16
  %i.g = load ptr, ptr @stderr, align 8
  tail call void @setbuf(ptr noundef %i.g, ptr noundef null) #16
  %i.h = load i32, ptr @optind, align 4           ; 2 uses
  %i.i = icmp sgt i32 %0, %i.h
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = sext i32 %i.h to i64
  %i.k = getelementptr inbounds [8 x i8], ptr %1, i64 %i.j
  %i.l = load ptr, ptr %i.k, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.038 = phi ptr [ %i.l, %bb.e ], [ @.str.3, %bb.d ] ; 2 uses
  %i.m = tail call ptr @getenv(ptr noundef nonnull @.str.4) #16 ; 2 uses
  %.not43 = icmp eq ptr %i.m, null
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.m, ptr noundef null, i32 noundef 10) #16, !inline_history !5
  %i.o = shl i64 %i.n, 32
  %i.p = ashr exact i64 %i.o, 32
  %i.q = mul nsw i64 %i.p, 2000000
  store i64 %i.q, ptr @max_step_wait, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = tail call i32 @spec_yyparse() #16        ; 0 uses
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8 ; 3 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 24), align 8 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.s to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.v = icmp ult i32 %i.s, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.i ] ; 5 uses
  %.010418.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.as, %bb.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.i ]
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = add i32 %i.z, %.010418.i
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8
  %i.ag = add i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = add i32 %i.al, %i.ag
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = add i32 %i.ar, %i.am                    ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.i, !llvm.loop !6

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %.010418.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.as, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.j ] ; 2 uses
  %.010418.i.epil = phi i32 [ %.010418.i.epil.init, %.epil.preheader ], [ %i.ax, %bb.j ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.i.epil
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add i32 %i.aw, %.010418.i.epil          ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.j, !llvm.loop !7

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.j, %bb.h
  %.0104.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.as, %._crit_edge.i.loopexit.unr-lcssa ], [ %i.ax, %bb.j ] ; 6 uses
  %i.ay = sext i32 %.0104.lcssa.i to i64          ; 3 uses
  %i.az = tail call ptr @pg_malloc_mul(i64 noundef 8, i64 noundef %i.ay) #16 ; 6 uses
  %i.ba = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8 ; 2 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader8.preheader.i, label %._crit_edge27.i

.preheader8.preheader.i:                          ; preds = %._crit_edge.i
  %.pre.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 24), align 8
  br label %.preheader8.i

.preheader8.i:                                    ; preds = %._crit_edge23.i, %.preheader8.preheader.i
  %i.bc = phi i32 [ %i.ba, %.preheader8.preheader.i ], [ %i.by, %._crit_edge23.i ]
  %i.bd = phi ptr [ %.pre.i, %.preheader8.preheader.i ], [ %i.bz, %._crit_edge23.i ] ; 2 uses
  %indvars.iv78.i = phi i64 [ 0, %.preheader8.preheader.i ], [ %indvars.iv.next79.i, %._crit_edge23.i ] ; 3 uses
  %.09626.i = phi i32 [ 0, %.preheader8.preheader.i ], [ %.1.lcssa.i, %._crit_edge23.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv78.i
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph22.i, label %._crit_edge23.i

.lr.ph22.i:                                       ; preds = %.preheader8.i, %.lr.ph22.i
  %indvars.iv75.i = phi i64 [ %indvars.iv.next76.i, %.lr.ph22.i ], [ 0, %.preheader8.i ] ; 2 uses
  %i.bj = phi ptr [ %i.bt, %.lr.ph22.i ], [ %i.bf, %.preheader8.i ]
  %.121.i = phi i32 [ %i.bo, %.lr.ph22.i ], [ %.09626.i, %.preheader8.i ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv75.i
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = add i32 %.121.i, 1                      ; 2 uses
  %i.bp = sext i32 %.121.i to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bp
  store ptr %i.bn, ptr %i.bq, align 8
  %indvars.iv.next76.i = add nuw nsw i64 %indvars.iv75.i, 1 ; 2 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 24), align 8 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv78.i
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next76.i, %i.bw
  br i1 %i.bx, label %.lr.ph22.i, label %._crit_edge23.loopexit.i, !llvm.loop !8

._crit_edge23.loopexit.i:                         ; preds = %.lr.ph22.i
  %.pre114.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8
  br label %._crit_edge23.i

._crit_edge23.i:                                  ; preds = %._crit_edge23.loopexit.i, %.preheader8.i
  %i.by = phi i32 [ %i.bc, %.preheader8.i ], [ %.pre114.i, %._crit_edge23.loopexit.i ] ; 2 uses
  %i.bz = phi ptr [ %i.bd, %.preheader8.i ], [ %i.br, %._crit_edge23.loopexit.i ]
  %.1.lcssa.i = phi i32 [ %.09626.i, %.preheader8.i ], [ %i.bo, %._crit_edge23.loopexit.i ]
  %indvars.iv.next79.i = add nuw nsw i64 %indvars.iv78.i, 1 ; 2 uses
  %i.ca = sext i32 %i.by to i64
  %i.cb = icmp slt i64 %indvars.iv.next79.i, %i.ca
  br i1 %i.cb, label %.preheader8.i, label %._crit_edge27.i, !llvm.loop !9

._crit_edge27.i:                                  ; preds = %._crit_edge23.i, %._crit_edge.i
  tail call void @pg_qsort(ptr noundef %i.az, i64 noundef %i.ay, i64 noundef 8, ptr noundef nonnull @step_qsort_cmp) #16
  %i.cc = icmp sgt i32 %.0104.lcssa.i, 1
  br i1 %i.cc, label %.lr.ph30.preheader.i, label %.preheader7.i

.lr.ph30.preheader.i:                             ; preds = %._crit_edge27.i
  %wide.trip.count84.i = zext nneg i32 %.0104.lcssa.i to i64
  br label %.lr.ph30.i

bb.k:                                             ; preds = %.lr.ph30.i
  %indvars.iv.next82.i = add nuw nsw i64 %indvars.iv81.i, 1 ; 2 uses
  %exitcond85.not.i = icmp eq i64 %indvars.iv.next82.i, %wide.trip.count84.i
  br i1 %exitcond85.not.i, label %.preheader7.i, label %.lr.ph30.i, !llvm.loop !10

.preheader7.i:                                    ; preds = %bb.k, %._crit_edge27.i
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.lr.ph36.i, label %.preheader6.i

.lr.ph30.i:                                       ; preds = %bb.k, %.lr.ph30.preheader.i
  %indvars.iv81.i = phi i64 [ 1, %.lr.ph30.preheader.i ], [ %indvars.iv.next82.i, %bb.k ] ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %i.az, i64 %indvars.iv81.i ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -8
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cf, align 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ci, ptr noundef nonnull dereferenceable(1) %i.ck) #18
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %bb.l, label %bb.k

bb.l:                                             ; preds = %.lr.ph30.i
  %i.cn = load ptr, ptr @stderr, align 8
  %i.co = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.ck) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

.preheader6.i:                                    ; preds = %._crit_edge34.i, %.preheader7.i
  %i.cp = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 48), align 8
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph53.i, label %._crit_edge54.i

.lr.ph53.i:                                       ; preds = %.preheader6.i
  %.not24.i.i = icmp eq i32 %.0104.lcssa.i, 0
  br label %bb.n

.lr.ph36.i:                                       ; preds = %.preheader7.i, %._crit_edge34.i
  %i.cr = phi i32 [ %i.dg, %._crit_edge34.i ], [ %i.cd, %.preheader7.i ]
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %._crit_edge34.i ], [ 0, %.preheader7.i ] ; 3 uses
  %3 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 24), align 8
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv89.i
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %.lr.ph33.i, label %._crit_edge34.i

.lr.ph33.i:                                       ; preds = %.lr.ph36.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = trunc nuw nsw i64 %indvars.iv89.i to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph33.i
  %indvars.iv86.i = phi i64 [ 0, %.lr.ph33.i ], [ %indvars.iv.next87.i, %bb.m ] ; 2 uses
  %i.cz = load ptr, ptr %i.cx, align 8
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv86.i
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i32 %i.cy, ptr %i.dc, align 8
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %i.dd = load i32, ptr %i.cu, align 8
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp slt i64 %indvars.iv.next87.i, %i.de
  br i1 %i.df, label %bb.m, label %._crit_edge34.loopexit.i, !llvm.loop !11

._crit_edge34.loopexit.i:                         ; preds = %bb.m
  %.pre115.i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 32), align 8
  br label %._crit_edge34.i

._crit_edge34.i:                                  ; preds = %._crit_edge34.loopexit.i, %.lr.ph36.i
  %i.dg = phi i32 [ %.pre115.i.a, %._crit_edge34.loopexit.i ], [ %i.cr, %.lr.ph36.i ] ; 2 uses
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1 ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next90.i, %i.dh
  br i1 %i.di, label %.lr.ph36.i, label %.preheader6.i, !llvm.loop !12

bb.n:                                             ; preds = %._crit_edge51.i, %.lr.ph53.i
  %indvars.iv106.i = phi i64 [ 0, %.lr.ph53.i ], [ %indvars.iv.next107.i, %._crit_edge51.i ] ; 2 uses
  %i.dj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 40), align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv106.i
  %i.dl = load ptr, ptr %i.dk, align 8            ; 5 uses
  %i.dm = load i32, ptr %i.dl, align 8
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph40.i, label %._crit_edge51.i

.lr.ph40.i:                                       ; preds = %bb.n
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 4 uses
  br i1 %.not24.i.i, label %.lr.ph40.split.us.i, label %.lr.ph.i.preheader.i

.lr.ph40.split.us.i:                              ; preds = %.lr.ph40.i
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %i.dq, align 8
  br label %.loopexit3.i

.preheader4.i:                                    ; preds = %bsearch.exit.i
  %i.ds = icmp sgt i32 %i.em, 0
  br i1 %i.ds, label %.lr.ph50.i, label %._crit_edge51.i

.lr.ph.i.preheader.i:                             ; preds = %.lr.ph40.i, %bsearch.exit.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %bsearch.exit.i ], [ 0, %.lr.ph40.i ] ; 2 uses
  %i.dt = load ptr, ptr %i.do, align 8
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv92.i
  %i.dv = load ptr, ptr %i.du, align 8            ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.q, %.lr.ph.i.preheader.i
  %.021.i.i = phi i64 [ %.1.i.i, %bb.q ], [ %i.ay, %.lr.ph.i.preheader.i ] ; 2 uses
  %.01620.i.i = phi i64 [ %.117.i.i, %bb.q ], [ 0, %.lr.ph.i.preheader.i ] ; 2 uses
  %i.dx = add i64 %.01620.i.i, %.021.i.i
  %i.dy = lshr i64 %i.dx, 1                       ; 3 uses
  %i.dz = shl i64 %i.dy, 3
  %i.ea = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.dz
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.dw, ptr noundef nonnull dereferenceable(1) %i.ec) #18 ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 0
  br i1 %i.ee, label %bb.q, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %i.ed, 0
  br i1 %.not.i.i, label %bsearch.exit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ef = add nuw i64 %i.dy, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.117.i.i = phi i64 [ %i.ef, %bb.p ], [ %.01620.i.i, %.lr.ph.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %.021.i.i, %bb.p ], [ %i.dy, %.lr.ph.i.i ] ; 2 uses
  %i.eg = icmp ult i64 %.117.i.i, %.1.i.i
  br i1 %i.eg, label %.lr.ph.i.i, label %.loopexit3.i, !llvm.loop !13

.loopexit3.i:                                     ; preds = %bb.q, %.lr.ph40.split.us.i
  %i.eh = phi ptr [ %i.dr, %.lr.ph40.split.us.i ], [ %i.dw, %bb.q ]
  %i.ei = load ptr, ptr @stderr, align 8
  %i.ej = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ei, ptr noundef nonnull @.str.17, ptr noundef %i.eh) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bsearch.exit.i:                                   ; preds = %bb.o
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  store ptr %i.eb, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  store i8 1, ptr %i.el, align 4
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1 ; 2 uses
  %i.em = load i32, ptr %i.dl, align 8            ; 3 uses
  %i.en = sext i32 %i.em to i64
  %i.eo = icmp slt i64 %indvars.iv.next93.i, %i.en
  br i1 %i.eo, label %.lr.ph.i.preheader.i, label %.preheader4.i, !llvm.loop !14

.lr.ph50.i:                                       ; preds = %.preheader4.i, %._crit_edge48.i
  %i.ep = phi i32 [ %i.gh, %._crit_edge48.i ], [ %i.em, %.preheader4.i ]
  %indvars.iv103.i = phi i64 [ %indvars.iv.next104.i, %._crit_edge48.i ], [ 0, %.preheader4.i ] ; 2 uses
  %i.eq = load ptr, ptr %i.do, align 8
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv103.i
  %i.es = load ptr, ptr %i.er, align 8            ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8            ; 2 uses
  %i.ev = icmp sgt i32 %i.eu, 0
  br i1 %i.ev, label %.lr.ph47.i, label %._crit_edge48.i

.lr.ph47.i:                                       ; preds = %.lr.ph50.i
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %.pre122 = load ptr, ptr %i.ew, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.x, %.lr.ph47.i
  %i.ey = phi ptr [ %.pre122, %.lr.ph47.i ], [ %i.gd, %bb.x ] ; 2 uses
  %i.ez = phi i32 [ %i.eu, %.lr.ph47.i ], [ %i.ge, %bb.x ]
  %indvars.iv100.i = phi i64 [ 0, %.lr.ph47.i ], [ %indvars.iv.next101.i, %bb.x ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %indvars.iv100.i
  %i.fb = load ptr, ptr %i.fa, align 8            ; 3 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = icmp eq i32 %i.fd, 0
  br i1 %i.fe, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  store ptr null, ptr %i.ff, align 8
  %i.fg = load i32, ptr %i.dl, align 8            ; 2 uses
  %i.fh = icmp sgt i32 %i.fg, 0
  %.pre123.pre = load ptr, ptr %i.fb, align 8     ; 2 uses
  br i1 %i.fh, label %.lr.ph44.i, label %thread-pre-split.thread.i

.lr.ph44.i:                                       ; preds = %bb.s
  %i.fi = load ptr, ptr %i.do, align 8
  %wide.trip.count98.i = zext nneg i32 %i.fg to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.u
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond99.not.i = icmp eq i64 %indvars.iv.next96.i, %wide.trip.count98.i
  br i1 %exitcond99.not.i, label %thread-pre-split.thread.i, label %bb.u, !llvm.loop !15

bb.u:                                             ; preds = %bb.t, %.lr.ph44.i
  %indvars.iv95.i = phi i64 [ 0, %.lr.ph44.i ], [ %indvars.iv.next96.i, %bb.t ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %indvars.iv95.i
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fl, ptr noundef nonnull dereferenceable(1) %.pre123.pre) #18
  %i.fn = icmp eq i32 %i.fm, 0
  br i1 %i.fn, label %thread-pre-split.i, label %bb.t

thread-pre-split.i:                               ; preds = %bb.u
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fp = load ptr, ptr %i.fo, align 8            ; 3 uses
  store ptr %i.fp, ptr %i.ff, align 8
  %i.fq = icmp eq ptr %i.fp, null
  %.pre = load ptr, ptr %i.ew, align 8
  br i1 %i.fq, label %thread-pre-split.thread.i, label %bb.v

thread-pre-split.thread.i:                        ; preds = %thread-pre-split.i, %bb.s, %bb.t
  %i.fr = load ptr, ptr @stderr, align 8
  %i.fs = load ptr, ptr %i.es, align 8
  %i.ft = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.fr, ptr noundef nonnull @.str.18, ptr noundef %.pre123.pre, ptr noundef %i.fs) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.v:                                             ; preds = %thread-pre-split.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fv = load i32, ptr %i.fu, align 8
  %i.fw = load ptr, ptr %i.ex, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.fy = load i32, ptr %i.fx, align 8
  %i.fz = icmp eq i32 %i.fv, %i.fy
  br i1 %i.fz, label %bb.w, label %._crit_edge116.i

._crit_edge116.i:                                 ; preds = %bb.v
  %.pre117.i = load i32, ptr %i.et, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ga = load ptr, ptr @stderr, align 8
  %i.gb = load ptr, ptr %i.es, align 8
  %i.gc = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ga, ptr noundef nonnull @.str.19, ptr noundef %i.gb) #16 ; 0 uses
  tail call void @exit(i32 noundef 1) #19
  unreachable

bb.x:                                             ; preds = %._crit_edge116.i, %bb.r
  %i.gd = phi ptr [ %.pre, %._crit_edge116.i ], [ %i.ey, %bb.r ]
  %i.ge = phi i32 [ %.pre117.i, %._crit_edge116.i ], [ %i.ez, %bb.r ] ; 2 uses
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1 ; 2 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next101.i, %i.gf
  br i1 %i.gg, label %bb.r, label %._crit_edge48.loopexit.i, !llvm.loop !16

._crit_edge48.loopexit.i:                         ; preds = %bb.x
  %.pre118.i = load i32, ptr %i.dl, align 8
  br label %._crit_edge48.i

._crit_edge48.i:                                  ; preds = %._crit_edge48.loopexit.i, %.lr.ph50.i
  %i.gh = phi i32 [ %.pre118.i, %._crit_edge48.loopexit.i ], [ %i.ep, %.lr.ph50.i ] ; 2 uses
  %indvars.iv.next104.i = add nuw nsw i64 %indvars.iv103.i, 1 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next104.i, %i.gi
  br i1 %i.gj, label %.lr.ph50.i, label %._crit_edge51.i, !llvm.loop !17

._crit_edge51.i:                                  ; preds = %._crit_edge48.i, %.preheader4.i, %bb.n
  %indvars.iv.next107.i = add nuw nsw i64 %indvars.iv106.i, 1 ; 2 uses
  %i.gk = load i32, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 48), align 8
  %i.gl = sext i32 %i.gk to i64
  %i.gm = icmp slt i64 %indvars.iv.next107.i, %i.gl
  br i1 %i.gm, label %bb.n, label %._crit_edge54.i, !llvm.loop !18

._crit_edge54.i:                                  ; preds = %._crit_edge51.i, %.preheader6.i
  %i.gn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @parseresult, i64 40), align 8
  %.not.i = icmp ne ptr %i.gn, null
end_hunk_0
