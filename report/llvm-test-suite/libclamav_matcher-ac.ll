Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_matcher-ac?download=true
inline.NumInlined: 13
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cli_ac_addsig:bb.a
bb.x:                                             ; preds = %bb.v
  %.not293 = icmp eq i64 %indvars.iv, 0
  br i1 %.not293, label %bb.ab, label %.preheader406

.preheader406:                                    ; preds = %bb.x, %.preheader406
  %.0230 = phi ptr [ %i.by, %.preheader406 ], [ %i.ad, %bb.x ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.0230, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !81 ; 2 uses
  %.not294 = icmp eq ptr %i.by, null
  br i1 %.not294, label %bb.y, label %.preheader406, !llvm.loop !159

bb.y:                                             ; preds = %.preheader406
  %i.bz = getelementptr inbounds nuw i8, ptr %.0230, i64 24
  %i.ca = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef 32) #12 ; 4 uses
  store ptr %i.ca, ptr %i.bz, align 8, !tbaa !81
  %.not295 = icmp eq ptr %i.ca, null
  br i1 %.not295, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.19) #12
  tail call void @free(ptr noundef nonnull %i.bs) #12
  tail call void @free(ptr noundef nonnull %i.br) #12
  br label %.thread

bb.aa:                                            ; preds = %bb.y
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store ptr %i.bs, ptr %i.cb, align 8, !tbaa !79
  %i.cc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #13
  %i.cd = lshr i64 %i.cc, 1
  %i.ce = trunc i64 %i.cd to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store i16 %i.ce, ptr %i.cf, align 8, !tbaa !80
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !79
  %i.cg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.br) #13
  %i.ch = lshr i64 %i.cg, 1
  %i.ci = trunc i64 %i.ch to i16
  store i16 %i.ci, ptr %i.bp, align 8, !tbaa !80
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.w
  tail call void @free(ptr noundef nonnull %i.br) #12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cj = load i16, ptr %i.ba, align 2, !tbaa !77
  %i.ck = zext i16 %i.cj to i64
  %.not297 = icmp samesign ult i64 %indvars.iv.next, %i.ck
  br i1 %.not297, label %bb.s, label %.loopexit407, !llvm.loop !160

.thread:                                          ; preds = %.loopexit407, %._crit_edge, %bb.s, %.preheader408, %bb.u, %bb.z, %bb.h, %bb.j, %bb.q
  %.not284425 = phi i1 [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.q ], [ false, %bb.z ], [ true, %.preheader408 ], [ %.not288.not.not, %._crit_edge ], [ %.not288.not.not, %.loopexit407 ]
  %.2.ph = phi i32 [ -116, %bb.u ], [ -116, %bb.s ], [ -114, %bb.h ], [ -114, %bb.j ], [ -114, %bb.q ], [ -114, %bb.z ], [ 0, %.preheader408 ], [ -116, %._crit_edge ], [ 0, %.loopexit407 ]
  %.1.ph = phi ptr [ %i.ac, %bb.u ], [ %i.ac, %bb.s ], [ %i.ac, %bb.h ], [ %i.ac, %bb.j ], [ %i.ac, %bb.q ], [ %i.ac, %bb.z ], [ %i.q, %.preheader408 ], [ %i.ac, %._crit_edge ], [ %i.ac, %.loopexit407 ]
  %i.cl = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.t, ptr noundef nonnull dereferenceable(1) %.1.ph) #12 ; 0 uses
  tail call void @free(ptr noundef %i.q) #12
  br i1 %.not284425, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %.thread393, %.thread
  %.2391396 = phi i32 [ -116, %.thread393 ], [ %.2.ph, %.thread ] ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.cn = load i16, ptr %i.cm, align 8, !tbaa !72
  %.not300 = icmp eq i16 %i.cn, 0
  br i1 %.not300, label %.thread398.sink.split, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.t) #12
  %i.co = load i16, ptr %i.cm, align 8, !tbaa !72 ; 2 uses
  %.not.i = icmp eq i16 %i.co, 0
  br i1 %.not.i, label %.thread398.sink.split, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.ae
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i, %.lr.ph19.i
  %i.cq = phi i16 [ %i.co, %.lr.ph19.i ], [ %i.cy, %._crit_edge.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.cr = load ptr, ptr %i.cp, align 8, !tbaa !73
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.i
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !75 ; 2 uses
  %.not1416.i = icmp eq ptr %i.ct, null
  br i1 %.not1416.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.af, %bb.ah
  %.017.i = phi ptr [ %i.cv, %bb.ah ], [ %i.ct, %bb.af ] ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.017.i, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !81 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !79 ; 2 uses
  %.not15.i = icmp eq ptr %i.cx, null
  br i1 %.not15.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i
  tail call void @free(ptr noundef nonnull %i.cx) #12
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph.i
  tail call void @free(ptr noundef nonnull %.017.i) #12
  %.not14.i = icmp eq ptr %i.cv, null
  br i1 %.not14.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.loopexit.i:                           ; preds = %bb.ah
  %.pre.i = load i16, ptr %i.cm, align 8, !tbaa !72
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.af
  %i.cy = phi i16 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.cq, %bb.af ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cz = zext i16 %i.cy to i64
  %i.da = icmp samesign ult i64 %indvars.iv.next.i, %i.cz
  br i1 %i.da, label %bb.af, label %._crit_edge20.i, !llvm.loop !1

._crit_edge20.i:                                  ; preds = %._crit_edge.i
  %i.db = load ptr, ptr %i.cp, align 8, !tbaa !73
  br label %.thread398.sink.split.sink.split

bb.ai:                                            ; preds = %.thread, %bb.c
  %.1250 = phi ptr [ null, %bb.c ], [ %i.t, %.thread ] ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 10 uses
  %i.dd = load i16, ptr %i.dc, align 8, !tbaa !72
  %.not301 = icmp eq i16 %i.dd, 0
  %i.de = select i1 %.not301, ptr %2, ptr %.1250
  %i.df = tail call ptr @cli_hex2ui(ptr noundef %i.de) #12 ; 2 uses
  store ptr %i.df, ptr %i.g, align 8, !tbaa !54
  %i.dg = icmp eq ptr %i.df, null
  %i.dh = load i16, ptr %i.dc, align 8, !tbaa !72
  %.not325 = icmp eq i16 %i.dh, 0                 ; 3 uses
  br i1 %i.dg, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %bb.ai
  br i1 %.not325, label %.thread398.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @free(ptr noundef %.1250) #12
  %i.di = load i16, ptr %i.dc, align 8, !tbaa !72 ; 2 uses
  %.not.i328 = icmp eq i16 %i.di, 0
  br i1 %.not.i328, label %.thread398.sink.split, label %.lr.ph19.i329

.lr.ph19.i329:                                    ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge.i338, %.lr.ph19.i329
  %i.dk = phi i16 [ %i.di, %.lr.ph19.i329 ], [ %i.ds, %._crit_edge.i338 ]
  %indvars.iv.i330 = phi i64 [ 0, %.lr.ph19.i329 ], [ %indvars.iv.next.i339, %._crit_edge.i338 ] ; 2 uses
  %i.dl = load ptr, ptr %i.dj, align 8, !tbaa !73
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv.i330
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !75 ; 2 uses
  %.not1416.i331 = icmp eq ptr %i.dn, null
  br i1 %.not1416.i331, label %._crit_edge.i338, label %.lr.ph.i332

.lr.ph.i332:                                      ; preds = %bb.al, %bb.an
  %.017.i333 = phi ptr [ %i.dp, %bb.an ], [ %i.dn, %bb.al ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.017.i333, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !81 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.017.i333, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !79 ; 2 uses
  %.not15.i334 = icmp eq ptr %i.dr, null
  br i1 %.not15.i334, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i332
  tail call void @free(ptr noundef nonnull %i.dr) #12
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i332
  tail call void @free(ptr noundef nonnull %.017.i333) #12
  %.not14.i335 = icmp eq ptr %i.dp, null
  br i1 %.not14.i335, label %._crit_edge.loopexit.i336, label %.lr.ph.i332, !llvm.loop !0

._crit_edge.loopexit.i336:                        ; preds = %bb.an
  %.pre.i337 = load i16, ptr %i.dc, align 8, !tbaa !72
  br label %._crit_edge.i338

._crit_edge.i338:                                 ; preds = %._crit_edge.loopexit.i336, %bb.al
  %i.ds = phi i16 [ %.pre.i337, %._crit_edge.loopexit.i336 ], [ %i.dk, %bb.al ] ; 2 uses
  %indvars.iv.next.i339 = add nuw nsw i64 %indvars.iv.i330, 1 ; 2 uses
  %i.dt = zext i16 %i.ds to i64
  %i.du = icmp samesign ult i64 %indvars.iv.next.i339, %i.dt
  br i1 %i.du, label %bb.al, label %._crit_edge20.i340, !llvm.loop !1

._crit_edge20.i340:                               ; preds = %._crit_edge.i338
  %i.dv = load ptr, ptr %i.dj, align 8, !tbaa !73
  br label %.thread398.sink.split.sink.split

bb.ao:                                            ; preds = %bb.ai
  %i.dw = select i1 %.not325, ptr %2, ptr %.1250
  %i.dx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dw) #13
  %i.dy = lshr i64 %i.dx, 1
  %i.dz = trunc i64 %i.dy to i16                  ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i16 %i.dz, ptr %i.ea, align 8, !tbaa !53
  br i1 %.not325, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @free(ptr noundef %.1250) #12
  %.pre542.pre.pre = load i16, ptr %i.ea, align 8, !tbaa !53
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre542.pre = phi i16 [ %.pre542.pre.pre, %bb.ap ], [ %i.dz, %bb.ao ] ; 5 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !48  ; 5 uses
  %.not499 = icmp eq i8 %i.ec, 0
  br i1 %.not499, label %.critedge.thread, label %.lr.ph461

.lr.ph461:                                        ; preds = %bb.aq
  %wide.trip.count = zext i16 %.pre542.pre to i64
  %wide.trip.count525 = zext i8 %i.ec to i64
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph461, %bb.at
  %indvars.iv523 = phi i64 [ 0, %.lr.ph461 ], [ %indvars.iv.next524, %bb.at ] ; 3 uses
  %.0235459 = phi i8 [ 1, %.lr.ph461 ], [ %.1236, %bb.at ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv523, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.ed, i64 %indvars.iv523
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !55 ; 2 uses
  %.not304 = icmp ult i16 %i.ef, 256
  br i1 %.not304, label %bb.at, label %.critedge.thread

bb.at:                                            ; preds = %bb.as
  %.not306 = icmp eq i16 %i.ef, 0
  %.1236 = select i1 %.not306, i8 %.0235459, i8 0 ; 2 uses
  %indvars.iv.next524 = add nuw nsw i64 %indvars.iv523, 1 ; 2 uses
  %exitcond526.not = icmp eq i64 %indvars.iv.next524, %wide.trip.count525
  br i1 %exitcond526.not, label %.critedge, label %bb.ar, !llvm.loop !161

.critedge:                                        ; preds = %bb.ar, %bb.at
  %.0235.lcssa.ph = phi i8 [ %.0235459, %bb.ar ], [ %.1236, %bb.at ]
  %i.eg = icmp eq i8 %.0235.lcssa.ph, 0
  br i1 %i.eg, label %.loopexit, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.as, %bb.aq, %.critedge
  %i.eh = load i8, ptr %i.c, align 4, !tbaa !57   ; 3 uses
  %i.ei = zext i8 %i.eh to i16                    ; 2 uses
  %i.ej = add i16 %.pre542.pre, 1                 ; 2 uses
  %.not500 = icmp eq i16 %i.ej, %i.ei
  br i1 %.not500, label %._crit_edge486, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.critedge.thread
  %i.ek = sub i16 %i.ej, %i.ei
  %i.el = zext i8 %i.ec to i32
  %i.em = zext i16 %.pre542.pre to i64            ; 2 uses
  %wide.trip.count533 = zext i16 %i.ek to i64     ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.lr.ph
  %indvars.iv529 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv529.be, %.preheader.backedge ] ; 6 uses
  %11 = phi i32 [ 0, %.preheader.lr.ph ], [ %.be, %.preheader.backedge ] ; 2 uses
  %.0231485 = phi i8 [ 0, %.preheader.lr.ph ], [ %.3, %.preheader.backedge ] ; 2 uses
  %.0238484 = phi i16 [ 0, %.preheader.lr.ph ], [ %.3241, %.preheader.backedge ] ; 2 uses
  %i.en = add nuw nsw i32 %11, %i.el              ; 2 uses
  %12 = trunc nuw i64 %indvars.iv529 to i32       ; 2 uses
  %13 = icmp samesign ugt i32 %i.en, %12
  %i.eo = icmp samesign ult i64 %indvars.iv529, %i.em
  %or.cond403467 = and i1 %i.eo, %13
  br i1 %or.cond403467, label %.lr.ph471, label %.critedge4

.lr.ph471:                                        ; preds = %.preheader
  %i.ep = load ptr, ptr %i.g, align 8, !tbaa !54  ; 2 uses
  %i.eq = trunc nuw i64 %indvars.iv529 to i16
  %invariant.op = sub i32 1, %11
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph471, %bb.ay
  %indvars.iv529.a = phi i64 [ %indvars.iv529, %.lr.ph471 ], [ %indvars.iv.next530.a, %bb.ay ] ; 2 uses
  %i.er = phi i32 [ %12, %.lr.ph471 ], [ %i.fa, %bb.ay ]
  %.1232470 = phi i8 [ %.0231485, %.lr.ph471 ], [ %spec.select327, %bb.ay ] ; 2 uses
  %.1239469 = phi i16 [ %.0238484, %.lr.ph471 ], [ %spec.select, %bb.ay ] ; 2 uses
  %i.es = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %indvars.iv529.a
  %i.et = load i16, ptr %i.es, align 2, !tbaa !55
  %.not307 = icmp ult i16 %i.et, 256
  br i1 %.not307, label %bb.av, label %.critedge4

bb.av:                                            ; preds = %bb.au
  %.reass.reass.reass = add i32 %i.er, %invariant.op ; 2 uses
  %i.eu = zext i8 %.1232470 to i32                ; 2 uses
  %.not308 = icmp samesign ult i32 %.reass.reass.reass, %i.eu
  %spec.select = select i1 %.not308, i16 %.1239469, i16 %i.eq ; 5 uses
  %spec.select327405 = tail call i32 @llvm.smax.i32(i32 %.reass.reass.reass, i32 %i.eu)
  %spec.select327 = trunc i32 %spec.select327405 to i8 ; 5 uses
  %.not309 = icmp ugt i8 %i.ec, %spec.select327
  br i1 %.not309, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ev = zext i16 %spec.select to i64
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %i.ep, i64 %i.ev ; 2 uses
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !55
  %.not310 = icmp eq i16 %i.ex, 0
  br i1 %.not310, label %bb.ax, label %.critedge4

bb.ax:                                            ; preds = %bb.aw
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !55
  %.not311 = icmp eq i16 %i.ez, 0
  br i1 %.not311, label %bb.ay, label %.critedge4

bb.ay:                                            ; preds = %bb.av, %bb.ax
  %indvars.iv.next530.a = add nuw nsw i64 %indvars.iv529.a, 1 ; 3 uses
  %i.fa = trunc nuw i64 %indvars.iv.next530.a to i32 ; 2 uses
  %i.fb = icmp samesign ugt i32 %i.en, %i.fa
  %i.fc = icmp samesign ult i64 %indvars.iv.next530.a, %i.em
  %or.cond403 = and i1 %i.fc, %i.fb
  br i1 %or.cond403, label %bb.au, label %.critedge4, !llvm.loop !162

.critedge4:                                       ; preds = %bb.au, %bb.ax, %bb.aw, %bb.ay, %.preheader
  %.3241 = phi i16 [ %.0238484, %.preheader ], [ %spec.select, %bb.ax ], [ %spec.select, %bb.ay ], [ %spec.select, %bb.aw ], [ %.1239469, %bb.au ] ; 5 uses
  %.3 = phi i8 [ %.0231485, %.preheader ], [ %spec.select327, %bb.ax ], [ %spec.select327, %bb.ay ], [ %spec.select327, %bb.aw ], [ %.1232470, %bb.au ] ; 5 uses
  %.not312 = icmp ult i8 %.3, %i.ec
  br i1 %.not312, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %.critedge4
  %i.fd = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.fe = zext i16 %.3241 to i64
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr %i.fd, i64 %i.fe ; 2 uses
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !55
  %.not313 = icmp eq i16 %i.fg, 0
  br i1 %.not313, label %bb.ba, label %._crit_edge486

bb.ba:                                            ; preds = %bb.az
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !55
  %.not314 = icmp ne i16 %i.fi, 0
  %indvars.iv.next530 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %.not314.a = icmp eq i64 %indvars.iv.next530, %wide.trip.count533
  %or.cond = select i1 %.not314, i1 true, i1 %.not314.a
  br i1 %or.cond, label %._crit_edge486, label %.preheader.backedge

bb.bb:                                            ; preds = %.critedge4
  %indvars.iv.next528 = add nuw nsw i64 %indvars.iv529, 1 ; 2 uses
  %exitcond534.not = icmp eq i64 %indvars.iv.next528, %wide.trip.count533
  br i1 %exitcond534.not, label %._crit_edge486, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.bb, %bb.ba
  %indvars.iv529.be = phi i64 [ %indvars.iv.next528, %bb.bb ], [ %indvars.iv.next530, %bb.ba ] ; 2 uses
  %.be = trunc i64 %indvars.iv529.be to i32
  br label %.preheader, !llvm.loop !163

._crit_edge486:                                   ; preds = %bb.bb, %bb.ba, %bb.az, %.critedge.thread
  %.4242 = phi i16 [ 0, %.critedge.thread ], [ %.3241, %bb.az ], [ %.3241, %bb.ba ], [ %.3241, %bb.bb ] ; 6 uses
  %.4 = phi i8 [ 0, %.critedge.thread ], [ %.3, %bb.az ], [ %.3, %bb.ba ], [ %.3, %bb.bb ]
  %i.fj = icmp ult i8 %.4, %i.eh
  br i1 %i.fj, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %._crit_edge486
  %i.fk = zext i8 %i.eh to i32
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.20, i32 noundef %i.fk) #12
  %i.fl = load i16, ptr %i.dc, align 8, !tbaa !72 ; 2 uses
  %.not.i342 = icmp eq i16 %i.fl, 0
  br i1 %.not.i342, label %ac_free_alt.exit355, label %.lr.ph19.i343

.lr.ph19.i343:                                    ; preds = %bb.bc
  %i.fm = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  br label %bb.bd

bb.bd:                                            ; preds = %._crit_edge.i352, %.lr.ph19.i343
  %i.fn = phi i16 [ %i.fl, %.lr.ph19.i343 ], [ %i.fv, %._crit_edge.i352 ]
  %indvars.iv.i344 = phi i64 [ 0, %.lr.ph19.i343 ], [ %indvars.iv.next.i353, %._crit_edge.i352 ] ; 2 uses
  %i.fo = load ptr, ptr %i.fm, align 8, !tbaa !73
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.i344
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !75 ; 2 uses
  %.not1416.i345 = icmp eq ptr %i.fq, null
  br i1 %.not1416.i345, label %._crit_edge.i352, label %.lr.ph.i346

.lr.ph.i346:                                      ; preds = %bb.bd, %bb.bf
  %.017.i347 = phi ptr [ %i.fs, %bb.bf ], [ %i.fq, %bb.bd ] ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.017.i347, i64 24
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !81 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.017.i347, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !79 ; 2 uses
  %.not15.i348 = icmp eq ptr %i.fu, null
  br i1 %.not15.i348, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.lr.ph.i346
  tail call void @free(ptr noundef nonnull %i.fu) #12
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph.i346
  tail call void @free(ptr noundef nonnull %.017.i347) #12
  %.not14.i349 = icmp eq ptr %i.fs, null
  br i1 %.not14.i349, label %._crit_edge.loopexit.i350, label %.lr.ph.i346, !llvm.loop !0

._crit_edge.loopexit.i350:                        ; preds = %bb.bf
  %.pre.i351 = load i16, ptr %i.dc, align 8, !tbaa !72
  br label %._crit_edge.i352

._crit_edge.i352:                                 ; preds = %._crit_edge.loopexit.i350, %bb.bd
  %i.fv = phi i16 [ %.pre.i351, %._crit_edge.loopexit.i350 ], [ %i.fn, %bb.bd ] ; 2 uses
  %indvars.iv.next.i353 = add nuw nsw i64 %indvars.iv.i344, 1 ; 2 uses
  %i.fw = zext i16 %i.fv to i64
  %i.fx = icmp samesign ult i64 %indvars.iv.next.i353, %i.fw
  br i1 %i.fx, label %bb.bd, label %._crit_edge20.i354, !llvm.loop !1

._crit_edge20.i354:                               ; preds = %._crit_edge.i352
  %i.fy = load ptr, ptr %i.fm, align 8, !tbaa !73
  tail call void @free(ptr noundef %i.fy) #12
  br label %ac_free_alt.exit355

ac_free_alt.exit355:                              ; preds = %bb.bc, %._crit_edge20.i354
  %i.fz = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %.thread398.sink.split.sink.split

bb.bg:                                            ; preds = %._crit_edge486
  %i.ga = load ptr, ptr %i.g, align 8, !tbaa !54  ; 5 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.ga, ptr %i.gb, align 8, !tbaa !71
  %i.gc = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  store i16 %.4242, ptr %i.gc, align 2, !tbaa !70
  %i.gd = zext i16 %.4242 to i64                  ; 3 uses
  %i.ge = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %i.gd
  store ptr %i.ge, ptr %i.g, align 8, !tbaa !54
  %i.gf = sub i16 %.pre542.pre, %.4242            ; 5 uses
  store i16 %i.gf, ptr %i.ea, align 8, !tbaa !53
  %.not501 = icmp eq i16 %.4242, 0
  br i1 %.not501, label %.loopexit, label %.lr.ph497

.lr.ph497:                                        ; preds = %bb.bg
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 58 ; 6 uses
  %xtraiter = and i64 %i.gd, 1
  %i.gh = icmp eq i16 %.4242, 1
  br i1 %i.gh, label %.epil.preheader, label %.lr.ph497.new

.lr.ph497.new:                                    ; preds = %.lr.ph497
  %unroll_iter = and i64 %i.gd, 65534
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bl, %.lr.ph497.new
  %indvars.iv535 = phi i64 [ 0, %.lr.ph497.new ], [ %indvars.iv.next536.1, %bb.bl ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph497.new ], [ %niter.next.1, %bb.bl ]
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv535
  %i.gj = load i16, ptr %i.gi, align 2, !tbaa !55
  %i.gk = and i16 %i.gj, -256
  %i.gl = icmp eq i16 %i.gk, 512
  br i1 %i.gl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gm = load i16, ptr %i.gg, align 2, !tbaa !97
  %i.gn = add i16 %i.gm, 1
  store i16 %i.gn, ptr %i.gg, align 2, !tbaa !97
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv535
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !55
  %i.gr = and i16 %i.gq, -256
  %i.gs = icmp eq i16 %i.gr, 512
  br i1 %i.gs, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.gt = load i16, ptr %i.gg, align 2, !tbaa !97
  %i.gu = add i16 %i.gt, 1
  store i16 %i.gu, ptr %i.gg, align 2, !tbaa !97
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %indvars.iv.next536.1 = add nuw nsw i64 %indvars.iv535, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.bh, !llvm.loop !164

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.bl
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph497
  %indvars.iv535.epil.init = phi i64 [ 0, %.lr.ph497 ], [ %indvars.iv.next536.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod665 = trunc i16 %.4242 to i1
  tail call void @llvm.assume(i1 %lcmp.mod665)
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv535.epil.init
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !55
  %i.gx = and i16 %i.gw, -256
  %i.gy = icmp eq i16 %i.gx, 512
  br i1 %i.gy, label %bb.bm, label %.loopexit

bb.bm:                                            ; preds = %.epil.preheader
  %i.gz = load i16, ptr %i.gg, align 2, !tbaa !97
  %i.ha = add i16 %i.gz, 1
  store i16 %i.ha, ptr %i.gg, align 2, !tbaa !97
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.bm, %.epil.preheader, %bb.bg, %.critedge
  %i.hb = phi i16 [ %.pre542.pre, %.critedge ], [ %i.gf, %bb.bg ], [ %i.gf, %.epil.preheader ], [ %i.gf, %bb.bm ], [ %i.gf, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %i.hc = load i16, ptr %0, align 8, !tbaa !166
  %i.hd = icmp ugt i16 %i.hb, %i.hc
  br i1 %i.hd, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.loopexit
  store i16 %i.hb, ptr %0, align 8, !tbaa !166
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %.loopexit
  %i.he = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.21) #13 ; 2 uses
  %.not315 = icmp eq ptr %i.he, null
  %i.hf = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13 ; 2 uses
  br i1 %.not315, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.he) #13
  %i.hh = sub i64 %i.hf, %i.hg
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %.0234.in = phi i64 [ %i.hh, %bb.bp ], [ %i.hf, %bb.bo ]
  %i.hi = and i64 %.0234.in, 255                  ; 3 uses
  %.not316 = icmp eq i64 %i.hi, 0
  br i1 %.not316, label %bb.br, label %bb.bx

bb.br:                                            ; preds = %bb.bq
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.22) #12
  %i.hj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !71 ; 2 uses
  %.not317 = icmp eq ptr %i.hk, null
  br i1 %.not317, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.hl = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs
  %.sink = phi ptr [ %i.hl, %bb.bs ], [ %i.hk, %bb.br ]
  tail call void @free(ptr noundef %.sink) #12
  %i.hm = load i16, ptr %i.dc, align 8, !tbaa !72 ; 2 uses
  %.not.i356 = icmp eq i16 %i.hm, 0
  br i1 %.not.i356, label %.thread398.sink.split, label %.lr.ph19.i357

.lr.ph19.i357:                                    ; preds = %bb.bt
  %i.hn = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.i366, %.lr.ph19.i357
  %i.ho = phi i16 [ %i.hm, %.lr.ph19.i357 ], [ %i.hw, %._crit_edge.i366 ]
  %indvars.iv.i358 = phi i64 [ 0, %.lr.ph19.i357 ], [ %indvars.iv.next.i367, %._crit_edge.i366 ] ; 2 uses
  %i.hp = load ptr, ptr %i.hn, align 8, !tbaa !73
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %indvars.iv.i358
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !75 ; 2 uses
  %.not1416.i359 = icmp eq ptr %i.hr, null
end_hunk_0
