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
  %i.fe = sdiv exact i64 %i.fd, 24                ; 2 uses
  %sext = shl i64 %i.fe, 32
  %5 = ashr exact i64 %sext, 32
  %sext.a = shl i64 %i.fe, 32
  %i.ff = ashr exact i64 %sext.a, 32
  br label %bb.w

bb.w:                                             ; preds = %get_docrep.exit, %bb.ap
  %.promoted164 = phi i64 [ %i.lb, %bb.ap ], [ 0, %get_docrep.exit ]
  %.086 = phi double [ %.1, %bb.ap ], [ 0.000000e+00, %get_docrep.exit ] ; 3 uses
  %.085 = phi double [ %i.mb, %bb.ap ], [ 0.000000e+00, %get_docrep.exit ] ; 2 uses
  %.084 = phi i32 [ %i.ml, %bb.ap ], [ 0, %get_docrep.exit ] ; 4 uses
  %i.fg = phi <2 x double> [ %i.mm, %bb.ap ], [ zeroinitializer, %get_docrep.exit ] ; 2 uses
  %sext222 = shl i64 %.promoted164, 32
  %i.fh = ashr exact i64 %sext222, 32
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %.loopexit.i108.thread, %bb.w
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i108.thread ], [ %i.fh, %bb.w ] ; 5 uses
  call void @check_stack_depth() #10, !inline_history !16
  %i.fi = load ptr, ptr %4, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fk = load i32, ptr %i.fj, align 4
  %i.fl = icmp sgt i32 %i.fk, 0
  br i1 %i.fl, label %.lr.ph.i.i, label %resetQueryRepresentation.exit.i

.lr.ph.i.i:                                       ; preds = %tailrecurse.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %tailrecurse.i ] ; 4 uses
  %i.fm = load ptr, ptr %i.at, align 8
  %i.fn = getelementptr inbounds nuw [32776 x i8], ptr %i.fm, i64 %indvars.iv.i.i
  store i8 0, ptr %i.fn, align 4
  %i.fo = load ptr, ptr %i.at, align 8
  %i.fp = getelementptr inbounds nuw [32776 x i8], ptr %i.fo, i64 %indvars.iv.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store i8 0, ptr %i.fq, align 1
  %i.fr = load ptr, ptr %i.at, align 8
  %i.fs = getelementptr inbounds nuw [32776 x i8], ptr %i.fr, i64 %indvars.iv.i.i
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 4
  store i32 0, ptr %i.ft, align 4
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fu = load ptr, ptr %4, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 4
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %indvars.iv.next.i.i, %i.fx
  br i1 %i.fy, label %.lr.ph.i.i, label %resetQueryRepresentation.exit.i, !llvm.loop !17

resetQueryRepresentation.exit.i:                  ; preds = %.lr.ph.i.i, %tailrecurse.i
  %6 = icmp slt i64 %indvars.iv, %i.ff
  br i1 %6, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %resetQueryRepresentation.exit.i
  %i.fz = getelementptr inbounds [24 x i8], ptr %.3.i, i64 %indvars.iv ; 2 uses
  br label %.lr.ph.i106

.lr.ph.i106:                                      ; preds = %bb.af, %.lr.ph.preheader.i
  %i.ga = phi i64 [ %i.iv, %bb.af ], [ %indvars.iv, %.lr.ph.preheader.i ]
  %.05183.i = phi ptr [ %i.is, %bb.af ], [ %i.fz, %.lr.ph.preheader.i ] ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.05183.i, i64 8 ; 2 uses
  %i.gc = load i16, ptr %i.gb, align 8
  %i.gd = icmp sgt i16 %i.gc, 0
  br i1 %i.gd, label %.lr.ph.i56.i, label %fillQueryRepresentationData.exit.i

.lr.ph.i56.i:                                     ; preds = %.lr.ph.i106
  %i.ge = getelementptr inbounds nuw i8, ptr %.05183.i, i64 16 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ac, %.lr.ph.i56.i
  %indvars.iv.i57.i = phi i64 [ 0, %.lr.ph.i56.i ], [ %indvars.iv.next.i58.i, %bb.ac ] ; 2 uses
  %i.gf = load ptr, ptr %.05183.i, align 8
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv.i57.i
  %i.gh = load ptr, ptr %i.gg, align 8            ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 4
  %.not.i.i = icmp eq i8 %i.gi, 1
  br i1 %.not.i.i, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.gj = load ptr, ptr %i.at, align 8
  %i.gk = load ptr, ptr %4, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8
  %i.gm = ptrtoint ptr %i.gh to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = sdiv exact i64 %i.go, 12
  %i.gq = getelementptr inbounds [32776 x i8], ptr %i.gj, i64 %i.gp ; 5 uses
  store i8 1, ptr %i.gq, align 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 4 ; 3 uses
  %i.gs = load i32, ptr %i.gr, align 4            ; 5 uses
  %i.gt = icmp eq i32 %i.gs, 0
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gq, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !range !18, !noundef !19
  %i.gw = trunc nuw i8 %i.gv to i1                ; 3 uses
  br i1 %i.gt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gx = load i16, ptr %i.ge, align 8
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gz = select i1 %i.gw, i64 16383, i64 0
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.gy, i64 %i.gz
  store i16 %i.gx, ptr %i.ha, align 2
  br label %.sink.split.i.i

bb.aa:                                            ; preds = %bb.y
  %i.hb = sub i32 16384, %i.gs
  %i.hc = add i32 %i.gs, -1
  %i.hd = select i1 %i.gw, i32 %i.hb, i32 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.hf = sext i32 %i.hd to i64
  %i.hg = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2
  %i.hi = load i16, ptr %i.ge, align 8            ; 2 uses
  %i.hj = xor i16 %i.hi, %i.hh
  %i.hk = and i16 %i.hj, 16383
  %.not29.i.i = icmp eq i16 %i.hk, 0
  br i1 %.not29.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hl = sub i32 16383, %i.gs
  %spec.select.i.i = select i1 %i.gw, i32 %i.hl, i32 %i.gs
  %i.hm = sext i32 %spec.select.i.i to i64
  %i.hn = getelementptr inbounds [2 x i8], ptr %i.he, i64 %i.hm
  store i16 %i.hi, ptr %i.hn, align 2
  %i.ho = load i32, ptr %i.gr, align 4
  %i.hp = add i32 %i.ho, 1
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.ab, %bb.z
  %.sink.i.i = phi i32 [ %i.hp, %bb.ab ], [ 1, %bb.z ]
  store i32 %.sink.i.i, ptr %i.gr, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %.sink.split.i.i, %bb.aa, %bb.x
  %indvars.iv.next.i58.i = add nuw nsw i64 %indvars.iv.i57.i, 1 ; 2 uses
  %i.hq = load i16, ptr %i.gb, align 8
  %i.hr = sext i16 %i.hq to i64
  %i.hs = icmp slt i64 %indvars.iv.next.i58.i, %i.hr
  br i1 %i.hs, label %bb.x, label %fillQueryRepresentationData.exit.i, !llvm.loop !20

fillQueryRepresentationData.exit.i:               ; preds = %bb.ac, %.lr.ph.i106
  %i.ht = load ptr, ptr %4, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = call zeroext i1 @TS_execute(ptr noundef nonnull %i.hu, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #10, !inline_history !16
  br i1 %i.hv, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.hw = getelementptr inbounds nuw i8, ptr %.05183.i, i64 16
  %i.hx = load i16, ptr %i.hw, align 8
  %i.hy = and i16 %i.hx, 16383                    ; 3 uses
  %.not = icmp eq i16 %i.hy, 0
  br i1 %.not, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hz = load ptr, ptr %4, align 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 4
  %i.ib = load i32, ptr %i.ia, align 4
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i

.lr.ph.i59.i:                                     ; preds = %bb.ae, %.lr.ph.i59.i
  %indvars.iv.i60.i = phi i64 [ %indvars.iv.next.i61.i, %.lr.ph.i59.i ], [ 0, %bb.ae ] ; 4 uses
  %i.id = load ptr, ptr %i.at, align 8
  %i.ie = getelementptr inbounds nuw [32776 x i8], ptr %i.id, i64 %indvars.iv.i60.i
  store i8 0, ptr %i.ie, align 4
  %i.if = load ptr, ptr %i.at, align 8
  %i.ig = getelementptr inbounds nuw [32776 x i8], ptr %i.if, i64 %indvars.iv.i60.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 1
  store i8 1, ptr %i.ih, align 1
  %i.ii = load ptr, ptr %i.at, align 8
  %i.ij = getelementptr inbounds nuw [32776 x i8], ptr %i.ii, i64 %indvars.iv.i60.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 0, ptr %i.ik, align 4
  %indvars.iv.next.i61.i = add nuw nsw i64 %indvars.iv.i60.i, 1 ; 2 uses
  %i.il = load ptr, ptr %4, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 4
  %i.in = load i32, ptr %i.im, align 4
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp slt i64 %indvars.iv.next.i61.i, %i.io
  br i1 %i.ip, label %.lr.ph.i59.i, label %resetQueryRepresentation.exit62.i, !llvm.loop !17

resetQueryRepresentation.exit62.i:                ; preds = %.lr.ph.i59.i, %bb.ae
  %sext.i = shl i64 %i.ga, 32
  %i.iq = ashr exact i64 %sext.i, 32              ; 2 uses
  %.not84.i = icmp slt i64 %i.iq, %indvars.iv
  br i1 %.not84.i, label %.loopexit.i108.thread, label %.lr.ph86.i.preheader

.lr.ph86.i.preheader:                             ; preds = %resetQueryRepresentation.exit62.i
  %i.ir = getelementptr inbounds [24 x i8], ptr %.3.i, i64 %i.iq
  br label %.lr.ph86.i

bb.af:                                            ; preds = %fillQueryRepresentationData.exit.i
  %i.is = getelementptr inbounds nuw i8, ptr %.05183.i, i64 24 ; 2 uses
  %i.it = ptrtoint ptr %i.is to i64
  %i.iu = sub i64 %i.it, %i.dz
  %i.iv = sdiv exact i64 %i.iu, 24                ; 2 uses
  %i.iw = icmp slt i64 %i.iv, %5
  br i1 %i.iw, label %.lr.ph.i106, label %.loopexit, !llvm.loop !21

.lr.ph86.i:                                       ; preds = %.lr.ph86.i.preheader, %bb.am
  %.185.i = phi ptr [ %i.ks, %bb.am ], [ %i.ir, %.lr.ph86.i.preheader ] ; 9 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %.185.i, i64 8 ; 2 uses
  %i.iy = load i16, ptr %i.ix, align 8
  %i.iz = icmp sgt i16 %i.iy, 0
  br i1 %i.iz, label %.lr.ph.i63.i, label %fillQueryRepresentationData.exit71.i

.lr.ph.i63.i:                                     ; preds = %.lr.ph86.i
  %i.ja = getelementptr inbounds nuw i8, ptr %.185.i, i64 16 ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.al, %.lr.ph.i63.i
  %indvars.iv.i64.i = phi i64 [ 0, %.lr.ph.i63.i ], [ %indvars.iv.next.i66.i, %bb.al ] ; 2 uses
  %i.jb = load ptr, ptr %.185.i, align 8
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %indvars.iv.i64.i
  %i.jd = load ptr, ptr %i.jc, align 8            ; 2 uses
  %i.je = load i8, ptr %i.jd, align 4
  %.not.i65.i = icmp eq i8 %i.je, 1
  br i1 %.not.i65.i, label %bb.ah, label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.jf = load ptr, ptr %i.at, align 8
  %i.jg = load ptr, ptr %4, align 8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  %i.ji = ptrtoint ptr %i.jd to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = sdiv exact i64 %i.jk, 12
  %i.jm = getelementptr inbounds [32776 x i8], ptr %i.jf, i64 %i.jl ; 5 uses
  store i8 1, ptr %i.jm, align 4
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 4            ; 5 uses
  %i.jp = icmp eq i32 %i.jo, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jm, i64 1
  %i.jr = load i8, ptr %i.jq, align 1, !range !18, !noundef !19
  %i.js = trunc nuw i8 %i.jr to i1                ; 3 uses
  br i1 %i.jp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jt = load i16, ptr %i.ja, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jv = select i1 %i.js, i64 16383, i64 0
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.ju, i64 %i.jv
  store i16 %i.jt, ptr %i.jw, align 2
  br label %.sink.split.i69.i

bb.aj:                                            ; preds = %bb.ah
  %i.jx = sub i32 16384, %i.jo
  %i.jy = add i32 %i.jo, -1
  %i.jz = select i1 %i.js, i32 %i.jx, i32 %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.kb = sext i32 %i.jz to i64
  %i.kc = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.kb
  %i.kd = load i16, ptr %i.kc, align 2
  %i.ke = load i16, ptr %i.ja, align 8            ; 2 uses
  %i.kf = xor i16 %i.ke, %i.kd
  %i.kg = and i16 %i.kf, 16383
  %.not29.i67.i = icmp eq i16 %i.kg, 0
  br i1 %.not29.i67.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kh = sub i32 16383, %i.jo
  %spec.select.i68.i = select i1 %i.js, i32 %i.kh, i32 %i.jo
  %i.ki = sext i32 %spec.select.i68.i to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.ka, i64 %i.ki
  store i16 %i.ke, ptr %i.kj, align 2
  %i.kk = load i32, ptr %i.jn, align 4
  %i.kl = add i32 %i.kk, 1
  br label %.sink.split.i69.i

.sink.split.i69.i:                                ; preds = %bb.ak, %bb.ai
  %.sink.i70.i = phi i32 [ %i.kl, %bb.ak ], [ 1, %bb.ai ]
  store i32 %.sink.i70.i, ptr %i.jn, align 4
  br label %bb.al

bb.al:                                            ; preds = %.sink.split.i69.i, %bb.aj, %bb.ag
  %indvars.iv.next.i66.i = add nuw nsw i64 %indvars.iv.i64.i, 1 ; 2 uses
  %i.km = load i16, ptr %i.ix, align 8
  %i.kn = sext i16 %i.km to i64
  %i.ko = icmp slt i64 %indvars.iv.next.i66.i, %i.kn
  br i1 %i.ko, label %bb.ag, label %fillQueryRepresentationData.exit71.i, !llvm.loop !20

fillQueryRepresentationData.exit71.i:             ; preds = %bb.al, %.lr.ph86.i
  %i.kp = load ptr, ptr %4, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 8
  %i.kr = call zeroext i1 @TS_execute(ptr noundef nonnull %i.kq, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @checkcondition_QueryOperand) #10, !inline_history !16
  br i1 %i.kr, label %.loopexit.i108, label %bb.am

bb.am:                                            ; preds = %fillQueryRepresentationData.exit71.i
  %i.ks = getelementptr inbounds i8, ptr %.185.i, i64 -24 ; 2 uses
  %.not.i107 = icmp ult ptr %i.ks, %i.fz
  br i1 %.not.i107, label %.loopexit.i108.thread, label %.lr.ph86.i, !llvm.loop !22

.loopexit.i108:                                   ; preds = %fillQueryRepresentationData.exit71.i
  %i.kt = getelementptr inbounds nuw i8, ptr %.185.i, i64 16
  %i.ku = load i16, ptr %i.kt, align 8
  %i.kv = and i16 %i.ku, 16383                    ; 2 uses
  %.not55.i = icmp samesign ugt i16 %i.kv, %i.hy
  br i1 %.not55.i, label %.loopexit.i108.thread, label %bb.an

.loopexit.i108.thread:                            ; preds = %bb.am, %resetQueryRepresentation.exit62.i, %.loopexit.i108
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %tailrecurse.i

bb.an:                                            ; preds = %.loopexit.i108
  %i.kw = zext nneg i16 %i.hy to i32              ; 2 uses
  %i.kx = zext nneg i16 %i.kv to i32              ; 2 uses
  %i.ky = ptrtoint ptr %.185.i to i64
  %i.kz = sub i64 %i.ky, %i.dz
  %i.la = sdiv exact i64 %i.kz, 24
  %i.lb = add nsw i64 %i.la, 1
  %.not105159 = icmp ugt ptr %.185.i, %.05183.i
  br i1 %.not105159, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.an, %.lr.ph
  %.0161 = phi ptr [ %i.lj, %.lr.ph ], [ %.185.i, %bb.an ] ; 2 uses
  %.082160 = phi double [ %i.li, %.lr.ph ], [ 0.000000e+00, %bb.an ]
  %i.lc = getelementptr inbounds nuw i8, ptr %.0161, i64 16
  %i.ld = load i16, ptr %i.lc, align 8
  %i.le = lshr i16 %i.ld, 14
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.lf
  %i.lh = load double, ptr %i.lg, align 8
  %i.li = fadd double %.082160, %i.lh             ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.0161, i64 24 ; 2 uses
  %.not105 = icmp ugt ptr %i.lj, %.05183.i
  br i1 %.not105, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %.lr.ph, %bb.an
  %.082.lcssa = phi double [ 0.000000e+00, %bb.an ], [ %i.li, %.lr.ph ]
  %i.lk = ptrtoint ptr %.05183.i to i64
  %i.ll = ptrtoint ptr %.185.i to i64
  %i.lm = sub i64 %i.lk, %i.ll                    ; 2 uses
  %i.ln = sdiv exact i64 %i.lm, 24                ; 2 uses
  %i.lo = add nsw i64 %i.ln, 1
  %i.lp = sitofp i64 %i.lo to double
  %i.lq = fdiv double %i.lp, %.082.lcssa
  %i.lr = trunc i64 %i.ln to i32
  %i.ls = add i32 %i.kx, %i.lr
  %i.lt = sub i32 %i.kw, %i.ls                    ; 2 uses
  %i.lu = icmp slt i32 %i.lt, 0
  br i1 %i.lu, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %._crit_edge
  %i.lv = sdiv i64 %i.lm, 48
  %i.lw = trunc i64 %i.lv to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %._crit_edge
  %.081 = phi i32 [ %i.lw, %bb.ao ], [ %i.lt, %._crit_edge ]
  %i.lx = add i32 %.081, 1
  %i.ly = sitofp i32 %i.lx to double
  %i.lz = add nuw nsw i32 %i.kx, %i.kw
  %i.ma = uitofp nneg i32 %i.lz to double
  %i.mb = fmul nnan double %i.ma, 5.000000e-01    ; 3 uses
  %i.mc = icmp sgt i32 %.084, 0
  %i.md = fcmp ogt double %i.mb, %.085
  %or.cond = select i1 %i.mc, i1 %i.md, i1 false
  %i.me = fsub double %i.mb, %.085
  %i.mf = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.lq, i64 0
  %i.mg = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mh = insertelement <2 x double> %i.mg, double %i.me, i64 1
  %i.mi = fdiv <2 x double> %i.mf, %i.mh
  %i.mj = fadd <2 x double> %i.fg, %i.mi          ; 2 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 1
  %.1 = select i1 %or.cond, double %i.mk, double %.086 ; 2 uses
  %i.ml = add i32 %.084, 1
  %i.mm = insertelement <2 x double> %i.mj, double %.1, i64 1
  br label %bb.w, !llvm.loop !24

.loopexit:                                        ; preds = %resetQueryRepresentation.exit.i, %bb.ad, %bb.af
  %i.mn = and i32 %3, 1
  %.not100 = icmp eq i32 %i.mn, 0
  %i.mo = extractelement <2 x double> %i.fg, i64 0 ; 3 uses
  br i1 %.not100, label %bb.at, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  %i.mp = load i32, ptr %i.bc, align 4            ; 2 uses
  %i.mq = icmp sgt i32 %i.mp, 0
  br i1 %i.mq, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.mr = zext nneg i32 %i.mp to i64
  %.idx.i = shl nuw nsw i64 %i.mr, 2
  %i.ms = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i ; 2 uses
  br label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.ar, %.thread.i
  %.020.i = phi i32 [ %i.nd, %.thread.i ], [ 0, %bb.ar ]
  %.01519.i = phi ptr [ %i.ne, %.thread.i ], [ %i.bb, %bb.ar ] ; 2 uses
  %i.mt = load i32, ptr %.01519.i, align 4        ; 3 uses
  %i.mu = and i32 %i.mt, 1
  %.not.i111 = icmp eq i32 %i.mu, 0
  br i1 %.not.i111, label %.thread.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i110
  %i.mv = lshr i32 %i.mt, 12
  %i.mw = lshr i32 %i.mt, 1
end_hunk_0
begin_hunk_1_@find_wordentry:bb.a
  %spec.select = select i1 %.not, ptr %.1, ptr %.245 ; 2 uses
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
