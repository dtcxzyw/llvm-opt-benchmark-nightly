Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/superAnd?download=true
inline.NumInlined: 23
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Super2_Precompute:bb.a
  %i.dc = and i32 %i.db, %i.by                    ; 2 uses
  %.not.i.i = icmp ne i32 %i.dc, 0
  %i.dd = sext i1 %.not.i.i to i32
  %i.de = xor i32 %i.db, %i.dd
  store i32 %i.de, ptr %i.d, align 4, !tbaa !15
  call void @Extra_PrintBinary(ptr noundef %i.da, ptr noundef nonnull %i.d, i32 noundef %i.bu) #20
  %fwrite.i.i = call i64 @fwrite(ptr nonnull @.str.11, i64 3, i64 1, ptr %i.da) ; 0 uses
  %i.df = call fastcc ptr @Super2_LibWriteGate_rec(ptr noundef nonnull readonly %i.cr, i32 noundef %i.dc, i32 noundef %i.cp)
  %fputs.i.i = call i32 @fputs(ptr %i.df, ptr %i.da) ; 0 uses
  %fputc.i.i = call i32 @fputc(i32 10, ptr %i.da) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %puts142.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  %i.dg = load ptr, ptr @stdout, align 8, !tbaa !17 ; 4 uses
  %i.dh = load ptr, ptr %i.e, align 8, !tbaa !10  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !14 ; 2 uses
  %i.dj = and i32 %i.di, %i.by                    ; 2 uses
  %.not.i144.i = icmp ne i32 %i.dj, 0
  %i.dk = sext i1 %.not.i144.i to i32
  %i.dl = xor i32 %i.di, %i.dk
  store i32 %i.dl, ptr %i.c, align 4, !tbaa !15
  call void @Extra_PrintBinary(ptr noundef %i.dg, ptr noundef nonnull %i.c, i32 noundef %i.bu) #20
  %fwrite.i145.i = call i64 @fwrite(ptr nonnull @.str.11, i64 3, i64 1, ptr %i.dg) ; 0 uses
  %i.dm = call fastcc ptr @Super2_LibWriteGate_rec(ptr noundef nonnull readonly %i.dh, i32 noundef %i.dj, i32 noundef %i.cp)
  %fputs.i146.i = call i32 @fputs(ptr %i.dm, ptr %i.dg) ; 0 uses
  %fputc.i147.i = call i32 @fputc(i32 10, ptr %i.dg) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.dn = call i32 @stmm_insert(ptr noundef %i.cn, ptr noundef %i.cy, ptr noundef nonnull %i.cr) #20 ; 0 uses
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 1 ; 2 uses
  %exitcond.not.i26 = icmp eq i64 %indvars.iv.next.i25, %wide.trip.count.i21
  br i1 %exitcond.not.i26, label %.critedge.i, label %.lr.ph.i22, !llvm.loop !22

.critedge.loopexit.split.loop.exit210.i:          ; preds = %.lr.ph.i22
  %i.do = trunc nuw nsw i64 %indvars.iv.i23 to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.k, %.critedge.loopexit.split.loop.exit210.i, %Abc_Clock.exit
  %storemerge.lcssa.i = phi i32 [ 0, %Abc_Clock.exit ], [ %i.do, %.critedge.loopexit.split.loop.exit210.i ], [ %i.bt, %bb.k ]
  store i32 %storemerge.lcssa.i, ptr %calloc.i.i.i, align 8, !tbaa !45
  store i32 %i.bt, ptr %i.bg, align 8, !tbaa !46
  store i32 0, ptr %.01973, align 8, !tbaa !45
  %i.dp = load i32, ptr %i.bq, align 4, !tbaa !37
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph179.i, label %Super2_LibCompute.exit

.lr.ph179.i:                                      ; preds = %.critedge.i
  %i.dr = getelementptr inbounds nuw i8, ptr %.01973, i64 4 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %.critedge4.i, %.lr.ph179.i
  %i.ds = phi i32 [ %i.bt, %.lr.ph179.i ], [ %i.lu, %.critedge4.i ] ; 3 uses
  %i.dt = phi ptr [ %i.cg, %.lr.ph179.i ], [ %i.lv, %.critedge4.i ] ; 3 uses
  %i.du = phi i32 [ %i.cc, %.lr.ph179.i ], [ %i.lw, %.critedge4.i ] ; 3 uses
  %i.dv = phi ptr [ %i.cg, %.lr.ph179.i ], [ %i.lx, %.critedge4.i ] ; 3 uses
  %i.dw = phi i32 [ %i.cc, %.lr.ph179.i ], [ %i.ly, %.critedge4.i ] ; 3 uses
  %i.dx = phi ptr [ %i.cg, %.lr.ph179.i ], [ %i.lz, %.critedge4.i ] ; 3 uses
  %i.dy = phi i32 [ %i.cc, %.lr.ph179.i ], [ %i.ma, %.critedge4.i ] ; 3 uses
  %i.dz = phi ptr [ %i.cg, %.lr.ph179.i ], [ %i.mb, %.critedge4.i ] ; 3 uses
  %i.ea = phi i32 [ %i.cc, %.lr.ph179.i ], [ %i.mc, %.critedge4.i ] ; 3 uses
  %i.eb = phi i32 [ %i.bt, %.lr.ph179.i ], [ %i.md, %.critedge4.i ] ; 3 uses
  %storemerge127178.i = phi i32 [ 0, %.lr.ph179.i ], [ %i.me, %.critedge4.i ] ; 5 uses
  %i.ec = load ptr, ptr %i.ci, align 8, !tbaa !40 ; 2 uses
  %i.ed = sext i32 %storemerge127178.i to i64
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !10 ; 5 uses
  %.not128.i = icmp eq ptr %i.ef, null
  br i1 %.not128.i, label %Super2_LibCompute.exit.thread, label %bb.m

Super2_LibCompute.exit.thread:                    ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  store i32 %.074, ptr %i.bp, align 8, !tbaa !47
  br label %bb.ao

bb.m:                                             ; preds = %bb.l
  %.not129.i = icmp ne i32 %storemerge127178.i, 0
  %i.eg = srem i32 %storemerge127178.i, 300
  %i.eh = icmp eq i32 %i.eg, 0
  %or.cond.i = and i1 %.not129.i, %i.eh
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %storemerge127178.i) ; 0 uses
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !17
  %i.ek = call i32 @fflush(ptr noundef %i.ej)     ; 0 uses
  %.pre.i = load i32, ptr %.01973, align 8, !tbaa !45
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.el = phi i32 [ %.pre.i, %bb.n ], [ %storemerge127178.i, %bb.m ] ; 3 uses
  store i32 0, ptr %i.dr, align 4, !tbaa !48
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph174.i, label %.critedge4.i

.lr.ph174.i:                                      ; preds = %bb.o
  %i.en = ptrtoint ptr %i.ef to i64
  %i.eo = xor i64 %i.en, 1
  %i.ep = inttoptr i64 %i.eo to ptr               ; 2 uses
  %i.eq = load ptr, ptr %i.ci, align 8, !tbaa !40
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !10 ; 3 uses
  store ptr %i.er, ptr %i.e, align 8, !tbaa !10
  %.not131.i51 = icmp eq ptr %i.er, null
  br i1 %.not131.i51, label %.critedge4.i, label %.lr.ph

bb.p:                                             ; preds = %bb.an
  %i.es = load ptr, ptr %i.ci, align 8, !tbaa !40
  %i.et = sext i32 %i.lr to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.et
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !10 ; 3 uses
  store ptr %i.ev, ptr %i.e, align 8, !tbaa !10
  %.not131.i = icmp eq ptr %i.ev, null
  br i1 %.not131.i, label %.critedge4.i, label %.lr.ph, !llvm.loop !23

.lr.ph:                                           ; preds = %.lr.ph174.i, %bb.p
  %i.ew = phi ptr [ %i.ev, %bb.p ], [ %i.er, %.lr.ph174.i ]
  %i.ex = phi i32 [ %i.ln, %bb.p ], [ %i.eb, %.lr.ph174.i ] ; 5 uses
  %i.ey = phi i32 [ %i.lm, %bb.p ], [ %i.ea, %.lr.ph174.i ] ; 3 uses
  %i.ez = phi ptr [ %i.ll, %bb.p ], [ %i.dz, %.lr.ph174.i ] ; 4 uses
  %i.fa = phi i32 [ %i.lk, %bb.p ], [ %i.dy, %.lr.ph174.i ] ; 2 uses
  %i.fb = phi ptr [ %i.lj, %bb.p ], [ %i.dx, %.lr.ph174.i ] ; 2 uses
  %i.fc = phi i32 [ %i.li, %bb.p ], [ %i.dw, %.lr.ph174.i ] ; 2 uses
  %i.fd = phi ptr [ %i.lh, %bb.p ], [ %i.dv, %.lr.ph174.i ] ; 2 uses
  %i.fe = phi i32 [ %i.lg, %bb.p ], [ %i.du, %.lr.ph174.i ] ; 2 uses
  %i.ff = phi ptr [ %i.lf, %bb.p ], [ %i.dt, %.lr.ph174.i ] ; 2 uses
  %i.fg = load i32, ptr %i.ef, align 8, !tbaa !14 ; 3 uses
  %i.fh = load i32, ptr %i.ew, align 8, !tbaa !14 ; 3 uses
  %i.fi = xor i32 %i.fg, -1
  %i.fj = and i32 %i.bw, %i.fi                    ; 2 uses
  %i.fk = xor i32 %i.fh, -1                       ; 2 uses
  %i.fl = and i32 %i.fh, %i.fg                    ; 4 uses
  %i.fm = and i32 %i.fl, %i.by
  %.not132.i = icmp eq i32 %i.fm, 0
  %i.fn = xor i32 %i.fl, -1
  %i.fo = and i32 %i.bw, %i.fn
  %i.fp = select i1 %.not132.i, i32 %i.fl, i32 %i.fo
  %i.fq = load ptr, ptr %i.i, align 8, !tbaa !31  ; 4 uses
  %i.fr = zext i32 %i.fp to i64
  %i.fs = inttoptr i64 %i.fr to ptr
  %i.ft = call i32 @stmm_find_or_add(ptr noundef %i.fq, ptr noundef %i.fs, ptr noundef nonnull %i.f) #20
  %.not133.i = icmp eq i32 %i.ft, 0
  br i1 %.not133.i, label %bb.q, label %bb.v

bb.q:                                             ; preds = %.lr.ph
  %i.fu = load ptr, ptr %calloc.i, align 8, !tbaa !30
  %i.fv = call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.fu) #20 ; 5 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  store ptr %i.ef, ptr %i.fw, align 8, !tbaa !18
  %i.fx = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !12
  store i32 %i.fl, ptr %i.fv, align 8, !tbaa !14
  %i.fz = load ptr, ptr %i.f, align 8, !tbaa !49
  store ptr %i.fv, ptr %i.fz, align 8, !tbaa !10
  %i.ga = icmp eq i32 %i.ex, %i.ey
  br i1 %i.ga, label %bb.r, label %Super2_LibAddGate.exit.i

bb.r:                                             ; preds = %bb.q
  %.not.i148.i = icmp eq ptr %i.ez, null
  %i.gb = mul nsw i32 %i.ex, 3                    ; 6 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = shl nsw i64 %i.gc, 3                    ; 2 uses
  br i1 %.not.i148.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ge = call ptr @realloc(ptr noundef nonnull %i.ez, i64 noundef %i.gd) #22
  %.pre.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !31
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.gf = call noalias ptr @malloc(i64 noundef %i.gd) #21
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pre.pre = phi ptr [ %i.fq, %bb.t ], [ %.pre.pre.pre, %bb.s ]
  %i.gg = phi ptr [ %i.gf, %bb.t ], [ %i.ge, %bb.s ] ; 5 uses
  store ptr %i.gg, ptr %i.ch, align 8, !tbaa !40
  store i32 %i.gb, ptr %i.cd, align 8, !tbaa !38
  br label %Super2_LibAddGate.exit.i

Super2_LibAddGate.exit.i:                         ; preds = %bb.u, %bb.q
  %.pre = phi ptr [ %.pre.pre, %bb.u ], [ %i.fq, %bb.q ]
  %i.gh = phi ptr [ %i.gg, %bb.u ], [ %i.ff, %bb.q ]
  %i.gi = phi i32 [ %i.gb, %bb.u ], [ %i.fe, %bb.q ]
  %i.gj = phi ptr [ %i.gg, %bb.u ], [ %i.fd, %bb.q ]
  %i.gk = phi i32 [ %i.gb, %bb.u ], [ %i.fc, %bb.q ]
  %i.gl = phi ptr [ %i.gg, %bb.u ], [ %i.fb, %bb.q ]
  %i.gm = phi i32 [ %i.gb, %bb.u ], [ %i.fa, %bb.q ]
  %i.gn = phi ptr [ %i.gg, %bb.u ], [ %i.ez, %bb.q ] ; 2 uses
  %i.go = phi i32 [ %i.gb, %bb.u ], [ %i.ey, %bb.q ]
  %i.gp = add nsw i32 %i.ex, 1                    ; 2 uses
  store i32 %i.gp, ptr %i.br, align 4, !tbaa !37
  %i.gq = sext i32 %i.ex to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %i.gn, i64 %i.gq
  store ptr %i.fv, ptr %i.gr, align 8, !tbaa !10
  br label %bb.v

bb.v:                                             ; preds = %Super2_LibAddGate.exit.i, %.lr.ph
  %i.gs = phi ptr [ %.pre, %Super2_LibAddGate.exit.i ], [ %i.fq, %.lr.ph ] ; 4 uses
  %i.gt = phi ptr [ %i.gh, %Super2_LibAddGate.exit.i ], [ %i.ff, %.lr.ph ] ; 2 uses
  %i.gu = phi i32 [ %i.gi, %Super2_LibAddGate.exit.i ], [ %i.fe, %.lr.ph ] ; 2 uses
  %i.gv = phi ptr [ %i.gj, %Super2_LibAddGate.exit.i ], [ %i.fd, %.lr.ph ] ; 2 uses
  %i.gw = phi i32 [ %i.gk, %Super2_LibAddGate.exit.i ], [ %i.fc, %.lr.ph ] ; 2 uses
  %i.gx = phi ptr [ %i.gl, %Super2_LibAddGate.exit.i ], [ %i.fb, %.lr.ph ] ; 4 uses
  %i.gy = phi i32 [ %i.gm, %Super2_LibAddGate.exit.i ], [ %i.fa, %.lr.ph ] ; 4 uses
  %i.gz = phi ptr [ %i.gn, %Super2_LibAddGate.exit.i ], [ %i.ez, %.lr.ph ]
  %i.ha = phi i32 [ %i.go, %Super2_LibAddGate.exit.i ], [ %i.ey, %.lr.ph ]
  %i.hb = phi i32 [ %i.gp, %Super2_LibAddGate.exit.i ], [ %i.ex, %.lr.ph ] ; 4 uses
  %i.hc = and i32 %i.fj, %i.fh                    ; 3 uses
  %i.hd = and i32 %i.hc, %i.by
  %.not134.i = icmp eq i32 %i.hd, 0
  %i.he = select i1 %.not134.i, i32 0, i32 %i.bw
  %i.hf = xor i32 %i.he, %i.hc
  %i.hg = zext i32 %i.hf to i64
  %i.hh = inttoptr i64 %i.hg to ptr
  %i.hi = call i32 @stmm_find_or_add(ptr noundef %i.gs, ptr noundef %i.hh, ptr noundef nonnull %i.f) #20
  %.not135.i = icmp eq i32 %i.hi, 0
  br i1 %.not135.i, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.hj = load ptr, ptr %calloc.i, align 8, !tbaa !30
  %i.hk = call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.hj) #20 ; 5 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  store ptr %i.ep, ptr %i.hl, align 8, !tbaa !18
  %i.hm = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !12
  store i32 %i.hc, ptr %i.hk, align 8, !tbaa !14
  %i.ho = load ptr, ptr %i.f, align 8, !tbaa !49
  store ptr %i.hk, ptr %i.ho, align 8, !tbaa !10
  %i.hp = icmp eq i32 %i.hb, %i.gy
  br i1 %i.hp, label %bb.x, label %Super2_LibAddGate.exit155.i

bb.x:                                             ; preds = %bb.w
  %.not.i149.i = icmp eq ptr %i.gx, null
  %i.hq = mul nsw i32 %i.gy, 3                    ; 5 uses
  %i.hr = sext i32 %i.hq to i64
  %i.hs = shl nsw i64 %i.hr, 3                    ; 2 uses
  br i1 %.not.i149.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ht = call ptr @realloc(ptr noundef nonnull %i.gx, i64 noundef %i.hs) #22
  %.pre99.pre.pre = load ptr, ptr %i.i, align 8, !tbaa !31
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.hu = call noalias ptr @malloc(i64 noundef %i.hs) #21
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre99.pre = phi ptr [ %i.gs, %bb.z ], [ %.pre99.pre.pre, %bb.y ]
  %i.hv = phi ptr [ %i.hu, %bb.z ], [ %i.ht, %bb.y ] ; 4 uses
  store ptr %i.hv, ptr %i.ch, align 8, !tbaa !40
  store i32 %i.hq, ptr %i.cd, align 8, !tbaa !38
  br label %Super2_LibAddGate.exit155.i

Super2_LibAddGate.exit155.i:                      ; preds = %bb.aa, %bb.w
  %.pre99 = phi ptr [ %.pre99.pre, %bb.aa ], [ %i.gs, %bb.w ]
  %i.hw = phi ptr [ %i.hv, %bb.aa ], [ %i.gt, %bb.w ]
  %i.hx = phi i32 [ %i.hq, %bb.aa ], [ %i.gu, %bb.w ]
  %i.hy = phi ptr [ %i.hv, %bb.aa ], [ %i.gv, %bb.w ]
  %i.hz = phi i32 [ %i.hq, %bb.aa ], [ %i.gw, %bb.w ]
  %i.ia = phi ptr [ %i.hv, %bb.aa ], [ %i.gx, %bb.w ] ; 3 uses
  %i.ib = phi i32 [ %i.hq, %bb.aa ], [ %i.gy, %bb.w ] ; 2 uses
  %i.ic = add nsw i32 %i.hb, 1                    ; 2 uses
  store i32 %i.ic, ptr %i.br, align 4, !tbaa !37
  %i.id = sext i32 %i.hb to i64
  %i.ie = getelementptr inbounds [8 x i8], ptr %i.ia, i64 %i.id
  store ptr %i.hk, ptr %i.ie, align 8, !tbaa !10
  br label %bb.ab

bb.ab:                                            ; preds = %Super2_LibAddGate.exit155.i, %bb.v
  %i.if = phi ptr [ %.pre99, %Super2_LibAddGate.exit155.i ], [ %i.gs, %bb.v ] ; 3 uses
  %i.ig = phi ptr [ %i.hw, %Super2_LibAddGate.exit155.i ], [ %i.gt, %bb.v ] ; 2 uses
  %i.ih = phi i32 [ %i.hx, %Super2_LibAddGate.exit155.i ], [ %i.gu, %bb.v ] ; 2 uses
  %i.ii = phi ptr [ %i.hy, %Super2_LibAddGate.exit155.i ], [ %i.gv, %bb.v ] ; 4 uses
  %i.ij = phi i32 [ %i.hz, %Super2_LibAddGate.exit155.i ], [ %i.gw, %bb.v ] ; 4 uses
  %i.ik = phi ptr [ %i.ia, %Super2_LibAddGate.exit155.i ], [ %i.gx, %bb.v ]
  %i.il = phi i32 [ %i.ib, %Super2_LibAddGate.exit155.i ], [ %i.gy, %bb.v ]
  %i.im = phi ptr [ %i.ia, %Super2_LibAddGate.exit155.i ], [ %i.gz, %bb.v ]
  %i.in = phi i32 [ %i.ib, %Super2_LibAddGate.exit155.i ], [ %i.ha, %bb.v ]
  %i.io = phi i32 [ %i.ic, %Super2_LibAddGate.exit155.i ], [ %i.hb, %bb.v ] ; 4 uses
  %i.ip = and i32 %i.fg, %i.bw
  %i.iq = and i32 %i.ip, %i.fk                    ; 3 uses
  %i.ir = and i32 %i.iq, %i.by
  %.not136.i = icmp eq i32 %i.ir, 0
  %i.is = select i1 %.not136.i, i32 0, i32 %i.bw
  %i.it = xor i32 %i.is, %i.iq
  %i.iu = zext i32 %i.it to i64
  %i.iv = inttoptr i64 %i.iu to ptr
  %i.iw = call i32 @stmm_find_or_add(ptr noundef %i.if, ptr noundef %i.iv, ptr noundef nonnull %i.f) #20
  %.not137.i = icmp eq i32 %i.iw, 0
  br i1 %.not137.i, label %bb.ac, label %bb.ah

bb.ac:                                            ; preds = %bb.ab
  %i.ix = load ptr, ptr %calloc.i, align 8, !tbaa !30
  %i.iy = call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.ix) #20 ; 5 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store ptr %i.ef, ptr %i.iz, align 8, !tbaa !18
  %i.ja = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.jb = ptrtoint ptr %i.ja to i64
  %i.jc = xor i64 %i.jb, 1
  %i.jd = inttoptr i64 %i.jc to ptr
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  store ptr %i.jd, ptr %i.je, align 8, !tbaa !12
  store i32 %i.iq, ptr %i.iy, align 8, !tbaa !14
  %i.jf = load ptr, ptr %i.f, align 8, !tbaa !49
  store ptr %i.iy, ptr %i.jf, align 8, !tbaa !10
  %i.jg = icmp eq i32 %i.io, %i.ij
  br i1 %i.jg, label %bb.ad, label %Super2_LibAddGate.exit162.i

bb.ad:                                            ; preds = %bb.ac
  %.not.i156.i = icmp eq ptr %i.ii, null
  %i.jh = mul nsw i32 %i.ij, 3                    ; 4 uses
  %i.ji = sext i32 %i.jh to i64
  %i.jj = shl nsw i64 %i.ji, 3                    ; 2 uses
  br i1 %.not.i156.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jk = call ptr @realloc(ptr noundef nonnull %i.ii, i64 noundef %i.jj) #22
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.jl = call noalias ptr @malloc(i64 noundef %i.jj) #21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jm = phi ptr [ %i.jl, %bb.af ], [ %i.jk, %bb.ae ] ; 3 uses
  store ptr %i.jm, ptr %i.ch, align 8, !tbaa !40
  store i32 %i.jh, ptr %i.cd, align 8, !tbaa !38
  %.pre100.pre = load ptr, ptr %i.i, align 8, !tbaa !31
  br label %Super2_LibAddGate.exit162.i

Super2_LibAddGate.exit162.i:                      ; preds = %bb.ag, %bb.ac
  %.pre100 = phi ptr [ %.pre100.pre, %bb.ag ], [ %i.if, %bb.ac ]
  %i.jn = phi ptr [ %i.jm, %bb.ag ], [ %i.ig, %bb.ac ]
  %i.jo = phi i32 [ %i.jh, %bb.ag ], [ %i.ih, %bb.ac ]
  %i.jp = phi ptr [ %i.jm, %bb.ag ], [ %i.ii, %bb.ac ] ; 4 uses
  %i.jq = phi i32 [ %i.jh, %bb.ag ], [ %i.ij, %bb.ac ] ; 3 uses
  %i.jr = add nsw i32 %i.io, 1                    ; 2 uses
  store i32 %i.jr, ptr %i.br, align 4, !tbaa !37
  %i.js = sext i32 %i.io to i64
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.js
  store ptr %i.iy, ptr %i.jt, align 8, !tbaa !10
  br label %bb.ah

bb.ah:                                            ; preds = %Super2_LibAddGate.exit162.i, %bb.ab
  %7 = phi ptr [ %.pre100, %Super2_LibAddGate.exit162.i ], [ %i.if, %bb.ab ]
  %i.ju = phi ptr [ %i.jn, %Super2_LibAddGate.exit162.i ], [ %i.ig, %bb.ab ] ; 4 uses
  %i.jv = phi i32 [ %i.jo, %Super2_LibAddGate.exit162.i ], [ %i.ih, %bb.ab ] ; 4 uses
  %i.jw = phi ptr [ %i.jp, %Super2_LibAddGate.exit162.i ], [ %i.ii, %bb.ab ]
  %i.jx = phi i32 [ %i.jq, %Super2_LibAddGate.exit162.i ], [ %i.ij, %bb.ab ]
  %i.jy = phi ptr [ %i.jp, %Super2_LibAddGate.exit162.i ], [ %i.ik, %bb.ab ]
  %i.jz = phi i32 [ %i.jq, %Super2_LibAddGate.exit162.i ], [ %i.il, %bb.ab ]
  %i.ka = phi ptr [ %i.jp, %Super2_LibAddGate.exit162.i ], [ %i.im, %bb.ab ]
  %i.kb = phi i32 [ %i.jq, %Super2_LibAddGate.exit162.i ], [ %i.in, %bb.ab ]
  %i.kc = phi i32 [ %i.jr, %Super2_LibAddGate.exit162.i ], [ %i.io, %bb.ab ] ; 4 uses
  %i.kd = and i32 %i.fj, %i.fk                    ; 3 uses
  %i.ke = and i32 %i.kd, %i.by
  %.not138.i = icmp eq i32 %i.ke, 0
  %i.kf = select i1 %.not138.i, i32 0, i32 %i.bw
  %i.kg = xor i32 %i.kf, %i.kd
  %i.kh = zext i32 %i.kg to i64
  %i.ki = inttoptr i64 %i.kh to ptr
  %i.kj = call i32 @stmm_find_or_add(ptr noundef %7, ptr noundef %i.ki, ptr noundef nonnull %i.f) #20
  %.not139.i = icmp eq i32 %i.kj, 0
  br i1 %.not139.i, label %bb.ai, label %bb.an

bb.ai:                                            ; preds = %bb.ah
  %i.kk = load ptr, ptr %calloc.i, align 8, !tbaa !30
  %i.kl = call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.kk) #20 ; 5 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  store ptr %i.ep, ptr %i.km, align 8, !tbaa !18
  %i.kn = load ptr, ptr %i.e, align 8, !tbaa !10
  %i.ko = ptrtoint ptr %i.kn to i64
  %i.kp = xor i64 %i.ko, 1
  %i.kq = inttoptr i64 %i.kp to ptr
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  store ptr %i.kq, ptr %i.kr, align 8, !tbaa !12
  store i32 %i.kd, ptr %i.kl, align 8, !tbaa !14
  %i.ks = load ptr, ptr %i.f, align 8, !tbaa !49
  store ptr %i.kl, ptr %i.ks, align 8, !tbaa !10
  %i.kt = icmp eq i32 %i.kc, %i.jv
  br i1 %i.kt, label %bb.aj, label %Super2_LibAddGate.exit169.i

bb.aj:                                            ; preds = %bb.ai
  %.not.i163.i = icmp eq ptr %i.ju, null
  %i.ku = mul nsw i32 %i.jv, 3                    ; 3 uses
  %i.kv = sext i32 %i.ku to i64
  %i.kw = shl nsw i64 %i.kv, 3                    ; 2 uses
  br i1 %.not.i163.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kx = call ptr @realloc(ptr noundef nonnull %i.ju, i64 noundef %i.kw) #22
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.ky = call noalias ptr @malloc(i64 noundef %i.kw) #21
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.kz = phi ptr [ %i.ky, %bb.al ], [ %i.kx, %bb.ak ] ; 2 uses
  store ptr %i.kz, ptr %i.ch, align 8, !tbaa !40
  store i32 %i.ku, ptr %i.cd, align 8, !tbaa !38
  br label %Super2_LibAddGate.exit169.i

Super2_LibAddGate.exit169.i:                      ; preds = %bb.am, %bb.ai
  %i.la = phi ptr [ %i.kz, %bb.am ], [ %i.ju, %bb.ai ] ; 5 uses
  %i.lb = phi i32 [ %i.ku, %bb.am ], [ %i.jv, %bb.ai ] ; 4 uses
  %i.lc = add nsw i32 %i.kc, 1                    ; 2 uses
  store i32 %i.lc, ptr %i.br, align 4, !tbaa !37
  %i.ld = sext i32 %i.kc to i64
  %i.le = getelementptr inbounds [8 x i8], ptr %i.la, i64 %i.ld
  store ptr %i.kl, ptr %i.le, align 8, !tbaa !10
  br label %bb.an

bb.an:                                            ; preds = %Super2_LibAddGate.exit169.i, %bb.ah
  %i.lf = phi ptr [ %i.la, %Super2_LibAddGate.exit169.i ], [ %i.ju, %bb.ah ] ; 3 uses
  %i.lg = phi i32 [ %i.lb, %Super2_LibAddGate.exit169.i ], [ %i.jv, %bb.ah ] ; 3 uses
  %i.lh = phi ptr [ %i.la, %Super2_LibAddGate.exit169.i ], [ %i.jw, %bb.ah ] ; 3 uses
  %i.li = phi i32 [ %i.lb, %Super2_LibAddGate.exit169.i ], [ %i.jx, %bb.ah ] ; 3 uses
  %i.lj = phi ptr [ %i.la, %Super2_LibAddGate.exit169.i ], [ %i.jy, %bb.ah ] ; 3 uses
  %i.lk = phi i32 [ %i.lb, %Super2_LibAddGate.exit169.i ], [ %i.jz, %bb.ah ] ; 3 uses
  %i.ll = phi ptr [ %i.la, %Super2_LibAddGate.exit169.i ], [ %i.ka, %bb.ah ] ; 3 uses
  %i.lm = phi i32 [ %i.lb, %Super2_LibAddGate.exit169.i ], [ %i.kb, %bb.ah ] ; 3 uses
  %i.ln = phi i32 [ %i.lc, %Super2_LibAddGate.exit169.i ], [ %i.kc, %bb.ah ] ; 3 uses
  %i.lo = load i32, ptr %i.bg, align 8, !tbaa !46
  %i.lp = add nsw i32 %i.lo, 4                    ; 3 uses
  store i32 %i.lp, ptr %i.bg, align 8, !tbaa !46
  %i.lq = load i32, ptr %i.dr, align 4, !tbaa !48
  %i.lr = add nsw i32 %i.lq, 1                    ; 3 uses
  store i32 %i.lr, ptr %i.dr, align 4, !tbaa !48
  %i.ls = load i32, ptr %.01973, align 8, !tbaa !45 ; 3 uses
  %i.lt = icmp slt i32 %i.lr, %i.ls
  br i1 %i.lt, label %bb.p, label %..critedge4.i.loopexit_crit_edge61, !llvm.loop !23

..critedge4.i.loopexit_crit_edge61:               ; preds = %bb.an
  br label %.critedge4.i, !llvm.loop !23

.critedge4.i:                                     ; preds = %bb.p, %.lr.ph174.i, %..critedge4.i.loopexit_crit_edge61, %bb.o
  %i.lu = phi i32 [ %i.ds, %bb.o ], [ %i.lp, %..critedge4.i.loopexit_crit_edge61 ], [ %i.ds, %.lr.ph174.i ], [ %i.lp, %bb.p ] ; 2 uses
  %i.lv = phi ptr [ %i.dt, %bb.o ], [ %i.lf, %..critedge4.i.loopexit_crit_edge61 ], [ %i.dt, %.lr.ph174.i ], [ %i.lf, %bb.p ]
  %i.lw = phi i32 [ %i.du, %bb.o ], [ %i.lg, %..critedge4.i.loopexit_crit_edge61 ], [ %i.du, %.lr.ph174.i ], [ %i.lg, %bb.p ]
  %i.lx = phi ptr [ %i.dv, %bb.o ], [ %i.lh, %..critedge4.i.loopexit_crit_edge61 ], [ %i.dv, %.lr.ph174.i ], [ %i.lh, %bb.p ]
  %i.ly = phi i32 [ %i.dw, %bb.o ], [ %i.li, %..critedge4.i.loopexit_crit_edge61 ], [ %i.dw, %.lr.ph174.i ], [ %i.li, %bb.p ]
  %i.lz = phi ptr [ %i.dx, %bb.o ], [ %i.lj, %..critedge4.i.loopexit_crit_edge61 ], [ %i.dx, %.lr.ph174.i ], [ %i.lj, %bb.p ]
  %i.ma = phi i32 [ %i.dy, %bb.o ], [ %i.lk, %..critedge4.i.loopexit_crit_edge61 ], [ %i.dy, %.lr.ph174.i ], [ %i.lk, %bb.p ]
  %i.mb = phi ptr [ %i.dz, %bb.o ], [ %i.ll, %..critedge4.i.loopexit_crit_edge61 ], [ %i.dz, %.lr.ph174.i ], [ %i.ll, %bb.p ]
  %i.mc = phi i32 [ %i.ea, %bb.o ], [ %i.lm, %..critedge4.i.loopexit_crit_edge61 ], [ %i.ea, %.lr.ph174.i ], [ %i.lm, %bb.p ]
  %i.md = phi i32 [ %i.eb, %bb.o ], [ %i.ln, %..critedge4.i.loopexit_crit_edge61 ], [ %i.eb, %.lr.ph174.i ], [ %i.ln, %bb.p ]
  %.lcssa.i = phi i32 [ %i.el, %bb.o ], [ %i.ls, %..critedge4.i.loopexit_crit_edge61 ], [ %i.el, %.lr.ph174.i ], [ %i.ls, %bb.p ]
  %i.me = add nsw i32 %.lcssa.i, 1                ; 3 uses
  store i32 %i.me, ptr %.01973, align 8, !tbaa !45
  %i.mf = load i32, ptr %i.bq, align 4, !tbaa !37
  %i.mg = icmp slt i32 %i.me, %i.mf
  br i1 %i.mg, label %bb.l, label %Super2_LibCompute.exit, !llvm.loop !24

Super2_LibCompute.exit:                           ; preds = %.critedge4.i, %.critedge.i
  %i.mh = phi i32 [ %i.bt, %.critedge.i ], [ %i.lu, %.critedge4.i ] ; 2 uses
  %.pr = load ptr, ptr %i.ci, align 8, !tbaa !40  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  store i32 %.074, ptr %i.bp, align 8, !tbaa !47
  %.not.i27 = icmp eq ptr %.pr, null
  br i1 %.not.i27, label %Super2_LibStop.exit, label %bb.ao

bb.ao:                                            ; preds = %Super2_LibCompute.exit.thread, %Super2_LibCompute.exit
  %i.mi = phi ptr [ %i.ec, %Super2_LibCompute.exit.thread ], [ %.pr, %Super2_LibCompute.exit ]
  %i.mj = phi i32 [ %i.ds, %Super2_LibCompute.exit.thread ], [ %i.mh, %Super2_LibCompute.exit ]
  call void @free(ptr noundef nonnull %i.mi) #20
  br label %Super2_LibStop.exit

Super2_LibStop.exit:                              ; preds = %Super2_LibCompute.exit, %bb.ao
  %i.mk = phi i32 [ %i.mh, %Super2_LibCompute.exit ], [ %i.mj, %bb.ao ]
  call void @free(ptr noundef nonnull %.01973) #20
  %i.ml = load i32, ptr %i.br, align 4, !tbaa !37
  %i.mm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.074, i32 noundef %i.mk, i32 noundef %i.ml) ; 0 uses
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.mn = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #20
  %i.mo = icmp slt i32 %i.mn, 0
  br i1 %i.mo, label %Abc_Clock.exit29, label %bb.ap

bb.ap:                                            ; preds = %Super2_LibStop.exit
  %i.mp = load i64, ptr %5, align 8, !tbaa !43
  %i.mq = mul nsw i64 %i.mp, 1000000
  %i.mr = load i64, ptr %i.bh, align 8, !tbaa !44
  %i.ms = sdiv i64 %i.mr, 1000
  %i.mt = add nsw i64 %i.ms, %i.mq
  br label %Abc_Clock.exit29

Abc_Clock.exit29:                                 ; preds = %Super2_LibStop.exit, %bb.ap
  %.0.i28 = phi i64 [ %i.mt, %bb.ap ], [ -1, %Super2_LibStop.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.mu = add i64 %.0.i28, %.0.i.neg
  %i.mv = sitofp i64 %i.mu to double
  %i.mw = fdiv double %i.mv, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.4, double noundef %i.mw)
  %i.mx = load ptr, ptr @stdout, align 8, !tbaa !17
  %i.my = call i32 @fflush(ptr noundef %i.mx)     ; 0 uses
  %i.mz = add nuw i32 %.074, 1
  %exitcond.not = icmp eq i32 %.074, %1
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !25

._crit_edge:                                      ; preds = %Abc_Clock.exit29, %Super2_LibFirst.exit
  %.019.lcssa = phi ptr [ %calloc.i.i, %Super2_LibFirst.exit ], [ %calloc.i.i.i, %Abc_Clock.exit29 ] ; 11 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.na = load ptr, ptr @stdout, align 8, !tbaa !17
  %i.nb = call i32 @fflush(ptr noundef %i.na)     ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.nc = getelementptr inbounds nuw i8, ptr %.019.lcssa, i64 16 ; 5 uses
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !47 ; 2 uses
  %i.ne = icmp sgt i32 %i.nd, 5
  br i1 %i.ne, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge
  %i.nf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.nd) ; 0 uses
  br label %Super2_LibWrite.exit

bb.ar:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ng = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #20
  %i.nh = icmp slt i32 %i.ng, 0
  br i1 %i.nh, label %Abc_Clock.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ni = load i64, ptr %4, align 8, !tbaa !43
  %.neg37.i = mul i64 %i.ni, -1000000
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !44
  %.neg.i = sdiv i64 %i.nk, -1000
  %.neg38.i = add i64 %.neg.i, %.neg37.i
  br label %Abc_Clock.exit.i

Abc_Clock.exit.i:                                 ; preds = %bb.as, %bb.ar
  %.0.i.neg.i = phi i64 [ %.neg38.i, %bb.as ], [ 1, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.nl = getelementptr inbounds nuw i8, ptr %.019.lcssa, i64 40 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !39
  store i32 %i.nm, ptr @s_uMaskBit, align 4, !tbaa !15
  %i.nn = getelementptr inbounds nuw i8, ptr %.019.lcssa, i64 12 ; 3 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !36
  %i.np = sub nsw i32 32, %i.no
  %i.nq = lshr i32 -1, %i.np
  store i32 %i.nq, ptr @s_uMaskAll, align 4, !tbaa !15
  %i.nr = getelementptr inbounds nuw i8, ptr %.019.lcssa, i64 32 ; 2 uses
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !40
  %i.nt = getelementptr inbounds nuw i8, ptr %.019.lcssa, i64 20 ; 5 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !37
  %i.nv = sext i32 %i.nu to i64
  call void @qsort(ptr noundef %i.ns, i64 noundef %i.nv, i64 noundef 8, ptr noundef nonnull @Super2_LibCompareGates) #20
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.17)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.nw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #20
  %i.nx = icmp slt i32 %i.nw, 0
  br i1 %i.nx, label %Abc_Clock.exit36.i, label %bb.at

bb.at:                                            ; preds = %Abc_Clock.exit.i
  %i.ny = load i64, ptr %3, align 8, !tbaa !43
  %i.nz = mul nsw i64 %i.ny, 1000000
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !44
end_hunk_0
