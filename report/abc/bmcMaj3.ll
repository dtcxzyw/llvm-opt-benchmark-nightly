Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj3?download=true
inline.NumInlined: 296
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 44
begin_hunk_0_@Zyx_ManAddCnfLazyFunc:bb.a
}

; Function Attrs: nounwind uwtable
define void @Zyx_ManExactSynthesis(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %i.d = alloca [6 x ptr], align 16               ; 12 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %i.e = alloca [64 x i64], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.f = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #26
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %8, align 8, !tbaa !79
  %i.i = mul nsw i64 %i.h, 1000000
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !81
  %i.l = sdiv i64 %i.k, 1000
  %i.m = add nsw i64 %i.l, %i.i
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.m, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  %i.n = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #26
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %Abc_Clock.exit97, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.p = load i64, ptr %7, align 8, !tbaa !79
  %i.q = mul nsw i64 %i.p, 1000000
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !81
  %i.t = sdiv i64 %i.s, 1000
  %i.u = add nsw i64 %i.t, %i.q
  br label %Abc_Clock.exit97

Abc_Clock.exit97:                                 ; preds = %Abc_Clock.exit, %bb.c
  %.0.i96 = phi i64 [ %i.u, %bb.c ], [ -1, %Abc_Clock.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i32, ptr %i.v, align 8, !tbaa !97
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %bb.d, label %Abc_TtNot.exit

bb.d:                                             ; preds = %Abc_Clock.exit97
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !200
  call fastcc void @Abc_TtReadHex(ptr noundef nonnull %i.e, ptr noundef %i.y)
  %i.z = load i64, ptr %i.e, align 16, !tbaa !21
  %i.aa = and i64 %i.z, 1
  %.not81 = icmp eq i64 %i.aa, 0
  br i1 %.not81, label %Abc_TtNot.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %0, align 8, !tbaa !104   ; 2 uses
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
  %wide.load = load <2 x i64>, ptr %i.ai, align 16, !tbaa !21
  %wide.load240 = load <2 x i64>, ptr %i.aj, align 16, !tbaa !21
  %i.ak = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.al = xor <2 x i64> %wide.load240, splat (i64 -1)
  store <2 x i64> %i.ak, ptr %i.ai, align 16, !tbaa !21
  store <2 x i64> %i.al, ptr %i.aj, align 16, !tbaa !21
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %Abc_TtNot.exit, label %vector.body, !llvm.loop !201

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i
  %i.an = load i64, ptr %i.e, align 16, !tbaa !21
  %i.ao = xor i64 %i.an, -1
  store i64 %i.ao, ptr %i.e, align 16, !tbaa !21
  %exitcond.not.i = icmp eq i32 %i.af, 1
  br i1 %exitcond.not.i, label %Abc_TtNot.exit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !21
  %i.ar = xor i64 %i.aq, -1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !21
  %exitcond.not.i.1 = icmp eq i32 %i.af, 2
  br i1 %exitcond.not.i.1, label %Abc_TtNot.exit, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.at = load i64, ptr %i.as, align 16, !tbaa !21
  %i.au = xor i64 %i.at, -1
  store i64 %i.au, ptr %i.as, align 16, !tbaa !21
  br label %Abc_TtNot.exit

Abc_TtNot.exit:                                   ; preds = %vector.body, %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %bb.e, %bb.d, %Abc_Clock.exit97
  %i.av = phi ptr [ null, %Abc_Clock.exit97 ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %.lr.ph.i ], [ %i.e, %.lr.ph.i.2 ], [ %i.e, %.lr.ph.i.1 ], [ %i.e, %vector.body ]
  %.070 = phi i32 [ 0, %Abc_Clock.exit97 ], [ 0, %bb.d ], [ 1, %bb.e ], [ 1, %.lr.ph.i ], [ 1, %.lr.ph.i.2 ], [ 1, %.lr.ph.i.1 ], [ 1, %vector.body ] ; 2 uses
  %i.aw = call ptr @Zyx_ManAlloc(ptr noundef nonnull %0, ptr noundef %i.av) ; 31 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !96 ; 4 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !104
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !136
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !130
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !97
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
  %.073 = phi i32 [ 0, %Abc_TtNot.exit ], [ %i.td, %bb.am ] ; 5 uses
  %.071 = phi i32 [ 0, %Abc_TtNot.exit ], [ %.079.i119, %bb.am ] ; 2 uses
  %.066 = phi i32 [ 0, %Abc_TtNot.exit ], [ %.167, %bb.am ]
  %.063 = phi i32 [ 0, %Abc_TtNot.exit ], [ %.164, %bb.am ] ; 8 uses
  %.062 = phi i64 [ %.0.i96, %Abc_TtNot.exit ], [ %.3, %bb.am ] ; 4 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.167 = phi i32 [ %.066, %bb.f ], [ %i.cf, %bb.i ] ; 5 uses
  %i.cc = load ptr, ptr %i.bh, align 8, !tbaa !91
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
  %i.cg = load ptr, ptr %i.aw, align 8, !tbaa !96 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !104 ; 2 uses
  %i.ci = load i32, ptr %i.bi, align 8, !tbaa !100 ; 2 uses
  %i.cj = icmp slt i32 %i.ch, %i.ci
  br i1 %i.cj, label %.lr.ph158.i, label %._crit_edge159.i

.lr.ph158.i:                                      ; preds = %.thread.thread122
  %i.ck = sext i32 %i.ch to i64                   ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %Abc_TtMaj.exit.i, %.lr.ph158.i
  %indvar = phi i64 [ %indvar.next, %Abc_TtMaj.exit.i ], [ 0, %.lr.ph158.i ] ; 3 uses
  %indvars.iv181.i = phi i64 [ %indvars.iv.next182.i, %Abc_TtMaj.exit.i ], [ %i.ck, %.lr.ph158.i ] ; 9 uses
  %9 = add i64 %indvar, %i.ck
  %i.cl = shl i64 %9, 3
  %i.cm = add i64 %indvar, %i.ck
  %i.cn = shl i64 %i.cm, 3
  %i.co = add i64 %i.cn, 8
  store i32 0, ptr %i.bk, align 4, !tbaa !34
  store i32 0, ptr %i.bj, align 8, !tbaa !34
  %i.cp = icmp sgt i64 %indvars.iv181.i, 0
  %.pre.i = load ptr, ptr %i.aw, align 8, !tbaa !96 ; 2 uses
  br i1 %i.cp, label %.lr.ph.i.i, label %Zyx_ManCollectFanins.exit.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.cq = getelementptr inbounds nuw [128 x i8], ptr %i.bm, i64 %indvars.iv181.i
  %i.cr = trunc nuw nsw i64 %indvars.iv181.i to i32 ; 3 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i
  %i.cs = phi ptr [ %.pre.i, %.lr.ph.i.i ], [ %i.dh, %bb.k ]
  %.022.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.dw, %bb.k ] ; 4 uses
  %i.ct = load ptr, ptr %i.bh, align 8, !tbaa !91
  %i.cu = load i32, ptr %i.bl, align 4, !tbaa !107
  %i.cv = load i32, ptr %i.bi, align 8, !tbaa !100
  %i.cw = load i32, ptr %i.cs, align 8, !tbaa !104
  %i.cx = sub nsw i32 %i.cr, %i.cw
  %i.cy = mul nsw i32 %i.cx, %i.cv
  %i.cz = add i32 %i.cu, %.022.i.i
  %i.da = add i32 %i.cz, %i.cy
  %i.db = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.ct, i32 noundef %i.da) #26 ; 2 uses
  %i.dc = load i32, ptr %i.bk, align 4, !tbaa !34
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dd
  store i32 %.022.i.i, ptr %i.de, align 4, !tbaa !34
  %i.df = load i32, ptr %i.bl, align 4, !tbaa !107
  %i.dg = load i32, ptr %i.bi, align 8, !tbaa !100
  %i.dh = load ptr, ptr %i.aw, align 8, !tbaa !96 ; 3 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !104
  %i.dj = sub nsw i32 %i.cr, %i.di
  %i.dk = mul nsw i32 %i.dj, %i.dg
  %i.dl = add i32 %i.df, %.022.i.i
  %i.dm = add i32 %i.dl, %i.dk
  %i.dn = shl nsw i32 %i.dm, 1
  %i.do = add nsw i32 %i.dn, %i.db
  %i.dp = sext i32 %i.db to i64                   ; 2 uses
  %i.dq = getelementptr inbounds [256 x i8], ptr %i.bn, i64 %i.dp
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.dp ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !34 ; 2 uses
  %i.dt = add nsw i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !34
  %i.du = sext i32 %i.ds to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.du
  store i32 %i.do, ptr %i.dv, align 4, !tbaa !34
  %i.dw = add nuw nsw i32 %.022.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.dw, %i.cr
  br i1 %exitcond.not.i.i, label %Zyx_ManCollectFanins.exit.i, label %bb.k, !llvm.loop !172

Zyx_ManCollectFanins.exit.i:                      ; preds = %bb.k, %bb.j
  %i.dx = phi ptr [ %.pre.i, %bb.j ], [ %i.dh, %bb.k ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !130 ; 3 uses
  %i.ea = icmp sgt i32 %i.dz, 0
  %.val106.i.pre = load i32, ptr %i.bo, align 4, !tbaa !101 ; 11 uses
  br i1 %i.ea, label %.lr.ph.i98, label %._crit_edge.i

.lr.ph.i98:                                       ; preds = %Zyx_ManCollectFanins.exit.i
  %i.eb = getelementptr inbounds [128 x i8], ptr %i.bm, i64 %indvars.iv181.i ; 5 uses
  %.val111.i = load ptr, ptr %i.bp, align 8, !tbaa !102
  %i.ec = getelementptr i8, ptr %.val111.i, i64 8
  %.val111.val.i = load ptr, ptr %i.ec, align 8, !tbaa !17 ; 5 uses
  %wide.trip.count.i99 = zext nneg i32 %i.dz to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i99, 3     ; 3 uses
  %i.ed = icmp ult i32 %i.dz, 4
  br i1 %i.ed, label %.epil.preheader, label %.lr.ph.i98.new

.lr.ph.i98.new:                                   ; preds = %.lr.ph.i98
  %unroll_iter = and i64 %wide.trip.count.i99, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i98.new
  %indvars.iv.i100 = phi i64 [ 0, %.lr.ph.i98.new ], [ %indvars.iv.next.i101.3, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i98.new ], [ %niter.next.3, %bb.l ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i100
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !34
  %i.eg = mul nsw i32 %i.ef, %.val106.i.pre
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i100
  store ptr %i.ei, ptr %i.ej, align 16, !tbaa !202
  %indvars.iv.next.i101 = or disjoint i64 %indvars.iv.i100, 1 ; 2 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i101
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !34
  %i.em = mul nsw i32 %i.el, %.val106.i.pre
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.en
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i101
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !202
  %indvars.iv.next.i101.1 = or disjoint i64 %indvars.iv.i100, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i101.1
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !34
  %i.es = mul nsw i32 %i.er, %.val106.i.pre
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.et
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i101.1
  store ptr %i.eu, ptr %i.ev, align 16, !tbaa !202
  %indvars.iv.next.i101.2 = or disjoint i64 %indvars.iv.i100, 3 ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.next.i101.2
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !34
  %i.ey = mul nsw i32 %i.ex, %.val106.i.pre
  %i.ez = sext i32 %i.ey to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.ez
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next.i101.2
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !202
  %indvars.iv.next.i101.3 = add nuw nsw i64 %indvars.iv.i100, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.l, !llvm.loop !203

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i98
  %indvars.iv.i100.epil.init = phi i64 [ 0, %.lr.ph.i98 ], [ %indvars.iv.next.i101.3, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod345 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod345)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i100.epil = phi i64 [ %indvars.iv.i100.epil.init, %.epil.preheader ], [ %indvars.iv.next.i101.epil, %bb.m ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i100.epil
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !34
  %i.fe = mul nsw i32 %i.fd, %.val106.i.pre
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %.val111.val.i, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i100.epil
  store ptr %i.fg, ptr %i.fh, align 8, !tbaa !202
  %indvars.iv.next.i101.epil = add nuw nsw i64 %indvars.iv.i100.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.m, !llvm.loop !204

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.m, %Zyx_ManCollectFanins.exit.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !97
  %.not83.i = icmp eq i32 %i.fj, 0
  br i1 %.not83.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %._crit_edge.i
  %.val109.i = load ptr, ptr %i.bp, align 8, !tbaa !102
  %i.fk = getelementptr i8, ptr %.val109.i, i64 8
  %.val109.val.i = load ptr, ptr %i.fk, align 8, !tbaa !17 ; 2 uses
  %.val109.val.i296 = ptrtoaddr ptr %.val109.val.i to i64 ; 2 uses
  %i.fl = sext i32 %.val106.i.pre to i64          ; 2 uses
  %i.fm = mul nsw i64 %indvars.iv181.i, %i.fl
  %i.fn = getelementptr inbounds [8 x i8], ptr %.val109.val.i, i64 %i.fm ; 4 uses
  %i.fo = load ptr, ptr %i.d, align 16, !tbaa !202 ; 5 uses
  %i.fp = ptrtoaddr ptr %i.fo to i64
  %i.fq = load ptr, ptr %i.bq, align 8, !tbaa !202 ; 5 uses
  %i.fr = ptrtoaddr ptr %i.fq to i64
  %i.fs = load ptr, ptr %i.br, align 16, !tbaa !202 ; 5 uses
  %i.ft = ptrtoaddr ptr %i.fs to i64
  %i.fu = icmp sgt i32 %.val106.i.pre, 0
  br i1 %i.fu, label %.lr.ph.preheader.i.i, label %Abc_TtMaj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.n
  %wide.trip.count.i.i = zext nneg i32 %.val106.i.pre to i64 ; 5 uses
  %min.iters.check301 = icmp ult i32 %.val106.i.pre, 8
  br i1 %min.iters.check301, label %.lr.ph.i114.i.preheader, label %vector.memcheck295

vector.memcheck295:                               ; preds = %.lr.ph.preheader.i.i
  %i.fv = mul i64 %i.cl, %i.fl                    ; 2 uses
  %i.fw = add i64 %i.fv, %.val109.val.i296        ; 2 uses
  %i.fx = sub i64 %i.fp, %i.fw
  %diff.check = icmp ugt i64 %i.fx, -32
  %i.fy = sub i64 %i.fr, %i.fw
  %diff.check297 = icmp ugt i64 %i.fy, -32
  %conflict.rdx = or i1 %diff.check, %diff.check297
  %i.fz = add i64 %i.fv, %.val109.val.i296
  %i.ga = sub i64 %i.ft, %i.fz
  %diff.check298 = icmp ugt i64 %i.ga, -32
  %conflict.rdx299 = or i1 %conflict.rdx, %diff.check298
  br i1 %conflict.rdx299, label %.lr.ph.i114.i.preheader, label %vector.ph302

vector.ph302:                                     ; preds = %vector.memcheck295
  %n.vec303 = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph302
  %index305 = phi i64 [ 0, %vector.ph302 ], [ %index.next312, %vector.body304 ] ; 5 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %index305 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load306 = load <2 x i64>, ptr %i.gb, align 8, !tbaa !21
  %wide.load307 = load <2 x i64>, ptr %i.gc, align 8, !tbaa !21
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index305 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load308 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !21 ; 2 uses
  %wide.load309 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !21 ; 2 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %index305 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load310 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !21 ; 2 uses
  %wide.load311 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !21 ; 2 uses
  %i.gh = or <2 x i64> %wide.load310, %wide.load308
end_hunk_0
