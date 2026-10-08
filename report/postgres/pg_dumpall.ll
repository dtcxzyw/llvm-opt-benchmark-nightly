Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_dumpall?download=true
inline.NumInlined: 50
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dumpRoles:bb.a
  %i.cj = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %.0172, i32 noundef %i.o) #14
  %i.ck = icmp ne i32 %i.cj, 0
  %i.cl = load i32, ptr @no_role_passwords, align 4
  %i.cm = icmp ne i32 %i.cl, 0
  %or.cond = select i1 %i.ck, i1 true, i1 %i.cm
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.259) #14
  %i.cn = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.0172, i32 noundef %i.o) #14
  tail call void @appendStringLiteralConn(ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull %0) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.co = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %.0172, i32 noundef %i.p) #14
  %.not130 = icmp eq i32 %i.co, 0
  br i1 %.not130, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cp = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.0172, i32 noundef %i.p) #14
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.260, ptr noundef %i.cp) #14
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.261) #14
  %i.cq = load i32, ptr @no_comments, align 4
  %.not131 = icmp eq i32 %i.cq, 0
  br i1 %.not131, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.cr = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %.0172, i32 noundef %i.s) #14
  %.not132 = icmp eq i32 %i.cr, 0
  br i1 %.not132, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cs = tail call ptr @fmtId(ptr noundef nonnull %i.ad) #14
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.262, ptr noundef %i.cs) #14
  %i.ct = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.0172, i32 noundef %i.s) #14
  tail call void @appendStringLiteralConn(ptr noundef nonnull %i.a, ptr noundef %i.ct, ptr noundef nonnull %0) #14
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.261) #14
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.cu = load i32, ptr @no_security_labels, align 4
  %.not133 = icmp eq i32 %i.cu, 0
  br i1 %.not133, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cv = tail call ptr @createPQExpBuffer() #14  ; 3 uses
  tail call void @buildShSecLabelQuery(ptr noundef nonnull @.str.96, i32 noundef %i.ac, ptr noundef %i.cv) #14
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call ptr @executeQuery(ptr noundef nonnull %0, ptr noundef %i.cw) #14 ; 2 uses
  tail call void @emitShSecLabels(ptr noundef nonnull %0, ptr noundef %i.cx, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.263, ptr noundef nonnull %i.ad) #14
  tail call void @PQclear(ptr noundef %i.cx) #14
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.cv) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cy = load ptr, ptr @OPF, align 8
  %i.cz = load ptr, ptr %i.a, align 8
  %i.da = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.94, ptr noundef %i.cz) #14 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.d
  %i.db = add nuw nsw i32 %.0172, 1               ; 2 uses
  %i.dc = tail call i32 @PQntuples(ptr noundef %i.f) #14
  %i.dd = icmp slt i32 %i.db, %i.dc
  br i1 %i.dd, label %sub_0, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.p, %bb.c
  %i.de = tail call i32 @PQntuples(ptr noundef %i.f) #14
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.dg = load ptr, ptr @OPF, align 8
  %i.dh = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.264) #14 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.di = tail call i32 @PQntuples(ptr noundef %i.f) #14
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph, label %._crit_edge175

.lr.ph:                                           ; preds = %bb.r, %dumpUserConfig.exit
  %.1173 = phi i32 [ %i.ec, %dumpUserConfig.exit ], [ 0, %bb.r ] ; 2 uses
  %i.dk = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.1173, i32 noundef %i.h) #14 ; 3 uses
  %i.dl = tail call ptr @createPQExpBuffer() #14  ; 8 uses
  tail call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef %i.dl, ptr noundef nonnull @.str.265, ptr noundef nonnull @role_catalog) #14
  tail call void @appendStringLiteralConn(ptr noundef %i.dl, ptr noundef %i.dk, ptr noundef nonnull %0) #14
  tail call void @appendPQExpBufferChar(ptr noundef %i.dl, i8 noundef signext 41) #14
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = tail call ptr @executeQuery(ptr noundef nonnull %0, ptr noundef %i.dm) #14 ; 5 uses
  %i.do = tail call i32 @PQntuples(ptr noundef %i.dn) #14
  %i.dp = icmp sgt i32 %i.do, 0
  br i1 %i.dp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph
  %i.dq = tail call ptr @sanitize_line(ptr noundef %i.dk, i1 noundef zeroext true) #14 ; 2 uses
  %i.dr = load ptr, ptr @OPF, align 8
  %i.ds = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.dr, ptr noundef nonnull @.str.266, ptr noundef %i.dq) #14 ; 0 uses
  tail call void @free(ptr noundef %i.dq) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %i.dt = tail call i32 @PQntuples(ptr noundef %i.dn) #14
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i, label %dumpUserConfig.exit

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.022.i = phi i32 [ %i.dz, %.lr.ph.i ], [ 0, %bb.t ] ; 2 uses
  tail call void @resetPQExpBuffer(ptr noundef nonnull %i.dl) #14
  %i.dv = tail call ptr @PQgetvalue(ptr noundef %i.dn, i32 noundef %.022.i, i32 noundef 0) #14
  tail call void @makeAlterConfigCommand(ptr noundef nonnull %0, ptr noundef %i.dv, ptr noundef nonnull @.str.263, ptr noundef %i.dk, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.dl) #14
  %i.dw = load ptr, ptr @OPF, align 8
  %i.dx = load ptr, ptr %i.dl, align 8
  %i.dy = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.dw, ptr noundef nonnull @.str.94, ptr noundef %i.dx) #14 ; 0 uses
  %i.dz = add nuw nsw i32 %.022.i, 1              ; 2 uses
  %i.ea = tail call i32 @PQntuples(ptr noundef %i.dn) #14
  %i.eb = icmp slt i32 %i.dz, %i.ea
  br i1 %i.eb, label %.lr.ph.i, label %dumpUserConfig.exit, !llvm.loop !13

dumpUserConfig.exit:                              ; preds = %.lr.ph.i, %bb.t
  tail call void @PQclear(ptr noundef %i.dn) #14
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.dl) #14
  %i.ec = add nuw nsw i32 %.1173, 1               ; 2 uses
  %i.ed = tail call i32 @PQntuples(ptr noundef %i.f) #14
  %i.ee = icmp slt i32 %i.ec, %i.ed
  br i1 %i.ee, label %.lr.ph, label %._crit_edge175, !llvm.loop !14

._crit_edge175:                                   ; preds = %dumpUserConfig.exit, %bb.r
  tail call void @PQclear(ptr noundef %i.f) #14
  %i.ef = load ptr, ptr @OPF, align 8
  %i.eg = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.217) #14 ; 0 uses
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.a) #14
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dumpRoleMembership(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @createPQExpBuffer() #14   ; 5 uses
  %i.b = tail call ptr @createPQExpBuffer() #14   ; 9 uses
  %i.c = load i32, ptr @server_version, align 4
  %i.d = icmp sgt i32 %i.c, 159999                ; 3 uses
  tail call void (ptr, ptr, ...) @printfPQExpBuffer(ptr noundef %i.a, ptr noundef nonnull @.str.267) #14
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @appendPQExpBufferStr(ptr noundef %i.a, ptr noundef nonnull @.str.268) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.a, ptr noundef nonnull @.str.269, ptr noundef nonnull @role_catalog, ptr noundef nonnull @role_catalog, ptr noundef nonnull @role_catalog) #14
  %i.e = load ptr, ptr %i.a, align 8
  %i.f = tail call ptr @executeQuery(ptr noundef nonnull %0, ptr noundef %i.e) #14 ; 26 uses
  %i.g = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.34) #14 ; 3 uses
  %i.h = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.270) #14 ; 2 uses
  %i.i = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.271) #14 ; 2 uses
  %i.j = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.272) #14
  %i.k = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.273) #14
  %i.l = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.274) #14
  %i.m = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.275) #14 ; 2 uses
  %i.n = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.276) #14
  %i.o = tail call i32 @PQfnumber(ptr noundef %i.f, ptr noundef nonnull @.str.277) #14
  %i.p = tail call i32 @PQntuples(ptr noundef %i.f) #14
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = load ptr, ptr @OPF, align 8
  %i.s = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.278) #14 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call i32 @PQntuples(ptr noundef %i.f) #14 ; 5 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph269, label %.loopexit175

.lr.ph269:                                        ; preds = %bb.e, %._crit_edge240
  %.0134267 = phi i32 [ %.0133.lcssa, %._crit_edge240 ], [ 0, %bb.e ] ; 10 uses
  %i.v = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.0134267, i32 noundef %i.g) #14 ; 4 uses
  %i.w = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %.0134267, i32 noundef %i.g) #14
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.preheader174, label %.thread168

.preheader174:                                    ; preds = %.lr.ph269
  %i.x = icmp slt i32 %.0134267, %i.t
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.thread168:                                       ; preds = %.lr.ph269
  %i.y = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.0134267, i32 noundef %i.j) #14
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.279, ptr noundef %i.y) #14
  br label %.loopexit175

.lr.ph:                                           ; preds = %.preheader174, %bb.f
  %.0133227 = phi i32 [ %i.ab, %bb.f ], [ %.0134267, %.preheader174 ] ; 3 uses
  %i.z = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.0133227, i32 noundef %i.g) #14
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(1) %i.z) #15
  %.not137 = icmp eq i32 %i.aa, 0
  br i1 %.not137, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.lr.ph
  %i.ab = add i32 %.0133227, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.f, %.lr.ph, %.preheader174
  %.0133.lcssa = phi i32 [ %.0134267, %.preheader174 ], [ %.0133227, %.lr.ph ], [ %i.t, %bb.f ] ; 5 uses
  %i.ac = sub i32 %.0133.lcssa, %.0134267         ; 4 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = tail call ptr @pg_malloc0_mul(i64 noundef 1, i64 noundef %i.ad) #14 ; 2 uses
  %i.af = tail call ptr @pg_malloc0(i64 noundef 40) #14 ; 12 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store ptr null, ptr %i.ag, align 8
  %i.ah = uitofp i32 %i.ac to double
  %i.ai = fdiv double %i.ah, 9.000000e-01         ; 2 uses
  %i.aj = fcmp ogt double %i.ai, f0x41F0000000000000
  %i.ak = select i1 %i.aj, double f0x41F0000000000000, double %i.ai
  %i.al = fptoui double %i.ak to i64
  %i.am = tail call i64 @llvm.umax.i64(i64 %i.al, i64 2) ; 3 uses
  %i.an = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.am)
  %i.ao = icmp samesign ult i64 %i.an, 2
  %i.ap = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.am, i1 true)
  %i.aq = sub nuw nsw i64 64, %i.ap
  %i.ar = shl nuw i64 1, %i.aq
  %.0.i.i.i = select i1 %i.ao, i64 %i.am, i64 %i.ar ; 4 uses
  %i.as = shl i64 %.0.i.i.i, 4                    ; 2 uses
  %i.at = icmp ugt i64 %i.as, 9223372036854775806
  br i1 %i.at, label %bb.g, label %rolename_compute_size.exit.i, !prof !21

bb.g:                                             ; preds = %._crit_edge
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.295) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

rolename_compute_size.exit.i:                     ; preds = %._crit_edge
  %i.au = tail call ptr @pg_malloc0(i64 noundef %i.as) #14 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 6 uses
  store ptr %i.au, ptr %i.av, align 8
  %i.aw = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i)
  %i.ax = icmp samesign ult i64 %i.aw, 2
  %i.ay = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i, i1 true)
  %i.az = sub nuw nsw i64 64, %i.ay
  %i.ba = shl nuw i64 1, %i.az
  %.0.i.i.i.i = select i1 %i.ax, i64 %.0.i.i.i, i64 %i.ba ; 5 uses
  %i.bb = shl i64 %.0.i.i.i.i, 4
  %i.bc = icmp ugt i64 %i.bb, 9223372036854775806
  br i1 %i.bc, label %bb.h, label %rolename_create.exit, !prof !21

bb.h:                                             ; preds = %rolename_compute_size.exit.i
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.295) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

rolename_create.exit:                             ; preds = %rolename_compute_size.exit.i
  store i64 %.0.i.i.i.i, ptr %i.af, align 8
  %i.bd = trunc i64 %.0.i.i.i.i to i32
  %i.be = add i32 %i.bd, -1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 12 ; 6 uses
  store i32 %i.be, ptr %i.bf, align 4
  %i.bg = icmp eq i64 %.0.i.i.i.i, 4294967296
  %i.bh = uitofp i64 %.0.i.i.i.i to double
  %i.bi = fmul nnan double %i.bh, 9.000000e-01
  %i.bj = fptoui double %i.bi to i32
  %.sink.i.i = select i1 %i.bg, i32 -85899346, i32 %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 4 uses
  store i32 %.sink.i.i, ptr %i.bk, align 8
  %i.bl = icmp sgt i32 %i.ac, 0
  br i1 %i.bl, label %.lr.ph239, label %._crit_edge240

.lr.ph239:                                        ; preds = %rolename_create.exit
  %i.bm = icmp slt i32 %.0134267, %.0133.lcssa
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 7 uses
  br i1 %i.bm, label %.lr.ph239.split.us.preheader, label %.split.us

.lr.ph239.split.us.preheader:                     ; preds = %.lr.ph239
  %i.bo = zext i32 %.0134267 to i64
  br label %.lr.ph239.split.us

.lr.ph239.split.us:                               ; preds = %.lr.ph239.split.us.preheader, %..loopexit_crit_edge.us
  %.0129238.us = phi i32 [ %.0130237.us, %..loopexit_crit_edge.us ], [ 0, %.lr.ph239.split.us.preheader ]
  %.0130237.us = phi i32 [ %.2.us, %..loopexit_crit_edge.us ], [ %i.ac, %.lr.ph239.split.us.preheader ] ; 3 uses
  %i.bp = icmp eq i32 %.0130237.us, %.0129238.us
  br i1 %i.bp, label %.split.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph239.split.us, %rolename_lookup.exit.thread.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %rolename_lookup.exit.thread.us ], [ %i.bo, %.lr.ph239.split.us ] ; 2 uses
  %.1131234.us = phi i32 [ %.2.us, %rolename_lookup.exit.thread.us ], [ %.0130237.us, %.lr.ph239.split.us ] ; 5 uses
  %i.bq = trunc i64 %indvars.iv to i32            ; 11 uses
  %i.br = sub i32 %i.bq, %.0134267
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds i8, ptr %i.ae, i64 %i.bs ; 3 uses
  %i.bu = load i8, ptr %i.bt, align 1, !range !22, !noundef !23
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
  br i1 %i.dg, label %bb.ab, label %bb.t, !prof !24

bb.t:                                             ; preds = %.loopexit.loopexit.i.i.us, %.loopexit.i.i.us
  %i.dh = load i64, ptr %i.af, align 8            ; 6 uses
  %i.di = icmp eq i64 %i.dh, 4294967296
  br i1 %i.di, label %.split242.us, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  %i.dj = shl i64 %i.dh, 1
  %i.dk = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.dl = tail call i64 @llvm.umax.i64(i64 %i.dj, i64 2) ; 3 uses
  %i.dm = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.dl)
  %i.dn = icmp samesign ult i64 %i.dm, 2
  %i.do = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dl, i1 true)
end_hunk_0
