inline.NumInlined: 18
inline.NumDeleted: 6
begin_hunk_0_@bb_test_size_limit:bb.a
  store i64 %i.x, ptr %i.y, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.z = load i64, ptr %.0198292, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  store i64 %i.z, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.0198292, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8
  %i.ae = load i64, ptr %i.v, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store i64 %i.ae, ptr %i.af, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.0198292, i64 40
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !50

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.ah = zext nneg i32 %.sroa.8.0.copyload.fr to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0201.lcssa = phi i64 [ 0, %bb.a ], [ %i.ah, %._crit_edge.loopexit ] ; 4 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %.sroa.1617.0.copyload, i64 %.sroa.18.0.copyload) ; 2 uses
  %.not = icmp eq i64 %.sroa.1314.0.copyload, %i.ai
  br i1 %.not, label %._crit_edge._crit_edge, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.aj = sub i64 %.sroa.1314.0.copyload, %i.ai
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.0201.lcssa
  store i64 %i.aj, ptr %i.ak, align 8
  br label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.0201.lcssa
  store i64 %.sroa.79.0.copyload, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.0201.lcssa
  store ptr %.sroa.3.0.copyload, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.0201.lcssa
  store i64 %.sroa.1314.0.copyload, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %.not233 = icmp ne i64 %i.ap, 0
  %i.aq = icmp ult i32 %.sroa.8.0.copyload.fr, 2147483647 ; 5 uses
  %or.cond340 = and i1 %.not233, %i.aq
  br i1 %or.cond340, label %.lr.ph294, label %.loopexit282

.lr.ph294:                                        ; preds = %._crit_edge._crit_edge
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32
  %wide.trip.count369 = zext nneg i32 %i.i to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.loopexit282, label %bb.f, !llvm.loop !51

bb.f:                                             ; preds = %.lr.ph294, %bb.e
  %indvars.iv366 = phi i64 [ 0, %.lr.ph294 ], [ %indvars.iv.next367, %bb.e ] ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv366
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call i32 @xstrcmp(ptr noundef %i.as, ptr noundef %i.au) #17
  %.not234 = icmp eq i32 %i.av, 0
  br i1 %.not234, label %bb.g, label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.aw = load i64, ptr %i.ao, align 8            ; 2 uses
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %bb_granularity.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv366
  %i.ay = load i64, ptr %i.ax, align 8            ; 2 uses
  %i.az = add i64 %i.aw, -1
  %i.ba = add i64 %i.az, %i.ay                    ; 2 uses
  %i.bb = urem i64 %i.ba, %i.ay
  %i.bc = sub nuw i64 %i.ba, %i.bb
  br label %bb_granularity.exit

bb_granularity.exit:                              ; preds = %bb.g, %bb.h
  %.0.i = phi i64 [ %i.bc, %bb.h ], [ 0, %bb.g ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv366 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, %.0.i
  store i64 %i.bf, ptr %i.bd, align 8
  br label %.loopexit282

.loopexit282:                                     ; preds = %bb.e, %bb_granularity.exit, %._crit_edge._crit_edge
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %.not343 = icmp ne i32 %i.bh, 0
  %brmerge447.not = and i1 %.not343, %i.aq
  br i1 %brmerge447.not, label %.lr.ph300.split.us.preheader, label %._crit_edge301

.lr.ph300.split.us.preheader:                     ; preds = %.loopexit282
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8
  %wide.trip.count374 = zext i32 %i.i to i64
  br label %.lr.ph300.split.us

.lr.ph300.split.us:                               ; preds = %.lr.ph300.split.us.preheader, %..loopexit280_crit_edge.us
  %.0199298.us = phi ptr [ %i.cf, %..loopexit280_crit_edge.us ], [ %i.bj, %.lr.ph300.split.us.preheader ] ; 5 uses
  %.1202297.us = phi i32 [ %i.ce, %..loopexit280_crit_edge.us ], [ 0, %.lr.ph300.split.us.preheader ]
  %i.bk = getelementptr inbounds nuw i8, ptr %.0199298.us, i64 12
  %i.bl = load i8, ptr %i.bk, align 4, !range !25, !noundef !26
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.i, label %..loopexit280_crit_edge.us

bb.i:                                             ; preds = %.lr.ph300.split.us
  %i.bn = getelementptr inbounds nuw i8, ptr %.0199298.us, i64 40
  %i.bo = load i16, ptr %i.bn, align 8
  %.not251.us = icmp eq i16 %i.bo, 0
  br i1 %.not251.us, label %.preheader279.us, label %..loopexit280_crit_edge.us

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %exitcond375.not = icmp eq i64 %indvars.iv.next372, %wide.trip.count374
  br i1 %exitcond375.not, label %..loopexit280_crit_edge.us, label %bb.k, !llvm.loop !52

bb.k:                                             ; preds = %.preheader279.us, %bb.j
  %indvars.iv371 = phi i64 [ 0, %.preheader279.us ], [ %indvars.iv.next372, %bb.j ] ; 4 uses
  %i.bp = load ptr, ptr %i.ci, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv371
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = tail call i32 @xstrcmp(ptr noundef %i.bp, ptr noundef %i.br) #17
  %.not252.us = icmp eq i32 %i.bs, 0
  br i1 %.not252.us, label %bb.l, label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %.0199298.us, i64 32
  %i.bu = load i64, ptr %i.bt, align 8            ; 2 uses
  %.not.i256.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i256.us, label %bb_granularity.exit258.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv371
  %i.bw = load i64, ptr %i.bv, align 8            ; 2 uses
  %i.bx = add i64 %i.bu, -1
  %i.by = add i64 %i.bx, %i.bw                    ; 2 uses
  %i.bz = urem i64 %i.by, %i.bw
  %i.ca = sub nuw i64 %i.by, %i.bz
  br label %bb_granularity.exit258.us

bb_granularity.exit258.us:                        ; preds = %bb.m, %bb.l
  %.0.i257.us = phi i64 [ %i.ca, %bb.m ], [ 0, %bb.l ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv371 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = add i64 %i.cc, %.0.i257.us
  store i64 %i.cd, ptr %i.cb, align 8
  br label %..loopexit280_crit_edge.us

..loopexit280_crit_edge.us:                       ; preds = %bb.j, %bb_granularity.exit258.us, %bb.i, %.lr.ph300.split.us
  %i.ce = add nuw nsw i32 %.1202297.us, 1         ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.0199298.us, i64 64
  %i.cg = load i32, ptr %i.bg, align 8
  %i.ch = icmp ult i32 %i.ce, %i.cg
  br i1 %i.ch, label %.lr.ph300.split.us, label %._crit_edge301, !llvm.loop !53

.preheader279.us:                                 ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.0199298.us, i64 24
  br label %bb.k

._crit_edge301:                                   ; preds = %..loopexit280_crit_edge.us, %.loopexit282
  %i.cj = tail call ptr @job_test_bb_resv(ptr noundef %0, i64 noundef %i.h, i1 noundef zeroext true) #17 ; 4 uses
  %.not235 = icmp eq ptr %i.cj, null              ; 2 uses
  br i1 %.not235, label %.loopexit278, label %bb.n

bb.n:                                             ; preds = %._crit_edge301
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %.not344 = icmp eq i32 %i.cl, 0
  br i1 %.not344, label %.loopexit278, label %.lr.ph315

.lr.ph315:                                        ; preds = %bb.n
  %i.cm = load ptr, ptr %i.cj, align 8
  %i.cn = icmp ugt i32 %.sroa.8.0.copyload.fr, 2147483646
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 176
  %wide.trip.count.i = zext i32 %i.i to i64       ; 3 uses
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph315, %bb.af
  %i.cq = phi ptr [ %i.p, %.lr.ph315 ], [ %i.gk, %bb.af ] ; 3 uses
  %i.cr = phi ptr [ %i.n, %.lr.ph315 ], [ %i.gl, %bb.af ] ; 3 uses
  %i.cs = phi ptr [ %i.p, %.lr.ph315 ], [ %i.gm, %bb.af ] ; 3 uses
  %i.ct = phi ptr [ %i.n, %.lr.ph315 ], [ %i.gn, %bb.af ] ; 3 uses
  %.0313 = phi ptr [ %i.cm, %.lr.ph315 ], [ %i.gp, %bb.af ] ; 5 uses
  %.2312 = phi i32 [ 0, %.lr.ph315 ], [ %i.go, %bb.af ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0313, i64 88
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = tail call i32 @xstrcmp(ptr noundef %i.cv, ptr noundef %.sroa.1213.0.copyload) #17
  %.not246 = icmp eq i32 %i.cw, 0
  br i1 %.not246, label %bb.p, label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.cx = getelementptr inbounds nuw i8, ptr %.0313, i64 72 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %.not345 = icmp eq i32 %i.cy, 0
  br i1 %.not345, label %._crit_edge309, label %.lr.ph308.preheader

.lr.ph308.preheader:                              ; preds = %bb.p
  %i.cz = getelementptr inbounds nuw i8, ptr %.0313, i64 80
  %i.da = load ptr, ptr %i.cz, align 8
  br label %.lr.ph308

.lr.ph308:                                        ; preds = %.lr.ph308.preheader, %.loopexit274
  %.1306 = phi ptr [ %i.dv, %.loopexit274 ], [ %i.da, %.lr.ph308.preheader ] ; 4 uses
  %.2205305 = phi i32 [ %i.du, %.loopexit274 ], [ 0, %.lr.ph308.preheader ]
  %i.db = getelementptr inbounds nuw i8, ptr %.1306, i64 8
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.not249 = icmp eq ptr %i.dc, null
  %.sroa.3.0.copyload. = select i1 %.not249, ptr %.sroa.3.0.copyload, ptr %i.dc
  %i.dd = getelementptr inbounds nuw i8, ptr %.1306, i64 24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %.1306, i64 32
  %i.dg = load i64, ptr %i.df, align 8
  %i.dh = tail call i64 @llvm.umax.i64(i64 %i.de, i64 %i.dg) ; 2 uses
  br i1 %i.aq, label %.lr.ph304, label %.loopexit274

bb.q:                                             ; preds = %.lr.ph304
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not = icmp eq i64 %indvars.iv.next377, %wide.trip.count.i
  br i1 %exitcond380.not, label %.loopexit274, label %.lr.ph304, !llvm.loop !54

.lr.ph304:                                        ; preds = %.lr.ph308, %bb.q
  %indvars.iv376 = phi i64 [ %indvars.iv.next377, %bb.q ], [ 0, %.lr.ph308 ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv376
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = tail call i32 @xstrcmp(ptr noundef %.sroa.3.0.copyload., ptr noundef %i.dj) #17
  %.not250 = icmp eq i32 %i.dk, 0
  br i1 %.not250, label %bb.r, label %bb.q

bb.r:                                             ; preds = %.lr.ph304
  %.not.i259 = icmp eq i64 %i.dh, 0
  br i1 %.not.i259, label %bb_granularity.exit261, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv376
  %i.dm = load i64, ptr %i.dl, align 8            ; 2 uses
  %i.dn = add i64 %i.dh, -1
  %i.do = add i64 %i.dn, %i.dm                    ; 2 uses
  %i.dp = urem i64 %i.do, %i.dm
  %i.dq = sub nuw i64 %i.do, %i.dp
  br label %bb_granularity.exit261

bb_granularity.exit261:                           ; preds = %bb.r, %bb.s
  %.0.i260 = phi i64 [ %i.dq, %bb.s ], [ 0, %bb.r ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv376 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = add i64 %i.ds, %.0.i260
  store i64 %i.dt, ptr %i.dr, align 8
  br label %.loopexit274

.loopexit274:                                     ; preds = %bb.q, %.lr.ph308, %bb_granularity.exit261
  %i.du = add nuw nsw i32 %.2205305, 1            ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.1306, i64 40
  %i.dw = load i32, ptr %i.cx, align 8
  %i.dx = icmp ult i32 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph308, label %._crit_edge309, !llvm.loop !55

._crit_edge309:                                   ; preds = %.loopexit274, %bb.p
  %i.dy = getelementptr inbounds nuw i8, ptr %.0313, i64 160 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8
  %.not247 = icmp eq i64 %i.dz, 0
  %brmerge = or i1 %.not247, %i.cn
  br i1 %brmerge, label %.loopexit277, label %.lr.ph311

bb.t:                                             ; preds = %.lr.ph311
  %indvars.iv.next382 = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond385.not = icmp eq i64 %indvars.iv.next382, %wide.trip.count.i
  br i1 %exitcond385.not, label %.loopexit277, label %.lr.ph311, !llvm.loop !56

.lr.ph311:                                        ; preds = %._crit_edge309, %bb.t
  %indvars.iv381 = phi i64 [ %indvars.iv.next382, %bb.t ], [ 0, %._crit_edge309 ] ; 4 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv381
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call i32 @xstrcmp(ptr noundef %.sroa.3.0.copyload, ptr noundef %i.eb) #17
  %.not248 = icmp eq i32 %i.ec, 0
  br i1 %.not248, label %bb.u, label %bb.t

bb.u:                                             ; preds = %.lr.ph311
  %i.ed = load i64, ptr %i.dy, align 8            ; 2 uses
  %.not.i262 = icmp eq i64 %i.ed, 0
  br i1 %.not.i262, label %bb_granularity.exit264, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv381
  %i.ef = load i64, ptr %i.ee, align 8            ; 2 uses
  %i.eg = add i64 %i.ed, -1
  %i.eh = add i64 %i.eg, %i.ef                    ; 2 uses
  %i.ei = urem i64 %i.eh, %i.ef
  %i.ej = sub nuw i64 %i.eh, %i.ei
  br label %bb_granularity.exit264

bb_granularity.exit264:                           ; preds = %bb.u, %bb.v
  %.0.i263 = phi i64 [ %i.ej, %bb.v ], [ 0, %bb.u ]
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv381 ; 2 uses
  %i.el = load i64, ptr %i.ek, align 8
  %i.em = add i64 %i.el, %.0.i263
  store i64 %i.em, ptr %i.ek, align 8
  %.pre = load ptr, ptr %i.g, align 8
  %.pre409 = load ptr, ptr %i.e, align 8
  br label %.loopexit277

.loopexit277:                                     ; preds = %bb.t, %._crit_edge309, %bb_granularity.exit264
  %i.en = phi ptr [ %.pre409, %bb_granularity.exit264 ], [ %i.cq, %._crit_edge309 ], [ %i.cq, %bb.t ] ; 3 uses
  %i.eo = phi ptr [ %.pre, %bb_granularity.exit264 ], [ %i.cr, %._crit_edge309 ], [ %i.cr, %bb.t ] ; 3 uses
  %i.ep = load ptr, ptr %i.co, align 8            ; 2 uses
  %i.eq = load ptr, ptr @job_list, align 8
  %i.er = tail call ptr @list_iterator_create(ptr noundef %i.eq) #17 ; 4 uses
  %i.es = tail call ptr @list_next(ptr noundef %i.er) #17 ; 3 uses
  %.not37.i = icmp eq ptr %i.es, null
  br i1 %.not37.i, label %_rm_active_job_bb.exit, label %.lr.ph38.i

.lr.ph38.i:                                       ; preds = %.loopexit277
  br i1 %i.aq, label %.lr.ph38.split.us.i, label %.lr.ph38.split.i

.lr.ph38.split.us.i:                              ; preds = %.lr.ph38.i, %.backedge.us.i
  %i.et = phi ptr [ %i.fz, %.backedge.us.i ], [ %i.es, %.lr.ph38.i ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 152
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.backedge.us.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph38.split.us.i
  %i.ex = load i8, ptr %i.ev, align 1
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %.backedge.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 928
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call i32 @xstrcmp(ptr noundef %i.fa, ptr noundef %i.ep) #17
  %i.fc = icmp eq i32 %i.fb, 0
  br i1 %i.fc, label %.backedge.us.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 448
  %i.fe = load i32, ptr %i.fd, align 8            ; 2 uses
  %i.ff = load ptr, ptr %i.cp, align 8            ; 2 uses
  %.not.i.us.i = icmp eq ptr %i.ff, null
  br i1 %.not.i.us.i, label %.backedge.us.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fg = urem i32 %i.fe, 100
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.fh
  %.012.i.us.i = load ptr, ptr %i.fi, align 8     ; 2 uses
  %.not1113.i.us.i = icmp eq ptr %.012.i.us.i, null
  br i1 %.not1113.i.us.i, label %.backedge.us.i, label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.z, %bb.aa
  %.014.i.us.i = phi ptr [ %.0.i.us.i, %bb.aa ], [ %.012.i.us.i, %bb.z ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 24
  %i.fk = load i32, ptr %i.fj, align 8
  %i.fl = icmp eq i32 %i.fk, %i.fe
  br i1 %i.fl, label %bb_job_find.exit.us.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us.i
  %i.fm = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 64
  %.0.i.us.i = load ptr, ptr %i.fm, align 8       ; 2 uses
  %.not11.i.us.i = icmp eq ptr %.0.i.us.i, null
  br i1 %.not11.i.us.i, label %.backedge.us.i, label %.lr.ph.i.us.i, !llvm.loop !43

bb_job_find.exit.us.i:                            ; preds = %.lr.ph.i.us.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 112
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = add i32 %i.fo, -69
  %or.cond.us.i = icmp ult i32 %i.fp, -68
  br i1 %or.cond.us.i, label %.backedge.us.i, label %.preheader.us.i

bb.ab:                                            ; preds = %bb.ac
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.backedge.us.i, label %bb.ac, !llvm.loop !57

bb.ac:                                            ; preds = %.preheader.us.i, %bb.ab
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.ab ] ; 3 uses
  %i.fq = load ptr, ptr %i.fy, align 8
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.i
  %i.fs = load ptr, ptr %i.fr, align 8
  %i.ft = tail call i32 @xstrcmp(ptr noundef %i.fq, ptr noundef %i.fs) #17
  %.not31.us.i = icmp eq i32 %i.ft, 0
  br i1 %.not31.us.i, label %.backedge.us.sink.split.i, label %bb.ab

.backedge.us.sink.split.i:                        ; preds = %bb.ac
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.i ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 128
  %i.fx = load i64, ptr %i.fw, align 8
  %.sink.i = tail call i64 @llvm.usub.sat.i64(i64 %i.fv, i64 %i.fx)
  store i64 %.sink.i, ptr %i.fu, align 8
  br label %.backedge.us.i

.preheader.us.i:                                  ; preds = %bb_job_find.exit.us.i
  %i.fy = getelementptr inbounds nuw i8, ptr %.014.i.us.i, i64 32
  br label %bb.ac

.backedge.us.i:                                   ; preds = %bb.aa, %bb.ab, %.backedge.us.sink.split.i, %bb_job_find.exit.us.i, %bb.z, %bb.y, %bb.x, %bb.w, %.lr.ph38.split.us.i
  %i.fz = tail call ptr @list_next(ptr noundef %i.er) #17 ; 2 uses
  %.not.us.i = icmp eq ptr %i.fz, null
  br i1 %.not.us.i, label %_rm_active_job_bb.exit, label %.lr.ph38.split.us.i, !llvm.loop !58

.lr.ph38.split.i:                                 ; preds = %.lr.ph38.i, %.backedge.i
  %i.ga = phi ptr [ %i.gj, %.backedge.i ], [ %i.es, %.lr.ph38.i ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 152
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %.backedge.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph38.split.i
  %i.ge = load i8, ptr %i.gc, align 1
  %i.gf = icmp eq i8 %i.ge, 0
  br i1 %i.gf, label %.backedge.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 928
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call i32 @xstrcmp(ptr noundef %i.gh, ptr noundef %i.ep) #17 ; 0 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ae, %bb.ad, %.lr.ph38.split.i
  %i.gj = tail call ptr @list_next(ptr noundef %i.er) #17 ; 2 uses
  %.not.i265 = icmp eq ptr %i.gj, null
  br i1 %.not.i265, label %_rm_active_job_bb.exit, label %.lr.ph38.split.i, !llvm.loop !58

_rm_active_job_bb.exit:                           ; preds = %.backedge.i, %.backedge.us.i, %.loopexit277
  tail call void @list_iterator_destroy(ptr noundef %i.er) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.o, %_rm_active_job_bb.exit
  %i.gk = phi ptr [ %i.cq, %bb.o ], [ %i.en, %_rm_active_job_bb.exit ]
  %i.gl = phi ptr [ %i.cr, %bb.o ], [ %i.eo, %_rm_active_job_bb.exit ]
  %i.gm = phi ptr [ %i.cs, %bb.o ], [ %i.en, %_rm_active_job_bb.exit ]
  %i.gn = phi ptr [ %i.ct, %bb.o ], [ %i.eo, %_rm_active_job_bb.exit ]
  %i.go = add nuw nsw i32 %.2312, 1               ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.0313, i64 200
  %i.gq = load i32, ptr %i.ck, align 8
  %i.gr = icmp ult i32 %i.go, %i.gq
  br i1 %i.gr, label %bb.o, label %.loopexit278, !llvm.loop !59

.loopexit278:                                     ; preds = %bb.af, %bb.n, %._crit_edge301
  br i1 %i.aq, label %.lr.ph319, label %.loopexit270

.lr.ph319:                                        ; preds = %.loopexit278
  %i.gs = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.gt = load ptr, ptr %i.f, align 8
  %i.gu = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.gv = load ptr, ptr %i.b, align 8             ; 3 uses
  %wide.trip.count388 = zext nneg i32 %i.i to i64 ; 3 uses
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph319, %bb.ah
  %indvars.iv386 = phi i64 [ 0, %.lr.ph319 ], [ %indvars.iv.next387, %bb.ah ] ; 5 uses
end_hunk_0
