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
  br i1 %.not137, label %bb.f, label %._crit_edge.loopexit

bb.f:                                             ; preds = %.lr.ph
  %i.ab = add i32 %.0133227, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.ab, %i.t
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %.lr.ph, %bb.f
  %.0133.lcssa.ph = phi i32 [ %i.t, %bb.f ], [ %.0133227, %.lr.ph ]
  %1 = freeze i32 %.0133.lcssa.ph
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader174
  %.0133.lcssa = phi i32 [ %.0134267, %.preheader174 ], [ %1, %._crit_edge.loopexit ] ; 5 uses
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
  %2 = zext i32 %.0134267 to i64
  br label %.lr.ph239.split.us

.lr.ph239.split.us:                               ; preds = %.lr.ph239.split.us.preheader, %..loopexit_crit_edge.us
  %.0129238.us = phi i32 [ %.0130237.us, %..loopexit_crit_edge.us ], [ 0, %.lr.ph239.split.us.preheader ]
  %.0130237.us = phi i32 [ %.2.us, %..loopexit_crit_edge.us ], [ %i.ac, %.lr.ph239.split.us.preheader ] ; 3 uses
  %i.bo = icmp eq i32 %.0130237.us, %.0129238.us
  br i1 %i.bo, label %.split.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph239.split.us, %rolename_lookup.exit.thread.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %rolename_lookup.exit.thread.us ], [ %2, %.lr.ph239.split.us ] ; 2 uses
  %.1131234.us = phi i32 [ %.2.us, %rolename_lookup.exit.thread.us ], [ %.0130237.us, %.lr.ph239.split.us ] ; 5 uses
  %i.bp = trunc i64 %indvars.iv to i32            ; 11 uses
  %i.bq = sub i32 %i.bp, %.0134267
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ae, i64 %i.br ; 3 uses
  %i.bt = load i8, ptr %i.bs, align 1, !range !22, !noundef !23
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %rolename_lookup.exit.thread.us, label %bb.i

bb.i:                                             ; preds = %.preheader.us
  %i.bv = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.h) #14
  %.not138.us = icmp eq i32 %i.bv, 0
  br i1 %.not138.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bw = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.k) #14
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.282, ptr noundef %i.bw) #14
  store i8 1, ptr %i.bs, align 1
  %i.bx = add i32 %.1131234.us, -1
  br label %rolename_lookup.exit.thread.us

bb.k:                                             ; preds = %bb.i
  %i.by = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.h) #14 ; 6 uses
  %i.bz = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.l) #14 ; 2 uses
  br i1 %i.d, label %bb.l, label %.thread160.us

.thread160.us:                                    ; preds = %bb.k
  %i.ca = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.m) #14
  br label %rolename_lookup.exit.us

bb.l:                                             ; preds = %bb.k
  %i.cb = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.i) #14
  %.not139.us = icmp eq i32 %i.cb, 0              ; 2 uses
  br i1 %.not139.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.283, ptr noundef %i.v, ptr noundef %i.by, ptr noundef %i.bz) #14
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.284) #14
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cc = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.i) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0127.ph.us = phi ptr [ %i.cc, %bb.n ], [ null, %bb.m ] ; 5 uses
  %i.cd = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.m) #14 ; 3 uses
  %i.ce = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.o) #14 ; 3 uses
  br i1 %.not139.us, label %bb.p, label %rolename_lookup.exit.us

bb.p:                                             ; preds = %bb.o
  %i.cf = tail call i64 @__isoc23_strtoul(ptr noundef %i.bz, ptr noundef null, i32 noundef 10) #14
  %i.cg = and i64 %i.cf, 4294967295
  %.not140.us = icmp eq i64 %i.cg, 10
  br i1 %.not140.us, label %rolename_lookup.exit.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ch = tail call fastcc i32 @hash_string(ptr noundef %.0127.ph.us) ; 2 uses
  %.val.i.i.us = load i32, ptr %i.bf, align 4     ; 2 uses
  %i.ci = load ptr, ptr %i.av, align 8            ; 2 uses
  %.01523.i.i.us = and i32 %.val.i.i.us, %i.ch    ; 2 uses
  %i.cj = zext i32 %.01523.i.i.us to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 8
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %rolename_lookup.exit.thread.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.q, %bb.s
  %i.cn = phi ptr [ %i.cx, %bb.s ], [ %i.ck, %bb.q ] ; 2 uses
  %.01524.i.i.us = phi i32 [ %.015.i.i.us, %bb.s ], [ %.01523.i.i.us, %bb.q ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4
  %i.cq = icmp eq i32 %i.ch, %i.cp
  br i1 %i.cq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.us
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cs, ptr noundef nonnull readonly dereferenceable(1) %.0127.ph.us) #15
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %rolename_lookup.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.us
  %i.cv = add i32 %.01524.i.i.us, 1
  %.015.i.i.us = and i32 %i.cv, %.val.i.i.us      ; 2 uses
  %i.cw = zext i32 %.015.i.i.us to i64
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.cw ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %rolename_lookup.exit.thread.us, label %.lr.ph.i.i.us

rolename_lookup.exit.us:                          ; preds = %bb.r, %bb.p, %bb.o, %.thread160.us
  %.0166.us = phi ptr [ @.str.281, %.thread160.us ], [ %i.ce, %bb.o ], [ %i.ce, %bb.p ], [ %i.ce, %bb.r ]
  %.0127156165.us = phi ptr [ null, %.thread160.us ], [ %.0127.ph.us, %bb.o ], [ %.0127.ph.us, %bb.p ], [ %.0127.ph.us, %bb.r ]
  %.0126.shrunk158164.us = phi i1 [ false, %.thread160.us ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.r ]
  %i.da = phi ptr [ %i.ca, %.thread160.us ], [ %i.cd, %bb.o ], [ %i.cd, %bb.p ], [ %i.cd, %bb.r ] ; 2 uses
  store i8 1, ptr %i.bs, align 1
  %i.db = add i32 %.1131234.us, -1
  %i.dc = load i8, ptr %i.da, align 1
  %i.dd = icmp eq i8 %i.dc, 116
  br i1 %i.dd, label %.loopexit.i.i.us, label %rolename_insert.exit.us

.loopexit.i.i.us:                                 ; preds = %rolename_lookup.exit.us
  %i.de = tail call fastcc i32 @hash_string(ptr noundef %i.by) ; 4 uses
  %.pre.i.us = load i32, ptr %i.bn, align 8
  %.pre73.i.us = load i32, ptr %i.bk, align 8
  %i.df = icmp ult i32 %.pre.i.us, %.pre73.i.us
  br i1 %i.df, label %bb.ab, label %bb.t, !prof !24

bb.t:                                             ; preds = %.loopexit.loopexit.i.i.us, %.loopexit.i.i.us
  %i.dg = load i64, ptr %i.af, align 8            ; 6 uses
  %i.dh = icmp eq i64 %i.dg, 4294967296
  br i1 %i.dh, label %.split242.us, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  %i.di = shl i64 %i.dg, 1
  %i.dj = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.di, i64 2) ; 3 uses
  %i.dl = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.dk)
  %i.dm = icmp samesign ult i64 %i.dl, 2
  %i.dn = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.dk, i1 true)
  %i.do = sub nuw nsw i64 64, %i.dn
  %i.dp = shl nuw i64 1, %i.do
  %.0.i.i.i148.us = select i1 %i.dm, i64 %i.dk, i64 %i.dp ; 4 uses
  %i.dq = shl i64 %.0.i.i.i148.us, 4              ; 2 uses
  %i.dr = icmp ugt i64 %i.dq, 9223372036854775806
  br i1 %i.dr, label %.split244.us, label %rolename_compute_size.exit.i149.us, !prof !21

rolename_compute_size.exit.i149.us:               ; preds = %bb.u
  %i.ds = tail call ptr @pg_malloc0(i64 noundef %i.dq) #14 ; 2 uses
  store ptr %i.ds, ptr %i.av, align 8
  %i.dt = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i148.us)
  %i.du = icmp samesign ult i64 %i.dt, 2
  %i.dv = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i148.us, i1 true)
  %i.dw = sub nuw nsw i64 64, %i.dv
  %i.dx = shl nuw i64 1, %i.dw
  %.0.i.i.i.i150.us = select i1 %i.du, i64 %.0.i.i.i148.us, i64 %i.dx ; 5 uses
  %i.dy = shl i64 %.0.i.i.i.i150.us, 4
  %i.dz = icmp ugt i64 %i.dy, 9223372036854775806
  br i1 %i.dz, label %.split246.us, label %rolename_update_parameters.exit.i.us, !prof !21

rolename_update_parameters.exit.i.us:             ; preds = %rolename_compute_size.exit.i149.us
  store i64 %.0.i.i.i.i150.us, ptr %i.af, align 8
  %i.ea = trunc i64 %.0.i.i.i.i150.us to i32
  %i.eb = add i32 %i.ea, -1                       ; 2 uses
  store i32 %i.eb, ptr %i.bf, align 4
  %i.ec = icmp eq i64 %.0.i.i.i.i150.us, 4294967296
  %i.ed = uitofp i64 %.0.i.i.i.i150.us to double
  %i.ee = fmul nnan double %i.ed, 9.000000e-01
  %i.ef = fptoui double %i.ee to i32
  %.sink.i.i151.us = select i1 %i.ec, i32 -85899346, i32 %i.ef
  store i32 %.sink.i.i151.us, ptr %i.bk, align 8
  %.not70.i.us = icmp eq i64 %i.dg, 0
  br i1 %.not70.i.us, label %rolename_grow.exit.us, label %.lr.ph.i152.us

.lr.ph.i152.us:                                   ; preds = %rolename_update_parameters.exit.i.us, %bb.w
  %i.eg = phi i64 [ %i.en, %bb.w ], [ 0, %rolename_update_parameters.exit.i.us ]
  %.05162.i.us = phi i32 [ %i.em, %bb.w ], [ 0, %rolename_update_parameters.exit.i.us ] ; 4 uses
  %i.eh = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.eg ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %.not.i.us = icmp eq i32 %i.ei, 1
  br i1 %.not.i.us, label %bb.v, label %.lr.ph69.i.us.preheader

bb.v:                                             ; preds = %.lr.ph.i152.us
  %i.ej = getelementptr i8, ptr %i.eh, i64 4
  %.val59.i.us = load i32, ptr %i.ej, align 4
  %i.ek = and i32 %.val59.i.us, %i.eb
  %i.el = icmp eq i32 %i.ek, %.05162.i.us
  br i1 %i.el, label %.lr.ph69.i.us.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.em = add i32 %.05162.i.us, 1                 ; 2 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = icmp ugt i64 %i.dg, %i.en
  br i1 %i.eo, label %.lr.ph.i152.us, label %.lr.ph69.i.us.preheader, !llvm.loop !16

.lr.ph69.i.us.preheader:                          ; preds = %bb.w, %bb.v, %.lr.ph.i152.us
  %.04968.i.us.ph = phi i32 [ 0, %bb.w ], [ %.05162.i.us, %bb.v ], [ %.05162.i.us, %.lr.ph.i152.us ]
  br label %.lr.ph69.i.us

.lr.ph69.i.us:                                    ; preds = %.lr.ph69.i.us.preheader, %bb.aa
  %.04968.i.us = phi i32 [ %spec.store.select.i.us, %bb.aa ], [ %.04968.i.us.ph, %.lr.ph69.i.us.preheader ] ; 2 uses
  %.15267.i.us = phi i32 [ %i.fb, %bb.aa ], [ 0, %.lr.ph69.i.us.preheader ]
  %i.ep = zext i32 %.04968.i.us to i64
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.ep ; 3 uses
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = icmp eq i32 %i.er, 1
  br i1 %i.es, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.lr.ph69.i.us
  %i.et = getelementptr i8, ptr %i.eq, i64 4
  %.val58.i.us = load i32, ptr %i.et, align 4
  %.val.i.us = load i32, ptr %i.bf, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.val58.pn.i.us = phi i32 [ %.val58.i.us, %bb.x ], [ %i.ey, %bb.y ]
  %.0.i.us = and i32 %.val58.pn.i.us, %.val.i.us  ; 2 uses
  %i.eu = zext i32 %.0.i.us to i64
  %i.ev = getelementptr inbounds nuw [16 x i8], ptr %i.ds, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 8
  %i.ex = icmp eq i32 %i.ew, 0
end_hunk_0
begin_hunk_1_@dumpRoleMembership:bb.a

bb.ae:                                            ; preds = %bb.ad
  %i.fs = load i64, ptr %i.af, align 8
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = add i32 %.089.i24.i.us, %i.ft
  br label %rolename_distance.exit.i.i.us

rolename_distance.exit.i.i.us:                    ; preds = %bb.ae, %bb.ad
  %.pn.i.i.i.us = phi i32 [ %i.fu, %bb.ae ], [ %.089.i24.i.us, %bb.ad ]
  %.0.i.i.i145.us = sub i32 %.pn.i.i.i.us, %i.fr
  %i.fv = icmp ugt i32 %.087.i23.i.us, %.0.i.i.i145.us
  %i.fw = add i32 %.089.i24.i.us, 1               ; 2 uses
  br i1 %i.fv, label %.preheader110.i.preheader.i.us, label %bb.af

bb.af:                                            ; preds = %rolename_distance.exit.i.i.us
  %i.fx = add i32 %.087.i23.i.us, 1               ; 2 uses
  %i.fy = icmp ugt i32 %i.fx, 25
  br i1 %i.fy, label %bb.ag, label %bb.ah, !prof !21

bb.ag:                                            ; preds = %bb.af
  %i.fz = load i32, ptr %i.bn, align 8
  %i.ga = uitofp i32 %i.fz to double
  %i.gb = load i64, ptr %i.af, align 8
  %i.gc = uitofp i64 %i.gb to double
  %i.gd = fdiv double %i.ga, %i.gc
  %i.ge = fcmp ult double %i.gd, 1.000000e-01
  br i1 %i.ge, label %bb.ah, label %.loopexit.loopexit.i.i.us

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.089.i.i.us = and i32 %i.fw, %.val95.i.i.us    ; 2 uses
  %i.gf = zext i32 %.089.i.i.us to i64
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.gf ; 3 uses
  %i.gh = load i32, ptr %i.gg, align 8
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %._crit_edge.i.us, label %.lr.ph.i.us

.preheader110.i.preheader.i.us:                   ; preds = %rolename_distance.exit.i.i.us
  %i.gj = and i32 %i.fw, %.val95.i.i.us           ; 3 uses
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 8
  %.not109.i27.i.us = icmp eq i32 %i.gm, 0
  br i1 %.not109.i27.i.us, label %.preheader.i.i.us, label %.lr.ph29.i.us

.lr.ph29.i.us:                                    ; preds = %.preheader110.i.preheader.i.us, %.preheader110.i.i.us
  %i.gn = phi i32 [ %i.gx, %.preheader110.i.i.us ], [ %i.gj, %.preheader110.i.preheader.i.us ]
  %.077.i28.i.us = phi i32 [ %i.go, %.preheader110.i.i.us ], [ 0, %.preheader110.i.preheader.i.us ]
  %i.go = add i32 %.077.i28.i.us, 1               ; 2 uses
  %i.gp = icmp sgt i32 %i.go, 150
  br i1 %i.gp, label %bb.ai, label %.preheader110.i.i.us, !prof !21

bb.ai:                                            ; preds = %.lr.ph29.i.us
  %i.gq = load i32, ptr %i.bn, align 8
  %i.gr = uitofp i32 %i.gq to double
  %i.gs = load i64, ptr %i.af, align 8
  %i.gt = uitofp i64 %i.gs to double
  %i.gu = fdiv double %i.gr, %i.gt
  %i.gv = fcmp ult double %i.gu, 1.000000e-01
  br i1 %i.gv, label %.preheader110.i.i.us, label %.loopexit.loopexit.i.i.us

.preheader110.i.i.us:                             ; preds = %bb.ai, %.lr.ph29.i.us
  %i.gw = add i32 %i.gn, 1
  %i.gx = and i32 %i.gw, %.val95.i.i.us           ; 3 uses
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8
  %.not109.i.i.us = icmp eq i32 %i.ha, 0
  br i1 %.not109.i.i.us, label %.preheader.i.i.us, label %.lr.ph29.i.us

.loopexit.loopexit.i.i.us:                        ; preds = %bb.ag, %bb.ai
  store i32 0, ptr %i.bk, align 8
  br label %bb.t

.preheader.i.i.us:                                ; preds = %.preheader110.i.i.us, %.preheader110.i.preheader.i.us
  %.lcssa16.i.us = phi i32 [ %i.gj, %.preheader110.i.preheader.i.us ], [ %i.gx, %.preheader110.i.i.us ] ; 2 uses
  %.lcssa14.i.us = phi ptr [ %i.gl, %.preheader110.i.preheader.i.us ], [ %i.gz, %.preheader110.i.i.us ]
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %.not94132.i.i.us = icmp eq i32 %.lcssa16.i.us, %.089.i24.i.us
  br i1 %.not94132.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i147.us

.lr.ph.i.i147.us:                                 ; preds = %.preheader.i.i.us, %.lr.ph.i.i147.us
  %.079134.i.i.us = phi i32 [ %i.hd, %.lr.ph.i.i147.us ], [ %.lcssa16.i.us, %.preheader.i.i.us ]
  %.283133.i.i.us = phi ptr [ %i.hf, %.lr.ph.i.i147.us ], [ %.lcssa14.i.us, %.preheader.i.i.us ]
  %.val99.i.i.us = load i32, ptr %i.bf, align 4
  %i.hc = add i32 %.079134.i.i.us, -1
  %i.hd = and i32 %.val99.i.i.us, %i.hc           ; 3 uses
  %i.he = zext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [16 x i8], ptr %i.fe, i64 %i.he ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.283133.i.i.us, ptr noundef nonnull align 8 dereferenceable(16) %i.hf, i64 16, i1 false)
  %.not94.i.i.us = icmp eq i32 %i.hd, %.089.i24.i.us
  br i1 %.not94.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i147.us, !llvm.loop !18

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i147.us, %.preheader.i.i.us
  %i.hg = load i32, ptr %i.bn, align 8
  %i.hh = add i32 %i.hg, 1
  store i32 %i.hh, ptr %i.bn, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store ptr %i.by, ptr %i.hi, align 8
  store i32 %i.de, ptr %i.hb, align 4
  br label %.thread103.sink.split.i.i.us

._crit_edge.i.us:                                 ; preds = %bb.ah, %bb.ab
  %.lcssa.i.us = phi ptr [ %i.fg, %bb.ab ], [ %i.gg, %bb.ah ] ; 3 uses
  %i.hj = load i32, ptr %i.bn, align 8
  %i.hk = add i32 %i.hj, 1
  store i32 %i.hk, ptr %i.bn, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %.lcssa.i.us, i64 8
  store ptr %i.by, ptr %i.hl, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.lcssa.i.us, i64 4
  store i32 %i.de, ptr %i.hm, align 4
  br label %.thread103.sink.split.i.i.us

.thread103.sink.split.i.i.us:                     ; preds = %._crit_edge.i.us, %._crit_edge.i.i.us
  %i.hn = phi ptr [ %i.fj, %._crit_edge.i.i.us ], [ %.lcssa.i.us, %._crit_edge.i.us ]
  store i32 1, ptr %i.hn, align 8
  br label %rolename_insert.exit.us

rolename_insert.exit.us:                          ; preds = %bb.ac, %.thread103.sink.split.i.i.us, %rolename_lookup.exit.us
  tail call void @resetPQExpBuffer(ptr noundef %i.b) #14
  %i.ho = load ptr, ptr @OPF, align 8
  %i.hp = tail call ptr @fmtId(ptr noundef %i.v) #14
  %i.hq = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ho, ptr noundef nonnull @.str.285, ptr noundef %i.hp) #14 ; 0 uses
  %i.hr = load ptr, ptr @OPF, align 8
  %i.hs = tail call ptr @fmtId(ptr noundef %i.by) #14
  %i.ht = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.hr, ptr noundef nonnull @.str.286, ptr noundef %i.hs) #14 ; 0 uses
  %i.hu = load i8, ptr %i.da, align 1
  %i.hv = icmp eq i8 %i.hu, 116
  br i1 %i.hv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %rolename_insert.exit.us
  tail call void @appendPQExpBufferStr(ptr noundef %i.b, ptr noundef nonnull @.str.287) #14
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %rolename_insert.exit.us
  br i1 %i.d, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %i.hw = load ptr, ptr %i.b, align 8
  %i.hx = load i8, ptr %i.hw, align 1
  %.not141.us = icmp eq i8 %i.hx, 0
  br i1 %.not141.us, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.288) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.hy = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %i.bp, i32 noundef %i.n) #14
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = icmp eq i8 %i.hz, 116
  %i.ib = select i1 %i.ia, ptr @.str.290, ptr @.str.291
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.289, ptr noundef nonnull %i.ib) #14
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ak
  %i.ic = load i8, ptr %.0166.us, align 1
  %.not142.us = icmp eq i8 %i.ic, 116
  br i1 %.not142.us, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.id = load ptr, ptr %i.b, align 8
  %i.ie = load i8, ptr %i.id, align 1
  %.not143.us = icmp eq i8 %i.ie, 0
  br i1 %.not143.us, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.288) #14
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.292) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.if = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ig = load i8, ptr %i.if, align 1
  %.not144.us = icmp eq i8 %i.ig, 0
  br i1 %.not144.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ih = load ptr, ptr @OPF, align 8
  %i.ii = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.293, ptr noundef nonnull %i.if) #14 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %.0126.shrunk158164.us, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ij = load ptr, ptr @OPF, align 8
  %i.ik = tail call ptr @fmtId(ptr noundef %.0127156165.us) #14
  %i.il = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ij, ptr noundef nonnull @.str.294, ptr noundef %i.ik) #14 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.im = load ptr, ptr @OPF, align 8
  %i.in = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.im, ptr noundef nonnull @.str.261) #14 ; 0 uses
  br label %rolename_lookup.exit.thread.us

rolename_lookup.exit.thread.us:                   ; preds = %bb.s, %bb.aw, %bb.q, %bb.j, %.preheader.us
  %.2.us = phi i32 [ %i.db, %bb.aw ], [ %i.bx, %bb.j ], [ %.1131234.us, %.preheader.us ], [ %.1131234.us, %bb.q ], [ %.1131234.us, %bb.s ] ; 3 uses
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond319.not = icmp eq i32 %.0133.lcssa, %lftr.wideiv
  br i1 %exitcond319.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !19

..loopexit_crit_edge.us:                          ; preds = %rolename_lookup.exit.thread.us
  %i.io = icmp sgt i32 %.2.us, 0
  br i1 %i.io, label %.lr.ph239.split.us, label %._crit_edge240.loopexit, !llvm.loop !20

.split.us:                                        ; preds = %.lr.ph239, %.lr.ph239.split.us
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.280, ptr noundef %i.v) #14
  tail call void @PQfinish(ptr noundef nonnull %0) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

.split242.us:                                     ; preds = %bb.t
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.296) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

.split244.us:                                     ; preds = %bb.u
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.295) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

.split246.us:                                     ; preds = %rolename_compute_size.exit.i149.us
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.295) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

._crit_edge240.loopexit:                          ; preds = %..loopexit_crit_edge.us
  %.pre = load ptr, ptr %i.av, align 8
  br label %._crit_edge240

._crit_edge240:                                   ; preds = %._crit_edge240.loopexit, %rolename_create.exit
  %i.ip = phi ptr [ %i.au, %rolename_create.exit ], [ %.pre, %._crit_edge240.loopexit ]
  tail call void @pfree(ptr noundef %i.ip) #14
  tail call void @pfree(ptr noundef nonnull %i.af) #14
  tail call void @pg_free(ptr noundef %i.ae) #14
  %i.iq = icmp slt i32 %.0133.lcssa, %i.t
  br i1 %i.iq, label %.lr.ph269, label %.loopexit175

.loopexit175:                                     ; preds = %._crit_edge240, %bb.e, %.thread168
  tail call void @PQclear(ptr noundef %i.f) #14
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.a) #14
  %i.ir = load ptr, ptr @OPF, align 8
  %i.is = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ir, ptr noundef nonnull @.str.217) #14 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dumpRoleGUCPrivs(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @executeQuery(ptr noundef nonnull %0, ptr noundef nonnull @.str.297) #14 ; 8 uses
  %i.b = tail call i32 @PQntuples(ptr noundef %i.a) #14
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @OPF, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.298) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @PQntuples(ptr noundef %i.a) #14
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.026 = phi i32 [ %i.t, %bb.e ], [ 0, %bb.c ]   ; 5 uses
  %i.h = tail call ptr @createPQExpBuffer() #14   ; 3 uses
  %i.i = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.026, i32 noundef 0) #14 ; 2 uses
  %i.j = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.026, i32 noundef 1) #14
  %i.k = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.026, i32 noundef 2) #14 ; 2 uses
  %i.l = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.026, i32 noundef 3) #14
  %i.m = tail call ptr @fmtId(ptr noundef %i.i) #14
  %i.n = tail call ptr @pg_strdup(ptr noundef %i.m) #14 ; 2 uses
  %i.o = load i32, ptr @server_version, align 4
  %i.p = tail call zeroext i1 @buildACLCommands(ptr noundef %i.n, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.299, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.j, ptr noundef nonnull @.str.143, i32 noundef %i.o, ptr noundef %i.h) #14
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.300, ptr noundef %i.k, ptr noundef %i.i) #14
  tail call void @PQfinish(ptr noundef nonnull %0) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %i.q = load ptr, ptr @OPF, align 8
  %i.r = load ptr, ptr %i.h, align 8
  %i.s = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.94, ptr noundef %i.r) #14 ; 0 uses
  tail call void @free(ptr noundef %i.n) #14
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.h) #14
  %i.t = add nuw nsw i32 %.026, 1                 ; 2 uses
  %i.u = tail call i32 @PQntuples(ptr noundef %i.a) #14
  %i.v = icmp slt i32 %i.t, %i.u
  br i1 %i.v, label %.lr.ph, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %bb.e, %bb.c
  tail call void @PQclear(ptr noundef %i.a) #14
  %i.w = load ptr, ptr @OPF, align 8
  %i.x = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.w, ptr noundef nonnull @.str.217) #14 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dumpTablespaces(ptr noundef nonnull %0) unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @executeQuery(ptr noundef nonnull %0, ptr noundef nonnull @.str.304) #14 ; 12 uses
  %i.b = tail call i32 @PQntuples(ptr noundef %i.a) #14
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @OPF, align 8
  %i.e = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.d, ptr noundef nonnull @.str.305) #14 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = tail call i32 @PQntuples(ptr noundef %i.a) #14
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %bb.p
  %.073 = phi i32 [ %i.am, %bb.p ], [ 0, %bb.c ]  ; 9 uses
  %i.h = tail call ptr @createPQExpBuffer() #14   ; 15 uses
  %i.i = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 0) #14
  %i.j = tail call i64 @__isoc23_strtoul(ptr noundef %i.i, ptr noundef null, i32 noundef 10) #14
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  %i.l = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 1) #14 ; 3 uses
  %i.m = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 2) #14 ; 2 uses
  %i.n = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 3) #14 ; 2 uses
  %i.o = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 4) #14 ; 2 uses
  %i.p = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 5) #14
  %i.q = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 6) #14 ; 3 uses
  %i.r = tail call ptr @PQgetvalue(ptr noundef %i.a, i32 noundef %.073, i32 noundef 7) #14 ; 3 uses
  %i.s = tail call ptr @fmtId(ptr noundef %i.l) #14
  %i.t = tail call ptr @pg_strdup(ptr noundef %i.s) #14 ; 5 uses
  %i.u = load i32, ptr @binary_upgrade, align 4
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  tail call void @appendPQExpBufferStr(ptr noundef %i.h, ptr noundef nonnull @.str.306) #14
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.h, ptr noundef nonnull @.str.307, i32 noundef %i.k) #14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.h, ptr noundef nonnull @.str.308, ptr noundef %i.t) #14
  %i.v = tail call ptr @fmtId(ptr noundef %i.m) #14
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.h, ptr noundef nonnull @.str.309, ptr noundef %i.v) #14
  tail call void @appendPQExpBufferStr(ptr noundef %i.h, ptr noundef nonnull @.str.310) #14
  %i.w = load i8, ptr %i.n, align 1
  %i.x = icmp eq i8 %i.w, 47
  %..str.143 = select i1 %i.x, ptr %i.n, ptr @.str.143
  tail call void @appendStringLiteralConn(ptr noundef %i.h, ptr noundef nonnull %..str.143, ptr noundef nonnull %0) #14
  tail call void @appendPQExpBufferStr(ptr noundef %i.h, ptr noundef nonnull @.str.261) #14
  %.not68 = icmp eq ptr %i.q, null
  br i1 %.not68, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load i8, ptr %i.q, align 1
  %.not69 = icmp eq i8 %i.y, 0
  br i1 %.not69, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.h, ptr noundef nonnull @.str.311, ptr noundef %i.t, ptr noundef nonnull %i.q) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.b = load i1, ptr @skip_acls, align 1
  br i1 %.b, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr @server_version, align 4
  %i.aa = tail call zeroext i1 @buildACLCommands(ptr noundef %i.t, ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.312, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.m, ptr noundef nonnull @.str.143, i32 noundef %i.z, ptr noundef %i.h) #14
  br i1 %i.aa, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 4, i32 noundef 0, ptr noundef nonnull @.str.313, ptr noundef %i.o, ptr noundef %i.l) #14
  tail call void @PQfinish(ptr noundef nonnull %0) #14
  tail call void @exit_nicely(i32 noundef 1) #16
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ab = load i32, ptr @no_comments, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  %i.ad = icmp ne ptr %i.r, null
  %or.cond = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ae = load i8, ptr %i.r, align 1
  %.not70 = icmp eq i8 %i.ae, 0
  br i1 %.not70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef %i.h, ptr noundef nonnull @.str.314, ptr noundef %i.t) #14
  tail call void @appendStringLiteralConn(ptr noundef %i.h, ptr noundef nonnull %i.r, ptr noundef nonnull %0) #14
  tail call void @appendPQExpBufferStr(ptr noundef %i.h, ptr noundef nonnull @.str.261) #14
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
end_hunk_1
