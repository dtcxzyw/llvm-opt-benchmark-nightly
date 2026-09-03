Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/functioncmds?download=true
inline.NumInlined: 72
inline.NumDeleted: 25
begin_hunk_0_@interpret_function_parameter_list:bb.a
  %i.bi = tail call i32 @GetUserId() #7
  %i.bj = tail call i32 @object_aclcheck(i32 noundef 1247, i32 noundef %i.bh, i32 noundef %i.bi, i64 noundef 256) #7 ; 2 uses
  %.not227 = icmp eq i32 %i.bj, 0
  br i1 %.not227, label %bb.m, label %bb.l

bb.k:                                             ; preds = %.lr.ph617
  %i.bk = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.bl = tail call i32 @errcode(i32 noundef 67137668) #7 ; 0 uses
  %i.bm = tail call ptr @TypeNameToString(ptr noundef %i.w) #7
  %i.bn = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.4, ptr noundef %i.bm) #7 ; 0 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.bp) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 273, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.l:                                             ; preds = %bb.j
  tail call void @aclcheck_error_type(i32 noundef %i.bj, i32 noundef %i.bh) #7
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.bs = load i8, ptr %i.br, align 4, !range !4, !noundef !5
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.bu = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.bv = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  switch i32 %3, label %bb.q [
    i32 1, label %bb.o
    i32 29, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bx = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.5) #7 ; 0 uses
  %i.by = load i32, ptr %i.bw, align 8
  %i.bz = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.by) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 287, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ca = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.6) #7 ; 0 uses
  %i.cb = load i32, ptr %i.bw, align 8
  %i.cc = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.cb) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 292, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.cd = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.7) #7 ; 0 uses
  %i.ce = load i32, ptr %i.bw, align 8
  %i.cf = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.ce) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 297, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.r:                                             ; preds = %bb.m
  switch i32 %i.y, label %bb.s [
    i32 116, label %bb.w
    i32 111, label %bb.w
  ]

bb.s:                                             ; preds = %bb.r
  %i.cg = icmp sgt i32 %.0205332612, 0
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ch = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ci = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.cj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #7 ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.cl) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.cn = add i32 %.0209330616, 1                 ; 2 uses
  %i.co = sext i32 %.0209330616 to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.co
  store i32 %i.bh, ptr %i.cp, align 4
  br i1 %.not228, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cq = load ptr, ptr %5, align 8
  %i.cr = tail call ptr @lappend_oid(ptr noundef %i.cq, i32 noundef %i.bh) #7
  store ptr %i.cr, ptr %5, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.r, %bb.u, %bb.v
  %.1210 = phi i32 [ %i.cn, %bb.v ], [ %i.cn, %bb.u ], [ %.0209330616, %bb.r ], [ %.0209330616, %bb.r ] ; 2 uses
  switch i32 %spec.store.select, label %bb.x [
    i32 118, label %bb.ac
    i32 105, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  br i1 %i.o, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cs = icmp sgt i32 %.0205332612, 0
  br i1 %i.cs, label %bb.z, label %.sink.split

bb.z:                                             ; preds = %bb.y
  %i.ct = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.cu = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.cv = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9) #7 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.cx) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 329, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.aa:                                            ; preds = %bb.x
  %i.cz = icmp eq i32 %.0207331615, 0
  br i1 %i.cz, label %.sink.split, label %bb.ab

.sink.split:                                      ; preds = %bb.aa, %bb.y
  %.sink = phi i32 [ 2249, %bb.y ], [ %i.bh, %bb.aa ]
  store i32 %.sink, ptr %12, align 4
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.aa
  %i.da = add i32 %.0207331615, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.w, %bb.w, %bb.ab
  %.1208 = phi i32 [ %i.da, %bb.ab ], [ %.0207331615, %bb.w ], [ %.0207331615, %bb.w ] ; 2 uses
  %i.db = icmp eq i32 %spec.store.select, 118
  br i1 %i.db, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.bh, ptr %11, align 4
  %i.dc = add i32 %.0205332612, 1                 ; 4 uses
  switch i32 %i.bh, label %bb.ae [
    i32 2277, label %bb.ag
    i32 5078, label %bb.ag
    i32 2276, label %bb.ag
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.dd = tail call i32 @get_element_type(i32 noundef %i.bh) #7
  %.not229 = icmp eq i32 %i.dd, 0
  br i1 %.not229, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.de = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.df = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.dg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #7 ; 0 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.di) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 355, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.ag:                                            ; preds = %bb.ad, %bb.ad, %bb.ad, %bb.ae, %bb.ac
  %.1206 = phi i32 [ %i.dc, %bb.ae ], [ %i.dc, %bb.ad ], [ %i.dc, %bb.ad ], [ %i.dc, %bb.ad ], [ %.0205332612, %bb.ac ] ; 2 uses
  %i.dk = zext i32 %i.bh to i64
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv398609
  store i64 %i.dk, ptr %i.dl, align 8
  %i.dm = zext i32 %spec.store.select to i64
  %sext = shl i64 %i.dm, 56
  %i.dn = ashr exact i64 %sext, 56
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv398609
  store i64 %i.dn, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.dq = load ptr, ptr %i.dp, align 8            ; 6 uses
  %.not230 = icmp eq ptr %i.dq, null
  br i1 %.not230, label %bb.ax, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dr = load i8, ptr %i.dq, align 1
  %.not231 = icmp eq i8 %i.dr, 0
  br i1 %.not231, label %bb.ax, label %.preheader242

.preheader242:                                    ; preds = %bb.ah
  %i.ds = load i32, ptr %i.k, align 4             ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  br i1 %i.dt, label %.lr.ph, label %.critedge240

.lr.ph:                                           ; preds = %.preheader242
  %i.du = load ptr, ptr %i.l, align 8             ; 3 uses
  %wide.trip.count396 = zext nneg i32 %i.ds to i64 ; 3 uses
  switch i32 %spec.store.select, label %.lr.ph.split [
    i32 118, label %.lr.ph.split.us.preheader
    i32 105, label %.lr.ph.split.us.preheader
  ]

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.an
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.an ], [ 0, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %i.dx = icmp eq ptr %i.dw, %i.u
  br i1 %i.dx, label %.critedge240, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.split.us
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dz = load i32, ptr %i.dy, align 8            ; 2 uses
  %13 = icmp eq i32 %i.dz, 100
  %spec.store.select4.us = select i1 %13, i32 105, i32 %i.dz
  switch i32 %spec.store.select4.us, label %bb.ak [
    i32 116, label %bb.an
    i32 111, label %bb.an
    i32 118, label %bb.aj
    i32 105, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  switch i32 %i.y, label %bb.ak [
    i32 116, label %bb.an
    i32 111, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %.not233.us = icmp eq ptr %i.eb, null
  br i1 %.not233.us, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ec = load i8, ptr %i.eb, align 1
  %.not234.us = icmp eq i8 %i.ec, 0
  br i1 %.not234.us, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ed = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.eb, ptr noundef nonnull dereferenceable(1) %i.dq) #9
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %.split.us, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.aj, %bb.ai, %bb.ai
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count396
  br i1 %exitcond.not, label %.critedge240, label %.lr.ph.split.us, !llvm.loop !7

.lr.ph.split:                                     ; preds = %.lr.ph
  switch i32 %i.y, label %.lr.ph.split.split [
    i32 116, label %.lr.ph.split.split.us.preheader
    i32 111, label %.lr.ph.split.split.us.preheader
  ]

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split, %.lr.ph.split
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %bb.as
  %indvars.iv387 = phi i64 [ %indvars.iv.next388, %bb.as ], [ 0, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv387
  %i.eg = load ptr, ptr %i.ef, align 8            ; 3 uses
  %i.eh = icmp eq ptr %i.eg, %i.u
  br i1 %i.eh, label %.critedge240, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.split.split.us
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ej = load i32, ptr %i.ei, align 8            ; 2 uses
  %14 = icmp eq i32 %i.ej, 100
  %spec.store.select4.us323 = select i1 %14, i32 105, i32 %i.ej
  switch i32 %spec.store.select4.us323, label %bb.ap [
    i32 118, label %bb.as
    i32 105, label %bb.as
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.el = load ptr, ptr %i.ek, align 8            ; 3 uses
  %.not233.us324 = icmp eq ptr %i.el, null
  br i1 %.not233.us324, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.em = load i8, ptr %i.el, align 1
  %.not234.us325 = icmp eq i8 %i.em, 0
  br i1 %.not234.us325, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.en = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.el, ptr noundef nonnull dereferenceable(1) %i.dq) #9
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %.split.us, label %bb.as

bb.as:                                            ; preds = %bb.ao, %bb.ao, %bb.ar, %bb.aq, %bb.ap
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond392.not = icmp eq i64 %indvars.iv.next388, %wide.trip.count396
  br i1 %exitcond392.not, label %.critedge240, label %.lr.ph.split.split.us, !llvm.loop !7

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.aw
  %indvars.iv393 = phi i64 [ %indvars.iv.next394, %bb.aw ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv393
  %i.eq = load ptr, ptr %i.ep, align 8            ; 2 uses
  %i.er = icmp eq ptr %i.eq, %i.u
  br i1 %i.er, label %.critedge240, label %bb.at

bb.at:                                            ; preds = %.lr.ph.split.split
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.et = load ptr, ptr %i.es, align 8            ; 3 uses
  %.not233 = icmp eq ptr %i.et, null
  br i1 %.not233, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = load i8, ptr %i.et, align 1
  %.not234 = icmp eq i8 %i.eu, 0
  br i1 %.not234, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ev = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(1) %i.dq) #9
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %.split.us, label %bb.aw

.split.us:                                        ; preds = %bb.am, %bb.ar, %bb.av
  %i.ex = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ey = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.ez = load ptr, ptr %i.dp, align 8
  %i.fa = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, ptr noundef %i.ez) #7 ; 0 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.fc = load i32, ptr %i.fb, align 8
  %i.fd = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.fc) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 402, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.aw:                                            ; preds = %bb.av, %bb.au, %bb.at
  %indvars.iv.next394 = add nuw nsw i64 %indvars.iv393, 1 ; 2 uses
  %exitcond397.not = icmp eq i64 %indvars.iv.next394, %wide.trip.count396
  br i1 %exitcond397.not, label %.critedge240, label %.lr.ph.split.split, !llvm.loop !7

.critedge240:                                     ; preds = %bb.an, %.lr.ph.split.us, %bb.as, %.lr.ph.split.split.us, %bb.aw, %.lr.ph.split.split, %.preheader242
  %i.fe = tail call ptr @cstring_to_text(ptr noundef nonnull %i.dq) #7
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv398609
  store i64 %i.ff, ptr %i.fg, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %.critedge240, %bb.ah, %bb.ag
  %.1204 = phi i1 [ true, %.critedge240 ], [ %.0203333611, %bb.ah ], [ %.0203333611, %bb.ag ] ; 2 uses
  br i1 %.not235, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fh = load ptr, ptr %9, align 8
  %i.fi = load ptr, ptr %i.dp, align 8            ; 2 uses
  %.not236 = icmp eq ptr %i.fi, null
  br i1 %.not236, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fj = tail call ptr @pstrdup(ptr noundef nonnull @.str.12) #7
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.fk = phi ptr [ %i.fj, %bb.az ], [ %i.fi, %bb.ay ]
  %i.fl = tail call ptr @makeString(ptr noundef %i.fk) #7
  %i.fm = tail call ptr @lappend(ptr noundef %i.fh, ptr noundef %i.fl) #7
  store ptr %i.fm, ptr %9, align 8
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %i.fn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8            ; 2 uses
  %.not237 = icmp eq ptr %i.fo, null
  br i1 %.not237, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  switch i32 %i.y, label %bb.be [
    i32 116, label %bb.bd
    i32 111, label %bb.bd
  ]

bb.bd:                                            ; preds = %bb.bc, %bb.bc
  %i.fp = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.fq = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.fr = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13) #7 ; 0 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.ft = load i32, ptr %i.fs, align 8
  %i.fu = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.ft) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 420, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.fv = tail call ptr @transformExpr(ptr noundef %0, ptr noundef nonnull %i.fo, i32 noundef 32) #7
  %i.fw = tail call ptr @coerce_to_specific_type(ptr noundef %0, ptr noundef %i.fv, i32 noundef %i.bh, ptr noundef nonnull @.str.14) #7 ; 3 uses
  tail call void @assign_expr_collations(ptr noundef %0, ptr noundef %i.fw) #7
  %i.fx = load ptr, ptr %i.p, align 8
  %.not238 = icmp eq ptr %i.fx, null
  br i1 %.not238, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.fy = tail call zeroext i1 @contain_var_clause(ptr noundef %i.fw) #7
  br i1 %i.fy, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.fz = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.ga = tail call i32 @errcode(i32 noundef 393348) #7 ; 0 uses
  %i.gb = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.15) #7 ; 0 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.gd = load i32, ptr %i.gc, align 8
  %i.ge = tail call i32 @parser_errposition(ptr noundef nonnull %0, i32 noundef %i.gd) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 436, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.gf = load ptr, ptr %10, align 8
  %i.gg = tail call ptr @lappend(ptr noundef %i.gf, ptr noundef %i.fw) #7
  store ptr %i.gg, ptr %10, align 8
  br label %.thread

bb.bi:                                            ; preds = %bb.bb
  br i1 %.0201334610, label %switch.early.test, label %.thread

switch.early.test:                                ; preds = %bb.bi
  switch i32 %i.y, label %bb.bj [
    i32 116, label %bb.bk
    i32 111, label %bb.bk
  ]

bb.bj:                                            ; preds = %switch.early.test
  %i.gh = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.gi = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.gj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.16) #7 ; 0 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.gl) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 461, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

bb.bk:                                            ; preds = %switch.early.test, %switch.early.test
  br i1 %i.o, label %bb.bl, label %.thread

bb.bl:                                            ; preds = %bb.bk
  %i.gn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #8 ; 0 uses
  %i.go = tail call i32 @errcode(i32 noundef 50724996) #7 ; 0 uses
  %i.gp = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.17) #7 ; 0 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.gr = load i32, ptr %i.gq, align 8
  %i.gs = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.gr) #7 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 472, ptr noundef nonnull @__func__.interpret_function_parameter_list) #7
  unreachable

.thread:                                          ; preds = %bb.bi, %bb.bk, %bb.bh
  %.1202 = phi i1 [ true, %bb.bh ], [ true, %bb.bk ], [ false, %bb.bi ]
  %indvars.iv.next399 = add nuw nsw i64 %indvars.iv398609, 1 ; 2 uses
  %i.gt = load i32, ptr %i.k, align 4
  %i.gu = sext i32 %i.gt to i64
  %i.gv = icmp slt i64 %indvars.iv.next399, %i.gu
  br i1 %i.gv, label %.lr.ph617, label %..critedge.loopexit_crit_edge

bb.bm:                                            ; preds = %.critedge
  %i.gw = tail call ptr @construct_array_builtin(ptr noundef %i.h, i32 noundef %i.c, i32 noundef 26) #7
  store ptr %i.gw, ptr %6, align 8
  %i.gx = tail call ptr @construct_array_builtin(ptr noundef %i.i, i32 noundef %i.c, i32 noundef 18) #7
  store ptr %i.gx, ptr %7, align 8
  %i.gy = icmp sgt i32 %.0207.lcssa, 1
  br i1 %i.gy, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  store i32 2249, ptr %12, align 4
  br label %bb.bp

bb.bo:                                            ; preds = %.critedge
  store ptr null, ptr %6, align 8
  store ptr null, ptr %7, align 8
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bm, %bb.bn, %bb.bo
  br i1 %.0203.lcssa, label %.preheader, label %bb.bs

.preheader:                                       ; preds = %bb.bp
  %i.gz = icmp sgt i32 %i.c, 0
  br i1 %i.gz, label %.lr.ph347.preheader, label %._crit_edge

.lr.ph347.preheader:                              ; preds = %.preheader
  %wide.trip.count403 = zext nneg i32 %i.c to i64
  br label %.lr.ph347

.lr.ph347:                                        ; preds = %.lr.ph347.preheader, %bb.br
  %indvars.iv400 = phi i64 [ 0, %.lr.ph347.preheader ], [ %indvars.iv.next401, %bb.br ] ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv400 ; 2 uses
  %i.hb = load i64, ptr %i.ha, align 8
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %.lr.ph347
  %i.hd = tail call ptr @cstring_to_text(ptr noundef nonnull @.str.12) #7
  %i.he = ptrtoint ptr %i.hd to i64
  store i64 %i.he, ptr %i.ha, align 8
end_hunk_0
