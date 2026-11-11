Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj?download=true
inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Maj_ManExactSynthesis:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.al = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #41
  %i.am = icmp slt i32 %i.al, 0
  br i1 %i.am, label %Abc_Clock.exit28, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = load i64, ptr %6, align 8, !tbaa !70
  %i.ao = mul nsw i64 %i.an, 1000000
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !71
  %i.aq = sdiv i64 %i.ap, 1000
  %i.ar = add nsw i64 %i.aq, %i.ao
  br label %Abc_Clock.exit28

Abc_Clock.exit28:                                 ; preds = %bb.f, %bb.g
  %.0.i27 = phi i64 [ %i.ar, %bb.g ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.as = add i64 %.0.i27, %.0.i25.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.12)
  %i.at = sitofp i64 %i.as to double
  %i.au = fdiv double %i.at, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.138, double noundef %i.au)
  br label %bb.h

bb.h:                                             ; preds = %Abc_Clock.exit28, %bb.e
  %i.av = icmp eq i32 %i.ab, -1
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.5) ; 0 uses
  br label %.loopexit41

bb.j:                                             ; preds = %bb.h
  %i.aw = load i32, ptr %i.g, align 8, !tbaa !49  ; 6 uses
  %i.ax = add nsw i32 %i.aw, 2
  %i.ay = load i32, ptr %i.q, align 8, !tbaa !42  ; 6 uses
  %i.az = icmp slt i32 %i.ax, %i.ay
  br i1 %i.az, label %.preheader63.lr.ph.i, label %.preheader.i

.preheader63.lr.ph.i:                             ; preds = %bb.j
  %i.ba = icmp sgt i32 %i.ay, 0
  br i1 %i.ba, label %.preheader63.preheader.i, label %.preheader63.lr.ph.split.us.i

.preheader63.preheader.i:                         ; preds = %.preheader63.lr.ph.i
  %i.bb = sext i32 %i.aw to i64                   ; 2 uses
  %i.bc = add nsw i64 %i.bb, 2
  %i.bd = zext nneg i32 %i.ay to i64              ; 4 uses
  br label %.preheader63.i

.preheader63.lr.ph.split.us.i:                    ; preds = %.preheader63.lr.ph.i
  %.val55.us.us.i = load i32, ptr %i.s, align 4, !tbaa !41 ; 5 uses
  %.val56.us.us.i = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.be = getelementptr i8, ptr %.val56.us.us.i, i64 8
  %.val56.val.us.us.i = load ptr, ptr %i.be, align 8, !tbaa !46 ; 2 uses
  %i.bf = sub nsw i32 0, %.val55.us.us.i
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val56.val.us.us.i, i64 %i.bg ; 6 uses
  %i.bi = icmp sgt i32 %.val55.us.us.i, 0
  %wide.trip.count.i.us.i = zext i32 %.val55.us.us.i to i64 ; 8 uses
  br i1 %i.bi, label %.preheader63.us.us.preheader.i, label %.preheader.i

.preheader63.us.us.preheader.i:                   ; preds = %.preheader63.lr.ph.split.us.i
  %i.bj = sext i32 %i.aw to i64
  %i.bk = add nsw i64 %i.bj, 2                    ; 2 uses
  %i.bl = sext i32 %i.ay to i64
  %i.bm = shl nuw nsw i64 %wide.trip.count.i.us.i, 3
  %i.bn = shl nsw i64 %i.bk, 3
  %i.bo = mul i64 %i.bn, %wide.trip.count.i.us.i
  %i.bp = zext nneg i32 %.val55.us.us.i to i64
  %i.bq = shl nuw nsw i64 %i.bp, 3
  %i.br = add i64 %i.bo, %i.bq
  %min.iters.check88 = icmp ult i32 %.val55.us.us.i, 4
  %invariant.op = add i64 %i.br, -1
  %n.vec92 = and i64 %wide.trip.count.i.us.i, 2147483644 ; 3 uses
  %cmp.n99 = icmp eq i64 %n.vec92, %wide.trip.count.i.us.i
  %xtraiter = and i64 %wide.trip.count.i.us.i, 3  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader63.us.us.i

.preheader63.us.us.i:                             ; preds = %Abc_TtMaj.exit.loopexit.us.us.i, %.preheader63.us.us.preheader.i
  %indvar85 = phi i64 [ %indvar.next86, %Abc_TtMaj.exit.loopexit.us.us.i ], [ 0, %.preheader63.us.us.preheader.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %Abc_TtMaj.exit.loopexit.us.us.i ], [ %i.bk, %.preheader63.us.us.preheader.i ] ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv.i, %wide.trip.count.i.us.i
  %i.bt = getelementptr inbounds [8 x i8], ptr %.val56.val.us.us.i, i64 %i.bs ; 6 uses
  br i1 %min.iters.check88, label %.lr.ph.i57.us.us.i.preheader, label %vector.memcheck89

vector.memcheck89:                                ; preds = %.preheader63.us.us.i
  %i.bu = mul i64 %indvar85, %i.bm
  %.reass = add i64 %i.bu, %invariant.op
  %diff.check90 = icmp ult i64 %.reass, 31
  br i1 %diff.check90, label %.lr.ph.i57.us.us.i.preheader, label %vector.body93

vector.body93:                                    ; preds = %vector.memcheck89, %vector.body93
  %index94 = phi i64 [ %index.next97, %vector.body93 ], [ 0, %vector.memcheck89 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index94 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load95 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !51
  %wide.load96 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !51
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %index94 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <2 x i64> %wide.load95, ptr %i.bx, align 8, !tbaa !51
  store <2 x i64> %wide.load96, ptr %i.by, align 8, !tbaa !51
  %index.next97 = add nuw i64 %index94, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.bz, label %middle.block98, label %vector.body93, !llvm.loop !220

middle.block98:                                   ; preds = %vector.body93
  br i1 %cmp.n99, label %Abc_TtMaj.exit.loopexit.us.us.i, label %.lr.ph.i57.us.us.i.preheader

.lr.ph.i57.us.us.i.preheader:                     ; preds = %vector.memcheck89, %.preheader63.us.us.i, %middle.block98
  %indvars.iv.i58.us.us.i.ph = phi i64 [ 0, %vector.memcheck89 ], [ 0, %.preheader63.us.us.i ], [ %n.vec92, %middle.block98 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i57.us.us.i.prol.loopexit, label %.lr.ph.i57.us.us.i.prol

.lr.ph.i57.us.us.i.prol:                          ; preds = %.lr.ph.i57.us.us.i.preheader, %.lr.ph.i57.us.us.i.prol
  %indvars.iv.i58.us.us.i.prol = phi i64 [ %indvars.iv.next.i59.us.us.i.prol, %.lr.ph.i57.us.us.i.prol ], [ %indvars.iv.i58.us.us.i.ph, %.lr.ph.i57.us.us.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i57.us.us.i.prol ], [ 0, %.lr.ph.i57.us.us.i.preheader ]
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i58.us.us.i.prol
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !51
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i58.us.us.i.prol
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !51
  %indvars.iv.next.i59.us.us.i.prol = add nuw nsw i64 %indvars.iv.i58.us.us.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i57.us.us.i.prol.loopexit, label %.lr.ph.i57.us.us.i.prol, !llvm.loop !221

.lr.ph.i57.us.us.i.prol.loopexit:                 ; preds = %.lr.ph.i57.us.us.i.prol, %.lr.ph.i57.us.us.i.preheader
  %indvars.iv.i58.us.us.i.unr = phi i64 [ %indvars.iv.i58.us.us.i.ph, %.lr.ph.i57.us.us.i.preheader ], [ %indvars.iv.next.i59.us.us.i.prol, %.lr.ph.i57.us.us.i.prol ]
  %i.cd = sub nsw i64 %indvars.iv.i58.us.us.i.ph, %wide.trip.count.i.us.i
  %i.ce = icmp ugt i64 %i.cd, -4
  br i1 %i.ce, label %Abc_TtMaj.exit.loopexit.us.us.i, label %.lr.ph.i57.us.us.i

.lr.ph.i57.us.us.i:                               ; preds = %.lr.ph.i57.us.us.i.prol.loopexit, %.lr.ph.i57.us.us.i
  %indvars.iv.i58.us.us.i = phi i64 [ %indvars.iv.next.i59.us.us.i.3, %.lr.ph.i57.us.us.i ], [ %indvars.iv.i58.us.us.i.unr, %.lr.ph.i57.us.us.i.prol.loopexit ] ; 6 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.i58.us.us.i
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !51
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.i58.us.us.i
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !51
  %indvars.iv.next.i59.us.us.i = add nuw nsw i64 %indvars.iv.i58.us.us.i, 1 ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i59.us.us.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !51
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i59.us.us.i
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !51
  %indvars.iv.next.i59.us.us.i.1 = add nuw nsw i64 %indvars.iv.i58.us.us.i, 2 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i59.us.us.i.1
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !51
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i59.us.us.i.1
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !51
  %indvars.iv.next.i59.us.us.i.2 = add nuw nsw i64 %indvars.iv.i58.us.us.i, 3 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv.next.i59.us.us.i.2
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !51
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv.next.i59.us.us.i.2
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !51
  %indvars.iv.next.i59.us.us.i.3 = add nuw nsw i64 %indvars.iv.i58.us.us.i, 4 ; 2 uses
  %exitcond.not.i.us.us.i.3 = icmp eq i64 %indvars.iv.next.i59.us.us.i.3, %wide.trip.count.i.us.i
  br i1 %exitcond.not.i.us.us.i.3, label %Abc_TtMaj.exit.loopexit.us.us.i, label %.lr.ph.i57.us.us.i, !llvm.loop !222

Abc_TtMaj.exit.loopexit.us.us.i:                  ; preds = %.lr.ph.i57.us.us.i.prol.loopexit, %.lr.ph.i57.us.us.i, %middle.block98
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.i, %i.bl
  %indvar.next86 = add i64 %indvar85, 1
  br i1 %exitcond.not, label %.preheader.i, label %.preheader63.us.us.i, !llvm.loop !223

.preheader63.i:                                   ; preds = %Abc_TtMaj.exit.i, %.preheader63.preheader.i
  %indvar = phi i64 [ %indvar.next, %Abc_TtMaj.exit.i ], [ 0, %.preheader63.preheader.i ] ; 2 uses
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %Abc_TtMaj.exit.i ], [ %i.bc, %.preheader63.preheader.i ] ; 3 uses
  %i.cr = getelementptr inbounds [768 x i8], ptr %i.r, i64 %indvars.iv84.i ; 3 uses
  br label %.lr.ph.i.i

.preheader.i:                                     ; preds = %Abc_TtMaj.exit.loopexit.us.us.i, %Abc_TtMaj.exit.i, %.preheader63.lr.ph.split.us.i, %bb.j
  %.not.i = icmp eq i32 %i.aw, 31
  br i1 %.not.i, label %.thread32.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cs = shl nuw nsw i32 1, %i.aw
  %i.ct = sdiv i32 %i.aw, 2                       ; 2 uses
  %i.cu = add nsw i32 %i.ct, 1
  %i.cv = add nsw i32 %i.ay, -1
  br label %bb.s

.lr.ph.i.i:                                       ; preds = %.preheader63.i, %bb.l
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.l ], [ 0, %.preheader63.i ] ; 3 uses
  %.022.i.i = phi i32 [ %.1.i.i, %bb.l ], [ -1, %.preheader63.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !54 ; 2 uses
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.cy = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.aa, i32 noundef %i.cx) #41
  %.not18.not.i.i = icmp eq i32 %i.cy, 0
  %i.cz = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %spec.select19.i.i = select i1 %.not18.not.i.i, i32 %.022.i.i, i32 %i.cz
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %.022.i.i, %.lr.ph.i.i ], [ %spec.select19.i.i, %bb.k ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next.i.i, %i.bd
  br i1 %exitcond46.not, label %Maj_ManFindFanin.exit.i, label %.lr.ph.i.i, !llvm.loop !1

Maj_ManFindFanin.exit.i:                          ; preds = %bb.l
  %.val55.i = load i32, ptr %i.s, align 4, !tbaa !41 ; 7 uses
  %.val56.i = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.da = getelementptr i8, ptr %.val56.i, i64 8  ; 3 uses
  %.val56.val.i = load ptr, ptr %i.da, align 8, !tbaa !46 ; 2 uses
  %.val56.val.i71 = ptrtoaddr ptr %.val56.val.i to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.cr, i64 256
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %Maj_ManFindFanin.exit.i
  %indvars.iv.i.1.i = phi i64 [ 0, %Maj_ManFindFanin.exit.i ], [ %indvars.iv.next.i.1.i, %bb.o ] ; 3 uses
  %.022.i.1.i = phi i32 [ -1, %Maj_ManFindFanin.exit.i ], [ %.1.i.1.i, %bb.o ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.i.1.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !54 ; 2 uses
  %.not.i.1.i = icmp eq i32 %i.dd, 0
  br i1 %.not.i.1.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.aa, i32 noundef %i.dd) #41
  %.not18.not.i.1.i = icmp eq i32 %i.de, 0
  %i.df = trunc nuw nsw i64 %indvars.iv.i.1.i to i32
  %spec.select19.i.1.i = select i1 %.not18.not.i.1.i, i32 %.022.i.1.i, i32 %i.df
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1.i.1.i = phi i32 [ %.022.i.1.i, %bb.m ], [ %spec.select19.i.1.i, %bb.n ] ; 2 uses
  %indvars.iv.next.i.1.i = add nuw nsw i64 %indvars.iv.i.1.i, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next.i.1.i, %i.bd
  br i1 %exitcond47.not, label %Maj_ManFindFanin.exit.1.i, label %bb.m, !llvm.loop !1

Maj_ManFindFanin.exit.1.i:                        ; preds = %bb.o
  %.val56.val.1.pre.i = load ptr, ptr %i.da, align 8, !tbaa !46 ; 2 uses
  %.val56.val.1.pre.i72 = ptrtoaddr ptr %.val56.val.1.pre.i to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 512
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %Maj_ManFindFanin.exit.1.i
  %indvars.iv.i.2.i = phi i64 [ 0, %Maj_ManFindFanin.exit.1.i ], [ %indvars.iv.next.i.2.i, %bb.r ] ; 3 uses
  %.022.i.2.i = phi i32 [ -1, %Maj_ManFindFanin.exit.1.i ], [ %.1.i.2.i, %bb.r ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.2.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !54 ; 2 uses
  %.not.i.2.i = icmp eq i32 %i.di, 0
  br i1 %.not.i.2.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dj = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.aa, i32 noundef %i.di) #41
  %.not18.not.i.2.i = icmp eq i32 %i.dj, 0
  %i.dk = trunc nuw nsw i64 %indvars.iv.i.2.i to i32
  %spec.select19.i.2.i = select i1 %.not18.not.i.2.i, i32 %.022.i.2.i, i32 %i.dk
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.1.i.2.i = phi i32 [ %.022.i.2.i, %bb.p ], [ %spec.select19.i.2.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i.2.i = add nuw nsw i64 %indvars.iv.i.2.i, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next.i.2.i, %i.bd
  br i1 %exitcond48.not, label %Maj_ManFindFanin.exit.loopexit.2.i, label %bb.p, !llvm.loop !1

Maj_ManFindFanin.exit.loopexit.2.i:               ; preds = %bb.r
  %i.dl = mul i32 %.val55.i, %.1.i.i
  %i.dm = sext i32 %i.dl to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [8 x i8], ptr %.val56.val.i, i64 %i.dm ; 4 uses
  %i.do = mul i32 %.1.i.1.i, %.val55.i
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds [8 x i8], ptr %.val56.val.1.pre.i, i64 %i.dp ; 4 uses
  %.val56.val.2.pre.i = load ptr, ptr %i.da, align 8, !tbaa !46 ; 3 uses
  %.val56.val.2.pre.i70 = ptrtoaddr ptr %.val56.val.2.pre.i to i64
  %i.dr = mul i32 %.1.i.2.i, %.val55.i
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %.val56.val.2.pre.i, i64 %i.ds ; 4 uses
  %9 = sext i32 %.val55.i to i64                  ; 2 uses
  %i.du = mul nsw i64 %indvars.iv84.i, %9
  %i.dv = getelementptr inbounds [8 x i8], ptr %.val56.val.2.pre.i, i64 %i.du ; 4 uses
  %i.dw = icmp sgt i32 %.val55.i, 0
  br i1 %i.dw, label %.lr.ph.preheader.i.i, label %Abc_TtMaj.exit.i

.lr.ph.preheader.i.i:                             ; preds = %Maj_ManFindFanin.exit.loopexit.2.i
  %wide.trip.count.i.i = zext nneg i32 %.val55.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.val55.i, 10
  br i1 %min.iters.check, label %.lr.ph.i57.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i
  %i.dx = add i64 %indvar, %i.bb
  %i.dy = shl i64 %i.dx, 3
  %i.dz = add i64 %i.dy, 16
  %i.ea = mul i64 %i.dz, %9                       ; 2 uses
  %i.eb = shl nsw i64 %i.dm, 3
  %i.ec = add i64 %i.ea, %.val56.val.2.pre.i70    ; 2 uses
  %i.ed = add i64 %i.eb, %.val56.val.i71
  %i.ee = sub i64 %i.ed, %i.ec
  %diff.check = icmp ugt i64 %i.ee, -32
  %i.ef = shl nsw i64 %i.dp, 3
  %i.eg = add i64 %i.ef, %.val56.val.1.pre.i72
  %i.eh = sub i64 %i.eg, %i.ec
  %diff.check73 = icmp ugt i64 %i.eh, -32
  %conflict.rdx = or i1 %diff.check, %diff.check73
  %i.ei = shl nsw i64 %i.ds, 3
  %i.ej = sub i64 %i.ei, %i.ea
  %diff.check74 = icmp ugt i64 %i.ej, -32
  %conflict.rdx75 = or i1 %conflict.rdx, %diff.check74
  br i1 %conflict.rdx75, label %.lr.ph.i57.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %index ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load = load <2 x i64>, ptr %i.ek, align 8, !tbaa !51
  %wide.load76 = load <2 x i64>, ptr %i.el, align 8, !tbaa !51
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load77 = load <2 x i64>, ptr %i.em, align 8, !tbaa !51 ; 2 uses
  %wide.load78 = load <2 x i64>, ptr %i.en, align 8, !tbaa !51 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load79 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !51 ; 2 uses
  %wide.load80 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !51 ; 2 uses
  %i.eq = or <2 x i64> %wide.load79, %wide.load77
  %i.er = or <2 x i64> %wide.load80, %wide.load78
  %i.es = and <2 x i64> %i.eq, %wide.load
  %i.et = and <2 x i64> %i.er, %wide.load76
  %i.eu = and <2 x i64> %wide.load79, %wide.load77
  %i.ev = and <2 x i64> %wide.load80, %wide.load78
  %i.ew = or <2 x i64> %i.es, %i.eu
  %i.ex = or <2 x i64> %i.et, %i.ev
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %index ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  store <2 x i64> %i.ew, ptr %i.ey, align 8, !tbaa !51
  store <2 x i64> %i.ex, ptr %i.ez, align 8, !tbaa !51
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %Abc_TtMaj.exit.i, label %.lr.ph.i57.i.preheader

.lr.ph.i57.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i58.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter104 = and i64 %wide.trip.count.i.i, 1
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph.i57.i.prol.loopexit, label %.lr.ph.i57.i.prol

.lr.ph.i57.i.prol:                                ; preds = %.lr.ph.i57.i.preheader
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i58.i.ph
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !51
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i58.i.ph
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !51 ; 2 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i58.i.ph
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !51 ; 2 uses
  %i.fh = or i64 %i.fg, %i.fe
  %i.fi = and i64 %i.fh, %i.fc
  %i.fj = and i64 %i.fg, %i.fe
  %i.fk = or i64 %i.fi, %i.fj
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i58.i.ph
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !51
  %indvars.iv.next.i59.i.prol = or disjoint i64 %indvars.iv.i58.i.ph, 1
  br label %.lr.ph.i57.i.prol.loopexit

.lr.ph.i57.i.prol.loopexit:                       ; preds = %.lr.ph.i57.i.prol, %.lr.ph.i57.i.preheader
  %indvars.iv.i58.i.unr = phi i64 [ %indvars.iv.i58.i.ph, %.lr.ph.i57.i.preheader ], [ %indvars.iv.next.i59.i.prol, %.lr.ph.i57.i.prol ]
  %i.fm = add nsw i64 %wide.trip.count.i.i, -1
  %i.fn = icmp eq i64 %indvars.iv.i58.i.ph, %i.fm
  br i1 %i.fn, label %Abc_TtMaj.exit.i, label %.lr.ph.i57.i

.lr.ph.i57.i:                                     ; preds = %.lr.ph.i57.i.prol.loopexit, %.lr.ph.i57.i
  %indvars.iv.i58.i = phi i64 [ %indvars.iv.next.i59.i.1, %.lr.ph.i57.i ], [ %indvars.iv.i58.i.unr, %.lr.ph.i57.i.prol.loopexit ] ; 6 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.i58.i
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !51
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.i58.i
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !51 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.i58.i
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !51 ; 2 uses
  %i.fu = or i64 %i.ft, %i.fr
  %i.fv = and i64 %i.fu, %i.fp
  %i.fw = and i64 %i.ft, %i.fr
  %i.fx = or i64 %i.fv, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.i58.i
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !51
  %indvars.iv.next.i59.i = add nuw nsw i64 %indvars.iv.i58.i, 1 ; 4 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.dn, i64 %indvars.iv.next.i59.i
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !51
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv.next.i59.i
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !51 ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %indvars.iv.next.i59.i
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !51 ; 2 uses
  %i.gf = or i64 %i.ge, %i.gc
  %i.gg = and i64 %i.gf, %i.ga
  %i.gh = and i64 %i.ge, %i.gc
  %i.gi = or i64 %i.gg, %i.gh
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv.next.i59.i
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !51
  %indvars.iv.next.i59.i.1 = add nuw nsw i64 %indvars.iv.i58.i, 2 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i59.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %Abc_TtMaj.exit.i, label %.lr.ph.i57.i, !llvm.loop !225

Abc_TtMaj.exit.i:                                 ; preds = %.lr.ph.i57.i.prol.loopexit, %.lr.ph.i57.i, %middle.block, %Maj_ManFindFanin.exit.loopexit.2.i
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond49.not = icmp eq i64 %indvars.iv.next85.i, %i.bd
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond49.not, label %.preheader.i, label %.preheader63.i, !llvm.loop !226

bb.s:                                             ; preds = %select.unfold.i, %.lr.ph.i
  %.14567.i = phi i32 [ 0, %.lr.ph.i ], [ %i.hh, %select.unfold.i ] ; 5 uses
  %i.gk = and i32 %.14567.i, 65535
  %i.gl = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.gk) ; 2 uses
  %i.gm = icmp slt i32 %i.gl, %i.ct
  %i.gn = icmp sgt i32 %i.gl, %i.cu
  %or.cond.i = select i1 %i.gm, i1 true, i1 %i.gn
  br i1 %or.cond.i, label %select.unfold.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.val51.i = load i32, ptr %i.s, align 4, !tbaa !41 ; 2 uses
  %.val52.i = load ptr, ptr %i.t, align 8, !tbaa !48
  %i.go = getelementptr i8, ptr %.val52.i, i64 8
  %.val52.val.i = load ptr, ptr %i.go, align 8, !tbaa !46 ; 2 uses
  %i.gp = mul nsw i32 %.val51.i, %i.ay
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %.val52.val.i, i64 %i.gq
  %i.gs = lshr i32 %.14567.i, 6
  %i.gt = zext nneg i32 %i.gs to i64              ; 2 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.gt
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !51
  %i.gw = and i32 %.14567.i, 63
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = mul nsw i32 %.val51.i, %i.cv
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds [8 x i8], ptr %.val52.val.i, i64 %i.gz
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.gt
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !51
  %i.hd = xor i64 %i.hc, %i.gv
  %i.he = shl nuw i64 1, %i.gx
  %i.hf = and i64 %i.hd, %i.he
  %i.hg = icmp eq i64 %i.hf, 0
  br i1 %i.hg, label %select.unfold.i, label %.loopexit

select.unfold.i:                                  ; preds = %bb.t, %bb.s
  %i.hh = add nuw nsw i32 %.14567.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.hh, %i.cs
  br i1 %exitcond.not.i, label %.thread32.loopexit, label %bb.s, !llvm.loop !227

.loopexit:                                        ; preds = %bb.t
  store i32 %.14567.i, ptr %i.a, align 4, !tbaa !54
  %i.hi = add nuw nsw i32 %.02243, 1
  br label %bb.c

.loopexit41:                                      ; preds = %Abc_Clock.exit26, %bb.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !54
  %i.hj = icmp eq i32 %.pr, -1
  br i1 %i.hj, label %.thread32, label %bb.u

.thread32.loopexit:                               ; preds = %.preheader.i, %select.unfold.i
  store i32 -1, ptr %i.a, align 4, !tbaa !54
  br label %.thread32

.thread32:                                        ; preds = %.thread32.loopexit, %Abc_Clock.exit, %.loopexit41
  call void @Maj_ManPrintSolution(ptr noundef nonnull %i.g)
  br label %bb.u

bb.u:                                             ; preds = %.thread32, %.loopexit41
  call void @Maj_ManFree(ptr noundef nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.hk = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #41
  %i.hl = icmp slt i32 %i.hk, 0
  br i1 %i.hl, label %Abc_Clock.exit30, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hm = load i64, ptr %5, align 8, !tbaa !70
  %i.hn = mul nsw i64 %i.hm, 1000000
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !71
  %i.hq = sdiv i64 %i.hp, 1000
  %i.hr = add nsw i64 %i.hq, %i.hn
  br label %Abc_Clock.exit30

Abc_Clock.exit30:                                 ; preds = %bb.u, %bb.v
  %.0.i29 = phi i64 [ %i.hr, %bb.v ], [ -1, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  %i.hs = add i64 %.0.i29, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.14)
  %i.ht = sitofp i64 %i.hs to double
  %i.hu = fdiv double %i.ht, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.138, double noundef %i.hu)
  %i.hv = load i32, ptr %i.a, align 4, !tbaa !54
  %i.hw = icmp eq i32 %i.hv, -1
  %i.hx = zext i1 %i.hw to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i32 %i.hx
}

declare i32 @bmcg_sat_solver_solve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @Extra_PrintBinary(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @bmcg_sat_solver_clausenum(ptr noundef) local_unnamed_addr #7

declare i32 @bmcg_sat_solver_conflictnum(ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef ptr @Exa_ManTruthTables(ptr nofree noundef captures(none) initializes((40, 48)) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !79
  %i.e = add nsw i32 %i.d, 1
  %i.f = mul nsw i32 %i.e, %i.b                   ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  %i.h = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.h, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !45
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #38
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !46
  store i32 %i.f, ptr %i.m, align 4, !tbaa !47
  %i.o = sext i32 %i.f to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.p, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.g, ptr %i.q, align 8, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !81   ; 4 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %Vec_WrdStart.exit
  %i.u = icmp samesign ult i32 %i.s, 7
  %i.v = add nsw i32 %i.s, -6
  %i.w = shl nuw i32 1, %i.v
  %i.x = select i1 %i.u, i32 1, i32 %i.w
  %.fr13 = freeze i32 %i.x                        ; 4 uses
  %i.y = icmp sgt i32 %.fr13, 0
  %wide.trip.count.i = zext i32 %.fr13 to i64     ; 6 uses
  br i1 %i.y, label %.lr.ph.split.us.preheader, label %._crit_edge

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.z = sext i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %i.s to i64
  %min.iters.check20 = icmp ult i32 %.fr13, 4
  %n.vec22 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n29 = icmp eq i64 %n.vec22, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %.fr13, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %Abc_TtIthVar.exit.us
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %Abc_TtIthVar.exit.us ] ; 5 uses
  %i.aa = mul nsw i64 %indvars.iv, %i.z
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.aa ; 4 uses
  %i.ac = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.ac, label %.preheader.i.us, label %.preheader18.i.us

.preheader18.i.us:                                ; preds = %.lr.ph.split.us
  %i.ad = trunc i64 %indvars.iv to i32
  %i.ae = add i32 %i.ad, -6
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  br i1 %min.iters.check20, label %scalar.ph19.preheader, label %vector.ph21

vector.ph21:                                      ; preds = %.preheader18.i.us
  %broadcast.splatinsert23 = insertelement <2 x i32> poison, i32 %i.af, i64 0
  %broadcast.splat24 = shufflevector <2 x i32> %broadcast.splatinsert23, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body25

vector.body25:                                    ; preds = %vector.body25, %vector.ph21
  %index26 = phi i64 [ 0, %vector.ph21 ], [ %index.next27, %vector.body25 ] ; 2 uses
  %vec.ind = phi <2 x i32> [ <i32 0, i32 1>, %vector.ph21 ], [ %vec.ind.next, %vector.body25 ] ; 3 uses
  %step.add = add <2 x i32> %vec.ind, splat (i32 2)
  %i.ag = and <2 x i32> %broadcast.splat24, %vec.ind
  %i.ah = and <2 x i32> %broadcast.splat24, %step.add
  %i.ai = icmp ne <2 x i32> %i.ag, zeroinitializer
  %i.aj = icmp ne <2 x i32> %i.ah, zeroinitializer
  %i.ak = sext <2 x i1> %i.ai to <2 x i64>
  %i.al = sext <2 x i1> %i.aj to <2 x i64>
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %index26 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x i64> %i.ak, ptr %i.am, align 8, !tbaa !51
  store <2 x i64> %i.al, ptr %i.an, align 8, !tbaa !51
  %index.next27 = add nuw i64 %index26, 4         ; 2 uses
  %vec.ind.next = add <2 x i32> %vec.ind, splat (i32 4)
  %i.ao = icmp eq i64 %index.next27, %n.vec22
  br i1 %i.ao, label %middle.block28, label %vector.body25, !llvm.loop !228
end_hunk_0
begin_hunk_1_@Exa3_ManExactSynthesis:bb.a
  %i.bir = sub nsw i32 %.pre-phi.i231, %i.biq
  %i.bis = mul nsw i32 %i.bir, %i.bip
  %i.bit = add nsw i32 %i.bis, 1
  %i.biu = icmp sgt i32 %i.bip, 0
  br i1 %i.biu, label %.lr.ph97.i, label %.loopexit.i232

.lr.ph97.i:                                       ; preds = %bb.hi, %bb.hk
  %.295.i = phi i32 [ %i.bjk, %bb.hk ], [ 0, %bb.hi ] ; 3 uses
  %i.biv = load ptr, ptr %i.rq, align 8, !tbaa !107
  %i.biw = add nsw i32 %i.bit, %.295.i
  %i.bix = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.biv, i32 noundef %i.biw) #41
  %i.biy = icmp eq i32 %i.bix, 0
  br i1 %i.biy, label %bb.hk, label %.preheader.i233

.preheader.i233:                                  ; preds = %.lr.ph97.i
  %i.biz = load i32, ptr %i.df, align 8, !tbaa !112
  %i.bja = icmp sgt i32 %i.biz, 0
  br i1 %i.bja, label %.lr.ph93.i, label %._crit_edge94.i

.lr.ph93.i:                                       ; preds = %.preheader.i233
  %i.bjb = add nuw nsw i32 %.295.i, 1
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hj, %.lr.ph93.i
  %.092.i = phi i32 [ 0, %.lr.ph93.i ], [ %i.bjf, %bb.hj ] ; 2 uses
  %i.bjc = lshr i32 %i.bjb, %.092.i
  %i.bjd = and i32 %i.bjc, 1
  %i.bje = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bgs, ptr noundef nonnull @.str.106, i32 noundef %i.bjd) #41 ; 0 uses
  %i.bjf = add nuw nsw i32 %.092.i, 1             ; 2 uses
  %i.bjg = load i32, ptr %i.df, align 8, !tbaa !112
  %i.bjh = icmp slt i32 %i.bjf, %i.bjg
  br i1 %i.bjh, label %bb.hj, label %._crit_edge94.i, !llvm.loop !400

._crit_edge94.i:                                  ; preds = %bb.hj, %.preheader.i233
  %i.bji = load i32, ptr %i.dj, align 8, !tbaa !411
  %.not80.i = icmp eq i32 %i.bji, %i.bil
  %spec.select.i = select i1 %.not80.i, i32 %.0, i32 1
  %i.bjj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bgs, ptr noundef nonnull @.str.165, i32 noundef %spec.select.i) #41 ; 0 uses
  br label %bb.hk

bb.hk:                                            ; preds = %._crit_edge94.i, %.lr.ph97.i
  %i.bjk = add nuw nsw i32 %.295.i, 1             ; 2 uses
  %i.bjl = load i32, ptr %i.dh, align 4, !tbaa !410
  %i.bjm = icmp slt i32 %i.bjk, %i.bjl
  br i1 %i.bjm, label %.lr.ph97.i, label %.loopexit.loopexit.i234, !llvm.loop !401

._crit_edge104.i:                                 ; preds = %.loopexit.i232, %._crit_edge.i230
  %fwrite76.i = call i64 @fwrite(ptr nonnull @.str.34, i64 6, i64 1, ptr nonnull %i.bgs) ; 0 uses
  %i.bjn = call i32 @fclose(ptr noundef nonnull %i.bgs) ; 0 uses
  %i.bjo = load ptr, ptr %i.cx, align 8, !tbaa !109
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bjo, i64 120
  %i.bjq = load i32, ptr %i.bjp, align 8, !tbaa !89
  %.not77.i = icmp eq i32 %i.bjq, 0
  br i1 %.not77.i, label %bb.hl, label %bb.hm

bb.hl:                                            ; preds = %._crit_edge104.i
  %i.bjr = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.166, ptr noundef nonnull %i.g) ; 0 uses
  br label %bb.hm

bb.hm:                                            ; preds = %bb.hl, %._crit_edge104.i
  call void @free(ptr noundef %i.bgl) #41
  br label %Exa3_ManDumpBlif.exit

Exa3_ManDumpBlif.exit:                            ; preds = %bb.gw, %bb.hm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  %i.bjs = load i32, ptr %i.mx, align 8, !tbaa !113
  %.not113 = icmp eq i32 %i.bjs, 0
  br i1 %.not113, label %bb.ik, label %bb.hn

bb.hn:                                            ; preds = %Exa3_ManDumpBlif.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  %i.bjt = load i32, ptr %i.df, align 8, !tbaa !112
  %i.bju = icmp sgt i32 %i.bjt, 6
  br i1 %i.bju, label %bb.ho, label %bb.hq

bb.ho:                                            ; preds = %bb.hn
  %i.bjv = load ptr, ptr %i.cx, align 8, !tbaa !109
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bjv, i64 120
  %i.bjx = load i32, ptr %i.bjw, align 8, !tbaa !89
  %.not99.i = icmp eq i32 %i.bjx, 0
  br i1 %.not99.i, label %bb.hp, label %Exa3_ManDumpCascadeVerilog.exit

bb.hp:                                            ; preds = %bb.ho
  %puts.i278 = call i32 @puts(ptr nonnull dereferenceable(1) @str.8) ; 0 uses
  br label %Exa3_ManDumpCascadeVerilog.exit

bb.hq:                                            ; preds = %bb.hn
  call fastcc void @Exa3_ManDumpVerilogName(ptr noundef nonnull readonly %i.cx, ptr noundef %i.d)
  %i.bjy = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.e, i64 noundef 132, ptr noundef nonnull @.str.176, ptr noundef nonnull %i.d) #41 ; 0 uses
  %i.bjz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 160, ptr noundef nonnull @.str.177, ptr noundef nonnull %i.d) #41 ; 0 uses
  %i.bka = call noalias ptr @fopen(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.16) ; 20 uses
  %i.bkb = icmp eq ptr %i.bka, null
  br i1 %i.bkb, label %Exa3_ManDumpCascadeVerilog.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.bkc = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.bkd = call ptr (...) @Extra_TimeStamp() #41
  %i.bke = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.178, i32 noundef %i.bkc, ptr noundef nonnull %i.d, ptr noundef %i.bkd) #41 ; 0 uses
  %i.bkf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.179, ptr noundef nonnull %i.f) #41 ; 0 uses
  %i.bkg = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.bkh = add nsw i32 %i.bkg, -1
  %i.bki = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.180, i32 noundef %i.bkh) #41 ; 0 uses
  %fwrite.i249 = call i64 @fwrite(ptr nonnull @.str.181, i64 22, i64 1, ptr nonnull %i.bka) ; 0 uses
  %fwrite91.i = call i64 @fwrite(ptr nonnull @.str.122, i64 3, i64 1, ptr nonnull %i.bka) ; 0 uses
  %i.bkj = load i32, ptr %i.dc, align 4, !tbaa !110
  %i.bkk = icmp sgt i32 %i.bkj, 1
  br i1 %i.bkk, label %.lr.ph.i276, label %._crit_edge.thread.i250

.lr.ph.i276:                                      ; preds = %bb.hr, %.lr.ph.i276
  %.082100.i = phi i32 [ %i.bkm, %.lr.ph.i276 ], [ 0, %bb.hr ] ; 2 uses
  %i.bkl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.182, i32 noundef %.082100.i) #41 ; 0 uses
  %i.bkm = add nuw nsw i32 %.082100.i, 1          ; 2 uses
  %i.bkn = load i32, ptr %i.dc, align 4, !tbaa !110 ; 2 uses
  %i.bko = add nsw i32 %i.bkn, -1
  %i.bkp = icmp slt i32 %i.bkm, %i.bko
  br i1 %i.bkp, label %.lr.ph.i276, label %._crit_edge.i277, !llvm.loop !402

._crit_edge.i277:                                 ; preds = %.lr.ph.i276
  %i.bkq = icmp sgt i32 %i.bkn, 1
  br i1 %i.bkq, label %bb.hs, label %._crit_edge.thread.i250

bb.hs:                                            ; preds = %._crit_edge.i277
  %fputc.i = call i32 @fputc(i32 10, ptr nonnull %i.bka) ; 0 uses
  br label %._crit_edge.thread.i250

._crit_edge.thread.i250:                          ; preds = %bb.hs, %._crit_edge.i277, %bb.hr
  %i.bkr = load i32, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
  %i.bks = load i32, ptr %i.dj, align 8, !tbaa !411 ; 2 uses
  %i.bkt = icmp slt i32 %i.bkr, %i.bks
  br i1 %i.bkt, label %.lr.ph111.i, label %._crit_edge112.i

.lr.ph111.i:                                      ; preds = %._crit_edge.thread.i250
  %i.bku = sext i32 %i.bkr to i64
  br label %bb.ht

bb.ht:                                            ; preds = %bb.ii, %.lr.ph111.i
  %i.bkv = phi i32 [ %i.bks, %.lr.ph111.i ], [ %i.boa, %bb.ii ]
  %indvars.iv118.i = phi i64 [ %i.bku, %.lr.ph111.i ], [ %indvars.iv.next119.i, %bb.ii ] ; 3 uses
  %i.bkw = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.bkx = trunc nsw i64 %indvars.iv118.i to i32  ; 3 uses
  %i.bky = sub nsw i32 %i.bkx, %i.bkw             ; 5 uses
  %i.bkz = sdiv i32 %i.bky, 8                     ; 2 uses
  %i.bla = srem i32 %i.bky, 8
  %i.blb = load i32, ptr %i.dh, align 4, !tbaa !410 ; 2 uses
  %i.blc = load i32, ptr %i.df, align 8, !tbaa !112 ; 3 uses
  %i.bld = icmp eq i32 %i.blc, 6
  %i.ble = shl nuw i32 1, %i.blc
  %i.blf = zext nneg i32 %i.ble to i64
  %notmask.i252 = shl nsw i64 -1, %i.blf
  %i.blg = xor i64 %notmask.i252, -1
  %i.blh = select i1 %i.bld, i64 -1, i64 %i.blg
  %i.bli = icmp sgt i32 %i.blb, 0
  br i1 %i.bli, label %.lr.ph104.preheader.i, label %._crit_edge105.i253

.lr.ph104.preheader.i:                            ; preds = %bb.ht
  %i.blj = mul nsw i32 %i.blb, %i.bky
  %i.blk = add nsw i32 %i.blj, 1
  br label %.lr.ph104.i270

.lr.ph104.i270:                                   ; preds = %.lr.ph104.i270, %.lr.ph104.preheader.i
  %indvars.iv.i271 = phi i64 [ 0, %.lr.ph104.preheader.i ], [ %indvars.iv.next.i272, %.lr.ph104.i270 ] ; 3 uses
  %.0102.i = phi i64 [ 0, %.lr.ph104.preheader.i ], [ %.1.i273, %.lr.ph104.i270 ]
  %i.bll = load ptr, ptr %i.rq, align 8, !tbaa !107
  %i.blm = trunc i64 %indvars.iv.i271 to i32
  %i.bln = add i32 %i.blk, %i.blm
  %i.blo = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.bll, i32 noundef %i.bln) #41
  %.not98.i = icmp eq i32 %i.blo, 0
  %indvars.iv.next.i272 = add nuw nsw i64 %indvars.iv.i271, 1 ; 2 uses
  %i.blp = shl nuw i64 2, %indvars.iv.i271
  %i.blq = select i1 %.not98.i, i64 0, i64 %i.blp
  %.1.i273 = or i64 %i.blq, %.0102.i              ; 2 uses
  %i.blr = load i32, ptr %i.dh, align 4, !tbaa !410
  %i.bls = sext i32 %i.blr to i64
  %i.blt = icmp slt i64 %indvars.iv.next.i272, %i.bls
  br i1 %i.blt, label %.lr.ph104.i270, label %._crit_edge105.loopexit.i274, !llvm.loop !403

._crit_edge105.loopexit.i274:                     ; preds = %.lr.ph104.i270
  %.pre.i275 = load i32, ptr %i.dj, align 8, !tbaa !411
  %.pre121.i = load i32, ptr %i.df, align 8, !tbaa !112
  br label %._crit_edge105.i253

._crit_edge105.i253:                              ; preds = %._crit_edge105.loopexit.i274, %bb.ht
  %i.blu = phi i32 [ %i.blc, %bb.ht ], [ %.pre121.i, %._crit_edge105.loopexit.i274 ] ; 7 uses
  %i.blv = phi i32 [ %i.bkv, %bb.ht ], [ %.pre.i275, %._crit_edge105.loopexit.i274 ]
  %.0.lcssa.i254 = phi i64 [ 0, %bb.ht ], [ %.1.i273, %._crit_edge105.loopexit.i274 ] ; 2 uses
  %i.blw = add nsw i32 %i.blv, -1
  %i.blx = icmp eq i32 %i.blw, %i.bkx
  %or.cond.i255 = and i1 %i.blx, %.not97
  %i.bly = xor i64 %.0.lcssa.i254, -1
  %i.blz = and i64 %i.blh, %i.bly
  %.2.i256 = select i1 %or.cond.i255, i64 %i.blz, i64 %.0.lcssa.i254 ; 8 uses
  %i.bma = icmp slt i32 %i.blu, 6
  br i1 %i.bma, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %._crit_edge105.i253
  %i.bmb = icmp eq i32 %i.blu, 0
  %i.bmc = trunc i64 %.2.i256 to i1
  %i.bmd = select i1 %i.bmc, i64 3, i64 0
  %i.bme = icmp ult i32 %i.blu, 2
  %i.bmf = and i64 %.2.i256, 3
  %i.bmg = select i1 %i.bmb, i64 %i.bmd, i64 %i.bmf
  %i.bmh = mul nuw nsw i64 %i.bmg, 5
  %.126.i.i = select i1 %i.bme, i64 %i.bmh, i64 %.2.i256
  %i.bmi = icmp ult i32 %i.blu, 3
  %i.bmj = and i64 %.126.i.i, 15
  %i.bmk = mul nuw nsw i64 %i.bmj, 17
  %.227.i.i = select i1 %i.bmi, i64 %i.bmk, i64 %.2.i256
  %i.bml = icmp ult i32 %i.blu, 4
  %i.bmm = and i64 %.227.i.i, 255
  %i.bmn = mul nuw nsw i64 %i.bmm, 257
  %.328.i.i = select i1 %i.bml, i64 %i.bmn, i64 %.2.i256
  %i.bmo = icmp ult i32 %i.blu, 5
  %i.bmp = and i64 %.328.i.i, 65535
  %i.bmq = mul nuw nsw i64 %i.bmp, 65537
  %.429.i.i = select i1 %i.bmo, i64 %i.bmq, i64 %.2.i256
  %i.bmr = icmp ult i32 %i.blu, 6
  %i.bms = and i64 %.429.i.i, 4294967295
  %i.bmt = mul nuw i64 %i.bms, 4294967297
  %.5.i.i = select i1 %i.bmr, i64 %i.bmt, i64 %.2.i256
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %._crit_edge105.i253
  %.3.i257 = phi i64 [ %.5.i.i, %bb.hu ], [ %.2.i256, %._crit_edge105.i253 ]
  %i.bmu = sext i32 %i.bla to i64
  %i.bmv = getelementptr inbounds [8 x i8], ptr @Exa3_ManDumpCascadeVerilog.pBels, i64 %i.bmu
  %i.bmw = load ptr, ptr %i.bmv, align 8, !tbaa !433
  %i.bmx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.183, i32 noundef %i.bkz, i32 noundef %i.bkz, ptr noundef %i.bmw) #41 ; 0 uses
  %i.bmy = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.184, i64 noundef %.3.i257, i32 noundef %i.bky) #41 ; 0 uses
  %i.bmz = getelementptr inbounds [1536 x i8], ptr %i.aay, i64 %indvars.iv118.i
  br label %bb.hw

bb.hw:                                            ; preds = %bb.ie, %bb.hv
  %indvars.iv115.i = phi i64 [ 0, %bb.hv ], [ %indvars.iv.next116.i, %bb.ie ] ; 4 uses
  %i.bna = trunc nuw nsw i64 %indvars.iv115.i to i32
  %i.bnb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.185, i32 noundef %i.bna) #41 ; 0 uses
  %i.bnc = load i32, ptr %i.df, align 8, !tbaa !112
  %i.bnd = sext i32 %i.bnc to i64
  %i.bne = icmp slt i64 %indvars.iv115.i, %i.bnd
  br i1 %i.bne, label %bb.hx, label %bb.id

bb.hx:                                            ; preds = %bb.hw
  %i.bnf = load i32, ptr %i.dj, align 8, !tbaa !411 ; 2 uses
  %i.bng = icmp sgt i32 %i.bnf, 0
  br i1 %i.bng, label %.lr.ph.i.i261, label %Exa3_ManFindFanin.exit.i259

.lr.ph.i.i261:                                    ; preds = %bb.hx
  %i.bnh = getelementptr inbounds nuw [256 x i8], ptr %i.bmz, i64 %indvars.iv115.i
  br label %bb.hy

bb.hy:                                            ; preds = %bb.ia, %.lr.ph.i.i261
  %i.bni = phi i32 [ %i.bnf, %.lr.ph.i.i261 ], [ %i.bno, %bb.ia ]
  %indvars.iv.i.i262 = phi i64 [ 0, %.lr.ph.i.i261 ], [ %indvars.iv.next.i.i269, %bb.ia ] ; 3 uses
  %.022.i.i263 = phi i32 [ -1, %.lr.ph.i.i261 ], [ %.1.i.i268, %bb.ia ] ; 2 uses
  %i.bnj = getelementptr inbounds nuw [4 x i8], ptr %i.bnh, i64 %indvars.iv.i.i262
  %i.bnk = load i32, ptr %i.bnj, align 4, !tbaa !54 ; 2 uses
  %.not.i.i264 = icmp eq i32 %i.bnk, 0
  br i1 %.not.i.i264, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %i.bnl = load ptr, ptr %i.rq, align 8, !tbaa !107
  %i.bnm = call i32 @bmcg_sat_solver_read_cex_varvalue(ptr noundef %i.bnl, i32 noundef %i.bnk) #41
  %.not18.not.i.i265 = icmp eq i32 %i.bnm, 0
  %i.bnn = trunc nuw nsw i64 %indvars.iv.i.i262 to i32
  %spec.select19.i.i266 = select i1 %.not18.not.i.i265, i32 %.022.i.i263, i32 %i.bnn
  %.pre.i.i267 = load i32, ptr %i.dj, align 8, !tbaa !411
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy
  %i.bno = phi i32 [ %i.bni, %bb.hy ], [ %.pre.i.i267, %bb.hz ] ; 2 uses
  %.1.i.i268 = phi i32 [ %.022.i.i263, %bb.hy ], [ %spec.select19.i.i266, %bb.hz ] ; 2 uses
  %indvars.iv.next.i.i269 = add nuw nsw i64 %indvars.iv.i.i262, 1 ; 2 uses
  %i.bnp = sext i32 %i.bno to i64
  %i.bnq = icmp slt i64 %indvars.iv.next.i.i269, %i.bnp
  br i1 %i.bnq, label %bb.hy, label %Exa3_ManFindFanin.exit.i259, !llvm.loop !353

Exa3_ManFindFanin.exit.i259:                      ; preds = %bb.ia, %bb.hx
  %.0.lcssa.i.i260 = phi i32 [ -1, %bb.hx ], [ %.1.i.i268, %bb.ia ] ; 3 uses
  %i.bnr = load i32, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
  %i.bns = icmp slt i32 %.0.lcssa.i.i260, %i.bnr
  br i1 %i.bns, label %bb.ib, label %bb.ic

bb.ib:                                            ; preds = %Exa3_ManFindFanin.exit.i259
  %i.bnt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.186, i32 noundef %.0.lcssa.i.i260) #41 ; 0 uses
  br label %bb.ie

bb.ic:                                            ; preds = %Exa3_ManFindFanin.exit.i259
  %i.bnu = sub nsw i32 %.0.lcssa.i.i260, %i.bnr
  %i.bnv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.187, i32 noundef %i.bnu) #41 ; 0 uses
  br label %bb.ie

bb.id:                                            ; preds = %bb.hw
  %fwrite96.i = call i64 @fwrite(ptr nonnull @.str.188, i64 4, i64 1, ptr nonnull %i.bka) ; 0 uses
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic, %bb.ib
  %fwrite97.i = call i64 @fwrite(ptr nonnull @.str.189, i64 3, i64 1, ptr nonnull %i.bka) ; 0 uses
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1 ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %indvars.iv.next116.i, 6
  br i1 %exitcond.not.i258, label %bb.if, label %bb.hw, !llvm.loop !404

bb.if:                                            ; preds = %bb.ie
  %i.bnw = load i32, ptr %i.dj, align 8, !tbaa !411
  %i.bnx = add nsw i32 %i.bnw, -1
  %i.bny = icmp eq i32 %i.bnx, %i.bkx
  br i1 %i.bny, label %bb.ig, label %bb.ih

bb.ig:                                            ; preds = %bb.if
  %fwrite94.i = call i64 @fwrite(ptr nonnull @.str.190, i64 10, i64 1, ptr nonnull %i.bka) ; 0 uses
  br label %bb.ii

bb.ih:                                            ; preds = %bb.if
  %i.bnz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bka, ptr noundef nonnull @.str.191, i32 noundef %i.bky) #41 ; 0 uses
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %bb.ig
  %fwrite95.i = call i64 @fwrite(ptr nonnull @.str.192, i64 6, i64 1, ptr nonnull %i.bka) ; 0 uses
  %indvars.iv.next119.i = add nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %i.boa = load i32, ptr %i.dj, align 8, !tbaa !411 ; 2 uses
  %i.bob = sext i32 %i.boa to i64
  %i.boc = icmp slt i64 %indvars.iv.next119.i, %i.bob
  br i1 %i.boc, label %bb.ht, label %._crit_edge112.i, !llvm.loop !405

._crit_edge112.i:                                 ; preds = %bb.ii, %._crit_edge.thread.i250
  %fwrite93.i = call i64 @fwrite(ptr nonnull @.str.124, i64 11, i64 1, ptr nonnull %i.bka) ; 0 uses
  %i.bod = call i32 @fclose(ptr noundef nonnull %i.bka) ; 0 uses
  %i.boe = load ptr, ptr %i.cx, align 8, !tbaa !109
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 120
  %i.bog = load i32, ptr %i.bof, align 8, !tbaa !89
  %.not.i251 = icmp eq i32 %i.bog, 0
  br i1 %.not.i251, label %bb.ij, label %Exa3_ManDumpCascadeVerilog.exit

bb.ij:                                            ; preds = %._crit_edge112.i
  %i.boh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.193, ptr noundef nonnull %i.e) ; 0 uses
  br label %Exa3_ManDumpCascadeVerilog.exit

Exa3_ManDumpCascadeVerilog.exit:                  ; preds = %bb.ho, %bb.hp, %bb.hq, %._crit_edge112.i, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.jc

bb.ik:                                            ; preds = %Exa3_ManDumpBlif.exit
  %i.boi = load i32, ptr %i.df, align 8, !tbaa !112 ; 2 uses
  %i.boj = shl nuw i32 1, %i.boi                  ; 3 uses
  %i.bok = add nuw nsw i32 %i.boj, 3
  %i.bol = ashr i32 %i.bok, 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.bom = icmp sgt i32 %i.boi, 6
  br i1 %i.bom, label %bb.il, label %bb.in

bb.il:                                            ; preds = %bb.ik
  %i.bon = load ptr, ptr %i.cx, align 8, !tbaa !109
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bon, i64 120
  %i.bop = load i32, ptr %i.boo, align 8, !tbaa !89
  %.not91.i = icmp eq i32 %i.bop, 0
  br i1 %.not91.i, label %bb.im, label %Exa3_ManDumpVerilog.exit

bb.im:                                            ; preds = %bb.il
  %puts.i304 = call i32 @puts(ptr nonnull dereferenceable(1) @str.9) ; 0 uses
  br label %Exa3_ManDumpVerilog.exit

bb.in:                                            ; preds = %bb.ik
  call fastcc void @Exa3_ManDumpVerilogName(ptr noundef nonnull readonly %i.cx, ptr noundef %i.a)
  %i.boq = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 132, ptr noundef nonnull @.str.176, ptr noundef nonnull %i.a) #41 ; 0 uses
  %i.bor = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 160, ptr noundef nonnull @.str.198, ptr noundef nonnull %i.a) #41 ; 0 uses
  %i.bos = call noalias ptr @fopen(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.16) ; 18 uses
  %i.bot = icmp eq ptr %i.bos, null
  br i1 %i.bot, label %Exa3_ManDumpVerilog.exit, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.bou = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.bov = call ptr (...) @Extra_TimeStamp() #41
  %i.bow = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bos, ptr noundef nonnull @.str.199, i32 noundef %i.bou, ptr noundef nonnull %i.a, ptr noundef %i.bov) #41 ; 0 uses
  %i.box = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bos, ptr noundef nonnull @.str.179, ptr noundef nonnull %i.c) #41 ; 0 uses
  %i.boy = load i32, ptr %i.cz, align 8, !tbaa !106
  %i.boz = add nsw i32 %i.boy, -1
  %i.bpa = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bos, ptr noundef nonnull @.str.180, i32 noundef %i.boz) #41 ; 0 uses
  %fwrite.i279 = call i64 @fwrite(ptr nonnull @.str.181, i64 22, i64 1, ptr nonnull %i.bos) ; 0 uses
  %fwrite84.i = call i64 @fwrite(ptr nonnull @.str.122, i64 3, i64 1, ptr nonnull %i.bos) ; 0 uses
  %i.bpb = load i32, ptr %i.dc, align 4, !tbaa !110
  %i.bpc = icmp sgt i32 %i.bpb, 1
  br i1 %i.bpc, label %.lr.ph.i301, label %._crit_edge.thread.i280

.lr.ph.i301:                                      ; preds = %bb.io, %.lr.ph.i301
  %.07792.i = phi i32 [ %i.bpe, %.lr.ph.i301 ], [ 0, %bb.io ] ; 2 uses
  %i.bpd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.bos, ptr noundef nonnull @.str.200, i32 noundef %.07792.i) #41 ; 0 uses
  %i.bpe = add nuw nsw i32 %.07792.i, 1           ; 2 uses
  %i.bpf = load i32, ptr %i.dc, align 4, !tbaa !110 ; 2 uses
  %i.bpg = add nsw i32 %i.bpf, -1
  %i.bph = icmp slt i32 %i.bpe, %i.bpg
  br i1 %i.bph, label %.lr.ph.i301, label %._crit_edge.i302, !llvm.loop !406

._crit_edge.i302:                                 ; preds = %.lr.ph.i301
  %i.bpi = icmp sgt i32 %i.bpf, 1
  br i1 %i.bpi, label %bb.ip, label %._crit_edge.thread.i280

bb.ip:                                            ; preds = %._crit_edge.i302
  %fputc.i303 = call i32 @fputc(i32 10, ptr nonnull %i.bos) ; 0 uses
  br label %._crit_edge.thread.i280

._crit_edge.thread.i280:                          ; preds = %bb.ip, %._crit_edge.i302, %bb.io
  %i.bpj = load i32, ptr %i.cz, align 8, !tbaa !106 ; 2 uses
  %i.bpk = load i32, ptr %i.dj, align 8, !tbaa !411 ; 2 uses
  %i.bpl = icmp slt i32 %i.bpj, %i.bpk
  br i1 %i.bpl, label %.lr.ph105.i, label %._crit_edge106.i

.lr.ph105.i:                                      ; preds = %._crit_edge.thread.i280
  %i.bpm = zext nneg i32 %i.boj to i64
  %notmask.i282 = shl nsw i64 -1, %i.bpm
  %i.bpn = xor i64 %notmask.i282, -1
end_hunk_1
begin_hunk_2_@Exa6_ManGenMint:bb.a
  %i.au = trunc i64 %i.w to i32                   ; 2 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %Abc_TtSuppOnlyOne.exit, label %bb.b

bb.b:                                             ; preds = %Abc_Tt6FirstBit.exit
  %i.aw = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.au)
  %i.ax = icmp samesign ugt i32 %i.aw, 1
  br label %Abc_TtSuppOnlyOne.exit

Abc_TtSuppOnlyOne.exit:                           ; preds = %bb.a, %Abc_Tt6FirstBit.exit, %bb.b
  %.025.i222 = phi i32 [ %.5.i, %bb.b ], [ %.5.i, %Abc_Tt6FirstBit.exit ], [ -1, %bb.a ] ; 2 uses
  %.0.i = phi i1 [ %i.ax, %bb.b ], [ true, %Abc_Tt6FirstBit.exit ], [ true, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.w)
  %i.az = trunc nuw nsw i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !179 ; 15 uses
  %i.bc = shl nuw i32 1, %i.bb
  %i.bd = icmp eq i32 %i.bc, %i.az
  br i1 %i.bd, label %.loopexit230, label %.preheader241

.preheader241:                                    ; preds = %Abc_TtSuppOnlyOne.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !174 ; 11 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %.preheader240

.lr.ph:                                           ; preds = %.preheader241
  %i.bh = getelementptr i8, ptr %i.m, i64 8
  %.val160 = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bi = getelementptr inbounds [8 x i8], ptr %.val160, i64 %i.u
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !51 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.bf to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.bf, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.bj, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %i.bk = lshr <4 x i64> %broadcast.splat, %vec.ind
  %i.bl = lshr <4 x i64> %broadcast.splat, %step.add
  %i.bm = trunc <4 x i64> %i.bk to <4 x i32>
  %i.bn = trunc <4 x i64> %i.bl to <4 x i32>
  %i.bo = and <4 x i32> %i.bm, splat (i32 1)
  %i.bp = and <4 x i32> %i.bn, splat (i32 1)
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <4 x i32> %i.bo, ptr %i.bq, align 16, !tbaa !54
  store <4 x i32> %i.bp, ptr %i.br, align 16, !tbaa !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !647

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader240, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader240:                                    ; preds = %scalar.ph, %middle.block, %.preheader241
  %i.bt = icmp sgt i32 %i.k, 0
  br i1 %i.bt, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %.preheader240
  %i.bu = sext i32 %i.bf to i64
  %wide.trip.count282 = zext nneg i32 %i.k to i64 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.d, i64 %i.bu ; 2 uses
  %min.iters.check406 = icmp ult i32 %i.k, 8
  br i1 %min.iters.check406, label %.lr.ph246.preheader455, label %vector.ph407

vector.ph407:                                     ; preds = %.lr.ph246.preheader
  %n.vec408 = and i64 %wide.trip.count282, 2147483640 ; 3 uses
  %broadcast.splatinsert409 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat410 = shufflevector <4 x i32> %broadcast.splatinsert409, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 12), %broadcast.splat410
  br label %vector.body411

vector.body411:                                   ; preds = %vector.body411, %vector.ph407
  %index412 = phi i64 [ 0, %vector.ph407 ], [ %index.next415, %vector.body411 ] ; 2 uses
  %vec.ind413 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph407 ], [ %vec.ind.next416, %vector.body411 ] ; 3 uses
  %i.bv = mul <4 x i32> %vec.ind413, splat (i32 3)
  %i.bw = mul <4 x i32> %vec.ind413, splat (i32 3)
  %i.bx = add <4 x i32> %i.bv, %broadcast.splat410
  %.reass = add <4 x i32> %i.bw, %invariant.op
  %i.by = shl <4 x i32> %i.bx, splat (i32 1)
  %i.bz = shl <4 x i32> %.reass, splat (i32 1)
  %i.ca = add <4 x i32> %i.by, splat (i32 4)
  %i.cb = add <4 x i32> %i.bz, splat (i32 4)
  %i.cc = getelementptr [4 x i8], ptr %invariant.gep, i64 %index412 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  store <4 x i32> %i.ca, ptr %i.cc, align 4, !tbaa !54
  store <4 x i32> %i.cb, ptr %i.cd, align 4, !tbaa !54
  %index.next415 = add nuw i64 %index412, 8       ; 2 uses
  %vec.ind.next416 = add <4 x i32> %vec.ind413, splat (i32 8)
  %i.ce = icmp eq i64 %index.next415, %n.vec408
  br i1 %i.ce, label %middle.block417, label %vector.body411, !llvm.loop !648

middle.block417:                                  ; preds = %vector.body411
  %cmp.n418 = icmp eq i64 %n.vec408, %wide.trip.count282
  br i1 %cmp.n418, label %._crit_edge, label %.lr.ph246.preheader455

.lr.ph246.preheader455:                           ; preds = %.lr.ph246.preheader, %middle.block417
  %indvars.iv279.ph = phi i64 [ 0, %.lr.ph246.preheader ], [ %n.vec408, %middle.block417 ]
  br label %.lr.ph246

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cf = lshr i64 %i.bj, %indvars.iv
  %i.cg = trunc i64 %i.cf to i32
  %i.ch = and i32 %i.cg, 1
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader240, label %scalar.ph, !llvm.loop !649

.lr.ph246:                                        ; preds = %.lr.ph246.preheader455, %.lr.ph246
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %.lr.ph246 ], [ %indvars.iv279.ph, %.lr.ph246.preheader455 ] ; 3 uses
  %i.cj = trunc i64 %indvars.iv279 to i32
  %i.ck = mul i32 %i.cj, 3
  %i.cl = add i32 %i.ck, %i.q
  %i.cm = shl i32 %i.cl, 1
  %i.cn = add i32 %i.cm, 4
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv279
  store i32 %i.cn, ptr %gep, align 4, !tbaa !54
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count282
  br i1 %exitcond283.not, label %._crit_edge, label %.lr.ph246, !llvm.loop !650

._crit_edge:                                      ; preds = %.lr.ph246, %middle.block417, %.preheader240
  br i1 %.0.i, label %bb.c, label %.preheader238

.preheader238:                                    ; preds = %._crit_edge
  %i.co = icmp sgt i32 %i.bb, 0
  br i1 %i.co, label %.lr.ph248, label %.loopexit239

.lr.ph248:                                        ; preds = %.preheader238
  %i.cp = add nsw i32 %i.bf, %i.k
  %i.cq = sext i32 %i.cp to i64
  %wide.trip.count287 = zext nneg i32 %i.bb to i64 ; 3 uses
  %invariant.gep394 = getelementptr [4 x i8], ptr %i.d, i64 %i.cq ; 2 uses
  %min.iters.check421 = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check421, label %scalar.ph420.preheader, label %vector.ph422

vector.ph422:                                     ; preds = %.lr.ph248
  %n.vec423 = and i64 %wide.trip.count287, 2147483640 ; 3 uses
  %broadcast.splatinsert424 = insertelement <4 x i32> poison, i32 %.025.i222, i64 0
  %broadcast.splat425 = shufflevector <4 x i32> %broadcast.splatinsert424, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body426

vector.body426:                                   ; preds = %vector.body426, %vector.ph422
  %index427 = phi i64 [ 0, %vector.ph422 ], [ %index.next430, %vector.body426 ] ; 2 uses
  %vec.ind428 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph422 ], [ %vec.ind.next431, %vector.body426 ] ; 3 uses
  %step.add429 = add <4 x i32> %vec.ind428, splat (i32 4)
  %i.cr = lshr <4 x i32> %broadcast.splat425, %vec.ind428
  %i.cs = lshr <4 x i32> %broadcast.splat425, %step.add429
  %i.ct = and <4 x i32> %i.cr, splat (i32 1)
  %i.cu = and <4 x i32> %i.cs, splat (i32 1)
  %i.cv = getelementptr [4 x i8], ptr %invariant.gep394, i64 %index427 ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 16
  store <4 x i32> %i.ct, ptr %i.cv, align 4, !tbaa !54
  store <4 x i32> %i.cu, ptr %i.cw, align 4, !tbaa !54
  %index.next430 = add nuw i64 %index427, 8       ; 2 uses
  %vec.ind.next431 = add <4 x i32> %vec.ind428, splat (i32 8)
  %i.cx = icmp eq i64 %index.next430, %n.vec423
  br i1 %i.cx, label %middle.block432, label %vector.body426, !llvm.loop !651

middle.block432:                                  ; preds = %vector.body426
  %cmp.n433 = icmp eq i64 %n.vec423, %wide.trip.count287
  br i1 %cmp.n433, label %.loopexit239, label %scalar.ph420.preheader

scalar.ph420.preheader:                           ; preds = %.lr.ph248, %middle.block432
  %indvars.iv284.ph = phi i64 [ 0, %.lr.ph248 ], [ %n.vec423, %middle.block432 ]
  br label %scalar.ph420

scalar.ph420:                                     ; preds = %scalar.ph420.preheader, %scalar.ph420
  %indvars.iv284 = phi i64 [ %indvars.iv.next285, %scalar.ph420 ], [ %indvars.iv284.ph, %scalar.ph420.preheader ] ; 3 uses
  %i.cy = trunc nuw nsw i64 %indvars.iv284 to i32
  %i.cz = lshr i32 %.025.i222, %i.cy
  %i.da = and i32 %i.cz, 1
  %gep395 = getelementptr [4 x i8], ptr %invariant.gep394, i64 %indvars.iv284
  store i32 %i.da, ptr %gep395, align 4, !tbaa !54
  %indvars.iv.next285 = add nuw nsw i64 %indvars.iv284, 1 ; 2 uses
  %exitcond288.not = icmp eq i64 %indvars.iv.next285, %wide.trip.count287
  br i1 %exitcond288.not, label %.loopexit239, label %scalar.ph420, !llvm.loop !652

bb.c:                                             ; preds = %._crit_edge
  %i.db = icmp eq i32 %i.bb, 0
  %i.dc = trunc i64 %i.w to i1
  %i.dd = select i1 %i.dc, i64 3, i64 0
  %i.de = icmp ult i32 %i.bb, 2
  %i.df = and i64 %i.w, 3
  %i.dg = select i1 %i.db, i64 %i.dd, i64 %i.df
  %i.dh = mul nuw nsw i64 %i.dg, 5
  %.126.i = select i1 %i.de, i64 %i.dh, i64 %i.w
  %i.di = icmp ult i32 %i.bb, 3
  %i.dj = and i64 %.126.i, 15
  %i.dk = mul nuw nsw i64 %i.dj, 17
  %.227.i = select i1 %i.di, i64 %i.dk, i64 %i.w
  %i.dl = icmp ult i32 %i.bb, 4
  %i.dm = and i64 %.227.i, 255
  %i.dn = mul nuw nsw i64 %i.dm, 257
  %.328.i = select i1 %i.dl, i64 %i.dn, i64 %i.w
  %i.do = icmp ult i32 %i.bb, 5
  %i.dp = and i64 %.328.i, 65535
  %i.dq = mul nuw nsw i64 %i.dp, 65537
  %.429.i = select i1 %i.do, i64 %i.dq, i64 %i.w
  %i.dr = icmp ult i32 %i.bb, 6
  %i.ds = and i64 %.429.i, 4294967295
  %i.dt = mul nuw i64 %i.ds, 4294967297
  %.5.i164 = select i1 %i.dr, i64 %i.dt, i64 %i.w ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  store i32 0, ptr %i.e, align 4, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #41
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32812 ; 3 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !181 ; 2 uses
  %i.dw = add nsw i32 %i.dv, %i.i                 ; 3 uses
  %i.dx = add nsw i32 %i.dv, %i.bb
  store i32 %i.dx, ptr %i.du, align 4, !tbaa !181
  %i.dy = icmp sgt i32 %i.bb, 0
  br i1 %i.dy, label %.lr.ph251, label %._crit_edge252

.lr.ph251:                                        ; preds = %bb.c
  %i.dz = add nsw i32 %i.bf, %i.k
  %i.ea = sext i32 %i.dz to i64
  %wide.trip.count292 = zext nneg i32 %i.bb to i64 ; 3 uses
  %invariant.gep396 = getelementptr [4 x i8], ptr %i.d, i64 %i.ea ; 2 uses
  %min.iters.check436 = icmp ult i32 %i.bb, 8
  br i1 %min.iters.check436, label %scalar.ph435.preheader, label %vector.ph437

vector.ph437:                                     ; preds = %.lr.ph251
  %n.vec438 = and i64 %wide.trip.count292, 2147483640 ; 3 uses
  %broadcast.splatinsert439 = insertelement <4 x i32> poison, i32 %i.dw, i64 0
  %broadcast.splat440 = shufflevector <4 x i32> %broadcast.splatinsert439, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op461 = add <4 x i32> splat (i32 4), %broadcast.splat440
  br label %vector.body441

vector.body441:                                   ; preds = %vector.body441, %vector.ph437
  %index442 = phi i64 [ 0, %vector.ph437 ], [ %index.next445, %vector.body441 ] ; 2 uses
  %vec.ind443 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph437 ], [ %vec.ind.next446, %vector.body441 ] ; 3 uses
  %i.eb = getelementptr [4 x i8], ptr %invariant.gep396, i64 %index442 ; 2 uses
  %i.ec = add <4 x i32> %broadcast.splat440, %vec.ind443
  %.reass462 = add <4 x i32> %vec.ind443, %invariant.op461
  %i.ed = shl nsw <4 x i32> %i.ec, splat (i32 1)
  %i.ee = shl nsw <4 x i32> %.reass462, splat (i32 1)
  %i.ef = getelementptr i8, ptr %i.eb, i64 16
  store <4 x i32> %i.ed, ptr %i.eb, align 4, !tbaa !54
  store <4 x i32> %i.ee, ptr %i.ef, align 4, !tbaa !54
  %index.next445 = add nuw i64 %index442, 8       ; 2 uses
  %vec.ind.next446 = add <4 x i32> %vec.ind443, splat (i32 8)
  %i.eg = icmp eq i64 %index.next445, %n.vec438
  br i1 %i.eg, label %middle.block447, label %vector.body441, !llvm.loop !653

middle.block447:                                  ; preds = %vector.body441
  %cmp.n448 = icmp eq i64 %n.vec438, %wide.trip.count292
  br i1 %cmp.n448, label %._crit_edge252, label %scalar.ph435.preheader

scalar.ph435.preheader:                           ; preds = %.lr.ph251, %middle.block447
  %indvars.iv289.ph = phi i64 [ 0, %.lr.ph251 ], [ %n.vec438, %middle.block447 ]
  br label %scalar.ph435

scalar.ph435:                                     ; preds = %scalar.ph435.preheader, %scalar.ph435
  %indvars.iv289 = phi i64 [ %indvars.iv.next290, %scalar.ph435 ], [ %indvars.iv289.ph, %scalar.ph435.preheader ] ; 3 uses
  %gep397 = getelementptr [4 x i8], ptr %invariant.gep396, i64 %indvars.iv289
  %i.eh = trunc i64 %indvars.iv289 to i32
  %.tr = add i32 %i.dw, %i.eh
  %i.ei = shl nsw i32 %.tr, 1
  store i32 %i.ei, ptr %gep397, align 4, !tbaa !54
  %indvars.iv.next290 = add nuw nsw i64 %indvars.iv289, 1 ; 2 uses
  %exitcond293.not = icmp eq i64 %indvars.iv.next290, %wide.trip.count292
  br i1 %exitcond293.not, label %._crit_edge252, label %scalar.ph435, !llvm.loop !654

._crit_edge252:                                   ; preds = %scalar.ph435, %middle.block447, %bb.c
  %.not152 = icmp eq i64 %.5.i164, -1
  br i1 %.not152, label %.loopexit237, label %bb.d

bb.d:                                             ; preds = %._crit_edge252
  %i.ej = xor i64 %.5.i164, -1                    ; 2 uses
  %i.ek = call fastcc i64 @Abc_Tt6IsopCover(i64 noundef %i.ej, i64 noundef %i.ej, i32 noundef %i.bb, ptr noundef %i.f, ptr noundef %i.e) ; 0 uses
  %i.el = load i32, ptr %i.e, align 4, !tbaa !54  ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.preheader236.lr.ph, label %.loopexit237

.preheader236.lr.ph:                              ; preds = %bb.d
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 32824 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32816 ; 4 uses
  br label %.preheader236

.preheader236:                                    ; preds = %.preheader236.lr.ph, %Exa6_ManAddClause.exit
  %i.ep = phi i32 [ %i.el, %.preheader236.lr.ph ], [ %i.gg, %Exa6_ManAddClause.exit ] ; 3 uses
  %indvars.iv295 = phi i64 [ 0, %.preheader236.lr.ph ], [ %indvars.iv.next296, %Exa6_ManAddClause.exit ] ; 2 uses
  %i.eq = load i32, ptr %i.ba, align 8, !tbaa !179 ; 2 uses
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %.lr.ph255, label %._crit_edge.thread.i

.lr.ph255:                                        ; preds = %.preheader236
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv295
  %i.et = load i32, ptr %i.es, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph255, %bb.g
  %.0254 = phi i32 [ 0, %.lr.ph255 ], [ %.1, %bb.g ] ; 3 uses
  %.1139253 = phi i32 [ 0, %.lr.ph255 ], [ %i.fg, %bb.g ] ; 3 uses
  %i.eu = shl nuw nsw i32 %.1139253, 1
  %i.ev = ashr i32 %i.et, %i.eu
  %i.ew = and i32 %i.ev, 3                        ; 2 uses
  %i.ex = add nsw i32 %i.ew, -1
  %or.cond = icmp ult i32 %i.ex, 2
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ey = add nsw i32 %.1139253, %i.dw
  %i.ez = icmp ne i32 %i.ew, 1
  %i.fa = zext i1 %i.ez to i32
  %i.fb = shl nsw i32 %i.ey, 1
  %i.fc = or disjoint i32 %i.fb, %i.fa
  %i.fd = add nsw i32 %.0254, 1
  %i.fe = sext i32 %.0254 to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fe
  store i32 %i.fc, ptr %i.ff, align 4, !tbaa !54
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.1 = phi i32 [ %i.fd, %bb.f ], [ %.0254, %bb.e ] ; 3 uses
  %i.fg = add nuw nsw i32 %.1139253, 1            ; 2 uses
  %exitcond294.not = icmp eq i32 %i.fg, %i.eq
  br i1 %exitcond294.not, label %._crit_edge256, label %bb.e, !llvm.loop !655

._crit_edge256:                                   ; preds = %bb.g
  %i.fh = icmp sgt i32 %.1, 0
  br i1 %i.fh, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %._crit_edge256
  %wide.trip.count.i = zext nneg i32 %.1 to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %.035.i = phi i32 [ 0, %.lr.ph.i ], [ %.1.i165, %bb.k ] ; 4 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !54 ; 3 uses
  switch i32 %i.fj, label %bb.i [
    i32 1, label %Exa6_ManAddClause.exit
    i32 0, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.fk = load i32, ptr %i.h, align 8, !tbaa !180
  %i.fl = load i32, ptr %i.du, align 4, !tbaa !181
  %i.fm = add nsw i32 %i.fl, %i.fk
  %i.fn = shl nsw i32 %i.fm, 1
  %.not32.i = icmp sgt i32 %i.fj, %i.fn
  br i1 %.not32.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fo = add nsw i32 %.035.i, 1
  %i.fp = sext i32 %.035.i to i64
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fp
  store i32 %i.fj, ptr %i.fq, align 4, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.1.i165 = phi i32 [ %.035.i, %bb.h ], [ %i.fo, %bb.j ], [ %.035.i, %bb.i ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !21

._crit_edge.i:                                    ; preds = %bb.k
  %i.fr = load ptr, ptr %i.en, align 8, !tbaa !182 ; 2 uses
  %.not.i = icmp eq ptr %i.fr, null
  br i1 %.not.i, label %Exa6_ManAddClause.exit, label %bb.l

._crit_edge.thread.i:                             ; preds = %.preheader236, %._crit_edge256
  %i.fs = load ptr, ptr %i.en, align 8, !tbaa !182 ; 2 uses
  %.not49.i = icmp eq ptr %i.fs, null
  br i1 %.not49.i, label %Exa6_ManAddClause.exit, label %.thread.i

.thread.i:                                        ; preds = %._crit_edge.thread.i
  %i.ft = load i32, ptr %i.eo, align 8, !tbaa !183
  %i.fu = add nsw i32 %i.ft, 1
  store i32 %i.fu, ptr %i.eo, align 8, !tbaa !183
  br label %._crit_edge39.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.fv = load i32, ptr %i.eo, align 8, !tbaa !183
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.eo, align 8, !tbaa !183
  %i.fx = icmp sgt i32 %.1.i165, 0
  br i1 %i.fx, label %.lr.ph38.preheader.i, label %._crit_edge39.i

.lr.ph38.preheader.i:                             ; preds = %bb.l
  %wide.trip.count44.i = zext nneg i32 %.1.i165 to i64
  br label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.lr.ph38.i, %.lr.ph38.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph38.preheader.i ], [ %indvars.iv.next42.i, %.lr.ph38.i ] ; 2 uses
  %i.fy = load ptr, ptr %i.en, align 8, !tbaa !182
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv41.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !54 ; 2 uses
  %i.gb = and i32 %i.ga, 1
  %.not31.i = icmp eq i32 %i.gb, 0
  %i.gc = select i1 %.not31.i, ptr @.str.57, ptr @.str.143
  %i.gd = ashr i32 %i.ga, 1
end_hunk_2
