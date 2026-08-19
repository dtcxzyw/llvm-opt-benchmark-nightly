inline.NumInlined: 68
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@calc_rank_cd:bb.a
  %i.cj = ashr exact i64 %i.ci, 2
  %i.ck = icmp slt i64 %i.cj, %i.bn
  br i1 %i.ck, label %bb.l, label %.loopexit.i, !llvm.loop !11

.preheader.i:                                     ; preds = %.lr.ph126.i, %bb.m
  %.2101.lcssa.i = phi i32 [ %.1100.ph134.i, %bb.m ], [ %i.cl, %.lr.ph126.i ] ; 2 uses
  %.2.lcssa.i = phi ptr [ %.194.ph136.i, %bb.m ], [ %i.co, %.lr.ph126.i ] ; 3 uses
  %.not164.i = icmp eq i16 %i.ca, 0
  br i1 %.not164.i, label %.outer.i, label %.lr.ph131.preheader.i

.lr.ph131.preheader.i:                            ; preds = %.preheader.i
  %wide.trip.count.i = zext i16 %i.ca to i64
  br label %.lr.ph131.i

.lr.ph126.i:                                      ; preds = %bb.m, %.lr.ph126.i
  %.2125.i = phi ptr [ %i.co, %.lr.ph126.i ], [ %.194.ph136.i, %bb.m ]
  %.2101124.i = phi i32 [ %i.cl, %.lr.ph126.i ], [ %.1100.ph134.i, %bb.m ]
  %i.cl = shl i32 %.2101124.i, 1                  ; 4 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = mul nsw i64 %i.cm, 24
  %i.co = tail call ptr @repalloc(ptr noundef %.2125.i, i64 noundef %i.cn) #10 ; 2 uses
  %.not112.i = icmp slt i32 %i.cf, %i.cl
  br i1 %.not112.i, label %.preheader.i, label %.lr.ph126.i, !llvm.loop !12

.lr.ph131.i:                                      ; preds = %bb.q, %.lr.ph131.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph131.preheader.i ], [ %indvars.iv.next.i, %bb.q ] ; 3 uses
  %.297130.i = phi i32 [ %.196.ph135.i, %.lr.ph131.preheader.i ], [ %.398.i, %bb.q ] ; 3 uses
  %i.cp = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %.lr.ph131._crit_edge.i, label %bb.o

.lr.ph131._crit_edge.i:                           ; preds = %.lr.ph131.i
  %.phi.trans.insert.i = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.i
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 2
  br label %bb.p

bb.o:                                             ; preds = %.lr.ph131.i
  %i.cr = zext i8 %i.cp to i32
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv.i
  %i.ct = load i16, ptr %i.cs, align 2            ; 2 uses
  %i.cu = lshr i16 %i.ct, 14
  %i.cv = zext nneg i16 %i.cu to i32
  %i.cw = shl nuw nsw i32 1, %i.cv
  %i.cx = and i32 %i.cw, %i.cr
  %.not113.i = icmp eq i32 %i.cx, 0
  br i1 %.not113.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph131._crit_edge.i
  %i.cy = phi i16 [ %.pre.i, %.lr.ph131._crit_edge.i ], [ %i.ct, %bb.o ]
  %i.cz = sext i32 %.297130.i to i64
  %i.da = getelementptr inbounds [24 x i8], ptr %.2.lcssa.i, i64 %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i16 %i.cy, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store ptr %.0105117.i, ptr %i.dc, align 8
  store ptr %i.be, ptr %i.da, align 8
  %i.dd = add i32 %.297130.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.398.i = phi i32 [ %i.dd, %bb.p ], [ %.297130.i, %bb.o ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.outer.loopexit.i, label %.lr.ph131.i, !llvm.loop !13

.outer.loopexit.i:                                ; preds = %bb.q
  %.pre178.i = load i32, ptr %i.a, align 4
  br label %.outer.i

.outer.i:                                         ; preds = %.outer.loopexit.i, %.preheader.i
  %i.de = phi i32 [ %i.bm, %.preheader.i ], [ %.pre178.i, %.outer.loopexit.i ] ; 2 uses
  %.297.lcssa.i = phi i32 [ %.196.ph135.i, %.preheader.i ], [ %.398.i, %.outer.loopexit.i ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.0105117.i, i64 4 ; 2 uses
  %i.dg = sext i32 %i.de to i64                   ; 2 uses
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = sub i64 %i.dh, %i.bh
  %i.dj = ashr exact i64 %i.di, 2
  %i.dk = icmp slt i64 %i.dj, %i.dg
  br i1 %i.dk, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !11

.loopexit.i:                                      ; preds = %.outer.i, %bb.n, %.preheader114.i, %bb.k, %bb.j
  %.3102.i = phi i32 [ %.099141.i, %bb.j ], [ %.099141.i, %bb.k ], [ %.1100.ph134.i, %bb.n ], [ %.099141.i, %.preheader114.i ], [ %.2101.lcssa.i, %.outer.i ]
  %.4.i = phi i32 [ %.095142.i, %bb.j ], [ %.095142.i, %bb.k ], [ %.196.ph135.i, %bb.n ], [ %.095142.i, %.preheader114.i ], [ %.297.lcssa.i, %.outer.i ] ; 4 uses
  %.3.i = phi ptr [ %.093143.i, %bb.j ], [ %.093143.i, %bb.k ], [ %.194.ph136.i, %bb.n ], [ %.093143.i, %.preheader114.i ], [ %.2.lcssa.i, %.outer.i ] ; 13 uses
  %indvars.iv.next176.i = add nuw nsw i64 %indvars.iv175.i, 1 ; 2 uses
  %i.dl = load ptr, ptr %4, align 8               ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next176.i, %i.do
  br i1 %i.dp, label %bb.j, label %._crit_edge146.i, !llvm.loop !14

._crit_edge146.i:                                 ; preds = %.loopexit.i
  %i.dq = icmp sgt i32 %.4.i, 0
  br i1 %i.dq, label %bb.r, label %._crit_edge146.i.get_docrep.exit.thread_crit_edge

._crit_edge146.i.get_docrep.exit.thread_crit_edge: ; preds = %._crit_edge146.i
  %.pre = load ptr, ptr %i.at, align 8
  br label %get_docrep.exit.thread

bb.r:                                             ; preds = %._crit_edge146.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 4
  %i.ds = zext nneg i32 %.4.i to i64              ; 2 uses
  tail call void @pg_qsort(ptr noundef %.3.i, i64 noundef %i.ds, i64 noundef 24, ptr noundef nonnull @compareDocR) #10
  %i.dt = getelementptr inbounds nuw i8, ptr %.3.i, i64 16
  %i.du = load i16, ptr %i.dt, align 8            ; 2 uses
  %i.dv = load i32, ptr %i.dr, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.dw) #10 ; 3 uses
  %i.dy = load ptr, ptr %.3.i, align 8
  store ptr %i.dy, ptr %i.dx, align 8
  %i.dz = ptrtoint ptr %.3.i to i64               ; 4 uses
  %.not165.i = icmp eq i32 %.4.i, 1
  br i1 %.not165.i, label %get_docrep.exit, label %.lr.ph157.preheader.i

.lr.ph157.preheader.i:                            ; preds = %bb.r
  %.092149.i = getelementptr inbounds nuw i8, ptr %.3.i, i64 24
  br label %.lr.ph157.i

.lr.ph157.i:                                      ; preds = %bb.v, %.lr.ph157.preheader.i
  %.092155.i = phi ptr [ %.092.i, %bb.v ], [ %.092149.i, %.lr.ph157.preheader.i ] ; 4 uses
  %.sroa.0.0154.i = phi ptr [ %.sroa.0.1.i, %bb.v ], [ %i.dx, %.lr.ph157.preheader.i ] ; 3 uses
  %.sroa.9.0153.i = phi i16 [ %.sroa.9.1.i, %bb.v ], [ 1, %.lr.ph157.preheader.i ] ; 3 uses
  %.sroa.148.0152.i = phi i16 [ %.sroa.148.1.i, %bb.v ], [ %i.du, %.lr.ph157.preheader.i ] ; 2 uses
  %.0151.i = phi ptr [ %.1.i, %bb.v ], [ %.3.i, %.lr.ph157.preheader.i ] ; 5 uses
  %.093.pn150.i = phi ptr [ %.092155.i, %bb.v ], [ %.3.i, %.lr.ph157.preheader.i ] ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.093.pn150.i, i64 40 ; 2 uses
  %i.eb = load i16, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %.093.pn150.i, i64 16
  %i.ed = load i16, ptr %i.ec, align 8
  %i.ee = icmp eq i16 %i.eb, %i.ed
  br i1 %i.ee, label %bb.s, label %bb.u

bb.s:                                             ; preds = %.lr.ph157.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.093.pn150.i, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %.093.pn150.i, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = icmp eq ptr %i.eg, %i.ei
  br i1 %i.ej, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ek = load ptr, ptr %.092155.i, align 8
  %i.el = sext i16 %.sroa.9.0153.i to i64
  %i.em = getelementptr inbounds [8 x i8], ptr %.sroa.0.0154.i, i64 %i.el
  store ptr %i.ek, ptr %i.em, align 8
  %i.en = add i16 %.sroa.9.0153.i, 1
  br label %bb.v

bb.u:                                             ; preds = %bb.s, %.lr.ph157.i
  store ptr %.sroa.0.0154.i, ptr %.0151.i, align 8
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0151.i, i64 8
  store i16 %.sroa.9.0153.i, ptr %.sroa.9.0..sroa_idx.i, align 8
  %.sroa.148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0151.i, i64 16
  store i16 %.sroa.148.0152.i, ptr %.sroa.148.0..sroa_idx.i, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.0151.i, i64 24
  %i.ep = load i16, ptr %i.ea, align 8
  %i.eq = load ptr, ptr %4, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = load i32, ptr %i.er, align 4
  %i.et = sext i32 %i.es to i64
  %i.eu = tail call ptr @palloc_mul(i64 noundef 8, i64 noundef %i.et) #10 ; 2 uses
  %i.ev = load ptr, ptr %.092155.i, align 8
  store ptr %i.ev, ptr %i.eu, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.1.i = phi ptr [ %.0151.i, %bb.t ], [ %i.eo, %bb.u ] ; 2 uses
  %.sroa.148.1.i = phi i16 [ %.sroa.148.0152.i, %bb.t ], [ %i.ep, %bb.u ] ; 2 uses
  %.sroa.9.1.i = phi i16 [ %i.en, %bb.t ], [ 1, %bb.u ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.0.0154.i, %bb.t ], [ %i.eu, %bb.u ] ; 2 uses
  %.092.i = getelementptr inbounds nuw i8, ptr %.092155.i, i64 24 ; 2 uses
  %i.ew = ptrtoint ptr %.092.i to i64
  %i.ex = sub i64 %i.ew, %i.dz
  %i.ey = sdiv exact i64 %i.ex, 24
  %i.ez = icmp slt i64 %i.ey, %i.ds
  br i1 %i.ez, label %.lr.ph157.i, label %get_docrep.exit, !llvm.loop !15

get_docrep.exit.thread:                           ; preds = %._crit_edge146.i.get_docrep.exit.thread_crit_edge, %bb.i
  %i.fa = phi ptr [ %.pre, %._crit_edge146.i.get_docrep.exit.thread_crit_edge ], [ %i.as, %bb.i ]
  %.093.lcssa186.i = phi ptr [ %.3.i, %._crit_edge146.i.get_docrep.exit.thread_crit_edge ], [ %i.ay, %bb.i ]
  tail call void @pfree(ptr noundef %.093.lcssa186.i) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  tail call void @pfree(ptr noundef %i.fa) #10
  br label %bb.bd

get_docrep.exit:                                  ; preds = %bb.v, %bb.r
  %.0.lcssa.i = phi ptr [ %.3.i, %bb.r ], [ %.1.i, %bb.v ] ; 4 uses
  %.sroa.148.0.lcssa.i = phi i16 [ %i.du, %bb.r ], [ %.sroa.148.1.i, %bb.v ]
  %.sroa.9.0.lcssa.i = phi i16 [ 1, %bb.r ], [ %.sroa.9.1.i, %bb.v ]
  %.sroa.0.0.lcssa.i = phi ptr [ %i.dx, %bb.r ], [ %.sroa.0.1.i, %bb.v ]
  store ptr %.sroa.0.0.lcssa.i, ptr %.0.lcssa.i, align 8
  %.sroa.9.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  store i16 %.sroa.9.0.lcssa.i, ptr %.sroa.9.0..sroa_idx4.i, align 8
  %.sroa.148.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 16
  store i16 %.sroa.148.0.lcssa.i, ptr %.sroa.148.0..sroa_idx9.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 24
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = sub i64 %i.fc, %i.dz
  %i.fe = sdiv exact i64 %i.fd, 24
  %sext = shl i64 %i.fe, 32
  %i.ff = ashr exact i64 %sext, 32                ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %get_docrep.exit, %bb.ap
  %.promoted164 = phi i64 [ %6, %bb.ap ], [ 0, %get_docrep.exit ]
  %.086 = phi double [ %.1, %bb.ap ], [ 0.000000e+00, %get_docrep.exit ] ; 3 uses
  %.085 = phi double [ %i.lz, %bb.ap ], [ 0.000000e+00, %get_docrep.exit ] ; 2 uses
  %.084 = phi i32 [ %i.mj, %bb.ap ], [ 0, %get_docrep.exit ] ; 4 uses
  %i.fg = phi <2 x double> [ %i.mk, %bb.ap ], [ zeroinitializer, %get_docrep.exit ] ; 2 uses
  %sext222 = shl i64 %.promoted164, 32
  %5 = ashr exact i64 %sext222, 32                ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %5, i64 %i.ff)
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.loopexit.i108.thread, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i108.thread ], [ %5, %bb.w ] ; 5 uses
  call void @check_stack_depth() #10, !inline_history !16
  %i.fh = load ptr, ptr %4, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.lr.ph.i.i, label %resetQueryRepresentation.exit.i

.lr.ph.i.i:                                       ; preds = %tailrecurse.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %tailrecurse.i ] ; 4 uses
  %i.fl = load ptr, ptr %i.at, align 8
  %i.fm = getelementptr inbounds nuw [32776 x i8], ptr %i.fl, i64 %indvars.iv.i.i
  store i8 0, ptr %i.fm, align 4
  %i.fn = load ptr, ptr %i.at, align 8
  %i.fo = getelementptr inbounds nuw [32776 x i8], ptr %i.fn, i64 %indvars.iv.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 1
  store i8 0, ptr %i.fp, align 1
  %i.fq = load ptr, ptr %i.at, align 8
  %i.fr = getelementptr inbounds nuw [32776 x i8], ptr %i.fq, i64 %indvars.iv.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  store i32 0, ptr %i.fs, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ft = load ptr, ptr %4, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %i.fv = load i32, ptr %i.fu, align 4
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next.i.i, %i.fw
  br i1 %i.fx, label %.lr.ph.i.i, label %resetQueryRepresentation.exit.i, !llvm.loop !17

resetQueryRepresentation.exit.i:                  ; preds = %.lr.ph.i.i, %tailrecurse.i
  %exitcond.not = icmp eq i64 %indvars.iv, %smax
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %resetQueryRepresentation.exit.i
  %i.fy = getelementptr inbounds [24 x i8], ptr %.3.i, i64 %indvars.iv ; 2 uses
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.af, %.lr.ph.preheader.i
  %i.fz = phi i64 [ %i.iu, %bb.af ], [ %indvars.iv, %.lr.ph.preheader.i ]
  %.05183.i = phi ptr [ %i.ir, %bb.af ], [ %i.fy, %.lr.ph.preheader.i ] ; 8 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.05183.i, i64 8 ; 2 uses
  %i.gb = load i16, ptr %i.ga, align 8
  %i.gc = icmp sgt i16 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.i56.i, label %fillQueryRepresentationData.exit.i

.lr.ph.i56.i:                                     ; preds = %.lr.ph.i106
  %i.gd = getelementptr inbounds nuw i8, ptr %.05183.i, i64 16 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph.i56.i
  %indvars.iv.i57.i = phi i64 [ 0, %.lr.ph.i56.i ], [ %indvars.iv.next.i58.i, %bb.ac ] ; 2 uses
  %i.ge = load ptr, ptr %.05183.i, align 8
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %indvars.iv.i57.i
  %i.gg = load ptr, ptr %i.gf, align 8            ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 4
  %.not.i.i = icmp eq i8 %i.gh, 1
  br i1 %.not.i.i, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gi = load ptr, ptr %i.at, align 8
  %i.gj = load ptr, ptr %4, align 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  %i.gl = ptrtoint ptr %i.gg to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = sdiv exact i64 %i.gn, 12
  %i.gp = getelementptr inbounds [32776 x i8], ptr %i.gi, i64 %i.go ; 5 uses
  store i8 1, ptr %i.gp, align 4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4 ; 3 uses
  %i.gr = load i32, ptr %i.gq, align 4            ; 5 uses
  %i.gs = icmp eq i32 %i.gr, 0
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gu = load i8, ptr %i.gt, align 1, !range !18, !noundef !19
  %i.gv = trunc nuw i8 %i.gu to i1                ; 3 uses
  br i1 %i.gs, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gw = load i16, ptr %i.gd, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gy = select i1 %i.gv, i64 16383, i64 0
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %i.gx, i64 %i.gy
  store i16 %i.gw, ptr %i.gz, align 2
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ha = sub i32 16384, %i.gr
  %i.hb = add i32 %i.gr, -1
  %i.hc = select i1 %i.gv, i32 %i.ha, i32 %i.hb
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gp, i64 8 ; 2 uses
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = load i16, ptr %i.gd, align 8            ; 2 uses
  %i.hi = xor i16 %i.hh, %i.hg
  %i.hj = and i16 %i.hi, 16383
  %.not29.i.i = icmp eq i16 %i.hj, 0
  br i1 %.not29.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hk = sub i32 16383, %i.gr
  %spec.select.i.i = select i1 %i.gv, i32 %i.hk, i32 %i.gr
  %i.hl = sext i32 %spec.select.i.i to i64
  %i.hm = getelementptr inbounds [2 x i8], ptr %i.hd, i64 %i.hl
  store i16 %i.hh, ptr %i.hm, align 2
  %i.hn = load i32, ptr %i.gq, align 4
  %i.ho = add i32 %i.hn, 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ab, %bb.z
  %.sink.i.i = phi i32 [ %i.ho, %bb.ab ], [ 1, %bb.z ]
  store i32 %.sink.i.i, ptr %i.gq, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %bb.aa, %bb.x
  %indvars.iv.next.i58.i = add nuw nsw i64 %indvars.iv.i57.i, 1 ; 2 uses
  %i.hp = load i16, ptr %i.ga, align 8
  %i.hq = sext i16 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next.i58.i, %i.hq
  br i1 %i.hr, label %bb.x, label %fillQueryRepresentationData.exit.i, !llvm.loop !20

fillQueryRepresentationData.exit.i:               ; preds = %bb.ac, %.lr.ph.i106
  %i.hs = load ptr, ptr %4, align 8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.hu = call zeroext i1 @TS_execute(ptr noundef nonnull %i.ht, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #10, !inline_history !16
  br i1 %i.hu, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.hv = getelementptr inbounds nuw i8, ptr %.05183.i, i64 16
  %i.hw = load i16, ptr %i.hv, align 8
  %i.hx = and i16 %i.hw, 16383                    ; 3 uses
  %.not = icmp eq i16 %i.hx, 0
  br i1 %.not, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hy = load ptr, ptr %4, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  %i.ia = load i32, ptr %i.hz, align 4
  %i.ib = icmp sgt i32 %i.ia, 0
  br i1 %i.ib, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i

.lr.ph.i59.i:                                     ; preds = %bb.ae, %.lr.ph.i59.i
  %indvars.iv.i60.i = phi i64 [ %indvars.iv.next.i61.i, %.lr.ph.i59.i ], [ 0, %bb.ae ] ; 4 uses
  %i.ic = load ptr, ptr %i.at, align 8
  %i.id = getelementptr inbounds nuw [32776 x i8], ptr %i.ic, i64 %indvars.iv.i60.i
  store i8 0, ptr %i.id, align 4
  %i.ie = load ptr, ptr %i.at, align 8
  %i.if = getelementptr inbounds nuw [32776 x i8], ptr %i.ie, i64 %indvars.iv.i60.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  store i8 1, ptr %i.ig, align 1
  %i.ih = load ptr, ptr %i.at, align 8
  %i.ii = getelementptr inbounds nuw [32776 x i8], ptr %i.ih, i64 %indvars.iv.i60.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  store i32 0, ptr %i.ij, align 4
  %indvars.iv.next.i61.i = add nuw nsw i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.ik = load ptr, ptr %4, align 8
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 4
  %i.im = load i32, ptr %i.il, align 4
  %i.in = sext i32 %i.im to i64
  %i.io = icmp slt i64 %indvars.iv.next.i61.i, %i.in
  br i1 %i.io, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i, !llvm.loop !17

resetQueryRepresentation.exit62.i:                ; preds = %.lr.ph.i59.i, %bb.ae
  %sext.i = shl i64 %i.fz, 32
  %i.ip = ashr exact i64 %sext.i, 32              ; 2 uses
  %.not84.i = icmp slt i64 %i.ip, %indvars.iv
  br i1 %.not84.i, label %.loopexit.i108.thread, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %resetQueryRepresentation.exit62.i
  %i.iq = getelementptr inbounds [24 x i8], ptr %.3.i, i64 %i.ip
  br label %.lr.ph86.i

bb.af:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.ir = getelementptr inbounds nuw i8, ptr %.05183.i, i64 24 ; 2 uses
  %i.is = ptrtoint ptr %i.ir to i64
  %i.it = sub i64 %i.is, %i.dz
  %i.iu = sdiv exact i64 %i.it, 24                ; 2 uses
  %i.iv = icmp slt i64 %i.iu, %i.ff
  br i1 %i.iv, label %.lr.ph.i106, label %.loopexit, !llvm.loop !21

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %bb.am
  %.185.i = phi ptr [ %i.kr, %bb.am ], [ %i.iq, %.lr.ph86.i.preheader ] ; 9 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.185.i, i64 8 ; 2 uses
  %i.ix = load i16, ptr %i.iw, align 8
  %i.iy = icmp sgt i16 %i.ix, 0
  br i1 %i.iy, label %.lr.ph.i63.i, label %fillQueryRepresentationData.exit71.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph86.i
  %i.iz = getelementptr inbounds nuw i8, ptr %.185.i, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i63.i
  %indvars.iv.i64.i = phi i64 [ 0, %.lr.ph.i63.i ], [ %indvars.iv.next.i66.i, %bb.al ] ; 2 uses
  %i.ja = load ptr, ptr %.185.i, align 8
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %indvars.iv.i64.i
  %i.jc = load ptr, ptr %i.jb, align 8            ; 2 uses
  %i.jd = load i8, ptr %i.jc, align 4
  %.not.i65.i = icmp eq i8 %i.jd, 1
  br i1 %.not.i65.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.je = load ptr, ptr %i.at, align 8
  %i.jf = load ptr, ptr %4, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = ptrtoint ptr %i.jc to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji
  %i.jk = sdiv exact i64 %i.jj, 12
  %i.jl = getelementptr inbounds [32776 x i8], ptr %i.je, i64 %i.jk ; 5 uses
  store i8 1, ptr %i.jl, align 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 4 ; 3 uses
  %i.jn = load i32, ptr %i.jm, align 4            ; 5 uses
  %i.jo = icmp eq i32 %i.jn, 0
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !range !18, !noundef !19
  %i.jr = trunc nuw i8 %i.jq to i1                ; 3 uses
  br i1 %i.jo, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.js = load i16, ptr %i.iz, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.ju = select i1 %i.jr, i64 16383, i64 0
  %i.jv = getelementptr inbounds nuw [2 x i8], ptr %i.jt, i64 %i.ju
  store i16 %i.js, ptr %i.jv, align 2
  br label %.sink.split.i69.i

bb.aj:                                            ; preds = %bb.ah
  %i.jw = sub i32 16384, %i.jn
  %i.jx = add i32 %i.jn, -1
  %i.jy = select i1 %i.jr, i32 %i.jw, i32 %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jl, i64 8 ; 2 uses
  %i.ka = sext i32 %i.jy to i64
  %i.kb = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.ka
  %i.kc = load i16, ptr %i.kb, align 2
  %i.kd = load i16, ptr %i.iz, align 8            ; 2 uses
  %i.ke = xor i16 %i.kd, %i.kc
  %i.kf = and i16 %i.ke, 16383
  %.not29.i67.i = icmp eq i16 %i.kf, 0
  br i1 %.not29.i67.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kg = sub i32 16383, %i.jn
  %spec.select.i68.i = select i1 %i.jr, i32 %i.kg, i32 %i.jn
  %i.kh = sext i32 %spec.select.i68.i to i64
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.jz, i64 %i.kh
  store i16 %i.kd, ptr %i.ki, align 2
  %i.kj = load i32, ptr %i.jm, align 4
  %i.kk = add i32 %i.kj, 1
  br label %.sink.split.i69.i

.sink.split.i69.i:                                ; preds = %bb.ak, %bb.ai
  %.sink.i70.i = phi i32 [ %i.kk, %bb.ak ], [ 1, %bb.ai ]
  store i32 %.sink.i70.i, ptr %i.jm, align 4
  br label %bb.al

bb.al:                                            ; preds = %.sink.split.i69.i, %bb.aj, %bb.ag
  %indvars.iv.next.i66.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %i.kl = load i16, ptr %i.iw, align 8
  %i.km = sext i16 %i.kl to i64
  %i.kn = icmp slt i64 %indvars.iv.next.i66.i, %i.km
  br i1 %i.kn, label %bb.ag, label %fillQueryRepresentationData.exit71.i, !llvm.loop !20

fillQueryRepresentationData.exit71.i:             ; preds = %bb.al, %.lr.ph86.i
  %i.ko = load ptr, ptr %4, align 8
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = call zeroext i1 @TS_execute(ptr noundef nonnull %i.kp, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #10, !inline_history !16
  br i1 %i.kq, label %.loopexit.i108, label %bb.am

bb.am:                                            ; preds = %fillQueryRepresentationData.exit71.i
  %i.kr = getelementptr inbounds i8, ptr %.185.i, i64 -24 ; 2 uses
  %.not.i107 = icmp ult ptr %i.kr, %i.fy
  br i1 %.not.i107, label %.loopexit.i108.thread, label %.lr.ph86.i, !llvm.loop !22

.loopexit.i108:                                   ; preds = %fillQueryRepresentationData.exit71.i
  %i.ks = getelementptr inbounds nuw i8, ptr %.185.i, i64 16
  %i.kt = load i16, ptr %i.ks, align 8
  %i.ku = and i16 %i.kt, 16383                    ; 2 uses
  %.not55.i = icmp samesign ugt i16 %i.ku, %i.hx
  br i1 %.not55.i, label %.loopexit.i108.thread, label %bb.an

.loopexit.i108.thread:                            ; preds = %bb.am, %resetQueryRepresentation.exit62.i, %.loopexit.i108
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %tailrecurse.i

bb.an:                                            ; preds = %.loopexit.i108
  %i.kv = zext nneg i16 %i.hx to i32              ; 2 uses
  %i.kw = zext nneg i16 %i.ku to i32              ; 2 uses
  %i.kx = ptrtoint ptr %.185.i to i64
  %i.ky = sub i64 %i.kx, %i.dz
  %i.kz = sdiv exact i64 %i.ky, 24
  %6 = add nsw i64 %i.kz, 1
  %.not105159 = icmp ugt ptr %.185.i, %.05183.i
  br i1 %.not105159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %.lr.ph
  %.0161 = phi ptr [ %i.lh, %.lr.ph ], [ %.185.i, %bb.an ] ; 2 uses
  %.082160 = phi double [ %i.lg, %.lr.ph ], [ 0.000000e+00, %bb.an ]
  %i.la = getelementptr inbounds nuw i8, ptr %.0161, i64 16
  %i.lb = load i16, ptr %i.la, align 8
  %i.lc = lshr i16 %i.lb, 14
  %i.ld = zext nneg i16 %i.lc to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ld
  %i.lf = load double, ptr %i.le, align 8
  %i.lg = fadd double %.082160, %i.lf             ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.0161, i64 24 ; 2 uses
  %.not105 = icmp ugt ptr %i.lh, %.05183.i
  br i1 %.not105, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.an
  %.082.lcssa = phi double [ 0.000000e+00, %bb.an ], [ %i.lg, %.lr.ph ]
  %i.li = ptrtoint ptr %.05183.i to i64
  %i.lj = ptrtoint ptr %.185.i to i64
  %i.lk = sub i64 %i.li, %i.lj                    ; 2 uses
  %i.ll = sdiv exact i64 %i.lk, 24                ; 2 uses
  %i.lm = add nsw i64 %i.ll, 1
  %i.ln = sitofp i64 %i.lm to double
  %i.lo = fdiv double %i.ln, %.082.lcssa
  %i.lp = trunc i64 %i.ll to i32
  %i.lq = add i32 %i.kw, %i.lp
  %i.lr = sub i32 %i.kv, %i.lq                    ; 2 uses
  %i.ls = icmp slt i32 %i.lr, 0
  br i1 %i.ls, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.lt = sdiv i64 %i.lk, 48
  %i.lu = trunc i64 %i.lt to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge
  %.081 = phi i32 [ %i.lu, %bb.ao ], [ %i.lr, %._crit_edge ]
  %i.lv = add i32 %.081, 1
  %i.lw = sitofp i32 %i.lv to double
  %i.lx = add nuw nsw i32 %i.kw, %i.kv
  %i.ly = uitofp nneg i32 %i.lx to double
  %i.lz = fmul nnan double %i.ly, 5.000000e-01    ; 3 uses
  %i.ma = icmp sgt i32 %.084, 0
  %i.mb = fcmp ogt double %i.lz, %.085
  %or.cond = select i1 %i.ma, i1 %i.mb, i1 false
  %i.mc = fsub double %i.lz, %.085
  %i.md = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.lo, i64 0
  %i.me = insertelement <2 x double> poison, double %i.lw, i64 0
  %i.mf = insertelement <2 x double> %i.me, double %i.mc, i64 1
  %i.mg = fdiv <2 x double> %i.md, %i.mf
  %i.mh = fadd <2 x double> %i.fg, %i.mg          ; 2 uses
  %i.mi = extractelement <2 x double> %i.mh, i64 1
  %.1 = select i1 %or.cond, double %i.mi, double %.086 ; 2 uses
  %i.mj = add i32 %.084, 1
  %i.mk = insertelement <2 x double> %i.mh, double %.1, i64 1
  br label %bb.w, !llvm.loop !24

.loopexit:                                        ; preds = %resetQueryRepresentation.exit.i, %bb.ad, %bb.af
  %i.ml = and i32 %3, 1
  %.not100 = icmp eq i32 %i.ml, 0
  %i.mm = extractelement <2 x double> %i.fg, i64 0 ; 3 uses
  br i1 %.not100, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.mn = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.mo = icmp sgt i32 %i.mn, 0
  br i1 %i.mo, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.mp = zext nneg i32 %i.mn to i64
  %.idx.i = shl nuw nsw i64 %i.mp, 2
  %i.mq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.ar, %.thread.i
  %.020.i = phi i32 [ %i.nb, %.thread.i ], [ 0, %bb.ar ]
  %.01519.i = phi ptr [ %i.nc, %.thread.i ], [ %i.bb, %bb.ar ] ; 2 uses
  %i.mr = load i32, ptr %.01519.i, align 4        ; 3 uses
  %i.ms = and i32 %i.mr, 1
  %.not.i111 = icmp eq i32 %i.ms, 0
  br i1 %.not.i111, label %.thread.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i110
  %i.mt = lshr i32 %i.mr, 12
  %i.mu = lshr i32 %i.mr, 1
  %i.mv = and i32 %i.mu, 2047
  %i.mw = add nuw nsw i32 %i.mt, 1
  %narrow.i112 = add nuw nsw i32 %i.mw, %i.mv
  %i.mx = and i32 %narrow.i112, 4194302
  %i.my = zext nneg i32 %i.mx to i64
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mq, i64 %i.my
  %i.na = load i16, ptr %i.mz, align 1
  %.fr.i = freeze i16 %i.na
  %narrow18.i = call i16 @llvm.umax.i16(i16 %.fr.i, i16 1)
  %spec.select.v.i = zext i16 %narrow18.i to i32
  br label %.thread.i

.thread.i:                                        ; preds = %bb.as, %.lr.ph.i110
  %spec.select.v.pn.i = phi i32 [ %spec.select.v.i, %bb.as ], [ 1, %.lr.ph.i110 ]
  %i.nb = add i32 %spec.select.v.pn.i, %.020.i    ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %.01519.i, i64 4 ; 2 uses
  %i.nd = icmp ult ptr %i.nc, %i.mq
  br i1 %i.nd, label %.lr.ph.i110, label %cnt_length.exit, !llvm.loop !10

cnt_length.exit:                                  ; preds = %.thread.i
  %i.ne = add i32 %i.nb, 1
  %i.nf = sitofp i32 %i.ne to double
  %i.ng = call double @log(double noundef %i.nf) #10
  %i.nh = fdiv double %i.mm, %i.ng
  br label %bb.at

bb.at:                                            ; preds = %cnt_length.exit, %bb.aq, %.loopexit
  %.188 = phi double [ %i.nh, %cnt_length.exit ], [ %i.mm, %bb.aq ], [ %i.mm, %.loopexit ] ; 4 uses
  %i.ni = and i32 %3, 2
  %.not101 = icmp eq i32 %i.ni, 0
  br i1 %.not101, label %cnt_length.exit125.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.nj = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.nk = sext i32 %i.nj to i64
  %.idx.i113 = shl nsw i64 %i.nk, 2
  %i.nl = getelementptr inbounds i8, ptr %i.bb, i64 %.idx.i113 ; 2 uses
  %i.nm = icmp sgt i32 %i.nj, 0
  br i1 %i.nm, label %.lr.ph.i115, label %cnt_length.exit125.thread

.lr.ph.i115:                                      ; preds = %bb.au, %.thread.i123
  %.020.i116 = phi i32 [ %i.nx, %.thread.i123 ], [ 0, %bb.au ]
  %.01519.i117 = phi ptr [ %i.ny, %.thread.i123 ], [ %i.bb, %bb.au ] ; 2 uses
  %i.nn = load i32, ptr %.01519.i117, align 4     ; 3 uses
  %i.no = and i32 %i.nn, 1
  %.not.i118 = icmp eq i32 %i.no, 0
  br i1 %.not.i118, label %.thread.i123, label %bb.av

bb.av:                                            ; preds = %.lr.ph.i115
  %i.np = lshr i32 %i.nn, 12
  %i.nq = lshr i32 %i.nn, 1
  %i.nr = and i32 %i.nq, 2047
  %i.ns = add nuw nsw i32 %i.np, 1
  %narrow.i119 = add nuw nsw i32 %i.ns, %i.nr
  %i.nt = and i32 %narrow.i119, 4194302
  %i.nu = zext nneg i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nu
  %i.nw = load i16, ptr %i.nv, align 1
  %.fr.i120 = freeze i16 %i.nw
  %narrow18.i121 = call i16 @llvm.umax.i16(i16 %.fr.i120, i16 1)
  %spec.select.v.i122 = zext i16 %narrow18.i121 to i32
  br label %.thread.i123

.thread.i123:                                     ; preds = %bb.av, %.lr.ph.i115
  %spec.select.v.pn.i124 = phi i32 [ %spec.select.v.i122, %bb.av ], [ 1, %.lr.ph.i115 ]
  %i.nx = add i32 %spec.select.v.pn.i124, %.020.i116 ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.01519.i117, i64 4 ; 2 uses
  %i.nz = icmp ult ptr %i.ny, %i.nl
  br i1 %i.nz, label %.lr.ph.i115, label %cnt_length.exit125, !llvm.loop !10

cnt_length.exit125:                               ; preds = %.thread.i123
  %i.oa = icmp sgt i32 %i.nx, 0
  br i1 %i.oa, label %bb.aw, label %cnt_length.exit125.thread

bb.aw:                                            ; preds = %cnt_length.exit125
  %i.ob = uitofp nneg i32 %i.nx to double
  %i.oc = fdiv double %.188, %i.ob
  br label %cnt_length.exit125.thread

cnt_length.exit125.thread:                        ; preds = %bb.au, %cnt_length.exit125, %bb.aw, %bb.at
  %.2 = phi double [ %i.oc, %bb.aw ], [ %.188, %cnt_length.exit125 ], [ %.188, %bb.at ], [ %.188, %bb.au ] ; 2 uses
  %i.od = and i32 %3, 4
  %i.oe = icmp ne i32 %i.od, 0
  %i.of = icmp sgt i32 %.084, 0
  %or.cond5 = select i1 %i.oe, i1 %i.of, i1 false
  %i.og = fcmp ogt double %.086, 0.000000e+00
  %or.cond7 = select i1 %or.cond5, i1 %i.og, i1 false
  %i.oh = uitofp nneg i32 %.084 to double
  %i.oi = fdiv double %i.oh, %.086
  %i.oj = fdiv double %.2, %i.oi
  %.3 = select i1 %or.cond7, double %i.oj, double %.2 ; 3 uses
  %i.ok = and i32 %3, 8
  %.not102 = icmp eq i32 %i.ok, 0
  br i1 %.not102, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %cnt_length.exit125.thread
  %i.ol = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.om = icmp sgt i32 %i.ol, 0
  br i1 %i.om, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.on = uitofp nneg i32 %i.ol to double
  %i.oo = fdiv double %.3, %i.on
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %cnt_length.exit125.thread
  %.4 = phi double [ %i.oo, %bb.ay ], [ %.3, %bb.ax ], [ %.3, %cnt_length.exit125.thread ] ; 3 uses
  %i.op = and i32 %3, 16
  %.not103 = icmp eq i32 %i.op, 0
  br i1 %.not103, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.oq = load i32, ptr %i.bc, align 4            ; 2 uses
end_hunk_0
begin_hunk_1_@find_wordentry:bb.a
  store i32 0, ptr %3, align 4
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.b, align 4
  %i.as = sext i32 %i.ar to i64                   ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.as
  %i.au = icmp ult ptr %spec.select, %i.at
  br i1 %i.au, label %.lr.ph59, label %.critedge

.lr.ph59:                                         ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph59, %bb.g
  %i.aw = phi i64 [ %i.as, %.lr.ph59 ], [ %i.bt, %bb.g ]
  %.358 = phi ptr [ %spec.select, %.lr.ph59 ], [ %i.br, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.aw
  %i.ay = load i32, ptr %i.aq, align 4
  %i.az = sext i32 %i.ay to i64
  %i.ba = mul nsw i64 %i.az, 12
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ba
  %i.bc = load i32, ptr %i.av, align 4            ; 2 uses
  %i.bd = lshr i32 %i.bc, 12
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = and i32 %i.bc, 4095
  %i.bh = load i32, ptr %.358, align 4            ; 2 uses
  %i.bi = lshr i32 %i.bh, 12
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.bj
  %i.bl = lshr i32 %i.bh, 1
  %i.bm = and i32 %i.bl, 2047
  %i.bn = tail call i32 @tsCompareString(ptr noundef nonnull %i.bf, i32 noundef %i.bg, ptr noundef nonnull %i.bk, i32 noundef %i.bm, i1 noundef zeroext true) #10
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.bp = load i32, ptr %3, align 4
  %i.bq = add i32 %i.bp, 1
  store i32 %i.bq, ptr %3, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %.358, i64 4 ; 2 uses
  %i.bs = load i32, ptr %i.b, align 4
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bt
  %i.bv = icmp ult ptr %i.br, %i.bu
  br i1 %i.bv, label %bb.f, label %.critedge, !llvm.loop !31

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.e, %.loopexit
  %i.bw = load i32, ptr %3, align 4
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = select i1 %i.bx, ptr %.245, ptr null
  ret ptr %i.by
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

declare ptr @palloc_mul(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @qsort_arg(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i32 @compareQueryOperand(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = lshr i32 %i.d, 12
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  %i.h = and i32 %i.d, 4095
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = lshr i32 %i.j, 12
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 %i.l
  %i.n = and i32 %i.j, 4095
  %i.o = tail call i32 @tsCompareString(ptr noundef %i.g, i32 noundef %i.h, ptr noundef %i.m, i32 noundef %i.n, i1 noundef zeroext false) #10
  ret i32 %i.o
}

declare i32 @tsCompareString(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #4

declare ptr @repalloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @pg_qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @compareDocR(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i16, ptr %i.a, align 8
  %i.c = zext i16 %i.b to i32                     ; 2 uses
  %i.d = and i32 %i.c, 16383                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i16, ptr %i.e, align 8
  %i.g = zext i16 %i.f to i32                     ; 2 uses
  %i.h = and i32 %i.g, 16383                      ; 2 uses
  %i.i = icmp eq i32 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = lshr i32 %i.c, 14                        ; 2 uses
  %i.k = lshr i32 %i.g, 14                        ; 2 uses
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = icmp eq ptr %i.n, %i.p
  br i1 %i.q, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ugt ptr %i.n, %i.p
  %i.s = select i1 %i.r, i32 1, i32 -1
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.t = icmp samesign ugt i32 %i.j, %i.k
  %i.u = select i1 %i.t, i32 1, i32 -1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.v = icmp samesign ugt i32 %i.d, %i.h
  %i.w = select i1 %i.v, i32 1, i32 -1
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d
  %.0 = phi i32 [ %i.w, %bb.f ], [ %i.s, %bb.d ], [ %i.u, %bb.e ], [ 0, %bb.c ]
  ret i32 %.0
}

declare void @check_stack_depth() local_unnamed_addr #2

declare zeroext i1 @TS_execute(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @checkcondition_QueryOperand(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 12
  %i.i = getelementptr inbounds [32776 x i8], ptr %i.b, i64 %i.h ; 4 uses
  %i.j = load i8, ptr %i.i, align 4, !range !18, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  store i32 %i.m, ptr %2, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.l, align 4
  %i.t = sub i32 16384, %i.s
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %i.u
  store ptr %i.v, ptr %i.o, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 1, %bb.c ], [ 1, %bb.d ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare float @sqrtf(float) local_unnamed_addr

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5}
!10 = distinct !{!10, !5}
!11 = distinct !{!11, !5}
!12 = distinct !{!12, !5}
!13 = distinct !{!13, !5}
!14 = distinct !{!14, !5}
!15 = distinct !{!15, !5}
!16 = distinct !{null}
!17 = distinct !{!17, !5}
!18 = !{i8 0, i8 2}
!19 = !{}
!20 = distinct !{!20, !5}
!21 = distinct !{!21, !5}
!22 = distinct !{!22, !5}
!23 = distinct !{!23, !5}
!24 = distinct !{!24, !5}
!25 = distinct !{!25, !5}
!26 = distinct !{!26, !5}
!27 = distinct !{!27, !5}
!28 = distinct !{!28, !5}
!29 = distinct !{!29, !5}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !5}
end_hunk_1
