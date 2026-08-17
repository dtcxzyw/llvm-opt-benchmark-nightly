inline.NumInlined: 163
inline.NumDeleted: 19
begin_hunk_0_@transformJsonFuncExpr:bb.a
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.aw) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4494, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ay = load ptr, ptr %i.an, align 8
  %i.az = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.179, ptr noundef %i.ay) #8 ; 0 uses
  %i.ba = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.179) #8 ; 0 uses
  %i.bb = load ptr, ptr %i.aj, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 20
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.bd) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4504, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.r:                                             ; preds = %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.m
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not205 = icmp eq ptr %i.bg, null
  br i1 %.not205, label %.thread258, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bi = load i32, ptr %i.bh, align 4
  switch i32 %i.bi, label %bb.t [
    i32 1, label %.thread258
    i32 0, label %.thread258
    i32 2, label %.thread258
    i32 6, label %.thread258
    i32 7, label %.thread258
    i32 8, label %.thread258
  ]

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp eq ptr %i.bk, null
  %i.bm = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.bn = tail call i32 @errcode(i32 noundef 16801924) #8 ; 0 uses
  br i1 %i.bl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bo = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.184) #8 ; 0 uses
  %i.bp = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.181) #8 ; 0 uses
  %i.bq = load ptr, ptr %i.bf, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.bs = load i32, ptr %i.br, align 4
  %i.bt = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.bs) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4523, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.bj, align 8
  %i.bv = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.184, ptr noundef %i.bu) #8 ; 0 uses
  %i.bw = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.184) #8 ; 0 uses
  %i.bx = load ptr, ptr %i.bf, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 20
  %i.bz = load i32, ptr %i.by, align 4
  %i.ca = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.bz) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4533, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.w:                                             ; preds = %bb.j
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %.not212 = icmp eq ptr %i.cc, null
  br i1 %.not212, label %.thread258, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  switch i32 %i.ce, label %bb.y [
    i32 1, label %.thread258
    i32 3, label %.thread258
    i32 4, label %.thread258
    i32 5, label %.thread258
  ]

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = icmp eq ptr %i.cg, null
  %i.ci = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.cj = tail call i32 @errcode(i32 noundef 16801924) #8 ; 0 uses
  br i1 %i.ch, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ck = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.184) #8 ; 0 uses
  %i.cl = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.185, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.186) #8 ; 0 uses
  %i.cm = load ptr, ptr %i.cb, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.co) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4552, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cq = load ptr, ptr %i.cf, align 8
  %i.cr = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.184, ptr noundef %i.cq) #8 ; 0 uses
  %i.cs = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.184) #8 ; 0 uses
  %i.ct = load ptr, ptr %i.cb, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.cv) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4562, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.ab:                                            ; preds = %bb.j
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %.not217 = icmp eq ptr %i.cy, null
  br i1 %.not217, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4
  switch i32 %i.da, label %bb.ad [
    i32 1, label %bb.ag
    i32 0, label %bb.ag
    i32 8, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = icmp eq ptr %i.dc, null
  %i.de = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.df = tail call i32 @errcode(i32 noundef 16801924) #8 ; 0 uses
  br i1 %i.dd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.179) #8 ; 0 uses
  %i.dh = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.189) #8 ; 0 uses
  %i.di = load ptr, ptr %i.cx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.dk) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4580, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dm = load ptr, ptr %i.db, align 8
  %i.dn = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.179, ptr noundef %i.dm) #8 ; 0 uses
  %i.do = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.179) #8 ; 0 uses
  %i.dp = load ptr, ptr %i.cx, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.dr) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4590, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.ag:                                            ; preds = %bb.ac, %bb.ac, %bb.ac, %bb.ab
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %.not221 = icmp eq ptr %i.du, null
  br i1 %.not221, label %.thread258, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dw = load i32, ptr %i.dv, align 4
  switch i32 %i.dw, label %bb.ai [
    i32 1, label %.thread258
    i32 0, label %.thread258
    i32 8, label %.thread258
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = icmp eq ptr %i.dy, null
  %i.ea = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.eb = tail call i32 @errcode(i32 noundef 16801924) #8 ; 0 uses
  br i1 %i.dz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ec = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.184) #8 ; 0 uses
  %i.ed = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.189) #8 ; 0 uses
  %i.ee = load ptr, ptr %i.dt, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 20
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.eg) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4606, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ei = load ptr, ptr %i.dx, align 8
  %i.ej = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.184, ptr noundef %i.ei) #8 ; 0 uses
  %i.ek = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.190, ptr noundef nonnull @.str.184) #8 ; 0 uses
  %i.el = load ptr, ptr %i.dt, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 20
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.en) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4616, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

.thread258:                                       ; preds = %bb.j, %bb.r, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.s, %bb.w, %bb.x, %bb.x, %bb.x, %bb.x, %bb.ah, %bb.ah, %bb.ah, %bb.ag
  %.0180236248254262 = phi i32 [ %.0180, %bb.j ], [ %.0180, %bb.ah ], [ %.0180, %bb.ah ], [ %.0180, %bb.ah ], [ %.0180, %bb.ag ], [ %.0180, %bb.w ], [ %.0180, %bb.x ], [ %.0180, %bb.x ], [ %.0180, %bb.x ], [ %.0180, %bb.x ], [ %.0180236249, %bb.s ], [ %.0180236249, %bb.s ], [ %.0180236249, %bb.s ], [ %.0180236249, %bb.s ], [ %.0180236249, %bb.s ], [ %.0180236249, %bb.s ], [ %.0180236249, %bb.r ]
  %.0238246255261 = phi ptr [ %.0, %bb.j ], [ %.0, %bb.ah ], [ %.0, %bb.ah ], [ %.0, %bb.ah ], [ %.0, %bb.ag ], [ %.0, %bb.w ], [ %.0, %bb.x ], [ %.0, %bb.x ], [ %.0, %bb.x ], [ %.0, %bb.x ], [ %.0238247, %bb.s ], [ %.0238247, %bb.s ], [ %.0238247, %bb.s ], [ %.0238247, %bb.s ], [ %.0238247, %bb.s ], [ %.0238247, %bb.s ], [ %.0238247, %bb.r ] ; 2 uses
  %i.ep = phi ptr [ %i.f, %bb.j ], [ %i.f, %bb.ah ], [ %i.f, %bb.ah ], [ %i.f, %bb.ah ], [ %i.f, %bb.ag ], [ %i.f, %bb.w ], [ %i.f, %bb.x ], [ %i.f, %bb.x ], [ %i.f, %bb.x ], [ %i.f, %bb.x ], [ %i.w, %bb.s ], [ %i.w, %bb.s ], [ %i.w, %bb.s ], [ %i.w, %bb.s ], [ %i.w, %bb.s ], [ %i.w, %bb.s ], [ %i.w, %bb.r ]
  %i.eq = tail call noundef ptr @palloc0(i64 noundef 104) #8 ; 31 uses
  store i32 48, ptr %i.eq, align 4
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.es = load i32, ptr %i.er, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  store i32 %i.es, ptr %i.et, align 8
  %i.eu = load i32, ptr %i.a, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  store i32 %i.eu, ptr %i.ev, align 4
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.ex, ptr %i.ey, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call fastcc ptr @transformJsonValueExpr(ptr noundef %0, ptr noundef nonnull %.0238246255261, ptr noundef %i.fa, i32 noundef %.0180236248254262, i32 noundef 3802, i1 noundef zeroext false)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 2 uses
  store ptr %i.fb, ptr %i.fc, align 8
  %i.fd = load ptr, ptr %i.ez, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  store ptr %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call fastcc ptr @transformExprRecurse(ptr noundef %0, ptr noundef %i.fi) ; 3 uses
  %i.fk = tail call i32 @exprType(ptr noundef %i.fj) #8 ; 2 uses
  %i.fl = tail call i32 @exprLocation(ptr noundef %i.fj) #8 ; 2 uses
  %i.fm = tail call ptr @coerce_to_target_type(ptr noundef %0, ptr noundef %i.fj, i32 noundef %i.fk, i32 noundef 4072, i32 noundef -1, i32 noundef 3, i32 noundef 2, i32 noundef %i.fl) #8 ; 2 uses
  %i.fn = icmp eq ptr %i.fm, null
  br i1 %i.fn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread258
  %i.fo = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.fp = tail call i32 @errcode(i32 noundef 67141764) #8 ; 0 uses
  %i.fq = tail call ptr @format_type_be(i32 noundef %i.fk) #8
  %i.fr = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.192, ptr noundef %i.fq) #8 ; 0 uses
  %i.fs = tail call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.fl) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4650, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.am:                                            ; preds = %.thread258
  %i.ft = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr %i.fm, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fv = load ptr, ptr %i.fu, align 8            ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eq, i64 48 ; 3 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fv, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.fv, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  br i1 %.not.i, label %transformJsonPassingArgs.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.am
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i32, ptr %i.fy, align 4
  %i.gb = icmp sgt i32 %i.ga, 0
  br i1 %i.gb, label %.lr.ph266, label %transformJsonPassingArgs.exit

.lr.ph266:                                        ; preds = %.lr.ph, %.lr.ph266
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph266 ], [ 0, %.lr.ph ] ; 2 uses
  %i.gc = load ptr, ptr %i.fz, align 8
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.gc, i64 %indvars.iv
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = tail call fastcc ptr @transformJsonValueExpr(ptr noundef %0, ptr noundef nonnull %.0238246255261, ptr noundef %i.gg, i32 noundef 2, i32 noundef 0, i1 noundef zeroext true), !inline_history !15
  %i.gi = load ptr, ptr %i.fw, align 8
  %i.gj = tail call ptr @lappend(ptr noundef %i.gi, ptr noundef %i.gh) #8, !inline_history !15
  store ptr %i.gj, ptr %i.fw, align 8
  %i.gk = load ptr, ptr %i.fx, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = tail call ptr @makeString(ptr noundef %i.gm) #8, !inline_history !15
  %i.go = tail call ptr @lappend(ptr noundef %i.gk, ptr noundef %i.gn) #8, !inline_history !15
  store ptr %i.go, ptr %i.fx, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gp = load i32, ptr %i.fy, align 4
  %i.gq = sext i32 %i.gp to i64
  %i.gr = icmp slt i64 %indvars.iv.next, %i.gq
  br i1 %i.gr, label %.lr.ph266, label %transformJsonPassingArgs.exit

transformJsonPassingArgs.exit:                    ; preds = %.lr.ph266, %.lr.ph, %bb.am
  %i.gs = load ptr, ptr %i.ep, align 8
  %i.gt = tail call fastcc ptr @transformJsonOutput(ptr noundef %0, ptr noundef %i.gs, i1 noundef zeroext false) ; 7 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eq, i64 40 ; 18 uses
  store ptr %i.gt, ptr %i.gu, align 8
  %i.gv = load i32, ptr %i.a, align 4
  switch i32 %i.gv, label %bb.bi [
    i32 0, label %bb.an
    i32 1, label %bb.as
    i32 2, label %bb.ax
    i32 3, label %bb.bf
  ]

bb.an:                                            ; preds = %transformJsonPassingArgs.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8            ; 2 uses
  %.not230 = icmp eq i32 %i.gx, 0
  br i1 %.not230, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 16, ptr %i.gw, align 8
  %i.gy = load ptr, ptr %i.gu, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 20
  store i32 -1, ptr %i.gz, align 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.eq, i64 92
  store i32 0, ptr %i.ha, align 4
  %.pre275 = load ptr, ptr %i.gu, align 8         ; 2 uses
  %.phi.trans.insert276 = getelementptr inbounds nuw i8, ptr %.pre275, i64 16
  %.pre277 = load i32, ptr %.phi.trans.insert276, align 8
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.hb = phi i32 [ %.pre277, %bb.ao ], [ %i.gx, %bb.an ]
  %i.hc = phi ptr [ %.pre275, %bb.ao ], [ %i.gt, %bb.an ]
  %.not231 = icmp eq i32 %i.hb, 16
  br i1 %.not231, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hd = getelementptr inbounds nuw i8, ptr %i.eq, i64 81
  store i8 1, ptr %i.hd, align 1
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.hf = load ptr, ptr %i.he, align 8
  %i.hg = tail call fastcc ptr @transformJsonBehavior(ptr noundef %0, ptr noundef nonnull %i.eq, ptr noundef %i.hf, i32 noundef 4, ptr noundef nonnull %i.hc)
  br label %bb.bj

bb.as:                                            ; preds = %transformJsonPassingArgs.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 8            ; 2 uses
  %.not228 = icmp eq i32 %i.hi, 0
  br i1 %.not228, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store i32 3802, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gt, i64 20
  store i32 -1, ptr %i.hj, align 4
  %.pre272 = load ptr, ptr %i.gu, align 8
  %.phi.trans.insert273 = getelementptr inbounds nuw i8, ptr %.pre272, i64 16
  %.pre274 = load i32, ptr %.phi.trans.insert273, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.hk = phi i32 [ %.pre274, %bb.at ], [ %i.hi, %bb.as ]
  %i.hl = tail call i32 @get_typcollation(i32 noundef %i.hk) #8
  %i.hm = getelementptr inbounds nuw i8, ptr %i.eq, i64 92
  store i32 %i.hl, ptr %i.hm, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ho = load i32, ptr %i.hn, align 4
  %i.hp = icmp eq i32 %i.ho, 2                    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  %i.hr = zext i1 %i.hp to i8
  store i8 %i.hr, ptr %i.hq, align 8
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ht = load i32, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.eq, i64 84
  store i32 %i.ht, ptr %i.hu, align 4
  %i.hv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load i32, ptr %i.hw, align 8
  %.not229 = icmp ne i32 %i.hx, 3802
  %brmerge = select i1 %.not229, i1 true, i1 %i.hp
  br i1 %brmerge, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hy = getelementptr inbounds nuw i8, ptr %i.eq, i64 81
  store i8 1, ptr %i.hy, align 1
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ia = load ptr, ptr %i.hz, align 8
  %i.ib = tail call fastcc ptr @transformJsonBehavior(ptr noundef %0, ptr noundef nonnull %i.eq, ptr noundef %i.ia, i32 noundef 0, ptr noundef nonnull %i.hv)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  store ptr %i.ib, ptr %i.ic, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ie = load ptr, ptr %i.id, align 8
  %i.if = load ptr, ptr %i.gu, align 8
  %i.ig = tail call fastcc ptr @transformJsonBehavior(ptr noundef %0, ptr noundef nonnull %i.eq, ptr noundef %i.ie, i32 noundef 0, ptr noundef %i.if)
  br label %bb.bj

bb.ax:                                            ; preds = %transformJsonPassingArgs.exit
  %i.ih = getelementptr inbounds nuw i8, ptr %i.gt, i64 16 ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 8            ; 2 uses
  %.not226 = icmp eq i32 %i.ii, 0
  br i1 %.not226, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 25, ptr %i.ih, align 8
  %i.ij = load ptr, ptr %i.gu, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 20
  store i32 -1, ptr %i.ik, align 4
  %.pre269 = load ptr, ptr %i.gu, align 8
  %.phi.trans.insert270 = getelementptr inbounds nuw i8, ptr %.pre269, i64 16
  %.pre271 = load i32, ptr %.phi.trans.insert270, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.il = phi i32 [ %.pre271, %bb.ay ], [ %i.ii, %bb.ax ]
  %i.im = tail call i32 @get_typcollation(i32 noundef %i.il) #8
  %i.in = getelementptr inbounds nuw i8, ptr %i.eq, i64 92
  store i32 %i.im, ptr %i.in, align 4
  %i.io = load ptr, ptr %i.gu, align 8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 4
  store i32 0, ptr %i.ir, align 4
  %i.is = load ptr, ptr %i.gu, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 8
  store i32 0, ptr %i.iv, align 4
  %i.iw = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  store i8 1, ptr %i.iw, align 8
  %i.ix = load ptr, ptr %i.gu, align 8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load i32, ptr %i.iy, align 8            ; 2 uses
  %.not227 = icmp eq i32 %i.iz, 25
  br i1 %.not227, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ja = tail call signext i8 @get_typtype(i32 noundef %i.iz) #8
  %i.jb = icmp eq i8 %i.ja, 100
  br i1 %i.jb, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.jc = load ptr, ptr %i.gu, align 8
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load i32, ptr %i.jd, align 8
  %i.jf = tail call zeroext i1 @DomainHasConstraints(i32 noundef %i.je, ptr noundef null) #8
  br i1 %i.jf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %2 = getelementptr inbounds nuw i8, ptr %i.eq, i64 81
  store i8 1, ptr %2, align 1
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb, %bb.ba
  %i.jg = getelementptr inbounds nuw i8, ptr %i.eq, i64 80
  store i8 1, ptr %i.jg, align 8
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.az
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ji = load ptr, ptr %i.jh, align 8
  %i.jj = load ptr, ptr %i.gu, align 8
  %i.jk = tail call fastcc ptr @transformJsonBehavior(ptr noundef %0, ptr noundef nonnull %i.eq, ptr noundef %i.ji, i32 noundef 0, ptr noundef %i.jj)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.eq, i64 64
  store ptr %i.jk, ptr %i.jl, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = load ptr, ptr %i.gu, align 8
  %i.jp = tail call fastcc ptr @transformJsonBehavior(ptr noundef %0, ptr noundef nonnull %i.eq, ptr noundef %i.jn, i32 noundef 0, ptr noundef %i.jo)
  br label %bb.bj

bb.bf:                                            ; preds = %transformJsonPassingArgs.exit
  %i.jq = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.jr = load i32, ptr %i.jq, align 8            ; 2 uses
  %.not225 = icmp eq i32 %i.jr, 0
  br i1 %.not225, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.js = load ptr, ptr %i.fc, align 8
  %i.jt = tail call i32 @exprType(ptr noundef %i.js) #8
  %i.ju = load ptr, ptr %i.gu, align 8
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store i32 %i.jt, ptr %i.jv, align 8
  %i.jw = load ptr, ptr %i.gu, align 8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  store i32 -1, ptr %i.jx, align 4
  %.pre = load ptr, ptr %i.gu, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre268 = load i32, ptr %.phi.trans.insert, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.jy = phi i32 [ %.pre268, %bb.bg ], [ %i.jr, %bb.bf ]
  %i.jz = tail call i32 @get_typcollation(i32 noundef %i.jy) #8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.eq, i64 92
  store i32 %i.jz, ptr %i.ka, align 4
  %i.kb = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = load ptr, ptr %i.gu, align 8
  %i.ke = tail call fastcc ptr @transformJsonBehavior(ptr noundef %0, ptr noundef nonnull %i.eq, ptr noundef %i.kc, i32 noundef 6, ptr noundef %i.kd)
  br label %bb.bj

bb.bi:                                            ; preds = %transformJsonPassingArgs.exit
  %i.kf = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.kg = load i32, ptr %i.a, align 4
  %i.kh = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.175, i32 noundef %i.kg) #8 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.43, i32 noundef 4794, ptr noundef nonnull @__func__.transformJsonFuncExpr) #8
  unreachable

bb.bj:                                            ; preds = %bb.bh, %bb.be, %bb.aw, %bb.ar
  %.sink = phi ptr [ %i.ke, %bb.bh ], [ %i.jp, %bb.be ], [ %i.ig, %bb.aw ], [ %i.hg, %bb.ar ]
  %i.ki = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  store ptr %.sink, ptr %i.ki, align 8
  ret ptr %i.eq
}

declare ptr @transformGraphTablePropertyRef(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @colNameToVar(ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @refnameNamespaceItem(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @transformWholeRowRef(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = icmp eq ptr %i.b, %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call ptr @makeWholeRowVar(ptr noundef nonnull %i.d, i32 noundef %i.k, i32 noundef %2, i1 noundef zeroext true) #8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.n = load i32, ptr %i.m, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  store i32 %i.n, ptr %i.o, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  store i32 %3, ptr %i.p, align 8
  tail call void @markNullableIfNeeded(ptr noundef %0, ptr noundef %i.l) #8
  tail call void @markVarForSelectPriv(ptr noundef %0, ptr noundef %i.l) #8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i32, ptr %i.q, align 8
  call void @expandRTE(ptr noundef nonnull %i.d, i32 noundef %i.r, i32 noundef %2, i32 noundef 0, i32 noundef %3, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull %i.a) #8
  %i.s = call noundef ptr @palloc0(i64 noundef 40) #8 ; 7 uses
  store i32 36, ptr %i.s, align 4
  %i.t = load ptr, ptr %i.a, align 8
  %i.u = load ptr, ptr %1, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %list_length.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  br label %list_length.exit

list_length.exit:                                 ; preds = %bb.d, %bb.e
  %i.z = phi i32 [ %i.y, %bb.e ], [ 0, %bb.d ]
  %i.aa = call ptr @list_truncate(ptr noundef %i.t, i32 noundef %i.z) #8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.aa, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i32 2249, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 2, ptr %i.ad, align 4
  %i.ae = load ptr, ptr %1, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call ptr @copyObjectImpl(ptr noundef %i.ag) #8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %i.ah, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i32 %3, ptr %i.aj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %bb.f

bb.f:                                             ; preds = %list_length.exit, %bb.c
  %.0 = phi ptr [ %i.l, %bb.c ], [ %i.s, %list_length.exit ]
  ret ptr %.0
}

declare ptr @scanNSItemForColumn(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @ParseFuncOrColumn(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare ptr @list_make1_impl(i32 noundef, ptr) local_unnamed_addr #3

declare ptr @makeString(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @get_database_name(i32 noundef) local_unnamed_addr #3

declare ptr @NameListToString(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @errorMissingColumn(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @errorMissingRTE(ptr noundef, ptr noundef) local_unnamed_addr #6

declare ptr @makeRangeVar(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @makeWholeRowVar(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @markNullableIfNeeded(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @markVarForSelectPriv(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @expandRTE(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @list_truncate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @copyObjectImpl(ptr noundef) local_unnamed_addr #3

declare ptr @palloc0(i64 noundef) local_unnamed_addr #3

declare i32 @exprLocation(ptr noundef) local_unnamed_addr #3

declare ptr @lappend(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @transformContainerSubscripts(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare i32 @exprTypmod(ptr noundef) local_unnamed_addr #3

declare ptr @GetRTEByRangeTablePosn(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @typeOrDomainTypeRelid(i32 noundef) local_unnamed_addr #3

declare ptr @format_type_be(i32 noundef) local_unnamed_addr #3

declare i32 @get_element_type(i32 noundef) local_unnamed_addr #3

declare i32 @errhint(ptr noundef, ...) local_unnamed_addr #3

declare i32 @select_common_type(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @get_array_type(i32 noundef) local_unnamed_addr #3

declare ptr @coerce_to_target_type(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

end_hunk_0
