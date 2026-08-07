inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PGTYPESdate_defmt_asc:bb.a
  br i1 %.not229, label %.critedge242, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ai = icmp eq i32 %i.ae, 6
  br i1 %i.ai, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load i8, ptr %.0188, align 1
  %i.ak = icmp eq i8 %i.aj, 121
  br i1 %i.ak, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds nuw i8, ptr %.0188, i64 1
  %i.am = load i8, ptr %i.al, align 1
  %i.an = icmp eq i8 %i.am, 121
  br i1 %i.an, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.r
  %.sroa.13.0 = phi i32 [ 4, %bb.r ], [ 2, %bb.o ], [ 2, %bb.p ], [ 2, %bb.q ] ; 2 uses
  %.sroa.8.0 = phi i32 [ 2, %bb.r ], [ 2, %bb.o ], [ 2, %bb.p ], [ 4, %bb.q ] ; 2 uses
  %.sroa.0.0 = phi i32 [ 2, %bb.r ], [ 2, %bb.o ], [ 4, %bb.p ], [ 2, %bb.q ] ; 2 uses
  %i.ao = phi i64 [ 2, %bb.r ], [ 2, %bb.o ], [ 2, %bb.p ], [ 4, %bb.q ]
  %i.ap = phi i64 [ 2, %bb.r ], [ 2, %bb.o ], [ 4, %bb.p ], [ 2, %bb.q ]
  %i.aq = zext nneg i32 %.sroa.0.0 to i64         ; 2 uses
  %i.ar = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) %2, i64 noundef %i.aq) #10 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aq
  store i8 32, ptr %i.as, align 1
  %i.at = or disjoint i32 %.sroa.0.0, 1           ; 2 uses
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap ; 2 uses
  %i.ax = zext nneg i32 %.sroa.8.0 to i64
  %i.ay = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.av, ptr noundef nonnull dereferenceable(1) %i.aw, i64 noundef %i.ax) #10 ; 0 uses
  %i.az = add nuw nsw i32 %.sroa.8.0, %i.at       ; 2 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ba
  store i8 32, ptr %i.bb, align 1
  %i.bc = add nuw nsw i32 %i.az, 1                ; 2 uses
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ao
  %i.bg = zext nneg i32 %.sroa.13.0 to i64
  %i.bh = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(1) %i.bf, i64 noundef %i.bg) #10 ; 0 uses
  %i.bi = add nuw nsw i32 %.sroa.13.0, %i.bc
  %.pre = zext nneg i32 %i.bi to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.pre
  store i8 0, ptr %i.bj, align 1
  br label %.loopexit

bb.t:                                             ; preds = %bb.l
  %i.bk = tail call ptr @pgtypes_strdup(ptr noundef nonnull %2) #10 ; 6 uses
  %.not = icmp eq ptr %i.bk, null
  br i1 %.not, label %.critedge242, label %.preheader251

.preheader251:                                    ; preds = %bb.t
  %i.bl = load i8, ptr %i.bk, align 1             ; 2 uses
  %.not228255 = icmp eq i8 %i.bl, 0
  br i1 %.not228255, label %.loopexit, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader251, %.lr.ph257
  %i.bm = phi i8 [ %i.bs, %.lr.ph257 ], [ %i.bl, %.preheader251 ]
  %i.bn = phi ptr [ %i.br, %.lr.ph257 ], [ %i.bk, %.preheader251 ]
  %.2191256 = phi i32 [ %i.bp, %.lr.ph257 ], [ 0, %.preheader251 ]
  %i.bo = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.bm) #10
  store i8 %i.bo, ptr %i.bn, align 1
  %i.bp = add i32 %.2191256, 1                    ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  %.not228 = icmp eq i8 %i.bs, 0
  br i1 %.not228, label %.loopexit, label %.lr.ph257, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph257, %.preheader251, %bb.s
  %.1208 = phi ptr [ %i.ah, %bb.s ], [ %i.bk, %.preheader251 ], [ %i.bk, %.lr.ph257 ] ; 16 uses
  %i.bt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1208) #12 ; 3 uses
  %.not275 = icmp eq i64 %i.bt, 0
  br i1 %.not275, label %.thread338, label %.lr.ph263

.lr.ph263:                                        ; preds = %.loopexit
  %i.bu = tail call ptr @__ctype_b_loc() #11
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit342, %.lr.ph263
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 6 uses
  %.1200261.ph = phi i32 [ %.2201, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 2 uses
  %.0202260.ph = phi i32 [ %.1203, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 6 uses
  %i.bw = sext i32 %.0202260.ph to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.1208, i64 %indvars.iv.ph
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = and i16 %i.cc, 2048
  %i.ce = icmp eq i16 %i.cd, 0                    ; 2 uses
  %i.cf = icmp ne i32 %.1200261.ph, 0             ; 2 uses
  %or.cond12.peel = select i1 %i.ce, i1 %i.cf, i1 false
  br i1 %or.cond12.peel, label %.loopexit370, label %bb.u

bb.u:                                             ; preds = %.outer
  %or.cond14.peel = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond14.peel, label %.loopexit342, label %.thread.peel

.thread.peel:                                     ; preds = %bb.u
  %i.cg = trunc nuw i64 %indvars.iv.ph to i32
  store i32 %i.cg, ptr %i.bx, align 8
  %indvars.iv.next331.peel = add i64 %indvars.iv.ph, 1 ; 4 uses
  %i.ch = and i64 %indvars.iv.next331.peel, 4294967295
  %i.ci = icmp ugt i64 %i.bt, %i.ch
  br i1 %i.ci, label %.outer.peel.newph, label %._crit_edge.thread334

.outer.peel.newph:                                ; preds = %.thread.peel
  %i.cj = getelementptr inbounds nuw i8, ptr %.1208, i64 %indvars.iv.next331.peel
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2
  %i.co = and i16 %i.cn, 2048
  %i.cp = icmp eq i16 %i.co, 0
  br i1 %i.cp, label %.loopexit370, label %.loopexit342

.loopexit370:                                     ; preds = %.outer.peel.newph, %.outer
  %indvars.iv.lcssa = phi i64 [ %indvars.iv.ph, %.outer ], [ %indvars.iv.next331.peel, %.outer.peel.newph ] ; 2 uses
  %i.cq = trunc nuw i64 %indvars.iv.lcssa to i32
  %i.cr = add i32 %i.cq, -1
  %i.cs = sext i32 %.0202260.ph to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cr, ptr %i.cu, align 4
  %i.cv = add i32 %.0202260.ph, 1
  br label %.loopexit342

.loopexit342:                                     ; preds = %bb.u, %.outer.peel.newph, %.loopexit370
  %indvars.iv367 = phi i64 [ %indvars.iv.lcssa, %.loopexit370 ], [ %indvars.iv.ph, %bb.u ], [ %indvars.iv.next331.peel, %.outer.peel.newph ] ; 2 uses
  %.1203 = phi i32 [ %i.cv, %.loopexit370 ], [ %.0202260.ph, %.outer.peel.newph ], [ %.0202260.ph, %bb.u ] ; 3 uses
  %.2201 = phi i32 [ 0, %.loopexit370 ], [ %.1200261.ph, %bb.u ], [ 1, %.outer.peel.newph ] ; 2 uses
  %indvars.iv.next = add i64 %indvars.iv367, 1    ; 2 uses
  %i.cw = and i64 %indvars.iv.next, 4294967295
  %i.cx = icmp ugt i64 %i.bt, %i.cw
  br i1 %i.cx, label %.outer, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.loopexit342
  %i.cy = icmp eq i32 %.2201, 0
  br i1 %i.cy, label %bb.v, label %._crit_edge.thread334

._crit_edge.thread334:                            ; preds = %.thread.peel, %._crit_edge
  %indvars.iv366 = phi i64 [ %indvars.iv367, %._crit_edge ], [ %indvars.iv.ph, %.thread.peel ]
  %.1203332337 = phi i32 [ %.1203, %._crit_edge ], [ %.0202260.ph, %.thread.peel ] ; 2 uses
  %i.cz = trunc i64 %indvars.iv366 to i32
  %i.da = sext i32 %.1203332337 to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.cz, ptr %i.dc, align 4
  %i.dd = add i32 %.1203332337, 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread334, %._crit_edge
  %.2204 = phi i32 [ %i.dd, %._crit_edge.thread334 ], [ %.1203, %._crit_edge ] ; 2 uses
  %i.de = icmp slt i32 %.2204, 2
  br i1 %i.de, label %.thread338, label %bb.w

.thread338:                                       ; preds = %.loopexit, %bb.v
  tail call void @free(ptr noundef nonnull %.1208) #10
  %i.df = tail call ptr @__errno_location() #11
  store i32 312, ptr %i.df, align 4
  br label %.critedge242

bb.w:                                             ; preds = %bb.v
  %.not233 = icmp eq i32 %.2204, 3
  br i1 %.not233, label %.thread340, label %bb.x

.thread340:                                       ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %.1208, i64 %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  store i8 0, ptr %i.dk, align 1
  br label %bb.aj

bb.x:                                             ; preds = %bb.w
  %i.dl = tail call ptr @pgtypes_alloc(i64 noundef 20) #10 ; 6 uses
  %.not234 = icmp eq ptr %i.dl, null
  br i1 %.not234, label %bb.y, label %.preheader250

.preheader250:                                    ; preds = %bb.x
  %i.dm = load ptr, ptr @pgtypes_date_months, align 8
  %.not235267 = icmp eq ptr %i.dm, null
  br i1 %.not235267, label %.critedge246, label %.preheader

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %.1208) #10
  br label %.critedge242

.preheader:                                       ; preds = %.preheader250, %bb.ah
  %i.dn = phi ptr [ %i.et, %bb.ah ], [ @pgtypes_date_months, %.preheader250 ]
  %.0269 = phi ptr [ %.1, %bb.ah ], [ @pgtypes_date_months, %.preheader250 ] ; 4 uses
  %.4268 = phi i32 [ %i.er, %bb.ah ], [ 0, %.preheader250 ] ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.preheader
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %bb.z ], [ 0, %.preheader ] ; 4 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv280
  %i.dq = load i8, ptr %i.dp, align 1
  %i.dr = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.dq) #10 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv280
  store i8 %i.dr, ptr %i.ds, align 1
  %.not236 = icmp ne i8 %i.dr, 0
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1
  %i.dt = icmp samesign ult i64 %indvars.iv280, 19
  %or.cond274 = select i1 %.not236, i1 %i.dt, i1 false
  br i1 %or.cond274, label %bb.z, label %bb.aa, !llvm.loop !9

bb.aa:                                            ; preds = %bb.z
  %i.du = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.1208, ptr noundef nonnull dereferenceable(1) %i.dl) #12 ; 2 uses
  %.not237 = icmp eq ptr %i.du, null
  br i1 %.not237, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %.1208 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = trunc i64 %i.dx to i32                  ; 3 uses
  %i.dz = load i32, ptr %i.a, align 16            ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, %i.dy
  %i.eb = load i32, ptr %.3205.sroa.gep301, align 8 ; 3 uses
  br i1 %i.ea, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.eb, ptr %.3205.sroa.gep302, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ed, ptr %i.ee, align 4
  store i32 %i.dz, ptr %.3205.sroa.gep301, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.eg = load i32, ptr %i.ef, align 4
  store i32 %i.eg, ptr %i.ec, align 4
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.eh = icmp sgt i32 %i.eb, %i.dy
  br i1 %i.eh, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.eb, ptr %.3205.sroa.gep302, align 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ej, ptr %i.ek, align 4
  br label %bb.ai

bb.af:                                            ; preds = %bb.aa
  %i.el = icmp eq ptr %.0269, @pgtypes_date_months
  br i1 %i.el, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.em = add i32 %.4268, 1
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.0269, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = icmp eq ptr %i.ep, null                 ; 2 uses
  %spec.select243 = select i1 %i.eq, i32 -1, i32 %.4268
  %spec.select244 = select i1 %i.eq, ptr @months, ptr %.0269
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.5 = phi i32 [ %.4268, %bb.af ], [ %spec.select243, %bb.ag ]
  %.1 = phi ptr [ %.0269, %bb.af ], [ %spec.select244, %bb.ag ] ; 2 uses
  %i.er = add i32 %.5, 1                          ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.es ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8
  %.not235 = icmp eq ptr %i.eu, null
  br i1 %.not235, label %.critedge246, label %.preheader, !llvm.loop !10

.critedge246:                                     ; preds = %bb.ah, %.preheader250
  tail call void @free(ptr noundef nonnull %i.dl) #10
  tail call void @free(ptr noundef nonnull %.1208) #10
  %i.ev = tail call ptr @__errno_location() #11
  store i32 313, ptr %i.ev, align 4
  br label %.critedge242

bb.ai:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.3205.sroa.phi = phi ptr [ %.sroa.0290, %bb.ac ], [ %.sroa.10, %bb.ae ], [ %.sroa.17, %bb.ad ]
  %.3205.sroa.phi300 = phi ptr [ %i.a, %bb.ac ], [ %.3205.sroa.gep301, %bb.ae ], [ %.3205.sroa.gep302, %bb.ad ] ; 2 uses
  %.3205 = phi i64 [ 0, %bb.ac ], [ 1, %bb.ae ], [ 2, %bb.ad ]
  store i32 %i.dy, ptr %.3205.sroa.phi300, align 8
  %i.ew = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #12
  %i.ex = add i64 %i.ew, %i.dx
  %i.ey = trunc i64 %i.ex to i32
  %i.ez = add i32 %i.ey, -1
  %i.fa = getelementptr inbounds nuw i8, ptr %.3205.sroa.phi300, i64 4
  store i32 %i.ez, ptr %i.fa, align 4
  %i.fb = add i32 %.4268, 1
  %i.fc = getelementptr inbounds nuw i8, ptr %.0188, i64 %.3205
  %i.fd = load i8, ptr %i.fc, align 1
  %.not239 = icmp eq i8 %i.fd, 109
  %spec.store.select249 = select i1 %.not239, i32 %i.fb, i32 -1
  store i32 %spec.store.select249, ptr %.3205.sroa.phi, align 4
  tail call void @free(ptr noundef nonnull %i.dl) #10
  %.sroa.0290.0..sroa.0290.0..sroa.0290.0..pre = load i32, ptr %.sroa.0290, align 4 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ff = load i32, ptr %i.fe, align 4
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds i8, ptr %.1208, i64 %i.fg
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 1
  store i8 0, ptr %i.fi, align 1
  %i.fj = icmp eq i32 %.sroa.0290.0..sroa.0290.0..sroa.0290.0..pre, -1
  br i1 %i.fj, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread340, %bb.ai
  %i.fk = tail call ptr @__errno_location() #11   ; 2 uses
  store i32 0, ptr %i.fk, align 4
  %i.fl = load i32, ptr %i.a, align 16
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %.1208, i64 %i.fm
  %i.fo = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fn, ptr noundef null, i32 noundef 10) #10
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = load i32, ptr %i.fk, align 4
  %.not240 = icmp eq i32 %i.fq, 0
  %spec.store.select = select i1 %.not240, i32 %i.fp, i32 -1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0290.0..sroa.0290.0.291 = phi i32 [ %spec.store.select, %bb.aj ], [ %.sroa.0290.0..sroa.0290.0..sroa.0290.0..pre, %bb.ai ] ; 3 uses
  %i.fr = load i8, ptr %.0188, align 1
  switch i8 %i.fr, label %bb.ao [
    i8 100, label %bb.al
    i8 109, label %bb.am
    i8 121, label %bb.an
  ]

bb.al:                                            ; preds = %bb.ak
  br label %bb.ao

bb.am:                                            ; preds = %bb.ak
  br label %bb.ao

bb.an:                                            ; preds = %bb.ak
  br label %bb.ao

bb.ao:                                            ; preds = %bb.ak, %bb.al, %bb.an, %bb.am
  %.sroa.19.1 = phi i32 [ 0, %bb.al ], [ 0, %bb.am ], [ %.sroa.0290.0..sroa.0290.0.291, %bb.an ], [ 0, %bb.ak ] ; 3 uses
  %.sroa.9.1 = phi i32 [ 0, %bb.al ], [ %.sroa.0290.0..sroa.0290.0.291, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ak ] ; 3 uses
  %.sroa.2.1 = phi i32 [ %.sroa.0290.0..sroa.0290.0.291, %bb.al ], [ 0, %bb.am ], [ 0, %bb.an ], [ 0, %bb.ak ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr inbounds i8, ptr %.1208, i64 %i.fu
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 1
  store i8 0, ptr %i.fw, align 1
  %.sroa.10.0..sroa.10.0..sroa.10.4. = load i32, ptr %.sroa.10, align 4 ; 2 uses
  %i.fx = icmp eq i32 %.sroa.10.0..sroa.10.0..sroa.10.4., -1
  br i1 %i.fx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fy = tail call ptr @__errno_location() #11   ; 2 uses
  store i32 0, ptr %i.fy, align 4
  %i.fz = load i32, ptr %.3205.sroa.gep301, align 8
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %.1208, i64 %i.ga
  %i.gc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.gb, ptr noundef null, i32 noundef 10) #10
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = load i32, ptr %i.fy, align 4
  %.not240.1 = icmp eq i32 %i.ge, 0
  %spec.store.select.1 = select i1 %.not240.1, i32 %i.gd, i32 -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.10.0..sroa.10.4.296 = phi i32 [ %spec.store.select.1, %bb.ap ], [ %.sroa.10.0..sroa.10.0..sroa.10.4., %bb.ao ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0188, i64 1
  %i.gg = load i8, ptr %i.gf, align 1
  switch i8 %i.gg, label %bb.au [
    i8 100, label %bb.at
    i8 109, label %bb.as
    i8 121, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  br label %bb.au

bb.at:                                            ; preds = %bb.aq
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq
  %.sroa.19.1.1 = phi i32 [ %.sroa.19.1, %bb.at ], [ %.sroa.19.1, %bb.as ], [ %.sroa.10.0..sroa.10.4.296, %bb.ar ], [ %.sroa.19.1, %bb.aq ] ; 3 uses
  %.sroa.9.1.1 = phi i32 [ %.sroa.9.1, %bb.at ], [ %.sroa.10.0..sroa.10.4.296, %bb.as ], [ %.sroa.9.1, %bb.ar ], [ %.sroa.9.1, %bb.aq ] ; 3 uses
  %.sroa.2.1.1 = phi i32 [ %.sroa.10.0..sroa.10.4.296, %bb.at ], [ %.sroa.2.1, %bb.as ], [ %.sroa.2.1, %bb.ar ], [ %.sroa.2.1, %bb.aq ] ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds i8, ptr %.1208, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1
  store i8 0, ptr %i.gl, align 1
  %.sroa.17.0..sroa.17.0..sroa.17.8. = load i32, ptr %.sroa.17, align 4 ; 2 uses
  %i.gm = icmp eq i32 %.sroa.17.0..sroa.17.0..sroa.17.8., -1
  br i1 %i.gm, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gn = tail call ptr @__errno_location() #11   ; 2 uses
  store i32 0, ptr %i.gn, align 4
  %i.go = load i32, ptr %.3205.sroa.gep302, align 16
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %.1208, i64 %i.gp
  %i.gr = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.gq, ptr noundef null, i32 noundef 10) #10
  %i.gs = trunc i64 %i.gr to i32
  %i.gt = load i32, ptr %i.gn, align 4
  %.not240.2 = icmp eq i32 %i.gt, 0
  %spec.store.select.2 = select i1 %.not240.2, i32 %i.gs, i32 -1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.17.0..sroa.17.8.299 = phi i32 [ %spec.store.select.2, %bb.av ], [ %.sroa.17.0..sroa.17.0..sroa.17.8., %bb.au ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.0188, i64 2
  %i.gv = load i8, ptr %i.gu, align 1
  switch i8 %i.gv, label %bb.ba [
    i8 100, label %bb.az
    i8 109, label %bb.ay
    i8 121, label %bb.ax
  ]

bb.ax:                                            ; preds = %bb.aw
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax, %bb.aw
  %.sroa.19.1.2 = phi i32 [ %.sroa.19.1.1, %bb.az ], [ %.sroa.19.1.1, %bb.ay ], [ %.sroa.17.0..sroa.17.8.299, %bb.ax ], [ %.sroa.19.1.1, %bb.aw ]
  %.sroa.9.1.2 = phi i32 [ %.sroa.9.1.1, %bb.az ], [ %.sroa.17.0..sroa.17.8.299, %bb.ay ], [ %.sroa.9.1.1, %bb.ax ], [ %.sroa.9.1.1, %bb.aw ] ; 4 uses
  %.sroa.2.1.2 = phi i32 [ %.sroa.17.0..sroa.17.8.299, %bb.az ], [ %.sroa.2.1.1, %bb.ay ], [ %.sroa.2.1.1, %bb.ax ], [ %.sroa.2.1.1, %bb.aw ] ; 4 uses
  tail call void @free(ptr noundef nonnull %.1208) #10
  %i.gw = add i32 %.sroa.2.1.2, -32
  %or.cond17 = icmp ult i32 %i.gw, -31
  br i1 %or.cond17, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.gx = tail call ptr @__errno_location() #11
  store i32 314, ptr %i.gx, align 4
  br label %.critedge242

bb.bc:                                            ; preds = %bb.ba
  %i.gy = add i32 %.sroa.9.1.2, -13
  %or.cond20 = icmp ult i32 %i.gy, -12
  br i1 %or.cond20, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gz = tail call ptr @__errno_location() #11
  store i32 315, ptr %i.gz, align 4
  br label %.critedge242

bb.be:                                            ; preds = %bb.bc
  %i.ha = icmp eq i32 %.sroa.2.1.2, 31
  br i1 %i.ha, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.hb = and i32 %.sroa.9.1.2, 13
end_hunk_0
