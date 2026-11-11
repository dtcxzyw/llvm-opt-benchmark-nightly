Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj3?download=true
inline.NumInlined: 296
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 44
begin_hunk_0_@Zyx_ManExactSynthesis:bb.a
  %.not81 = icmp eq i64 %i.aa, 0
  br i1 %.not81, label %Abc_TtNot.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %0, align 8, !tbaa !60    ; 2 uses
  %i.ac = icmp slt i32 %i.ab, 7
  %i.ad = add nsw i32 %i.ab, -6
  %i.ae = shl nuw i32 1, %i.ad
  %i.af = select i1 %i.ac, i32 1, i32 %i.ae       ; 5 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.preheader.i, label %Abc_TtNot.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %i.ah = and i32 %i.af, 2147483644
  %n.vec = zext nneg i32 %i.ah to i64
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.ai, align 16, !tbaa !26
  %wide.load240 = load <2 x i64>, ptr %i.aj, align 16, !tbaa !26
  %i.ak = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.al = xor <2 x i64> %wide.load240, splat (i64 -1)
  store <2 x i64> %i.ak, ptr %i.ai, align 16, !tbaa !26
  store <2 x i64> %i.al, ptr %i.aj, align 16, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %Abc_TtNot.exit, label %vector.body, !llvm.loop !202

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.an = load i64, ptr %i.e, align 16, !tbaa !26
  %i.ao = xor i64 %i.an, -1
  store i64 %i.ao, ptr %i.e, align 16, !tbaa !26
  %exitcond.not.i = icmp eq i32 %i.af, 1
  br i1 %exitcond.not.i, label %Abc_TtNot.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !26
  %i.ar = xor i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !26
  %exitcond.not.i.1 = icmp eq i32 %i.af, 2
  br i1 %exitcond.not.i.1, label %Abc_TtNot.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 16, !tbaa !26
  %i.au = xor i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 16, !tbaa !26
  br label %Abc_TtNot.exit

Abc_TtNot.exit:                                   ; preds = %vector.body, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.e, %bb.d, %Abc_Clock.exit97
  %i.av = phi ptr [ null, %Abc_Clock.exit97 ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %.lr.ph.i ], [ %i.e, %.lr.ph.i.2 ], [ %i.e, %.lr.ph.i.1 ], [ %i.e, %vector.body ]
  %.070 = phi i32 [ 0, %Abc_Clock.exit97 ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph.i.2 ], [ 1, %.lr.ph.i.1 ], [ 1, %vector.body ] ; 2 uses
  %i.aw = call ptr @Zyx_ManAlloc(ptr noundef nonnull %0, ptr noundef %i.av) ; 31 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !55
  %.not83 = icmp eq i32 %i.be, 0
  %i.bf = select i1 %.not83, ptr @.str.25, ptr @.str.24
  %i.bg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.ay, i32 noundef %i.ba, i32 noundef %i.bc, ptr noundef nonnull %i.bf) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 8808 ; 10 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.aw, i64 4704 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aw, i64 4708 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aw, i64 28 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 96 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aw, i64 4192
  %i.bo = getelementptr i8, ptr %i.aw, i64 20     ; 4 uses
  %i.bp = getelementptr i8, ptr %i.aw, i64 40     ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.f

bb.f:                                             ; preds = %bb.am, %Abc_TtNot.exit
  %.073 = phi i32 [ 0, %Abc_TtNot.exit ], [ %i.tg, %bb.am ] ; 5 uses
  %.071 = phi i32 [ 0, %Abc_TtNot.exit ], [ %.079.i119, %bb.am ] ; 2 uses
  %.066 = phi i32 [ 0, %Abc_TtNot.exit ], [ %.167, %bb.am ]
  %.063 = phi i32 [ 0, %Abc_TtNot.exit ], [ %.164, %bb.am ] ; 8 uses
  %.062 = phi i64 [ %.0.i96, %Abc_TtNot.exit ], [ %.3, %bb.am ] ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.167 = phi i32 [ %.066, %bb.f ], [ %i.cf, %bb.i ] ; 5 uses
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.cd = call i32 @bmcg_sat_solver_solve(ptr noundef %i.cc, ptr noundef null, i32 noundef 0) #26
  switch i32 %i.cd, label %.thread.thread122 [
    i32 1, label %bb.h
    i32 -1, label %.loopexit127
  ]

bb.h:                                             ; preds = %bb.g
  %i.ce = call i32 @Zyx_ManAddCnfLazyTopo(ptr noundef nonnull %i.aw) ; 2 uses
  switch i32 %i.ce, label %bb.i [
    i32 -1, label %.thread.thread
    i32 0, label %.thread.thread122
  ]

.thread.thread:                                   ; preds = %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %.loopexit127

bb.i:                                             ; preds = %bb.h
  %i.cf = add nsw i32 %i.ce, %.167
  br label %bb.g

.thread.thread122:                                ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.cg = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !60 ; 2 uses
  %i.ci = load i32, ptr %i.bi, align 8, !tbaa !56 ; 2 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph158.i, label %._crit_edge159.i

.lr.ph158.i:                                      ; preds = %.thread.thread122
  %i.ck = sext i32 %i.ch to i64                   ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %Abc_TtMaj.exit.i, %.lr.ph158.i
  %indvar = phi i64 [ %indvar.next, %Abc_TtMaj.exit.i ], [ 0, %.lr.ph158.i ] ; 3 uses
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %Abc_TtMaj.exit.i ], [ %i.ck, %.lr.ph158.i ] ; 9 uses
  %i.cl = add i64 %indvar, %i.ck
  %i.cm = shl i64 %i.cl, 3
  %i.cn = add i64 %i.cm, 8
  store i32 0, ptr %i.bk, align 4, !tbaa !30
  store i32 0, ptr %i.bj, align 8, !tbaa !30
  %i.co = icmp sgt i64 %indvars.iv181.i, 0
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 2 uses
  br i1 %i.co, label %.lr.ph.i.i, label %Zyx_ManCollectFanins.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw [128 x i8], ptr %i.bm, i64 %indvars.iv181.i
  %i.cq = trunc nuw nsw i64 %indvars.iv181.i to i32 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i
  %i.cr = phi ptr [ %.pre.i, %.lr.ph.i.i ], [ %i.dg, %bb.k ]
  %.022.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dv, %bb.k ] ; 4 uses
  %i.cs = load ptr, ptr %i.bh, align 8, !tbaa !50
  %i.ct = load i32, ptr %i.bl, align 4, !tbaa !62
  %i.cu = load i32, ptr %i.bi, align 8, !tbaa !56
  %i.cv = load i32, ptr %i.cr, align 8, !tbaa !60
  %i.cw = sub nsw i32 %i.cq, %i.cv
  %i.cx = mul nsw i32 %i.cw, %i.cu
  %i.cy = add i32 %i.ct, %.022.i.i
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.cs, i32 noundef %i.cz) #26 ; 2 uses
  %i.db = load i32, ptr %i.bk, align 4, !tbaa !30
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.cp, i64 %i.dc
  store i32 %.022.i.i, ptr %i.dd, align 4, !tbaa !30
  %i.de = load i32, ptr %i.bl, align 4, !tbaa !62
  %i.df = load i32, ptr %i.bi, align 8, !tbaa !56
  %i.dg = load ptr, ptr %i.aw, align 8, !tbaa !52 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !60
  %i.di = sub nsw i32 %i.cq, %i.dh
  %i.dj = mul nsw i32 %i.di, %i.df
  %i.dk = add i32 %i.de, %.022.i.i
  %i.dl = add i32 %i.dk, %i.dj
  %i.dm = shl nsw i32 %i.dl, 1
  %i.dn = add nsw i32 %i.dm, %i.da
  %i.do = sext i32 %i.da to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [256 x i8], ptr %i.bn, i64 %i.do
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.do ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !30 ; 2 uses
  %i.ds = add nsw i32 %i.dr, 1
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !30
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dt
  store i32 %i.dn, ptr %i.du, align 4, !tbaa !30
  %i.dv = add nuw nsw i32 %.022.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dv, %i.cq
  br i1 %exitcond.not.i.i, label %Zyx_ManCollectFanins.exit.i, label %bb.k, !llvm.loop !3

Zyx_ManCollectFanins.exit.i:                      ; preds = %bb.k, %bb.j
  %i.dw = phi ptr [ %.pre.i, %bb.j ], [ %i.dg, %bb.k ] ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !64 ; 3 uses
  %i.dz = icmp sgt i32 %i.dy, 0
  %.val106.i.pre = load i32, ptr %i.bo, align 4, !tbaa !57 ; 10 uses
  br i1 %i.dz, label %.lr.ph.i98, label %._crit_edge.i

.lr.ph.i98:                                       ; preds = %Zyx_ManCollectFanins.exit.i
  %i.ea = getelementptr inbounds [128 x i8], ptr %i.bm, i64 %indvars.iv181.i ; 5 uses
  %.val111.i = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.eb = getelementptr i8, ptr %.val111.i, i64 8
  %.val111.val.i = load ptr, ptr %i.eb, align 8, !tbaa !21 ; 5 uses
  %wide.trip.count.i99 = zext nneg i32 %i.dy to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i99, 3     ; 3 uses
  %i.ec = icmp ult i32 %i.dy, 4
  br i1 %i.ec, label %.epil.preheader, label %.lr.ph.i98.new

.lr.ph.i98.new:                                   ; preds = %.lr.ph.i98
  %unroll_iter = and i64 %wide.trip.count.i99, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i98.new
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.i98.new ], [ %indvars.iv.next.i101.3, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i98.new ], [ %niter.next.3, %bb.l ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i100
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !30
  %i.ef = mul nsw i32 %i.ee, %.val106.i.pre
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i100
  store ptr %i.eh, ptr %i.ei, align 16, !tbaa !73
  %indvars.iv.next.i101 = or disjoint i64 %indvars.iv.i100, 1 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i101
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !30
  %i.el = mul nsw i32 %i.ek, %.val106.i.pre
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.em
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i101
  store ptr %i.en, ptr %i.eo, align 8, !tbaa !73
  %indvars.iv.next.i101.1 = or disjoint i64 %indvars.iv.i100, 2 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i101.1
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !30
  %i.er = mul nsw i32 %i.eq, %.val106.i.pre
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.es
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i101.1
  store ptr %i.et, ptr %i.eu, align 16, !tbaa !73
  %indvars.iv.next.i101.2 = or disjoint i64 %indvars.iv.i100, 3 ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.next.i101.2
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !30
  %i.ex = mul nsw i32 %i.ew, %.val106.i.pre
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.ey
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i101.2
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !73
  %indvars.iv.next.i101.3 = add nuw nsw i64 %indvars.iv.i100, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.l, !llvm.loop !203

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i98
  %indvars.iv.i100.epil.init = phi i64 [ 0, %.lr.ph.i98 ], [ %indvars.iv.next.i101.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod357 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod357)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i100.epil = phi i64 [ %indvars.iv.i100.epil.init, %.epil.preheader ], [ %indvars.iv.next.i101.epil, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv.i100.epil
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !30
  %i.fd = mul nsw i32 %i.fc, %.val106.i.pre
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.fe
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i100.epil
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !73
  %indvars.iv.next.i101.epil = add nuw nsw i64 %indvars.iv.i100.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.m, !llvm.loop !204

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.m, %Zyx_ManCollectFanins.exit.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !55
  %.not83.i = icmp eq i32 %i.fi, 0
  br i1 %.not83.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %.val109.i = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.fj = getelementptr i8, ptr %.val109.i, i64 8
  %.val109.val.i = load ptr, ptr %i.fj, align 8, !tbaa !21 ; 2 uses
  %.val109.val.i307 = ptrtoaddr ptr %.val109.val.i to i64
  %9 = zext i32 %.val106.i.pre to i64             ; 7 uses
  %i.fk = mul nsw i64 %indvars.iv181.i, %9
  %i.fl = getelementptr inbounds [8 x i8], ptr %.val109.val.i, i64 %i.fk ; 4 uses
  %i.fm = load ptr, ptr %i.d, align 16, !tbaa !73 ; 5 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = load ptr, ptr %i.bq, align 8, !tbaa !73 ; 5 uses
  %i.fp = ptrtoaddr ptr %i.fo to i64
  %i.fq = load ptr, ptr %i.br, align 16, !tbaa !73 ; 5 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %i.fs = icmp sgt i32 %.val106.i.pre, 0
  br i1 %i.fs, label %.lr.ph.preheader.i.i, label %Abc_TtMaj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %min.iters.check309 = icmp ult i32 %.val106.i.pre, 8
  br i1 %min.iters.check309, label %.lr.ph.i114.i.preheader, label %vector.memcheck310

vector.memcheck310:                               ; preds = %.lr.ph.preheader.i.i
  %i.ft = add i64 %indvar, %i.ck
  %i.fu = shl i64 %i.ft, 3
  %i.fv = mul i64 %i.fu, %9
  %i.fw = add i64 %i.fv, %.val109.val.i307        ; 3 uses
  %i.fx = sub i64 %i.fn, %i.fw
  %diff.check = icmp ugt i64 %i.fx, -32
  %i.fy = sub i64 %i.fp, %i.fw
  %diff.check311 = icmp ugt i64 %i.fy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check311
  %i.fz = sub i64 %i.fr, %i.fw
  %diff.check312 = icmp ugt i64 %i.fz, -32
  %conflict.rdx313 = or i1 %conflict.rdx, %diff.check312
  br i1 %conflict.rdx313, label %.lr.ph.i114.i.preheader, label %vector.ph314

vector.ph314:                                     ; preds = %vector.memcheck310
  %n.vec315 = and i64 %9, 2147483644              ; 3 uses
  br label %vector.body316

vector.body316:                                   ; preds = %vector.body316, %vector.ph314
  %index317 = phi i64 [ 0, %vector.ph314 ], [ %index.next324, %vector.body316 ] ; 5 uses
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %index317 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load318 = load <2 x i64>, ptr %i.ga, align 8, !tbaa !26
  %wide.load319 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !26
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %index317 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  %wide.load320 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !26 ; 2 uses
  %wide.load321 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !26 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index317 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load322 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !26 ; 2 uses
  %wide.load323 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !26 ; 2 uses
  %i.gg = or <2 x i64> %wide.load322, %wide.load320
  %i.gh = or <2 x i64> %wide.load323, %wide.load321
  %i.gi = and <2 x i64> %i.gg, %wide.load318
  %i.gj = and <2 x i64> %i.gh, %wide.load319
  %i.gk = and <2 x i64> %wide.load322, %wide.load320
  %i.gl = and <2 x i64> %wide.load323, %wide.load321
  %i.gm = or <2 x i64> %i.gi, %i.gk
  %i.gn = or <2 x i64> %i.gj, %i.gl
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %index317 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <2 x i64> %i.gm, ptr %i.go, align 8, !tbaa !26
  store <2 x i64> %i.gn, ptr %i.gp, align 8, !tbaa !26
  %index.next324 = add nuw i64 %index317, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next324, %n.vec315
  br i1 %i.gq, label %middle.block325, label %vector.body316, !llvm.loop !205

middle.block325:                                  ; preds = %vector.body316
  %cmp.n326 = icmp eq i64 %n.vec315, %9
  br i1 %cmp.n326, label %Abc_TtMaj.exit.i, label %.lr.ph.i114.i.preheader

.lr.ph.i114.i.preheader:                          ; preds = %vector.memcheck310, %.lr.ph.preheader.i.i, %middle.block325
  %indvars.iv.i.i.ph = phi i64 [ 0, %vector.memcheck310 ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec315, %middle.block325 ] ; 7 uses
  %xtraiter358 = and i64 %9, 1
  %lcmp.mod359.not = icmp eq i64 %xtraiter358, 0
  br i1 %lcmp.mod359.not, label %.lr.ph.i114.i.prol.loopexit, label %.lr.ph.i114.i.prol

.lr.ph.i114.i.prol:                               ; preds = %.lr.ph.i114.i.preheader
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i.i.ph
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i.i.ph
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !26 ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i.i.ph
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !26 ; 2 uses
  %i.gx = or i64 %i.gw, %i.gu
  %i.gy = and i64 %i.gx, %i.gs
  %i.gz = and i64 %i.gw, %i.gu
  %i.ha = or i64 %i.gy, %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.i.ph
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !26
  %indvars.iv.next.i.i.prol = or disjoint i64 %indvars.iv.i.i.ph, 1
  br label %.lr.ph.i114.i.prol.loopexit

.lr.ph.i114.i.prol.loopexit:                      ; preds = %.lr.ph.i114.i.prol, %.lr.ph.i114.i.preheader
  %indvars.iv.i.i.unr = phi i64 [ %indvars.iv.i.i.ph, %.lr.ph.i114.i.preheader ], [ %indvars.iv.next.i.i.prol, %.lr.ph.i114.i.prol ]
  %i.hc = add nsw i64 %9, -1
  %i.hd = icmp eq i64 %indvars.iv.i.i.ph, %i.hc
  br i1 %i.hd, label %Abc_TtMaj.exit.i, label %.lr.ph.i114.i

.lr.ph.i114.i:                                    ; preds = %.lr.ph.i114.i.prol.loopexit, %.lr.ph.i114.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.1, %.lr.ph.i114.i ], [ %indvars.iv.i.i.unr, %.lr.ph.i114.i.prol.loopexit ] ; 6 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.i.i
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !26
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i.i
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !26 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.i.i
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !26 ; 2 uses
  %i.hk = or i64 %i.hj, %i.hh
  %i.hl = and i64 %i.hk, %i.hf
  %i.hm = and i64 %i.hj, %i.hh
  %i.hn = or i64 %i.hl, %i.hm
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.i
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !26
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 4 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %indvars.iv.next.i.i
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !26
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next.i.i
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !26 ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %indvars.iv.next.i.i
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !26 ; 2 uses
  %i.hv = or i64 %i.hu, %i.hs
  %i.hw = and i64 %i.hv, %i.hq
  %i.hx = and i64 %i.hu, %i.hs
  %i.hy = or i64 %i.hw, %i.hx
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.i
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !26
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %exitcond.not.i115.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %9
  br i1 %exitcond.not.i115.i.1, label %Abc_TtMaj.exit.i, label %.lr.ph.i114.i, !llvm.loop !206

bb.o:                                             ; preds = %._crit_edge.i
  %i.ia = icmp sgt i32 %.val106.i.pre, 0
  br i1 %i.ia, label %.lr.ph.preheader.i116.i, label %Abc_TtConst0.exit.i

.lr.ph.preheader.i116.i:                          ; preds = %bb.o
  %.val107.i = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.ib = getelementptr i8, ptr %.val107.i, i64 8
  %.val107.val.i = load ptr, ptr %i.ib, align 8, !tbaa !21
  %i.ic = zext nneg i32 %.val106.i.pre to i64     ; 2 uses
  %i.id = mul nsw i64 %indvars.iv181.i, %i.ic
  %i.ie = getelementptr inbounds [8 x i8], ptr %.val107.val.i, i64 %i.id
  %i.if = shl nuw nsw i64 %i.ic, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.ie, i8 0, i64 %i.if, i1 false), !tbaa !26
  br label %Abc_TtConst0.exit.i

Abc_TtConst0.exit.i:                              ; preds = %.lr.ph.preheader.i116.i, %bb.o
  %i.ig = load i32, ptr %i.bs, align 8, !tbaa !61 ; 2 uses
  %.not84150.i = icmp slt i32 %i.ig, 1
  br i1 %.not84150.i, label %Abc_TtMaj.exit.i, label %.lr.ph154.preheader.i

.lr.ph154.preheader.i:                            ; preds = %Abc_TtConst0.exit.i
  %i.ih = trunc nsw i64 %indvars.iv181.i to i32
  br label %.lr.ph154.i

.lr.ph154.i:                                      ; preds = %Abc_TtOr.exit.i, %.lr.ph154.preheader.i
  %i.ii = phi i32 [ %i.nm, %Abc_TtOr.exit.i ], [ %i.ig, %.lr.ph154.preheader.i ]
  %.1151.i = phi i32 [ %i.nl, %Abc_TtOr.exit.i ], [ 1, %.lr.ph154.preheader.i ] ; 4 uses
  %i.ij = load ptr, ptr %i.bh, align 8, !tbaa !50
  %.val112.i = load ptr, ptr %i.aw, align 8, !tbaa !52
  %.val112.val.i = load i32, ptr %.val112.i, align 8, !tbaa !60
  %i.ik = add nuw nsw i32 %i.ii, 1
  %i.il = sub nsw i32 %i.ih, %.val112.val.i
  %i.im = mul nsw i32 %i.il, %i.ik
  %i.in = add nsw i32 %i.im, %.1151.i
  %i.io = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.ij, i32 noundef %i.in) #26
  %.not85.i = icmp eq i32 %i.io, 0
  br i1 %.not85.i, label %Abc_TtOr.exit.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph154.i
  %i.ip = load i32, ptr %i.bi, align 8, !tbaa !56
  %.val104.i = load i32, ptr %i.bo, align 4, !tbaa !57 ; 5 uses
  %.val105.i = load ptr, ptr %i.bp, align 8, !tbaa !58
  %i.iq = getelementptr i8, ptr %.val105.i, i64 8
  %.val105.val.i = load ptr, ptr %i.iq, align 8, !tbaa !21 ; 5 uses
  %i.ir = mul i32 %.val104.i, %i.ip
  %i.is = sext i32 %i.ir to i64                   ; 3 uses
  %i.it = getelementptr [8 x i8], ptr %.val105.val.i, i64 %i.is ; 20 uses
  %i.iu = icmp sgt i32 %.val104.i, 0
  br i1 %i.iu, label %Abc_TtConst1.exit.i, label %Abc_TtOr.exit.i

Abc_TtConst1.exit.i:                              ; preds = %bb.p
  %i.iv = zext nneg i32 %.val104.i to i64         ; 21 uses
  %i.iw = shl nuw nsw i64 %i.iv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.it, i8 -1, i64 %i.iw, i1 false), !tbaa !26
  %i.ix = load ptr, ptr %i.aw, align 8, !tbaa !52
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 8
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !64 ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %.lr.ph148.split.us.preheader.i, label %._crit_edge149.i

.lr.ph148.split.us.preheader.i:                   ; preds = %Abc_TtConst1.exit.i
  %wide.trip.count179.i = zext nneg i32 %i.iz to i64
  %i.jb = shl nuw nsw i64 %i.iv, 3                ; 2 uses
  %i.jc = add nsw i64 %i.is, %i.iv
  %i.jd = shl nsw i64 %i.jc, 3
  %scevgep = getelementptr i8, ptr %.val105.val.i, i64 %i.jd ; 2 uses
  %min.iters.check262 = icmp ult i32 %.val104.i, 4 ; 2 uses
  %n.vec291 = and i64 %i.iv, 2147483644           ; 3 uses
  %cmp.n300 = icmp eq i64 %n.vec291, %i.iv
  %xtraiter360 = and i64 %i.iv, 3                 ; 2 uses
  %lcmp.mod361.not = icmp eq i64 %xtraiter360, 0
  %n.vec268 = and i64 %i.iv, 2147483644           ; 3 uses
  %cmp.n277 = icmp eq i64 %n.vec268, %i.iv
  %xtraiter362 = and i64 %i.iv, 1
  %lcmp.mod363.not = icmp eq i64 %xtraiter362, 0
  %i.je = add nsw i64 %i.iv, -1
  br label %.lr.ph148.split.us.i

.lr.ph148.split.us.i:                             ; preds = %Abc_TtAndCompl.exit.us.i, %.lr.ph148.split.us.preheader.i
  %indvars.iv176.i = phi i64 [ 0, %.lr.ph148.split.us.preheader.i ], [ %indvars.iv.next177.i, %Abc_TtAndCompl.exit.us.i ] ; 3 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv176.i
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !73 ; 14 uses
  %i.jh = trunc nuw nsw i64 %indvars.iv176.i to i32
  %i.ji = shl nuw i32 1, %i.jh
  %i.jj = and i32 %i.ji, %.1151.i
  %.not.i.not.us.i = icmp eq i32 %i.jj, 0
  br i1 %.not.i.not.us.i, label %.lr.ph.i120.us.i.preheader, label %.lr.ph42.i.us.i.preheader

.lr.ph42.i.us.i.preheader:                        ; preds = %.lr.ph148.split.us.i
  br i1 %min.iters.check262, label %.lr.ph42.i.us.i.preheader329, label %vector.memcheck286

vector.memcheck286:                               ; preds = %.lr.ph42.i.us.i.preheader
  %i.jk = getelementptr i8, ptr %i.jg, i64 %i.jb
  %bound0287 = icmp ult ptr %i.it, %i.jk
  %bound1288 = icmp ult ptr %i.jg, %scevgep
  %found.conflict289 = and i1 %bound0287, %bound1288
  br i1 %found.conflict289, label %.lr.ph42.i.us.i.preheader329, label %vector.body292

vector.body292:                                   ; preds = %vector.memcheck286, %vector.body292
  %index293 = phi i64 [ %index.next298, %vector.body292 ], [ 0, %vector.memcheck286 ] ; 3 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %index293 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16 ; 2 uses
  %wide.load294 = load <2 x i64>, ptr %i.jl, align 8, !tbaa !26, !alias.scope !230, !noalias !231
  %wide.load295 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !26, !alias.scope !230, !noalias !231
  %i.jn = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %index293 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load296 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !26, !alias.scope !231
  %wide.load297 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !26, !alias.scope !231
  %i.jp = and <2 x i64> %wide.load296, %wide.load294
  %i.jq = and <2 x i64> %wide.load297, %wide.load295
  store <2 x i64> %i.jp, ptr %i.jl, align 8, !tbaa !26, !alias.scope !230, !noalias !231
  store <2 x i64> %i.jq, ptr %i.jm, align 8, !tbaa !26, !alias.scope !230, !noalias !231
  %index.next298 = add nuw i64 %index293, 4       ; 2 uses
  %i.jr = icmp eq i64 %index.next298, %n.vec291
  br i1 %i.jr, label %middle.block299, label %vector.body292, !llvm.loop !210

middle.block299:                                  ; preds = %vector.body292
  br i1 %cmp.n300, label %Abc_TtAndCompl.exit.us.i, label %.lr.ph42.i.us.i.preheader329

.lr.ph42.i.us.i.preheader329:                     ; preds = %vector.memcheck286, %.lr.ph42.i.us.i.preheader, %middle.block299
  %indvars.iv45.i.us.i.ph = phi i64 [ 0, %vector.memcheck286 ], [ 0, %.lr.ph42.i.us.i.preheader ], [ %n.vec291, %middle.block299 ] ; 3 uses
  br i1 %lcmp.mod361.not, label %.lr.ph42.i.us.i.prol.loopexit, label %.lr.ph42.i.us.i.prol

.lr.ph42.i.us.i.prol:                             ; preds = %.lr.ph42.i.us.i.preheader329, %.lr.ph42.i.us.i.prol
  %indvars.iv45.i.us.i.prol = phi i64 [ %indvars.iv.next46.i.us.i.prol, %.lr.ph42.i.us.i.prol ], [ %indvars.iv45.i.us.i.ph, %.lr.ph42.i.us.i.preheader329 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph42.i.us.i.prol ], [ 0, %.lr.ph42.i.us.i.preheader329 ]
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv45.i.us.i.prol ; 2 uses
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !26
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv45.i.us.i.prol
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !26
  %i.jw = and i64 %i.jv, %i.jt
  store i64 %i.jw, ptr %i.js, align 8, !tbaa !26
  %indvars.iv.next46.i.us.i.prol = add nuw nsw i64 %indvars.iv45.i.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter360
  br i1 %prol.iter.cmp.not, label %.lr.ph42.i.us.i.prol.loopexit, label %.lr.ph42.i.us.i.prol, !llvm.loop !211

.lr.ph42.i.us.i.prol.loopexit:                    ; preds = %.lr.ph42.i.us.i.prol, %.lr.ph42.i.us.i.preheader329
  %indvars.iv45.i.us.i.unr = phi i64 [ %indvars.iv45.i.us.i.ph, %.lr.ph42.i.us.i.preheader329 ], [ %indvars.iv.next46.i.us.i.prol, %.lr.ph42.i.us.i.prol ]
  %i.jx = sub nsw i64 %indvars.iv45.i.us.i.ph, %i.iv
  %i.jy = icmp ugt i64 %i.jx, -4
  br i1 %i.jy, label %Abc_TtAndCompl.exit.us.i, label %.lr.ph42.i.us.i

.lr.ph.i120.us.i.preheader:                       ; preds = %.lr.ph148.split.us.i
  br i1 %min.iters.check262, label %.lr.ph.i120.us.i.preheader328, label %vector.memcheck263

vector.memcheck263:                               ; preds = %.lr.ph.i120.us.i.preheader
  %i.jz = getelementptr i8, ptr %i.jg, i64 %i.jb
  %bound0264 = icmp ult ptr %i.it, %i.jz
  %bound1265 = icmp ult ptr %i.jg, %scevgep
  %found.conflict266 = and i1 %bound0264, %bound1265
  br i1 %found.conflict266, label %.lr.ph.i120.us.i.preheader328, label %vector.body269

vector.body269:                                   ; preds = %vector.memcheck263, %vector.body269
  %index270 = phi i64 [ %index.next275, %vector.body269 ], [ 0, %vector.memcheck263 ] ; 3 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %index270 ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16 ; 2 uses
  %wide.load271 = load <2 x i64>, ptr %i.ka, align 8, !tbaa !26, !alias.scope !232, !noalias !233
  %wide.load272 = load <2 x i64>, ptr %i.kb, align 8, !tbaa !26, !alias.scope !232, !noalias !233
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %index270 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %wide.load273 = load <2 x i64>, ptr %i.kc, align 8, !tbaa !26, !alias.scope !233
  %wide.load274 = load <2 x i64>, ptr %i.kd, align 8, !tbaa !26, !alias.scope !233
  %i.ke = xor <2 x i64> %wide.load273, splat (i64 -1)
  %i.kf = xor <2 x i64> %wide.load274, splat (i64 -1)
  %i.kg = and <2 x i64> %wide.load271, %i.ke
  %i.kh = and <2 x i64> %wide.load272, %i.kf
  store <2 x i64> %i.kg, ptr %i.ka, align 8, !tbaa !26, !alias.scope !232, !noalias !233
  store <2 x i64> %i.kh, ptr %i.kb, align 8, !tbaa !26, !alias.scope !232, !noalias !233
  %index.next275 = add nuw i64 %index270, 4       ; 2 uses
  %i.ki = icmp eq i64 %index.next275, %n.vec268
  br i1 %i.ki, label %middle.block276, label %vector.body269, !llvm.loop !215

middle.block276:                                  ; preds = %vector.body269
  br i1 %cmp.n277, label %Abc_TtAndCompl.exit.us.i, label %.lr.ph.i120.us.i.preheader328

.lr.ph.i120.us.i.preheader328:                    ; preds = %vector.memcheck263, %.lr.ph.i120.us.i.preheader, %middle.block276
  %indvars.iv.i121.us.i.ph = phi i64 [ 0, %vector.memcheck263 ], [ 0, %.lr.ph.i120.us.i.preheader ], [ %n.vec268, %middle.block276 ] ; 5 uses
  br i1 %lcmp.mod363.not, label %.lr.ph.i120.us.i.prol.loopexit, label %.lr.ph.i120.us.i.prol

.lr.ph.i120.us.i.prol:                            ; preds = %.lr.ph.i120.us.i.preheader328
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv.i121.us.i.ph ; 2 uses
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !26
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jg, i64 %indvars.iv.i121.us.i.ph
  %i.km = load i64, ptr %i.kl, align 8, !tbaa !26
  %i.kn = xor i64 %i.km, -1
  %i.ko = and i64 %i.kk, %i.kn
  store i64 %i.ko, ptr %i.kj, align 8, !tbaa !26
  %indvars.iv.next.i122.us.i.prol = or disjoint i64 %indvars.iv.i121.us.i.ph, 1
  br label %.lr.ph.i120.us.i.prol.loopexit

.lr.ph.i120.us.i.prol.loopexit:                   ; preds = %.lr.ph.i120.us.i.prol, %.lr.ph.i120.us.i.preheader328
  %indvars.iv.i121.us.i.unr = phi i64 [ %indvars.iv.i121.us.i.ph, %.lr.ph.i120.us.i.preheader328 ], [ %indvars.iv.next.i122.us.i.prol, %.lr.ph.i120.us.i.prol ]
  %i.kp = icmp eq i64 %indvars.iv.i121.us.i.ph, %i.je
  br i1 %i.kp, label %Abc_TtAndCompl.exit.us.i, label %.lr.ph.i120.us.i

.lr.ph42.i.us.i:                                  ; preds = %.lr.ph42.i.us.i.prol.loopexit, %.lr.ph42.i.us.i
  %indvars.iv45.i.us.i = phi i64 [ %indvars.iv.next46.i.us.i.3, %.lr.ph42.i.us.i ], [ %indvars.iv45.i.us.i.unr, %.lr.ph42.i.us.i.prol.loopexit ] ; 6 uses
end_hunk_0
