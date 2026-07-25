inline.NumInlined: 93
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 53
begin_hunk_0_@_ZN12duckdb_minizL28tdefl_optimize_huffman_tableEPNS_16tdefl_compressorEiiii:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !7
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !320

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count126 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter190 = and i64 %wide.trip.count126, 1
  %unroll_iter195 = and i64 %wide.trip.count126, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv123 = phi i64 [ 0, %.new ], [ %indvars.iv.next124.1, %bb.g ] ; 4 uses
  %.072101 = phi i32 [ 0, %.new ], [ %.173.1, %bb.g ] ; 3 uses
  %niter196 = phi i64 [ 0, %.new ], [ %niter196.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv123
  %i.am = load i16, ptr %i.al, align 2, !tbaa !118 ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.072101 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4, !tbaa !350
  %i.ap = trunc i64 %indvars.iv123 to i16
  %i.aq = add nsw i32 %.072101, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2, !tbaa !352
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.173 = phi i32 [ %i.aq, %bb.d ], [ %.072101, %bb.c ] ; 3 uses
  %indvars.iv.next124 = or disjoint i64 %indvars.iv123, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124
  %i.at = load i16, ptr %i.as, align 2, !tbaa !118 ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.173 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4, !tbaa !350
  %i.aw = trunc i64 %indvars.iv.next124 to i16
  %i.ax = add nsw i32 %.173, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2, !tbaa !352
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.173.1 = phi i32 [ %i.ax, %bb.f ], [ %.173, %bb.e ] ; 5 uses
  %indvars.iv.next124.1 = add nuw nsw i64 %indvars.iv123, 2 ; 3 uses
  %niter196.next.1 = add nuw nsw i64 %niter196, 2 ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !353

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod192.not = icmp eq i64 %xtraiter190, 0
  br i1 %lcmp.mod192.not, label %.epilog-lcssa, label %.epil.preheader189

.epil.preheader189:                               ; preds = %.unr-lcssa
  %lcmp.mod194 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod194)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next124.1
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !118 ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader189
  %i.bb = sext i32 %.173.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4, !tbaa !350
  %i.bd = trunc i64 %indvars.iv.next124.1 to i16
  %i.be = add nsw i32 %.173.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2, !tbaa !352
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader189, %bb.h, %.unr-lcssa
  %.173.lcssa = phi i32 [ %.173.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.173.1, %.epil.preheader189 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.173.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split55.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split55.i.preheader:          ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.173.lcssa to i64 ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter197 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter201 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod199.not = icmp eq i64 %xtraiter197, 0
  br i1 %lcmp.mod199.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod200 = trunc i32 %.173.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !350
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !3
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4, !tbaa !3
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.173.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  %lcmp.mod206 = trunc i32 %.173.lcssa to i1
  br label %.critedge.preheader.split55.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter202 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter202.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8, !tbaa !350
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !3
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !3
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !3
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4, !tbaa !350
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4, !tbaa !3
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !3
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter202.next.1 = add i64 %niter202, 2         ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !354

.critedge.preheader.split55.us.i:                 ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv70.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next71.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.eh, %._crit_edge.us.i ] ; 4 uses
  %.04052.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04151.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04151.us.i = phi ptr [ %5, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv70.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  br label %.preheader.us.i.a

.preheader.us.i.a:                                ; preds = %.preheader.us.i.a, %.critedge.preheader.split55.us.i
  %indvars.iv65.i.a = phi i64 [ 0, %.critedge.preheader.split55.us.i ], [ %niter208.next.1.a, %.preheader.us.i.a ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split55.us.i ], [ %13, %.preheader.us.i.a ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv65.i.a
  store i32 %.03748.us.i, ptr %i.dd, align 16, !tbaa !3
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv65.i.a
  %i.df = load i32, ptr %i.de, align 16, !tbaa !3
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next62.i = or disjoint i64 %indvars.iv65.i.a, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !3
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i
  %7 = load i32, ptr %i.di, align 4, !tbaa !3
  %8 = add i32 %7, %i.dg                          ; 2 uses
  %indvars.iv.next62.i.1 = or disjoint i64 %indvars.iv65.i.a, 2 ; 2 uses
  %9 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.1
  store i32 %8, ptr %9, align 8, !tbaa !3
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.1
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !3
  %i.dl = add i32 %i.dk, %8                       ; 2 uses
  %indvars.iv.next62.i.2 = or disjoint i64 %indvars.iv65.i.a, 3 ; 2 uses
  %10 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next62.i.2
  store i32 %i.dl, ptr %10, align 4, !tbaa !3
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next62.i.2
  %12 = load i32, ptr %11, align 4, !tbaa !3
  %13 = add i32 %12, %i.dl
  %niter208.next.1.a = add nuw nsw i64 %indvars.iv65.i.a, 4 ; 2 uses
  %niter208.ncmp.1.a = icmp eq i64 %niter208.next.1.a, 256
  br i1 %niter208.ncmp.1.a, label %.preheader.us.i.preheader, label %.preheader.us.i.a, !llvm.loop !355

.preheader.us.i.preheader:                        ; preds = %.preheader.us.i.a
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %bb.i

bb.i:                                             ; preds = %.preheader.us.i.preheader, %bb.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next66.i.1, %bb.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter208 = phi i64 [ %indvars.iv.next62.i.3, %bb.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv61.i ; 2 uses
  %14 = load i16, ptr %i.dm, align 8, !tbaa !350
  %15 = zext i16 %14 to i32
  %16 = lshr i32 %15, %.03854.us.i
  %17 = and i32 %16, 255
  %18 = zext nneg i32 %17 to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %18 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !3  ; 2 uses
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !3
  %19 = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %19
  %20 = load i32, ptr %i.dm, align 8
  store i32 %20, ptr %i.dq, align 4
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv61.i
  %21 = getelementptr inbounds nuw i8, ptr %i.dr, i64 4 ; 2 uses
  %22 = load i16, ptr %21, align 4, !tbaa !350
  %23 = zext i16 %22 to i32
  %24 = lshr i32 %23, %.03854.us.i
  %25 = and i32 %24, 255
  %26 = zext nneg i32 %25 to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %26 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !3  ; 2 uses
  %i.du = add i32 %i.dt, 1
  store i32 %i.du, ptr %i.ds, align 4, !tbaa !3
  %27 = zext i32 %i.dt to i64
  %28 = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %27
  %29 = load i32, ptr %21, align 4
  store i32 %29, ptr %28, align 4
  %indvars.iv.next66.i.1 = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %indvars.iv.next62.i.3 = add i64 %niter208, 2   ; 2 uses
  %exitcond64.not.i.3 = icmp eq i64 %indvars.iv.next62.i.3, %unroll_iter207
  br i1 %exitcond64.not.i.3, label %._crit_edge.us.i.unr-lcssa, label %bb.i, !llvm.loop !356

._crit_edge.us.i.unr-lcssa:                       ; preds = %bb.i
  br i1 %lcmp.mod205.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv65.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next66.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.04151.us.i, i64 %indvars.iv65.i.epil.init ; 2 uses
  %i.dw = load i16, ptr %i.dv, align 4, !tbaa !350
  %i.dx = zext i16 %i.dw to i32
  %i.dy = lshr i32 %i.dx, %.03854.us.i
  %i.dz = and i32 %i.dy, 255
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ea ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !3  ; 2 uses
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.eb, align 4, !tbaa !3
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.ee
  %i.eg = load i32, ptr %i.dv, align 4
  store i32 %i.eg, ptr %i.ef, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %indvars.iv.next71.i = add nuw nsw i64 %indvars.iv70.i, 1 ; 2 uses
  %i.eh = add nuw nsw i32 %.03854.us.i, 8
  %exitcond74.not.i = icmp eq i64 %indvars.iv.next71.i, %spec.select.i
  br i1 %exitcond74.not.i, label %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit, label %.critedge.preheader.split55.us.i, !llvm.loop !357

_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split55.i.preheader
  %indvars.iv75.i = phi i64 [ 0, %.critedge.preheader.split55.i.preheader ], [ %indvars.iv.next76.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split55.i.preheader ], [ %i.ex, %bb.j ] ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv75.i
  store i32 %.03748.i, ptr %i.ei, align 16, !tbaa !3
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv75.i
  %i.ek = load i32, ptr %i.ej, align 16, !tbaa !3
  %i.el = add i32 %i.ek, %.03748.i                ; 2 uses
  %indvars.iv.next76.i = or disjoint i64 %indvars.iv75.i, 1 ; 2 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i
  store i32 %i.el, ptr %i.em, align 4, !tbaa !3
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !3
  %i.ep = add i32 %i.eo, %i.el                    ; 2 uses
  %indvars.iv.next76.i.1 = or disjoint i64 %indvars.iv75.i, 2 ; 2 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.1
  store i32 %i.ep, ptr %i.eq, align 8, !tbaa !3
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.1
  %i.es = load i32, ptr %i.er, align 8, !tbaa !3
  %i.et = add i32 %i.es, %i.ep                    ; 2 uses
  %indvars.iv.next76.i.2 = or disjoint i64 %indvars.iv75.i, 3 ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next76.i.2
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !3
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next76.i.2
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !3
  %i.ex = add i32 %i.ew, %i.et
  %indvars.iv.next76.i.3 = add nuw nsw i64 %indvars.iv75.i, 4 ; 2 uses
  %exitcond78.not.i.3 = icmp eq i64 %indvars.iv.next76.i.3, 256
  br i1 %exitcond78.not.i.3, label %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit.thread, label %bb.j, !llvm.loop !355

_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit: ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  switch i32 %.173.lcssa, label %bb.k [
    i32 0, label %_ZN12duckdb_minizL35tdefl_huffman_enforce_max_code_sizeEPiii.exit
    i32 1, label %_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit.thread166
  ]

_ZN12duckdb_minizL34tdefl_calculate_minimum_redundancyEPNS_14tdefl_sym_freqEi.exit.thread166: ; preds = %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit
  store i16 1, ptr %.04052.us.i, align 2, !tbaa !350
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %_ZN12duckdb_minizL21tdefl_radix_sort_symsEjPNS_14tdefl_sym_freqES1_.exit
  %i.ey = getelementptr inbounds nuw i8, ptr %.04052.us.i, i64 4
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !350
  %i.fa = load i16, ptr %.04052.us.i, align 2, !tbaa !350
  %i.fb = add i16 %i.fa, %i.ez
  store i16 %i.fb, ptr %.04052.us.i, align 2, !tbaa !350
  %i.fc = add i32 %.173.lcssa, -1                 ; 2 uses
  %i.fd = icmp sgt i32 %.173.lcssa, 2
  br i1 %i.fd, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.fe = add nsw i32 %.173.lcssa, -2             ; 2 uses
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.ff
  store i16 0, ptr %i.fg, align 2, !tbaa !350
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fc to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.173.lcssa
  %i.fh = sext i32 %.08291.i to i64               ; 2 uses
  %i.fi = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fh ; 2 uses
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !350 ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.fk = sext i32 %.07992.i to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fk
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !350 ; 2 uses
  %i.fn = icmp ult i16 %i.fj, %i.fm
  br i1 %i.fn, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.fj, ptr %i.fo, align 2, !tbaa !350
  %i.fp = trunc i64 %indvars.iv.i85 to i16
  %i.fq = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.fp, ptr %i.fi, align 2, !tbaa !350
  %.pre = sext i32 %i.fq to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = add nsw i32 %.07992.i, 1
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85
  store i16 %i.fm, ptr %i.fs, align 2, !tbaa !350
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.fh, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.fq, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.fr, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.173.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2, !tbaa !350
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ft = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.ft, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2, !tbaa !350
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.fu = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !350 ; 2 uses
  %i.fw = sext i32 %.180.i to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %i.fw
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !350 ; 2 uses
  %i.fz = icmp ult i16 %i.fv, %i.fy
  br i1 %i.fz, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.ga = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.fv, %bb.p ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !350
  %i.gd = getelementptr inbounds [4 x i8], ptr %.04052.us.i, i64 %.pre-phi
  %i.ge = add i16 %i.gc, %i.ga
  store i16 %i.ge, ptr %i.gb, align 2, !tbaa !350
  %i.gf = trunc i64 %indvars.iv.i85 to i16
  %i.gg = add nsw i32 %.183.i, 1
  store i16 %i.gf, ptr %i.gd, align 2, !tbaa !350
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.gh = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.fy, %bb.p ]
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !350
  %i.gk = add nsw i32 %.180.i, 1
  %i.gl = add i16 %i.gj, %i.gh
  store i16 %i.gl, ptr %i.gi, align 2, !tbaa !350
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.gg, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.gk, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !358

._crit_edge.i:                                    ; preds = %bb.s
  %i.gm = add nsw i32 %.173.lcssa, -2             ; 3 uses
  %i.gn = zext nneg i32 %i.gm to i64
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.gn
  store i16 0, ptr %i.go, align 2, !tbaa !350
  %i.gp = add nsw i32 %.173.lcssa, -3             ; 2 uses
  %i.gq = zext i32 %i.gp to i64                   ; 3 uses
  %i.gr = add nuw nsw i64 %i.gq, 1
  %xtraiter209 = and i64 %i.gr, 3                 ; 2 uses
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.gq, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !350
  %i.gu = zext i16 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !350
  %i.gx = add i16 %i.gw, 1
  store i16 %i.gx, ptr %i.gs, align 2, !tbaa !350
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter209
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !359

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.gq, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.gy = icmp ult i32 %i.gp, 3
  br i1 %i.gy, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !350
  %i.hb = zext i16 %i.ha to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hb
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !350
  %i.he = add i16 %i.hd, 1
  store i16 %i.he, ptr %i.gz, align 2, !tbaa !350
  %i.hf = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i
  %i.hg = getelementptr i8, ptr %i.hf, i64 -4     ; 2 uses
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !350
  %i.hi = zext i16 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hi
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !350
  %i.hl = add i16 %i.hk, 1
  store i16 %i.hl, ptr %i.hg, align 2, !tbaa !350
  %i.hm = getelementptr [4 x i8], ptr %.04052.us.i, i64 %indvars.iv115.i
  %i.hn = getelementptr i8, ptr %i.hm, i64 -8     ; 2 uses
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !350
  %i.hp = zext i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hp
  %i.hr = load i16, ptr %i.hq, align 2, !tbaa !350
  %i.hs = add i16 %i.hr, 1
  store i16 %i.hs, ptr %i.hn, align 2, !tbaa !350
  %indvars.iv.next116.i.2 = add nsw i64 %indvars.iv115.i, -3 ; 2 uses
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv.next116.i.2 ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !350
  %i.hv = zext i16 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %i.hv
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !350
  %i.hy = add i16 %i.hx, 1
  store i16 %i.hy, ptr %i.ht, align 2, !tbaa !350
  %indvars.iv.next116.i.3 = add nsw i64 %indvars.iv115.i, -4
  %.not140.i.3 = icmp eq i64 %indvars.iv.next116.i.2, 0
  br i1 %.not140.i.3, label %.preheader.i81.preheader, label %.lr.ph96.i, !llvm.loop !360

.preheader.i81.preheader:                         ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i, %._crit_edge.thread.i
  %.385110.i.ph = phi i32 [ %i.fe, %._crit_edge.thread.i ], [ %i.gm, %.lr.ph96.i ], [ %i.gm, %.lr.ph96.i.prol.loopexit ]
  br label %.preheader.i81

.preheader.i81:                                   ; preds = %.preheader.i81.preheader, %._crit_edge108.i
  %.0113.i = phi i32 [ %i.jb, %._crit_edge108.i ], [ 0, %.preheader.i81.preheader ] ; 3 uses
  %.075112.i = phi i32 [ %i.ja, %._crit_edge108.i ], [ 1, %.preheader.i81.preheader ] ; 5 uses
end_hunk_0
