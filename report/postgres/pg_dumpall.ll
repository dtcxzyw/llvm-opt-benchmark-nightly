inline.NumInlined: 50
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dumpRoleMembership:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i32 %.sink.i.i, ptr %i.bk, align 8
  %i.bl = icmp sgt i32 %i.ac, 0
  br i1 %i.bl, label %.lr.ph239, label %._crit_edge240

.lr.ph239:                                        ; preds = %rolename_create.exit
  %i.bm = icmp slt i32 %.0134267, %.0133.lcssa
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 7 uses
  br i1 %i.bm, label %.lr.ph239.split.us.preheader, label %.split.us

.lr.ph239.split.us.preheader:                     ; preds = %.lr.ph239
  %i.bo = sext i32 %.0134267 to i64
  %wide.trip.count = sext i32 %.0133.lcssa to i64
  br label %.lr.ph239.split.us

.lr.ph239.split.us:                               ; preds = %.lr.ph239.split.us.preheader, %..loopexit_crit_edge.us
  %.0129238.us = phi i32 [ %.0130237.us, %..loopexit_crit_edge.us ], [ 0, %.lr.ph239.split.us.preheader ]
  %.0130237.us = phi i32 [ %.2.us, %..loopexit_crit_edge.us ], [ %i.ac, %.lr.ph239.split.us.preheader ] ; 3 uses
  %i.bp = icmp eq i32 %.0130237.us, %.0129238.us
  br i1 %i.bp, label %.split.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph239.split.us, %rolename_lookup.exit.thread.us
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %rolename_lookup.exit.thread.us ], [ %i.bo, %.lr.ph239.split.us ] ; 2 uses
  %.1131234.us = phi i32 [ %.2.us, %rolename_lookup.exit.thread.us ], [ %.0130237.us, %.lr.ph239.split.us ] ; 5 uses
  %i.bq = trunc nsw i64 %indvars.iv.a to i32      ; 11 uses
  %i.br = sub i32 %i.bq, %.0134267
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.ae, i64 %i.bs ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !range !17, !noundef !18
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %rolename_lookup.exit.thread.us, label %bb.i

bb.i:                                             ; preds = %.preheader.us
  %i.bw = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.h) #14
  %.not138.us = icmp eq i32 %i.bw, 0
  br i1 %.not138.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.k) #14
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.282, ptr noundef %i.bx) #14
  store i8 1, ptr %i.bt, align 1
  %i.by = add i32 %.1131234.us, -1
  br label %rolename_lookup.exit.thread.us

bb.k:                                             ; preds = %bb.i
  %i.bz = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.h) #14 ; 6 uses
  %i.ca = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.l) #14 ; 2 uses
  br i1 %i.d, label %bb.l, label %.thread160.us

.thread160.us:                                    ; preds = %bb.k
  %i.cb = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.m) #14
  br label %rolename_lookup.exit.us

bb.l:                                             ; preds = %bb.k
  %i.cc = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.i) #14
  %.not139.us = icmp eq i32 %i.cc, 0              ; 2 uses
  br i1 %.not139.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.283, ptr noundef %i.v, ptr noundef %i.bz, ptr noundef %i.ca) #14
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.284) #14
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cd = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.i) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0127.ph.us = phi ptr [ %i.cd, %bb.n ], [ null, %bb.m ] ; 5 uses
  %i.ce = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.m) #14 ; 3 uses
  %i.cf = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.o) #14 ; 3 uses
  br i1 %.not139.us, label %bb.p, label %rolename_lookup.exit.us

bb.p:                                             ; preds = %bb.o
  %i.cg = tail call i64 @__isoc23_strtoul(ptr noundef %i.ca, ptr noundef null, i32 noundef 10) #14
  %i.ch = and i64 %i.cg, 4294967295
  %.not140.us = icmp eq i64 %i.ch, 10
  br i1 %.not140.us, label %rolename_lookup.exit.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ci = tail call fastcc i32 @hash_string(ptr noundef %.0127.ph.us) ; 2 uses
  %.val.i.i.us = load i32, ptr %i.bf, align 4     ; 2 uses
  %i.cj = load ptr, ptr %i.av, align 8            ; 2 uses
  %.01523.i.i.us = and i32 %.val.i.i.us, %i.ci    ; 2 uses
  %i.ck = zext i32 %.01523.i.i.us to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %rolename_lookup.exit.thread.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.q, %bb.s
  %i.co = phi ptr [ %i.cy, %bb.s ], [ %i.cl, %bb.q ] ; 2 uses
  %.01524.i.i.us = phi i32 [ %.015.i.i.us, %bb.s ], [ %.01523.i.i.us, %bb.q ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = icmp eq i32 %i.ci, %i.cq
  br i1 %i.cr, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull readonly dereferenceable(1) %.0127.ph.us) #15
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %rolename_lookup.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.us
  %i.cw = add i32 %.01524.i.i.us, 1
  %.015.i.i.us = and i32 %i.cw, %.val.i.i.us      ; 2 uses
  %i.cx = zext i32 %.015.i.i.us to i64
  %i.cy = getelementptr inbounds nuw [16 x i8], ptr %i.cj, i64 %i.cx ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %rolename_lookup.exit.thread.us, label %.lr.ph.i.i.us

rolename_lookup.exit.us:                          ; preds = %bb.r, %bb.p, %bb.o, %.thread160.us
  %.0166.us = phi ptr [ @.str.281, %.thread160.us ], [ %i.cf, %bb.o ], [ %i.cf, %bb.p ], [ %i.cf, %bb.r ]
  %.0127156165.us = phi ptr [ null, %.thread160.us ], [ %.0127.ph.us, %bb.o ], [ %.0127.ph.us, %bb.p ], [ %.0127.ph.us, %bb.r ]
  %.0126.shrunk158164.us = phi i1 [ false, %.thread160.us ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.r ]
  %i.db = phi ptr [ %i.cb, %.thread160.us ], [ %i.ce, %bb.o ], [ %i.ce, %bb.p ], [ %i.ce, %bb.r ] ; 2 uses
  store i8 1, ptr %i.bt, align 1
  %i.dc = add i32 %.1131234.us, -1
  %i.dd = load i8, ptr %i.db, align 1
  %i.de = icmp eq i8 %i.dd, 116
  br i1 %i.de, label %.loopexit.i.i.us, label %rolename_insert.exit.us

.loopexit.i.i.us:                                 ; preds = %rolename_lookup.exit.us
  %i.df = tail call fastcc i32 @hash_string(ptr noundef %i.bz) ; 4 uses
  %.pre.i.us = load i32, ptr %i.bn, align 8
  %.pre73.i.us = load i32, ptr %i.bk, align 8
  %i.dg = icmp ult i32 %.pre.i.us, %.pre73.i.us
  br i1 %i.dg, label %bb.ab, label %bb.t, !prof !19

bb.t:                                             ; preds = %.loopexit.loopexit.i.i.us, %.loopexit.i.i.us
  %i.dh = load i64, ptr %i.af, align 8            ; 6 uses
  %i.di = icmp eq i64 %i.dh, 4294967296
  br i1 %i.di, label %.split242.us, label %bb.u, !prof !16

bb.u:                                             ; preds = %bb.t
  %i.dj = shl i64 %i.dh, 1
  %i.dk = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.dl = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 2) ; 3 uses
  %i.dm = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.dl)
  %i.dn = icmp samesign ult i64 %i.dm, 2
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
  %i.dp = sub nuw nsw i64 64, %i.do
  %i.dq = shl nuw i64 1, %i.dp
  %.0.i.i.i148.us = select i1 %i.dn, i64 %i.dl, i64 %i.dq ; 4 uses
  %i.dr = shl i64 %.0.i.i.i148.us, 4              ; 2 uses
  %i.ds = icmp ugt i64 %i.dr, 9223372036854775806
  br i1 %i.ds, label %.split244.us, label %rolename_compute_size.exit.i149.us, !prof !16

rolename_compute_size.exit.i149.us:               ; preds = %bb.u
  %i.dt = tail call ptr @pg_malloc0(i64 noundef %i.dr) #14 ; 2 uses
  store ptr %i.dt, ptr %i.av, align 8
  %i.du = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i148.us)
  %i.dv = icmp samesign ult i64 %i.du, 2
  %i.dw = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i148.us, i1 true)
  %i.dx = sub nuw nsw i64 64, %i.dw
  %i.dy = shl nuw i64 1, %i.dx
  %.0.i.i.i.i150.us = select i1 %i.dv, i64 %.0.i.i.i148.us, i64 %i.dy ; 5 uses
  %i.dz = shl i64 %.0.i.i.i.i150.us, 4
  %i.ea = icmp ugt i64 %i.dz, 9223372036854775806
  br i1 %i.ea, label %.split246.us, label %rolename_update_parameters.exit.i.us, !prof !16

rolename_update_parameters.exit.i.us:             ; preds = %rolename_compute_size.exit.i149.us
  store i64 %.0.i.i.i.i150.us, ptr %i.af, align 8
  %i.eb = trunc i64 %.0.i.i.i.i150.us to i32
  %i.ec = add i32 %i.eb, -1                       ; 2 uses
  store i32 %i.ec, ptr %i.bf, align 4
  %i.ed = icmp eq i64 %.0.i.i.i.i150.us, 4294967296
  %i.ee = uitofp i64 %.0.i.i.i.i150.us to double
  %i.ef = fmul nnan double %i.ee, 9.000000e-01
  %i.eg = fptoui double %i.ef to i32
  %.sink.i.i151.us = select i1 %i.ed, i32 -85899346, i32 %i.eg
  store i32 %.sink.i.i151.us, ptr %i.bk, align 8
  %.not70.i.us = icmp eq i64 %i.dh, 0
  br i1 %.not70.i.us, label %rolename_grow.exit.us, label %.lr.ph.i152.us

.lr.ph.i152.us:                                   ; preds = %rolename_update_parameters.exit.i.us, %bb.w
  %i.eh = phi i64 [ %i.eo, %bb.w ], [ 0, %rolename_update_parameters.exit.i.us ]
  %.05162.i.us = phi i32 [ %i.en, %bb.w ], [ 0, %rolename_update_parameters.exit.i.us ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.eh ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8
  %.not.i.us = icmp eq i32 %i.ej, 1
  br i1 %.not.i.us, label %bb.v, label %.lr.ph69.i.us.preheader

bb.v:                                             ; preds = %.lr.ph.i152.us
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %.val59.i.us = load i32, ptr %i.ek, align 4
  %i.el = and i32 %.val59.i.us, %i.ec
  %i.em = icmp eq i32 %i.el, %.05162.i.us
  br i1 %i.em, label %.lr.ph69.i.us.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.en = add i32 %.05162.i.us, 1                 ; 2 uses
  %i.eo = zext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp ugt i64 %i.dh, %i.eo
  br i1 %i.ep, label %.lr.ph.i152.us, label %.lr.ph69.i.us.preheader, !llvm.loop !20

.lr.ph69.i.us.preheader:                          ; preds = %bb.w, %bb.v, %.lr.ph.i152.us
  %.04968.i.us.ph = phi i32 [ 0, %bb.w ], [ %.05162.i.us, %bb.v ], [ %.05162.i.us, %.lr.ph.i152.us ]
  br label %.lr.ph69.i.us

.lr.ph69.i.us:                                    ; preds = %.lr.ph69.i.us.preheader, %bb.aa
  %.04968.i.us = phi i32 [ %spec.store.select.i.us, %bb.aa ], [ %.04968.i.us.ph, %.lr.ph69.i.us.preheader ] ; 2 uses
  %.15267.i.us = phi i32 [ %1, %bb.aa ], [ 0, %.lr.ph69.i.us.preheader ]
  %i.eq = zext i32 %.04968.i.us to i64
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.dk, i64 %i.eq ; 3 uses
  %i.es = load i32, ptr %i.er, align 8
  %i.et = icmp eq i32 %i.es, 1
  br i1 %i.et, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.lr.ph69.i.us
  %i.eu = getelementptr i8, ptr %i.er, i64 4
  %.val58.i.us = load i32, ptr %i.eu, align 4
  %.val.i.us = load i32, ptr %i.bf, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.val58.pn.i.us = phi i32 [ %.val58.i.us, %bb.x ], [ %i.ez, %bb.y ]
  %.0.i.us = and i32 %.val58.pn.i.us, %.val.i.us  ; 2 uses
  %i.ev = zext i32 %.0.i.us to i64
  %i.ew = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.ev ; 2 uses
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = add i32 %.0.i.us, 1
  br i1 %i.ey, label %bb.z, label %bb.y

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ew, ptr noundef nonnull align 8 dereferenceable(16) %i.er, i64 16, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph69.i.us
  %i.fa = add i32 %.04968.i.us, 1                 ; 2 uses
  %i.fb = zext i32 %i.fa to i64
  %.not55.i.us = icmp ugt i64 %i.dh, %i.fb
  %spec.store.select.i.us = select i1 %.not55.i.us, i32 %i.fa, i32 0
  %1 = add i32 %.15267.i.us, 1                    ; 2 uses
  %2 = zext i32 %1 to i64
  %3 = icmp ugt i64 %i.dh, %2
  br i1 %3, label %.lr.ph69.i.us, label %rolename_grow.exit.us, !llvm.loop !21

rolename_grow.exit.us:                            ; preds = %bb.aa, %rolename_update_parameters.exit.i.us
  tail call void @pfree(ptr noundef %i.dk) #14
  br label %bb.ab

bb.ab:                                            ; preds = %rolename_grow.exit.us, %.loopexit.i.i.us
  %i.fc = load ptr, ptr %i.av, align 8            ; 5 uses
  %.val95.i.i.us = load i32, ptr %i.bf, align 4   ; 5 uses
  %.089.i22.i.us = and i32 %.val95.i.i.us, %i.df  ; 2 uses
  %i.fd = zext i32 %.089.i22.i.us to i64
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.fd ; 3 uses
  %i.ff = load i32, ptr %i.fe, align 8
  %i.fg = icmp eq i32 %i.ff, 0
  br i1 %i.fg, label %._crit_edge.i.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.ab, %bb.ah
  %i.fh = phi ptr [ %i.ge, %bb.ah ], [ %i.fe, %bb.ab ] ; 5 uses
  %.089.i24.i.us = phi i32 [ %.089.i.i.us, %bb.ah ], [ %.089.i22.i.us, %bb.ab ] ; 6 uses
  %.087.i23.i.us = phi i32 [ %i.fv, %bb.ah ], [ 0, %bb.ab ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %i.fj = load i32, ptr %i.fi, align 4            ; 2 uses
  %i.fk = icmp eq i32 %i.df, %i.fj
  br i1 %i.fk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.us
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fm, ptr noundef nonnull dereferenceable(1) %i.bz) #15
  %i.fo = icmp eq i32 %i.fn, 0
  br i1 %i.fo, label %rolename_insert.exit.us, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.us
  %i.fp = and i32 %i.fj, %.val95.i.i.us           ; 2 uses
  %.not.i.i.i.us = icmp ugt i32 %i.fp, %.089.i24.i.us
  br i1 %.not.i.i.i.us, label %bb.ae, label %rolename_distance.exit.i.i.us

bb.ae:                                            ; preds = %bb.ad
  %i.fq = load i64, ptr %i.af, align 8
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = add i32 %.089.i24.i.us, %i.fr
  br label %rolename_distance.exit.i.i.us

rolename_distance.exit.i.i.us:                    ; preds = %bb.ae, %bb.ad
  %.pn.i.i.i.us = phi i32 [ %i.fs, %bb.ae ], [ %.089.i24.i.us, %bb.ad ]
  %.0.i.i.i145.us = sub i32 %.pn.i.i.i.us, %i.fp
  %i.ft = icmp ugt i32 %.087.i23.i.us, %.0.i.i.i145.us
  %i.fu = add i32 %.089.i24.i.us, 1               ; 2 uses
  br i1 %i.ft, label %.preheader110.i.preheader.i.us, label %bb.af

bb.af:                                            ; preds = %rolename_distance.exit.i.i.us
  %i.fv = add i32 %.087.i23.i.us, 1               ; 2 uses
  %i.fw = icmp ugt i32 %i.fv, 25
  br i1 %i.fw, label %bb.ag, label %bb.ah, !prof !16

bb.ag:                                            ; preds = %bb.af
  %i.fx = load i32, ptr %i.bn, align 8
  %i.fy = uitofp i32 %i.fx to double
  %i.fz = load i64, ptr %i.af, align 8
  %i.ga = uitofp i64 %i.fz to double
  %i.gb = fdiv double %i.fy, %i.ga
  %i.gc = fcmp ult double %i.gb, 1.000000e-01
  br i1 %i.gc, label %bb.ah, label %.loopexit.loopexit.i.i.us

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.089.i.i.us = and i32 %i.fu, %.val95.i.i.us    ; 2 uses
  %i.gd = zext i32 %.089.i.i.us to i64
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.gd ; 3 uses
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %._crit_edge.i.us, label %.lr.ph.i.us

.preheader110.i.preheader.i.us:                   ; preds = %rolename_distance.exit.i.i.us
  %i.gh = and i32 %i.fu, %.val95.i.i.us           ; 3 uses
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.gi ; 2 uses
  %i.gk = load i32, ptr %i.gj, align 8
  %.not109.i27.i.us = icmp eq i32 %i.gk, 0
  br i1 %.not109.i27.i.us, label %.preheader.i.i.us, label %.lr.ph29.i.us

.lr.ph29.i.us:                                    ; preds = %.preheader110.i.preheader.i.us, %.preheader110.i.i.us
  %i.gl = phi i32 [ %i.gv, %.preheader110.i.i.us ], [ %i.gh, %.preheader110.i.preheader.i.us ]
  %.077.i28.i.us = phi i32 [ %i.gm, %.preheader110.i.i.us ], [ 0, %.preheader110.i.preheader.i.us ]
  %i.gm = add i32 %.077.i28.i.us, 1               ; 2 uses
  %i.gn = icmp sgt i32 %i.gm, 150
  br i1 %i.gn, label %bb.ai, label %.preheader110.i.i.us, !prof !16

bb.ai:                                            ; preds = %.lr.ph29.i.us
  %i.go = load i32, ptr %i.bn, align 8
  %i.gp = uitofp i32 %i.go to double
  %i.gq = load i64, ptr %i.af, align 8
  %i.gr = uitofp i64 %i.gq to double
  %i.gs = fdiv double %i.gp, %i.gr
  %i.gt = fcmp ult double %i.gs, 1.000000e-01
  br i1 %i.gt, label %.preheader110.i.i.us, label %.loopexit.loopexit.i.i.us

.preheader110.i.i.us:                             ; preds = %bb.ai, %.lr.ph29.i.us
  %i.gu = add i32 %i.gl, 1
  %i.gv = and i32 %i.gu, %.val95.i.i.us           ; 3 uses
  %i.gw = zext i32 %i.gv to i64
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.gw ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 8
  %.not109.i.i.us = icmp eq i32 %i.gy, 0
  br i1 %.not109.i.i.us, label %.preheader.i.i.us, label %.lr.ph29.i.us

.loopexit.loopexit.i.i.us:                        ; preds = %bb.ag, %bb.ai
  store i32 0, ptr %i.bk, align 8
  br label %bb.t

.preheader.i.i.us:                                ; preds = %.preheader110.i.i.us, %.preheader110.i.preheader.i.us
  %.lcssa16.i.us = phi i32 [ %i.gh, %.preheader110.i.preheader.i.us ], [ %i.gv, %.preheader110.i.i.us ] ; 2 uses
  %.lcssa14.i.us = phi ptr [ %i.gj, %.preheader110.i.preheader.i.us ], [ %i.gx, %.preheader110.i.i.us ]
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  %.not94132.i.i.us = icmp eq i32 %.lcssa16.i.us, %.089.i24.i.us
  br i1 %.not94132.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i147.us

.lr.ph.i.i147.us:                                 ; preds = %.preheader.i.i.us, %.lr.ph.i.i147.us
  %.079134.i.i.us = phi i32 [ %i.hb, %.lr.ph.i.i147.us ], [ %.lcssa16.i.us, %.preheader.i.i.us ]
  %.283133.i.i.us = phi ptr [ %i.hd, %.lr.ph.i.i147.us ], [ %.lcssa14.i.us, %.preheader.i.i.us ]
  %.val99.i.i.us = load i32, ptr %i.bf, align 4
  %i.ha = add i32 %.079134.i.i.us, -1
  %i.hb = and i32 %.val99.i.i.us, %i.ha           ; 3 uses
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %i.fc, i64 %i.hc ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.283133.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %i.hd, i64 16, i1 false)
  %.not94.i.i.us = icmp eq i32 %i.hb, %.089.i24.i.us
  br i1 %.not94.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i147.us, !llvm.loop !22

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i147.us, %.preheader.i.i.us
  %i.he = load i32, ptr %i.bn, align 8
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.bn, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.bz, ptr %i.hg, align 8
  store i32 %i.df, ptr %i.gz, align 4
  br label %.thread103.sink.split.i.i.us

._crit_edge.i.us:                                 ; preds = %bb.ah, %bb.ab
  %.lcssa.i.us = phi ptr [ %i.fe, %bb.ab ], [ %i.ge, %bb.ah ] ; 3 uses
  %i.hh = load i32, ptr %i.bn, align 8
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.bn, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.lcssa.i.us, i64 8
  store ptr %i.bz, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.lcssa.i.us, i64 4
  store i32 %i.df, ptr %i.hk, align 4
  br label %.thread103.sink.split.i.i.us

.thread103.sink.split.i.i.us:                     ; preds = %._crit_edge.i.us, %._crit_edge.i.i.us
  %i.hl = phi ptr [ %i.fh, %._crit_edge.i.i.us ], [ %.lcssa.i.us, %._crit_edge.i.us ]
  store i32 1, ptr %i.hl, align 8
  br label %rolename_insert.exit.us

rolename_insert.exit.us:                          ; preds = %bb.ac, %.thread103.sink.split.i.i.us, %rolename_lookup.exit.us
  tail call void @resetPQExpBuffer(ptr noundef %i.b) #14
  %i.hm = load ptr, ptr @OPF, align 8
  %i.hn = tail call ptr @fmtId(ptr noundef %i.v) #14
  %i.ho = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.hm, ptr noundef nonnull @.str.285, ptr noundef %i.hn) #14 ; 0 uses
  %i.hp = load ptr, ptr @OPF, align 8
  %i.hq = tail call ptr @fmtId(ptr noundef %i.bz) #14
  %i.hr = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.hp, ptr noundef nonnull @.str.286, ptr noundef %i.hq) #14 ; 0 uses
  %i.hs = load i8, ptr %i.db, align 1
  %i.ht = icmp eq i8 %i.hs, 116
  br i1 %i.ht, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %rolename_insert.exit.us
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.287) #14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %rolename_insert.exit.us
  br i1 %i.d, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.hu = load ptr, ptr %i.b, align 8
  %i.hv = load i8, ptr %i.hu, align 1
  %.not141.us = icmp eq i8 %i.hv, 0
  br i1 %.not141.us, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.288) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hw = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bq, i32 noundef %i.n) #14
  %i.hx = load i8, ptr %i.hw, align 1
  %i.hy = icmp eq i8 %i.hx, 116
  %i.hz = select i1 %i.hy, ptr @.str.290, ptr @.str.291
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.289, ptr noundef nonnull %i.hz) #14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.ia = load i8, ptr %.0166.us, align 1
  %.not142.us = icmp eq i8 %i.ia, 116
  br i1 %.not142.us, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ib = load ptr, ptr %i.b, align 8
  %i.ic = load i8, ptr %i.ib, align 1
  %.not143.us = icmp eq i8 %i.ic, 0
  br i1 %.not143.us, label %bb.ar, label %bb.aq

end_hunk_0
