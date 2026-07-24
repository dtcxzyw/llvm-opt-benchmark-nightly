inline.NumInlined: 71
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@unupack399:.preheader336
bb.m:                                             ; preds = %bb.l
  %i.ch = shl i32 %i.bx, 4
  %i.ci = add i32 %i.ch, %i.bc
  store ptr %i.q, ptr %i.d, align 8, !tbaa !31
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.f
  %i.cj = phi ptr [ %i.q, %bb.m ], [ %i.bg, %bb.f ]
  %i.ck = phi i32 [ 4, %bb.m ], [ %i.ba, %bb.f ]  ; 6 uses
  %.0230 = phi i32 [ %i.ci, %bb.m ], [ %i.bc, %bb.f ]
  %i.cl = and i32 %i.ck, 255
  %i.cm = shl nuw i32 1, %i.cl                    ; 2 uses
  store i32 %i.cm, ptr %i.b, align 4, !tbaa !4
  store i32 %i.ck, ptr %i.a, align 4, !tbaa !4
  %i.cn = call i32 @lzma_upack_esi_50(ptr noundef nonnull %9, i32 noundef 1, i32 noundef %i.cm, ptr noundef nonnull %i.d, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1) #4
  %i.co = icmp eq i32 %i.cn, -1
  br i1 %i.co, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !4   ; 3 uses
  %i.cq = ashr i32 %i.cp, 31                      ; 2 uses
  %i.cr = add nsw i32 %i.ck, -1
  %xtraiter = and i32 %i.ck, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.o, %.prol.preheader
  %i.cs = phi i32 [ %i.cy, %.prol.preheader ], [ %i.ck, %bb.o ]
  %i.ct = phi i32 [ %i.cx, %.prol.preheader ], [ %i.cp, %bb.o ] ; 2 uses
  %.0223.prol = phi i32 [ %i.cw, %.prol.preheader ], [ %i.cq, %bb.o ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.o ]
  %i.cu = shl i32 %.0223.prol, 1
  %i.cv = and i32 %i.ct, 1
  %i.cw = or disjoint i32 %i.cv, %i.cu            ; 3 uses
  %i.cx = lshr i32 %i.ct, 1                       ; 3 uses
  %i.cy = add i32 %i.cs, -1                       ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !33

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.o
  %.lcssa414.unr.a = phi i32 [ poison, %bb.o ], [ %i.cw, %.prol.preheader ]
  %.lcssa413.unr = phi i32 [ poison, %bb.o ], [ %i.cx, %.prol.preheader ]
  %.unr = phi i32 [ %i.ck, %bb.o ], [ %i.cy, %.prol.preheader ]
  %.unr423 = phi i32 [ %i.cp, %bb.o ], [ %i.cx, %.prol.preheader ]
  %.0223.unr = phi i32 [ %i.cq, %bb.o ], [ %i.cw, %.prol.preheader ]
  %i.cz = icmp ult i32 %i.cr, 3
  br i1 %i.cz, label %.unr-lcssa, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.da = phi i32 [ %i.dq, %.new ], [ %.unr, %.prol.loopexit ]
  %i.db = phi i32 [ %i.dp, %.new ], [ %.unr423, %.prol.loopexit ] ; 5 uses
  %.0223 = phi i32 [ %i.do, %.new ], [ %.0223.unr, %.prol.loopexit ]
  %i.dc = shl i32 %.0223, 3
  %i.dd = shl i32 %i.db, 2
  %i.de = and i32 %i.dd, 4
  %i.df = or disjoint i32 %i.dc, %i.de
  %i.dg = and i32 %i.db, 2
  %i.dh = or disjoint i32 %i.dg, %i.df
  %i.di = lshr i32 %i.db, 2
  %i.dj = and i32 %i.di, 1
  %i.dk = or disjoint i32 %i.dj, %i.dh
  %i.dl = lshr i32 %i.db, 3
  %i.dm = shl i32 %i.dk, 1
  %i.dn = and i32 %i.dl, 1
  %i.do = or disjoint i32 %i.dn, %i.dm            ; 2 uses
  %i.dp = lshr i32 %i.db, 4                       ; 2 uses
  %i.dq = add i32 %i.da, -4                       ; 2 uses
  %.not283.3 = icmp eq i32 %i.dq, 0
  br i1 %.not283.3, label %.unr-lcssa, label %.new, !llvm.loop !34

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa414.a = phi i32 [ %.lcssa414.unr.a, %.prol.loopexit ], [ %i.do, %.new ]
  %.lcssa413 = phi i32 [ %.lcssa413.unr, %.prol.loopexit ], [ %i.dp, %.new ] ; 2 uses
  store i32 %.lcssa413, ptr %i.a, align 4, !tbaa !4
  %i.dr = add i32 %.lcssa414.a, %.0230
  br label %bb.p

bb.p:                                             ; preds = %.unr-lcssa, %bb.e
  %i.ds = phi i32 [ %.lcssa413, %.unr-lcssa ], [ %i.av, %bb.e ]
  %.1231 = phi i32 [ %i.dr, %.unr-lcssa ], [ %i.av, %bb.e ]
  %i.dt = add i32 %.1231, 1
  br label %bb.aa

bb.q:                                             ; preds = %bb.b
  %i.du = load i32, ptr %i.b, align 4, !tbaa !4
  %i.dv = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.dw = zext i32 %i.du to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dw ; 2 uses
  store ptr %i.dx, ptr %i.d, align 8, !tbaa !31
  %i.dy = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef %i.dx, ptr noundef %0, i32 noundef %1) #4
  %.not285 = icmp eq i32 %i.dy, 0
  br i1 %.not285, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 96 ; 2 uses
  store ptr %i.ea, ptr %i.d, align 8, !tbaa !31
  %i.eb = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef nonnull %i.ea, ptr noundef %0, i32 noundef %1) #4
  %.not292 = icmp eq i32 %i.eb, 0
  br i1 %.not292, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ec = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ed = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ee = zext i32 %i.ec to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ee ; 2 uses
  store ptr %i.ef, ptr %i.d, align 8, !tbaa !31
  %i.eg = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef %i.ef, ptr noundef %0, i32 noundef %1) #4
  %.not293 = icmp eq i32 %i.eg, 0                 ; 2 uses
  %spec.select400 = select i1 %.not293, i32 %.sroa.20.0, i32 %.sroa.15.0
  %spec.select401 = select i1 %.not293, i32 %.sroa.15.0, i32 %.sroa.20.0
  br label %bb.y

bb.t:                                             ; preds = %bb.q
  %i.eh = load i32, ptr %i.b, align 4, !tbaa !4
  %i.ei = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ej = zext i32 %i.eh to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej ; 2 uses
  store ptr %i.ek, ptr %i.d, align 8, !tbaa !31
  %i.el = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef %i.ek, ptr noundef %0, i32 noundef %1) #4
  %.not286 = icmp eq i32 %i.el, 0
  br i1 %.not286, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.em = load i32, ptr %i.a, align 4, !tbaa !4
  %i.en = or i32 %i.em, 1                         ; 2 uses
  store i32 %i.en, ptr %i.a, align 4, !tbaa !4
  %i.eo = zext i32 %.sroa.4.0 to i64
  %i.ep = sub nsw i64 0, %i.eo
  %i.eq = getelementptr inbounds i8, ptr %.0216, i64 %i.ep ; 3 uses
  %i.er = load i32, ptr %i.b, align 4, !tbaa !4
  %i.es = and i32 %i.er, -256
  %i.et = or disjoint i32 %i.es, 128
  store i32 %i.et, ptr %i.b, align 4, !tbaa !4
  %.not288 = icmp ult ptr %i.eq, %0
  %or.cond304 = select i1 %.not287, i1 true, i1 %.not288
  br i1 %or.cond304, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %.not289 = icmp ugt ptr %i.eu, %i.n
  %i.ev = icmp ule ptr %i.eu, %0
  %or.cond305.not330 = or i1 %.not289, %i.ev
  %.not290 = icmp ult ptr %.0216, %0
  %or.cond306 = or i1 %.not290, %or.cond305.not330
  br i1 %or.cond306, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ew = getelementptr inbounds nuw i8, ptr %.0216, i64 1 ; 2 uses
  %.not291.not = icmp ugt ptr %i.ew, %i.n
  br i1 %.not291.not, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ex = load i8, ptr %i.eq, align 1, !tbaa !8
  store i8 %i.ex, ptr %.0216, align 1, !tbaa !8
  br label %bb.ao

bb.y:                                             ; preds = %bb.s, %bb.r, %bb.t
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.t ], [ %.sroa.4.0, %bb.r ], [ %.sroa.4.0, %bb.s ]
  %.sroa.15.1 = phi i32 [ %.sroa.15.0, %bb.t ], [ %.sroa.15.0, %bb.r ], [ %.sroa.8.0, %bb.s ]
  %.sroa.20.1 = phi i32 [ %.sroa.20.0, %bb.t ], [ %.sroa.20.0, %bb.r ], [ %spec.select400, %bb.s ]
  %.2232 = phi i32 [ %.sroa.4.0, %bb.t ], [ %.sroa.8.0, %bb.r ], [ %spec.select401, %bb.s ]
  %i.ey = load i32, ptr %i.a, align 4, !tbaa !4   ; 2 uses
  store ptr %i.l, ptr %i.d, align 8, !tbaa !31
  %i.ez = call i32 @lzma_upack_esi_54(ptr noundef nonnull %9, i32 noundef %i.ey, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %0, i32 noundef %1) #4
  %i.fa = icmp eq i32 %i.ez, -1
  br i1 %i.fa, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fb = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  store i32 %i.fb, ptr %i.a, align 4, !tbaa !4
  %i.fc = load i32, ptr %i.c, align 4, !tbaa !4   ; 2 uses
  %.pre373 = add i32 %i.fc, -1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.p
  %.pre-phi = phi i32 [ %.pre373, %bb.z ], [ %i.an, %bb.p ]
  %i.fd = phi i32 [ %i.fb, %bb.z ], [ %i.ds, %bb.p ]
  %.sroa.8.2 = phi i32 [ %.sroa.8.1, %bb.z ], [ %.sroa.4.0, %bb.p ]
  %.sroa.15.2 = phi i32 [ %.sroa.15.1, %bb.z ], [ %.sroa.8.0, %bb.p ]
  %.sroa.20.2 = phi i32 [ %.sroa.20.1, %bb.z ], [ %.sroa.15.0, %bb.p ]
  %i.fe = phi i32 [ %i.fc, %bb.z ], [ %i.am, %bb.p ] ; 4 uses
  %.3233 = phi i32 [ %.2232, %bb.z ], [ %i.dt, %bb.p ] ; 2 uses
  %.1227 = phi i32 [ %i.ey, %bb.z ], [ %i.aj, %bb.p ]
  store i32 %i.fe, ptr %i.b, align 4, !tbaa !4
  %i.ff = icmp uge i32 %.pre-phi, %1
  %or.cond308 = select i1 %.not287, i1 true, i1 %i.ff
  %.not295 = icmp ult ptr %.0216, %0
  %or.cond309 = or i1 %.not295, %or.cond308
  br i1 %or.cond309, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = zext i32 %i.fe to i64                   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %.0216, i64 %i.fg ; 2 uses
  %.not296 = icmp ule ptr %i.fh, %i.n
  %i.fi = icmp ugt ptr %i.fh, %0
  %or.cond310 = and i1 %.not296, %i.fi
  %or.cond311.not = icmp ult i32 %i.fe, %1
  %or.cond334 = select i1 %or.cond310, i1 %or.cond311.not, i1 false
  br i1 %or.cond334, label %bb.ac, label %.critedge

bb.ac:                                            ; preds = %bb.ab
  %10 = zext i32 %.3233 to i64
  %11 = sub nsw i64 0, %10                        ; 3 uses
  %i.fj = getelementptr inbounds i8, ptr %.0216, i64 %11 ; 2 uses
  %.not299 = icmp uge ptr %i.fj, %0
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fg
  %12 = getelementptr inbounds nuw i8, ptr %i.fk, i64 1
  %.not300 = icmp ule ptr %12, %i.n
  %or.cond358 = select i1 %.not299, i1 %.not300, i1 false
  br i1 %or.cond358, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %.not357 = icmp eq i32 %i.fe, 0
  br i1 %.not357, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ad, %.lr.ph
  %.1217354 = phi ptr [ %i.fo, %.lr.ph ], [ %.0216, %bb.ad ] ; 3 uses
  %.1225353 = phi i32 [ %i.fn, %.lr.ph ], [ 0, %bb.ad ]
  %i.fl = getelementptr inbounds i8, ptr %.1217354, i64 %11
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !8
  store i8 %i.fm, ptr %.1217354, align 1, !tbaa !8
  %i.fn = add nuw i32 %.1225353, 1                ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.1217354, i64 1 ; 2 uses
  %i.fp = load i32, ptr %i.b, align 4, !tbaa !4
  %i.fq = icmp ult i32 %i.fn, %i.fp
  br i1 %i.fq, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !35

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ad
  %i.fr = phi i32 [ %i.fd, %bb.ad ], [ %.pre, %._crit_edge.loopexit ]
  %.1217.lcssa = phi ptr [ %.0216, %bb.ad ], [ %i.fo, %._crit_edge.loopexit ] ; 2 uses
  %i.fs = and i32 %i.fr, -256
  %i.ft = getelementptr inbounds i8, ptr %.1217.lcssa, i64 %11
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !8
  %i.fv = zext i8 %i.fu to i32
  %i.fw = or disjoint i32 %i.fs, %i.fv
  store i32 %i.fw, ptr %i.a, align 4, !tbaa !4
  br label %.thread324

.preheader335:                                    ; preds = %bb.a, %.preheader335
  %i.fx = phi i32 [ %i.ga, %.preheader335 ], [ %.promoted355, %bb.a ] ; 2 uses
  %i.fy = and i32 %i.fx, 255
  %.0235 = call i32 @llvm.usub.sat.i32(i32 %i.fy, i32 3) ; 2 uses
  %i.fz = and i32 %i.fx, -256                     ; 2 uses
  %i.ga = or disjoint i32 %.0235, %i.fz           ; 5 uses
  %i.gb = icmp samesign ugt i32 %.0235, 6
  br i1 %i.gb, label %.preheader335, label %bb.ae, !llvm.loop !36

bb.ae:                                            ; preds = %.preheader335
  store i32 %i.ga, ptr %i.a, align 4, !tbaa !4
  %i.gc = icmp ugt ptr %.0216, %5
  %i.gd = icmp ult ptr %.0216, %i.n
  %or.cond315 = select i1 %i.gc, i1 %i.gd, i1 false
  br i1 %or.cond315, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds i8, ptr %.0216, i64 -1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !8
  %i.gg = zext i8 %i.gf to i32
  %i.gh = lshr i32 %i.gg, %7
  %i.gi = mul nuw nsw i32 %i.gh, 3072
  %i.gj = add nuw nsw i32 %i.gi, 4104
  %i.gk = zext nneg i32 %i.gj to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %.4234 = phi i64 [ %i.gk, %bb.af ], [ 4104, %bb.ae ]
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 %.4234 ; 3 uses
  %i.gm = or disjoint i32 %i.fz, 1                ; 3 uses
  store i32 %i.gm, ptr %i.a, align 4, !tbaa !4
  %i.gn = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %.not269 = icmp eq i32 %i.gn, 0
  br i1 %.not269, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.go = zext i32 %.sroa.4.0 to i64
  %i.gp = sub nsw i64 0, %i.go
  %i.gq = getelementptr inbounds i8, ptr %.0216, i64 %i.gp ; 3 uses
  %.not271 = icmp ult ptr %i.gq, %0
  %or.cond316 = select i1 %.not287, i1 true, i1 %.not271
  br i1 %or.cond316, label %.critedge, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 1 ; 2 uses
  %.not272 = icmp ule ptr %i.gr, %i.n
  %i.gs = icmp ugt ptr %i.gr, %0
  %or.cond317 = and i1 %.not272, %i.gs
  br i1 %or.cond317, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.ai, %bb.aj
  %i.gt = phi i32 [ %i.hj, %bb.aj ], [ %i.gm, %bb.ai ]
  %.0 = phi i32 [ %i.hl, %bb.aj ], [ %i.gn, %bb.ai ] ; 2 uses
  %i.gu = and i32 %i.gt, -65281
  %i.gv = load i8, ptr %i.gq, align 1, !tbaa !8
  %i.gw = zext i8 %i.gv to i32
  %i.gx = and i32 %.0, %i.gw
  %.not273 = icmp eq i32 %i.gx, 0
  %i.gy = select i1 %.not273, i32 256, i32 512
  %i.gz = or disjoint i32 %i.gy, %i.gu            ; 2 uses
  store i32 %i.gz, ptr %i.a, align 4, !tbaa !4
  %i.ha = shl i32 %i.gz, 2
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.hb ; 2 uses
  store ptr %i.hc, ptr %i.d, align 8, !tbaa !31
  %i.hd = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef nonnull %i.hc, ptr noundef %0, i32 noundef %1) #4 ; 2 uses
  %i.he = load i32, ptr %i.a, align 4, !tbaa !4   ; 4 uses
  %i.hf = shl i32 %i.he, 1
  %i.hg = add i32 %i.hf, %i.hd
  %i.hh = and i32 %i.hg, 255                      ; 2 uses
  %i.hi = and i32 %i.he, -256
  %i.hj = or disjoint i32 %i.hh, %i.hi            ; 2 uses
  store i32 %i.hj, ptr %i.a, align 4, !tbaa !4
  %i.hk = lshr i32 %.0, 1
  %i.hl = and i32 %i.hk, 127                      ; 2 uses
  %.not274 = icmp eq i32 %i.hl, 0
  br i1 %.not274, label %.thread324, label %bb.aj

bb.aj:                                            ; preds = %.preheader
  %i.hm = lshr i32 %i.he, 8
  %i.hn = sub i32 %i.hm, %i.hd
  %i.ho = and i32 %i.hn, 1
  %.not275 = icmp eq i32 %i.ho, 0
  br i1 %.not275, label %bb.ak, label %.preheader

bb.ak:                                            ; preds = %bb.aj
  %i.hp = and i32 %i.he, -65536
  %i.hq = or disjoint i32 %i.hh, %i.hp            ; 2 uses
  store i32 %i.hq, ptr %i.a, align 4, !tbaa !4
  %i.hr = call i32 @lzma_upack_esi_50(ptr noundef nonnull %9, i32 noundef %i.hq, i32 noundef 256, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gl, ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1) #4
  %i.hs = icmp eq i32 %i.hr, -1
  br i1 %i.hs, label %.critedge, label %.thread324

bb.al:                                            ; preds = %bb.ag
  store i32 256, ptr %i.b, align 4, !tbaa !4
  %i.ht = call i32 @lzma_upack_esi_50(ptr noundef nonnull %9, i32 noundef %i.gm, i32 noundef 256, ptr noundef nonnull %i.d, ptr noundef nonnull %i.gl, ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1) #4
  %i.hu = icmp eq i32 %i.ht, -1
  br i1 %i.hu, label %.critedge, label %.thread324

.thread324:                                       ; preds = %.preheader, %bb.ak, %bb.al, %._crit_edge
  %.sroa.8.3 = phi i32 [ %.sroa.8.0, %bb.al ], [ %.sroa.8.2, %._crit_edge ], [ %.sroa.8.0, %bb.ak ], [ %.sroa.8.0, %.preheader ]
  %.sroa.4.1 = phi i32 [ %.sroa.4.0, %bb.al ], [ %.3233, %._crit_edge ], [ %.sroa.4.0, %bb.ak ], [ %.sroa.4.0, %.preheader ]
  %.sroa.15.3 = phi i32 [ %.sroa.15.0, %bb.al ], [ %.sroa.15.2, %._crit_edge ], [ %.sroa.15.0, %bb.ak ], [ %.sroa.15.0, %.preheader ]
  %.sroa.20.3 = phi i32 [ %.sroa.20.0, %bb.al ], [ %.sroa.20.2, %._crit_edge ], [ %.sroa.20.0, %bb.ak ], [ %.sroa.20.0, %.preheader ]
  %storemerge = phi i32 [ 0, %bb.al ], [ 128, %._crit_edge ], [ 0, %bb.ak ], [ 0, %.preheader ]
  %.2228 = phi i32 [ %i.ga, %bb.al ], [ %.1227, %._crit_edge ], [ %i.ga, %bb.ak ], [ %i.ga, %.preheader ]
  %.2218 = phi ptr [ %.0216, %bb.al ], [ %.1217.lcssa, %._crit_edge ], [ %.0216, %bb.ak ], [ %.0216, %.preheader ] ; 3 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !4
  %.not302 = icmp ult ptr %.2218, %0
  %or.cond318 = or i1 %.not287, %.not302
  br i1 %or.cond318, label %.critedge, label %bb.am

bb.am:                                            ; preds = %.thread324
  %i.hv = getelementptr inbounds nuw i8, ptr %.2218, i64 1 ; 2 uses
  %.not303.not = icmp ugt ptr %i.hv, %i.n
  br i1 %.not303.not, label %.critedge, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hw = load i32, ptr %i.a, align 4, !tbaa !4
  %i.hx = trunc i32 %i.hw to i8
  store i8 %i.hx, ptr %.2218, align 1, !tbaa !8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.x
  %.sroa.8.4 = phi i32 [ %.sroa.8.3, %bb.an ], [ %.sroa.8.0, %bb.x ]
  %.sroa.4.2 = phi i32 [ %.sroa.4.1, %bb.an ], [ %.sroa.4.0, %bb.x ]
  %.sroa.15.4 = phi i32 [ %.sroa.15.3, %bb.an ], [ %.sroa.15.0, %bb.x ]
  %.sroa.20.4 = phi i32 [ %.sroa.20.3, %bb.an ], [ %.sroa.20.0, %bb.x ]
  %.3229 = phi i32 [ %.2228, %bb.an ], [ %i.en, %bb.x ]
  %.3 = phi ptr [ %i.hv, %bb.an ], [ %i.ew, %bb.x ] ; 2 uses
  %i.hy = icmp ult ptr %.3, %6
  br i1 %i.hy, label %bb.a, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %bb.ak, %bb.ai, %bb.ah, %bb.ao, %.thread324, %bb.am, %bb.al, %bb.aa, %bb.ab, %bb.ac, %bb.y, %bb.u, %bb.v, %bb.w, %bb.n, %bb.d, %bb.c, %bb.g, %.split
  %.13 = phi i32 [ -1, %.split ], [ -1, %.thread324 ], [ -1, %bb.ah ], [ -1, %bb.am ], [ -1, %bb.ab ], [ -1, %bb.ak ], [ -1, %bb.ac ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.ai ], [ 1, %bb.ao ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.aa ], [ -1, %bb.n ], [ -1, %bb.y ], [ -1, %bb.al ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  ret i32 %.13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_upack_esi_00(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_upack_esi_54(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_upack_esi_50(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !11, !12}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10}
!20 = !{!21, !5, i64 8}
!21 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!22 = !{!21, !5, i64 0}
!23 = !{!21, !5, i64 12}
!24 = !{!21, !5, i64 4}
!25 = !{!26, !27, i64 0}
!26 = !{!"lzmastate", !27, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 omnipotent char", !28, i64 0}
!28 = !{!"any pointer", !6, i64 0}
!29 = !{!26, !5, i64 8}
!30 = !{!26, !5, i64 12}
!31 = !{!27, !27, i64 0}
!32 = distinct !{!32, !10}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !10}
!35 = distinct !{!35, !10}
!36 = distinct !{!36, !10}
!37 = distinct !{!37, !10}
end_hunk_0
