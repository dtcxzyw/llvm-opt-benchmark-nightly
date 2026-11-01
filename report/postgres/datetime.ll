Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/datetime?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@PGTYPESdate_defmt_asc:bb.a
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
  %.2206256 = phi i32 [ %i.bp, %.lr.ph257 ], [ 0, %.preheader251 ]
  %i.bo = tail call zeroext i8 @pg_tolower(i8 noundef zeroext %i.bm) #10
  store i8 %i.bo, ptr %i.bn, align 1
  %i.bp = add i32 %.2206256, 1                    ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bq ; 2 uses
  %i.bs = load i8, ptr %i.br, align 1             ; 2 uses
  %.not228 = icmp eq i8 %i.bs, 0
  br i1 %.not228, label %.loopexit, label %.lr.ph257, !llvm.loop !7

.loopexit:                                        ; preds = %.lr.ph257, %.preheader251, %bb.s
  %.1196 = phi ptr [ %i.ah, %bb.s ], [ %i.bk, %.preheader251 ], [ %i.bk, %.lr.ph257 ] ; 16 uses
  %i.bt = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1196) #12 ; 3 uses
  %.not275 = icmp eq i64 %i.bt, 0
  br i1 %.not275, label %.thread338, label %.lr.ph263

.lr.ph263:                                        ; preds = %.loopexit
  %i.bu = tail call ptr @__ctype_b_loc() #11
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.loopexit342, %.lr.ph263
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 6 uses
  %.0197262.ph = phi i32 [ %.1198, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 6 uses
  %.1202261.ph = phi i32 [ %.2203, %.loopexit342 ], [ 0, %.lr.ph263 ] ; 2 uses
  %i.bw = sext i32 %.0197262.ph to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %.1196, i64 %indvars.iv.ph
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2
  %i.cd = and i16 %i.cc, 2048
  %i.ce = icmp eq i16 %i.cd, 0                    ; 2 uses
  %i.cf = icmp ne i32 %.1202261.ph, 0             ; 2 uses
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
  %i.cj = getelementptr inbounds nuw i8, ptr %.1196, i64 %indvars.iv.next331.peel
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
  %i.cs = sext i32 %.0197262.ph to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cr, ptr %i.cu, align 4
  %i.cv = add i32 %.0197262.ph, 1
  br label %.loopexit342

.loopexit342:                                     ; preds = %bb.u, %.outer.peel.newph, %.loopexit370
  %indvars.iv367 = phi i64 [ %indvars.iv.lcssa, %.loopexit370 ], [ %indvars.iv.ph, %bb.u ], [ %indvars.iv.next331.peel, %.outer.peel.newph ] ; 2 uses
  %.2203 = phi i32 [ 0, %.loopexit370 ], [ %.1202261.ph, %bb.u ], [ 1, %.outer.peel.newph ] ; 2 uses
  %.1198 = phi i32 [ %i.cv, %.loopexit370 ], [ %.0197262.ph, %.outer.peel.newph ], [ %.0197262.ph, %bb.u ] ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv367, 1    ; 2 uses
  %i.cw = and i64 %indvars.iv.next, 4294967295
  %i.cx = icmp ugt i64 %i.bt, %i.cw
  br i1 %i.cx, label %.outer, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %.loopexit342
  %i.cy = icmp eq i32 %.2203, 0
  br i1 %i.cy, label %bb.v, label %._crit_edge.thread334

._crit_edge.thread334:                            ; preds = %.thread.peel, %._crit_edge
  %indvars.iv366 = phi i64 [ %indvars.iv367, %._crit_edge ], [ %indvars.iv.ph, %.thread.peel ]
  %.1198333337 = phi i32 [ %.1198, %._crit_edge ], [ %.0197262.ph, %.thread.peel ] ; 2 uses
  %i.cz = trunc i64 %indvars.iv366 to i32
  %i.da = sext i32 %.1198333337 to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  store i32 %i.cz, ptr %i.dc, align 4
  %i.dd = add i32 %.1198333337, 1
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.thread334, %._crit_edge
  %.2199 = phi i32 [ %i.dd, %._crit_edge.thread334 ], [ %.1198, %._crit_edge ] ; 2 uses
  %i.de = icmp slt i32 %.2199, 2
  br i1 %i.de, label %.thread338, label %bb.w

.thread338:                                       ; preds = %.loopexit, %bb.v
  tail call void @free(ptr noundef nonnull %.1196) #10
  %i.df = tail call ptr @__errno_location() #11
  store i32 312, ptr %i.df, align 4
  br label %.critedge242

bb.w:                                             ; preds = %bb.v
  %.not233 = icmp eq i32 %.2199, 3
  br i1 %.not233, label %.thread340, label %bb.x

.thread340:                                       ; preds = %bb.w
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr %.1196, i64 %i.di
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
  tail call void @free(ptr noundef nonnull %.1196) #10
  br label %.critedge242

.preheader:                                       ; preds = %.preheader250, %bb.ah
  %i.dn = phi ptr [ %i.er, %bb.ah ], [ @pgtypes_date_months, %.preheader250 ]
  %.0269 = phi ptr [ %.1, %bb.ah ], [ @pgtypes_date_months, %.preheader250 ] ; 4 uses
  %.4208268 = phi i32 [ %i.ep, %bb.ah ], [ 0, %.preheader250 ] ; 4 uses
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
  %i.du = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %.1196, ptr noundef nonnull dereferenceable(1) %i.dl) #12 ; 2 uses
  %.not237 = icmp eq ptr %i.du, null
  br i1 %.not237, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dv = ptrtoint ptr %i.du to i64
  %i.dw = ptrtoint ptr %.1196 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 2 uses
  %i.dy = trunc i64 %i.dx to i32                  ; 3 uses
  %i.dz = load i32, ptr %i.a, align 16            ; 2 uses
  %i.ea = icmp sgt i32 %i.dz, %i.dy
  %i.eb = load i32, ptr %.3200.sroa.gep301, align 8 ; 3 uses
  br i1 %i.ea, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store i32 %i.eb, ptr %.3200.sroa.gep302, align 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.ed, ptr %i.ee, align 4
  store i32 %i.dz, ptr %.3200.sroa.gep301, align 8
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %4 = load i32, ptr %3, align 4
  store i32 %4, ptr %i.ec, align 4
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %i.ef = icmp sgt i32 %i.eb, %i.dy
  br i1 %i.ef, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  store i32 %i.eb, ptr %.3200.sroa.gep302, align 16
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.eh, ptr %i.ei, align 4
  br label %bb.ai

bb.af:                                            ; preds = %bb.aa
  %i.ej = icmp eq ptr %.0269, @pgtypes_date_months
  br i1 %i.ej, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ek = add i32 %.4208268, 1
  %i.el = zext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.0269, i64 %i.el
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = icmp eq ptr %i.en, null                 ; 2 uses
  %spec.select243 = select i1 %i.eo, i32 -1, i32 %.4208268
  %spec.select244 = select i1 %i.eo, ptr @months, ptr %.0269
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.5 = phi i32 [ %.4208268, %bb.af ], [ %spec.select243, %bb.ag ]
  %.1 = phi ptr [ %.0269, %bb.af ], [ %spec.select244, %bb.ag ] ; 2 uses
  %i.ep = add i32 %.5, 1                          ; 2 uses
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.eq ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8
  %.not235 = icmp eq ptr %i.es, null
  br i1 %.not235, label %.critedge246, label %.preheader, !llvm.loop !10

.critedge246:                                     ; preds = %bb.ah, %.preheader250
  tail call void @free(ptr noundef nonnull %i.dl) #10
  tail call void @free(ptr noundef nonnull %.1196) #10
  %i.et = tail call ptr @__errno_location() #11
  store i32 313, ptr %i.et, align 4
  br label %.critedge242

bb.ai:                                            ; preds = %bb.ac, %bb.ae, %bb.ad
  %.3200.sroa.phi = phi ptr [ %.sroa.0290, %bb.ac ], [ %.sroa.10, %bb.ae ], [ %.sroa.17, %bb.ad ]
  %.3200.sroa.phi300 = phi ptr [ %i.a, %bb.ac ], [ %.3200.sroa.gep301, %bb.ae ], [ %.3200.sroa.gep302, %bb.ad ] ; 2 uses
  %.3200 = phi i64 [ 0, %bb.ac ], [ 1, %bb.ae ], [ 2, %bb.ad ]
  store i32 %i.dy, ptr %.3200.sroa.phi300, align 8
  %i.eu = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dl) #12
  %i.ev = add i64 %i.eu, %i.dx
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = add i32 %i.ew, -1
  %i.ey = getelementptr inbounds nuw i8, ptr %.3200.sroa.phi300, i64 4
  store i32 %i.ex, ptr %i.ey, align 4
  %i.ez = add i32 %.4208268, 1
  %i.fa = getelementptr inbounds nuw i8, ptr %.0194, i64 %.3200
  %i.fb = load i8, ptr %i.fa, align 1
  %.not239 = icmp eq i8 %i.fb, 109
  %spec.store.select249 = select i1 %.not239, i32 %i.ez, i32 -1
  store i32 %spec.store.select249, ptr %.3200.sroa.phi, align 4
  tail call void @free(ptr noundef nonnull %i.dl) #10
  %.sroa.0290.0..sroa.0290.0..sroa.0290.0..pre = load i32, ptr %.sroa.0290, align 4 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr %.1196, i64 %i.fe
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  store i8 0, ptr %i.fg, align 1
  %i.fh = icmp eq i32 %.sroa.0290.0..sroa.0290.0..sroa.0290.0..pre, -1
  br i1 %i.fh, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread340, %bb.ai
  %i.fi = tail call ptr @__errno_location() #11   ; 2 uses
  store i32 0, ptr %i.fi, align 4
  %i.fj = load i32, ptr %i.a, align 16
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds i8, ptr %.1196, i64 %i.fk
  %i.fm = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fl, ptr noundef null, i32 noundef 10) #10
  %i.fn = trunc i64 %i.fm to i32
  %i.fo = load i32, ptr %i.fi, align 4
  %.not240 = icmp eq i32 %i.fo, 0
  %spec.store.select = select i1 %.not240, i32 %i.fn, i32 -1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.0290.0..sroa.0290.0.291 = phi i32 [ %spec.store.select, %bb.aj ], [ %.sroa.0290.0..sroa.0290.0..sroa.0290.0..pre, %bb.ai ] ; 3 uses
  %i.fp = load i8, ptr %.0194, align 1
  switch i8 %i.fp, label %bb.ao [
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
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.fr = load i32, ptr %i.fq, align 4
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %.1196, i64 %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store i8 0, ptr %i.fu, align 1
  %.sroa.10.0..sroa.10.0..sroa.10.4. = load i32, ptr %.sroa.10, align 4 ; 2 uses
  %i.fv = icmp eq i32 %.sroa.10.0..sroa.10.0..sroa.10.4., -1
  br i1 %i.fv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fw = tail call ptr @__errno_location() #11   ; 2 uses
  store i32 0, ptr %i.fw, align 4
  %i.fx = load i32, ptr %.3200.sroa.gep301, align 8
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %.1196, i64 %i.fy
  %i.ga = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.fz, ptr noundef null, i32 noundef 10) #10
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = load i32, ptr %i.fw, align 4
  %.not240.1 = icmp eq i32 %i.gc, 0
  %spec.store.select.1 = select i1 %.not240.1, i32 %i.gb, i32 -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.10.0..sroa.10.4.296 = phi i32 [ %spec.store.select.1, %bb.ap ], [ %.sroa.10.0..sroa.10.0..sroa.10.4., %bb.ao ] ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.0194, i64 1
  %i.ge = load i8, ptr %i.gd, align 1
  switch i8 %i.ge, label %bb.au [
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
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.gg = load i32, ptr %i.gf, align 4
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %.1196, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store i8 0, ptr %i.gj, align 1
  %.sroa.17.0..sroa.17.0..sroa.17.8. = load i32, ptr %.sroa.17, align 4 ; 2 uses
  %i.gk = icmp eq i32 %.sroa.17.0..sroa.17.0..sroa.17.8., -1
  br i1 %i.gk, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.gl = tail call ptr @__errno_location() #11   ; 2 uses
  store i32 0, ptr %i.gl, align 4
  %i.gm = load i32, ptr %.3200.sroa.gep302, align 16
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %.1196, i64 %i.gn
  %i.gp = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.go, ptr noundef null, i32 noundef 10) #10
  %i.gq = trunc i64 %i.gp to i32
  %i.gr = load i32, ptr %i.gl, align 4
  %.not240.2 = icmp eq i32 %i.gr, 0
  %spec.store.select.2 = select i1 %.not240.2, i32 %i.gq, i32 -1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.sroa.17.0..sroa.17.8.299 = phi i32 [ %spec.store.select.2, %bb.av ], [ %.sroa.17.0..sroa.17.0..sroa.17.8., %bb.au ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.0194, i64 2
  %i.gt = load i8, ptr %i.gs, align 1
  switch i8 %i.gt, label %bb.ba [
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
end_hunk_0
