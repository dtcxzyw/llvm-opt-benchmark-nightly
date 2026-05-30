inline.NumInlined: 13
inline.NumDeleted: 5
begin_hunk_0_@cli_ac_addsig:bb.a
  %i.ca = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef 32) #12 ; 4 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !53
  %.not295 = icmp eq ptr %i.ca, null
  br i1 %.not295, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19) #12
  tail call void @free(ptr noundef nonnull %i.bs) #12
  tail call void @free(ptr noundef nonnull %i.br) #12
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bs, ptr %i.cb, align 8, !tbaa !51
  %i.cc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #13
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = trunc i64 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i16 %i.ce, ptr %i.cf, align 8, !tbaa !52
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !51
  %i.cg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #13
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = trunc i64 %i.ch to i16
  store i16 %i.ci, ptr %i.bp, align 8, !tbaa !52
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.w
  tail call void @free(ptr noundef nonnull %i.br) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i16, ptr %i.ba, align 2, !tbaa !48
  %i.ck = zext i16 %i.cj to i64
  %.not297 = icmp samesign ult i64 %indvars.iv.next, %i.ck
  br i1 %.not297, label %bb.s, label %.loopexit407, !llvm.loop !124

.thread:                                          ; preds = %.loopexit407, %._crit_edge, %bb.s, %.preheader408, %bb.u, %bb.z, %bb.h, %bb.j, %bb.q
  %.not284425 = phi i1 [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.q ], [ false, %bb.z ], [ true, %.preheader408 ], [ %.not288.not.not, %._crit_edge ], [ %.not288.not.not, %.loopexit407 ]
  %.2236.ph = phi i32 [ -116, %bb.u ], [ -116, %bb.s ], [ -114, %bb.h ], [ -114, %bb.j ], [ -114, %bb.q ], [ -114, %bb.z ], [ 0, %.preheader408 ], [ -116, %._crit_edge ], [ 0, %.loopexit407 ]
  %.1228.ph = phi ptr [ %i.ac, %bb.u ], [ %i.ac, %bb.s ], [ %i.ac, %bb.h ], [ %i.ac, %bb.j ], [ %i.ac, %bb.q ], [ %i.ac, %bb.z ], [ %i.q, %.preheader408 ], [ %i.ac, %._crit_edge ], [ %i.ac, %.loopexit407 ]
  %i.cl = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %.1228.ph) #12 ; 0 uses
  tail call void @free(ptr noundef %i.q) #12
  br i1 %.not284425, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %.thread393, %.thread
  %.2236391396 = phi i32 [ -116, %.thread393 ], [ %.2236.ph, %.thread ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !44
  %.not300 = icmp eq i16 %i.cn, 0
  br i1 %.not300, label %.thread398.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.t) #12
  %i.co = load i16, ptr %i.cm, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq i16 %i.co, 0
  br i1 %.not.i, label %.thread398.sink.split, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i, %.lr.ph19.i
  %i.cq = phi i16 [ %i.co, %.lr.ph19.i ], [ %i.cy, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !45
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !46 ; 2 uses
  %.not1416.i = icmp eq ptr %i.ct, null
  br i1 %.not1416.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %bb.ah
  %.01217.i = phi ptr [ %i.cv, %bb.ah ], [ %i.ct, %bb.af ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01217.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !53 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.01217.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !51 ; 2 uses
  %.not15.i = icmp eq ptr %i.cx, null
  br i1 %.not15.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  tail call void @free(ptr noundef nonnull %i.cx) #12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i
  tail call void @free(ptr noundef nonnull %.01217.i) #12
  %.not14.i = icmp eq ptr %i.cv, null
  br i1 %.not14.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !72

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i16, ptr %i.cm, align 8, !tbaa !44
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.af
  %i.cy = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.cq, %bb.af ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next.i, %i.cz
  br i1 %i.da, label %bb.af, label %._crit_edge20.i, !llvm.loop !73

._crit_edge20.i:                                  ; preds = %._crit_edge.i
  %i.db = load ptr, ptr %i.cp, align 8, !tbaa !45
  br label %.thread398.sink.split.sink.split

bb.ai:                                            ; preds = %.thread, %bb.c
  %.1230 = phi ptr [ null, %bb.c ], [ %i.t, %.thread ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 10 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !44
  %.not301 = icmp eq i16 %i.dd, 0
  %i.de = select i1 %.not301, ptr %2, ptr %.1230
  %i.df = tail call ptr @cli_hex2ui(ptr noundef %i.de) #12 ; 2 uses
  store ptr %i.df, ptr %i.g, align 8, !tbaa !24
  %i.dg = icmp eq ptr %i.df, null
  %i.dh = load i16, ptr %i.dc, align 8, !tbaa !44
  %.not325 = icmp eq i16 %i.dh, 0                 ; 3 uses
  br i1 %i.dg, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not325, label %.thread398.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @free(ptr noundef %.1230) #12
  %i.di = load i16, ptr %i.dc, align 8, !tbaa !44 ; 2 uses
  %.not.i328 = icmp eq i16 %i.di, 0
  br i1 %.not.i328, label %.thread398.sink.split, label %.lr.ph19.i329

.lr.ph19.i329:                                    ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i338, %.lr.ph19.i329
  %i.dk = phi i16 [ %i.di, %.lr.ph19.i329 ], [ %i.ds, %._crit_edge.i338 ]
  %indvars.iv.i330 = phi i64 [ 0, %.lr.ph19.i329 ], [ %indvars.iv.next.i339, %._crit_edge.i338 ] ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !45
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i330
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !46 ; 2 uses
  %.not1416.i331 = icmp eq ptr %i.dn, null
  br i1 %.not1416.i331, label %._crit_edge.i338, label %.lr.ph.i332

.lr.ph.i332:                                      ; preds = %bb.al, %bb.an
  %.01217.i333 = phi ptr [ %i.dp, %bb.an ], [ %i.dn, %bb.al ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01217.i333, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !53 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.01217.i333, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !51 ; 2 uses
  %.not15.i334 = icmp eq ptr %i.dr, null
  br i1 %.not15.i334, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i332
  tail call void @free(ptr noundef nonnull %i.dr) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i332
  tail call void @free(ptr noundef nonnull %.01217.i333) #12
  %.not14.i335 = icmp eq ptr %i.dp, null
  br i1 %.not14.i335, label %._crit_edge.loopexit.i336, label %.lr.ph.i332, !llvm.loop !72

._crit_edge.loopexit.i336:                        ; preds = %bb.an
  %.pre.i337 = load i16, ptr %i.dc, align 8, !tbaa !44
  br label %._crit_edge.i338

._crit_edge.i338:                                 ; preds = %._crit_edge.loopexit.i336, %bb.al
  %i.ds = phi i16 [ %.pre.i337, %._crit_edge.loopexit.i336 ], [ %i.dk, %bb.al ] ; 2 uses
  %indvars.iv.next.i339 = add nuw nsw i64 %indvars.iv.i330, 1 ; 2 uses
  %i.dt = zext i16 %i.ds to i64
  %i.du = icmp samesign ult i64 %indvars.iv.next.i339, %i.dt
  br i1 %i.du, label %bb.al, label %._crit_edge20.i340, !llvm.loop !73

._crit_edge20.i340:                               ; preds = %._crit_edge.i338
  %i.dv = load ptr, ptr %i.dj, align 8, !tbaa !45
  br label %.thread398.sink.split.sink.split

bb.ao:                                            ; preds = %bb.ai
  %i.dw = select i1 %.not325, ptr %2, ptr %.1230
  %i.dx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #13
  %i.dy = lshr i64 %i.dx, 1
  %i.dz = trunc i64 %i.dy to i16                  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i16 %i.dz, ptr %i.ea, align 8, !tbaa !19
  br i1 %.not325, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @free(ptr noundef %.1230) #12
  %.pre542.pre.pre = load i16, ptr %i.ea, align 8, !tbaa !19
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre542.pre = phi i16 [ %.pre542.pre.pre, %bb.ap ], [ %i.dz, %bb.ao ] ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !8   ; 6 uses
  %.not499.a = icmp eq i8 %i.ec, 0
  br i1 %.not499.a, label %.critedge.thread, label %.lr.ph461

.lr.ph461:                                        ; preds = %bb.aq
  %wide.trip.count = zext i16 %.pre542.pre to i64
  %wide.trip.count525 = zext i8 %i.ec to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph461, %bb.at
  %indvars.iv523 = phi i64 [ 0, %.lr.ph461 ], [ %indvars.iv.next524, %bb.at ] ; 3 uses
  %.0251458 = phi i8 [ 1, %.lr.ph461 ], [ %.1252, %bb.at ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv523, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %indvars.iv523
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !25 ; 2 uses
  %.not304 = icmp ult i16 %i.ef, 256
  br i1 %.not304, label %bb.at, label %.critedge.thread

bb.at:                                            ; preds = %bb.as
  %.not306 = icmp eq i16 %i.ef, 0
  %.1252 = select i1 %.not306, i8 %.0251458, i8 0 ; 2 uses
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count525
  br i1 %exitcond526.not, label %.critedge, label %bb.ar, !llvm.loop !125

.critedge:                                        ; preds = %bb.ar, %bb.at
  %.0251.lcssa.ph = phi i8 [ %.0251458, %bb.ar ], [ %.1252, %bb.at ]
  %11 = icmp eq i8 %.0251.lcssa.ph, 0
  br i1 %11, label %.loopexit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.as, %bb.aq, %.critedge
  %i.eg = load i8, ptr %i.c, align 4, !tbaa !28   ; 3 uses
  %i.eh = zext i8 %i.eg to i16                    ; 2 uses
  %i.ei = add i16 %.pre542.pre, 1                 ; 2 uses
  %.not500.a = icmp eq i16 %i.ei, %i.eh
  br i1 %.not500.a, label %._crit_edge486, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge.thread
  %i.ej = sub i16 %i.ei, %i.eh
  %i.ek = zext i8 %i.ec to i32
  %i.el = zext i16 %.pre542.pre to i64
  %i.em = zext i16 %.pre542.pre to i32
  %wide.trip.count533 = zext i16 %i.ej to i64
  %i.en = icmp ne i8 %i.ec, 0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.bb
  %indvars.iv531 = phi i32 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next532, %bb.bb ] ; 6 uses
  %indvars.iv527 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next528, %bb.bb ] ; 2 uses
  %.0238484 = phi i16 [ 0, %.preheader.lr.ph ], [ %.3241, %bb.bb ] ; 2 uses
  %.0245483 = phi i8 [ 0, %.preheader.lr.ph ], [ %.3248, %bb.bb ] ; 2 uses
  %i.eo = add nuw nsw i32 %indvars.iv531, %i.ek
  %i.ep = icmp samesign ult i32 %indvars.iv531, %i.em
  %or.cond403467 = and i1 %i.ep, %i.en
  br i1 %or.cond403467, label %.lr.ph471, label %.critedge4

.lr.ph471:                                        ; preds = %.preheader
  %i.eq = load ptr, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.er = trunc nuw i32 %indvars.iv531 to i16
  %invariant.op = sub i32 1, %indvars.iv531
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph471, %bb.ay
  %indvars.iv529 = phi i64 [ %indvars.iv527, %.lr.ph471 ], [ %indvars.iv.next530, %bb.ay ] ; 2 uses
  %i.es = phi i32 [ %indvars.iv531, %.lr.ph471 ], [ %i.fb, %bb.ay ]
  %.1239469 = phi i16 [ %.0238484, %.lr.ph471 ], [ %spec.select327, %bb.ay ] ; 2 uses
  %.1246468 = phi i8 [ %.0245483, %.lr.ph471 ], [ %spec.select, %bb.ay ] ; 2 uses
  %i.et = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %indvars.iv529
  %i.eu = load i16, ptr %i.et, align 2, !tbaa !25
  %.not307 = icmp ult i16 %i.eu, 256
  br i1 %.not307, label %bb.av, label %.critedge4

bb.av:                                            ; preds = %bb.au
  %.reass.reass.reass = add i32 %i.es, %invariant.op ; 2 uses
  %i.ev = zext i8 %.1246468 to i32                ; 2 uses
  %.not308 = icmp samesign ult i32 %.reass.reass.reass, %i.ev
  %spec.select405 = tail call i32 @llvm.smax.i32(i32 %.reass.reass.reass, i32 %i.ev)
  %spec.select = trunc i32 %spec.select405 to i8  ; 5 uses
  %spec.select327 = select i1 %.not308, i16 %.1239469, i16 %i.er ; 5 uses
  %.not309 = icmp ugt i8 %i.ec, %spec.select
  br i1 %.not309, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ew = zext i16 %spec.select327 to i64
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.eq, i64 %i.ew ; 2 uses
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !25
  %.not310 = icmp eq i16 %i.ey, 0
  br i1 %.not310, label %bb.ax, label %.critedge4

bb.ax:                                            ; preds = %bb.aw
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !25
  %.not311 = icmp eq i16 %i.fa, 0
  br i1 %.not311, label %bb.ay, label %.critedge4

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 3 uses
  %i.fb = trunc nuw i64 %indvars.iv.next530 to i32 ; 2 uses
  %i.fc = icmp samesign ugt i32 %i.eo, %i.fb
  %i.fd = icmp samesign ult i64 %indvars.iv.next530, %i.el
  %or.cond403 = and i1 %i.fd, %i.fc
  br i1 %or.cond403, label %bb.au, label %.critedge4, !llvm.loop !126

.critedge4:                                       ; preds = %bb.au, %bb.ax, %bb.aw, %bb.ay, %.preheader
  %.3248 = phi i8 [ %.0245483, %.preheader ], [ %spec.select, %bb.ax ], [ %spec.select, %bb.ay ], [ %spec.select, %bb.aw ], [ %.1246468, %bb.au ] ; 5 uses
  %.3241 = phi i16 [ %.0238484, %.preheader ], [ %spec.select327, %bb.ax ], [ %spec.select327, %bb.ay ], [ %spec.select327, %bb.aw ], [ %.1239469, %bb.au ] ; 5 uses
  %.not312 = icmp ult i8 %.3248, %i.ec
  br i1 %.not312, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.critedge4
  %i.fe = load ptr, ptr %i.g, align 8, !tbaa !24
  %i.ff = zext i16 %.3241 to i64
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.fe, i64 %i.ff ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !25
  %.not313 = icmp eq i16 %i.fh, 0
  br i1 %.not313, label %bb.ba, label %._crit_edge486

bb.ba:                                            ; preds = %bb.az
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 2
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !25
  %.not314 = icmp eq i16 %i.fj, 0
  br i1 %.not314, label %bb.bb, label %._crit_edge486

bb.bb:                                            ; preds = %.critedge4, %bb.ba
  %indvars.iv.next532 = add nuw nsw i32 %indvars.iv531, 1
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv527, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next528, %wide.trip.count533
  br i1 %exitcond534.not, label %._crit_edge486, label %.preheader, !llvm.loop !127

._crit_edge486:                                   ; preds = %bb.bb, %bb.ba, %bb.az, %.critedge.thread
  %.4249 = phi i8 [ 0, %.critedge.thread ], [ %.3248, %bb.az ], [ %.3248, %bb.ba ], [ %.3248, %bb.bb ]
  %.4242 = phi i16 [ 0, %.critedge.thread ], [ %.3241, %bb.az ], [ %.3241, %bb.ba ], [ %.3241, %bb.bb ] ; 6 uses
  %i.fk = icmp ult i8 %.4249, %i.eg
  br i1 %i.fk, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %._crit_edge486
  %i.fl = zext i8 %i.eg to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.20, i32 noundef %i.fl) #12
  %i.fm = load i16, ptr %i.dc, align 8, !tbaa !44 ; 2 uses
  %.not.i342 = icmp eq i16 %i.fm, 0
  br i1 %.not.i342, label %ac_free_alt.exit355, label %.lr.ph19.i343

.lr.ph19.i343:                                    ; preds = %bb.bc
  %i.fn = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i352, %.lr.ph19.i343
  %i.fo = phi i16 [ %i.fm, %.lr.ph19.i343 ], [ %i.fw, %._crit_edge.i352 ]
  %indvars.iv.i344 = phi i64 [ 0, %.lr.ph19.i343 ], [ %indvars.iv.next.i353, %._crit_edge.i352 ] ; 2 uses
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !45
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %indvars.iv.i344
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !46 ; 2 uses
  %.not1416.i345 = icmp eq ptr %i.fr, null
  br i1 %.not1416.i345, label %._crit_edge.i352, label %.lr.ph.i346

.lr.ph.i346:                                      ; preds = %bb.bd, %bb.bf
  %.01217.i347 = phi ptr [ %i.ft, %bb.bf ], [ %i.fr, %bb.bd ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.01217.i347, i64 24
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !53 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.01217.i347, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !51 ; 2 uses
  %.not15.i348 = icmp eq ptr %i.fv, null
  br i1 %.not15.i348, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i346
  tail call void @free(ptr noundef nonnull %i.fv) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i346
  tail call void @free(ptr noundef nonnull %.01217.i347) #12
  %.not14.i349 = icmp eq ptr %i.ft, null
  br i1 %.not14.i349, label %._crit_edge.loopexit.i350, label %.lr.ph.i346, !llvm.loop !72

._crit_edge.loopexit.i350:                        ; preds = %bb.bf
  %.pre.i351 = load i16, ptr %i.dc, align 8, !tbaa !44
  br label %._crit_edge.i352

._crit_edge.i352:                                 ; preds = %._crit_edge.loopexit.i350, %bb.bd
  %i.fw = phi i16 [ %.pre.i351, %._crit_edge.loopexit.i350 ], [ %i.fo, %bb.bd ] ; 2 uses
  %indvars.iv.next.i353 = add nuw nsw i64 %indvars.iv.i344, 1 ; 2 uses
  %i.fx = zext i16 %i.fw to i64
  %i.fy = icmp samesign ult i64 %indvars.iv.next.i353, %i.fx
  br i1 %i.fy, label %bb.bd, label %._crit_edge20.i354, !llvm.loop !73

._crit_edge20.i354:                               ; preds = %._crit_edge.i352
  %i.fz = load ptr, ptr %i.fn, align 8, !tbaa !45
  tail call void @free(ptr noundef %i.fz) #12
  br label %ac_free_alt.exit355

ac_free_alt.exit355:                              ; preds = %bb.bc, %._crit_edge20.i354
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !24
  br label %.thread398.sink.split.sink.split

bb.bg:                                            ; preds = %._crit_edge486
  %i.gb = load ptr, ptr %i.g, align 8, !tbaa !24  ; 5 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.gb, ptr %i.gc, align 8, !tbaa !43
  %i.gd = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i16 %.4242, ptr %i.gd, align 2, !tbaa !42
  %i.ge = zext i16 %.4242 to i64                  ; 3 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %i.ge
  store ptr %i.gf, ptr %i.g, align 8, !tbaa !24
  %i.gg = sub i16 %.pre542.pre, %.4242            ; 5 uses
  store i16 %i.gg, ptr %i.ea, align 8, !tbaa !19
  %.not501 = icmp eq i16 %.4242, 0
  br i1 %.not501, label %.loopexit, label %.lr.ph497

.lr.ph497:                                        ; preds = %bb.bg
  %i.gh = getelementptr inbounds nuw i8, ptr %i.g, i64 58 ; 6 uses
  %xtraiter = and i64 %i.ge, 1
  %i.gi = icmp eq i16 %.4242, 1
  br i1 %i.gi, label %.epil.preheader, label %.lr.ph497.new

.lr.ph497.new:                                    ; preds = %.lr.ph497
  %unroll_iter = and i64 %i.ge, 65534
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bl, %.lr.ph497.new
  %indvars.iv535 = phi i64 [ 0, %.lr.ph497.new ], [ %indvars.iv.next536.1, %bb.bl ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph497.new ], [ %niter.next.1, %bb.bl ]
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.gb, i64 %indvars.iv535
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !25
  %i.gl = and i16 %i.gk, -256
  %i.gm = icmp eq i16 %i.gl, 512
  br i1 %i.gm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gn = load i16, ptr %i.gh, align 2, !tbaa !87
  %i.go = add i16 %i.gn, 1
end_hunk_0
