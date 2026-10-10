Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/pg_dumpall?download=true
inline.NumInlined: 50
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@dumpRoles:bb.a
  br i1 %.not186, label %sub_1169, label %.tail167.thread

sub_1169:                                         ; preds = %sub_0168
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 1
  %i.ce = load i8, ptr %i.cd, align 1
  %.not187 = icmp eq i8 %i.ce, 49
  br i1 %.not187, label %.tail167, label %.tail167.thread

.tail167:                                         ; preds = %sub_1169
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 2
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.f, label %.tail167.thread

.tail167.thread:                                  ; preds = %sub_1169, %sub_0168, %.tail167
  %i.ci = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %.0172, i32 noundef %i.n) #14
  tail call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.258, ptr noundef %i.ci) #14
  br label %bb.f

bb.f:                                             ; preds = %.tail167.thread, %.tail167
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
  %i.ab = add nsw i32 %.0133227, 1                ; 2 uses
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
  %i.bo = sext i32 %.0134267 to i64
  %wide.trip.count = sext i32 %.0133.lcssa to i64
  br label %.lr.ph239.split.us

.lr.ph239.split.us:                               ; preds = %.lr.ph239.split.us.preheader, %..loopexit_crit_edge.us
  %.0129238.us = phi i32 [ %.0130237.us, %..loopexit_crit_edge.us ], [ 0, %.lr.ph239.split.us.preheader ]
  %.0130237.us = phi i32 [ %.2.us, %..loopexit_crit_edge.us ], [ %i.ac, %.lr.ph239.split.us.preheader ] ; 3 uses
  %i.bp = icmp eq i32 %.0130237.us, %.0129238.us
  br i1 %i.bp, label %.split.us, label %.preheader.us

.preheader.us:                                    ; preds = %.lr.ph239.split.us, %rolename_lookup.exit.thread.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %rolename_lookup.exit.thread.us ], [ %i.bo, %.lr.ph239.split.us ] ; 2 uses
  %.1131234.us = phi i32 [ %.2.us, %rolename_lookup.exit.thread.us ], [ %.0130237.us, %.lr.ph239.split.us ] ; 5 uses
  %1 = trunc nsw i64 %indvars.iv to i32           ; 11 uses
  %2 = sub i32 %1, %.0134267
  %3 = sext i32 %2 to i64
  %i.bq = getelementptr inbounds i8, ptr %i.ae, i64 %3 ; 3 uses
  %i.br = load i8, ptr %i.bq, align 1, !range !22, !noundef !23
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %rolename_lookup.exit.thread.us, label %bb.i

bb.i:                                             ; preds = %.preheader.us
  %i.bt = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.h) #14
  %.not138.us = icmp eq i32 %i.bt, 0
  br i1 %.not138.us, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bu = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.k) #14
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.282, ptr noundef %i.bu) #14
  store i8 1, ptr %i.bq, align 1
  %i.bv = add i32 %.1131234.us, -1
  br label %rolename_lookup.exit.thread.us

bb.k:                                             ; preds = %bb.i
  %i.bw = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.h) #14 ; 6 uses
  %i.bx = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.l) #14 ; 2 uses
  br i1 %i.d, label %bb.l, label %.thread160.us

.thread160.us:                                    ; preds = %bb.k
  %i.by = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.m) #14
  br label %rolename_lookup.exit.us

bb.l:                                             ; preds = %bb.k
  %i.bz = tail call i32 @PQgetisnull(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.i) #14
  %.not139.us = icmp eq i32 %i.bz, 0              ; 2 uses
  br i1 %.not139.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 0, ptr noundef nonnull @.str.283, ptr noundef %i.v, ptr noundef %i.bw, ptr noundef %i.bx) #14
  tail call void (i32, i32, ptr, ...) @pg_log_generic(i32 noundef 3, i32 noundef 1, ptr noundef nonnull @.str.284) #14
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ca = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.i) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0127.ph.us = phi ptr [ %i.ca, %bb.n ], [ null, %bb.m ] ; 5 uses
  %i.cb = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.m) #14 ; 3 uses
  %i.cc = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.o) #14 ; 3 uses
  br i1 %.not139.us, label %bb.p, label %rolename_lookup.exit.us

bb.p:                                             ; preds = %bb.o
  %i.cd = tail call i64 @__isoc23_strtoul(ptr noundef %i.bx, ptr noundef null, i32 noundef 10) #14
  %i.ce = and i64 %i.cd, 4294967295
  %.not140.us = icmp eq i64 %i.ce, 10
  br i1 %.not140.us, label %rolename_lookup.exit.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cf = tail call fastcc i32 @hash_string(ptr noundef %.0127.ph.us) ; 2 uses
  %.val.i.i.us = load i32, ptr %i.bf, align 4     ; 2 uses
  %i.cg = load ptr, ptr %i.av, align 8            ; 2 uses
  %.01523.i.i.us = and i32 %.val.i.i.us, %i.cf    ; 2 uses
  %i.ch = zext i32 %.01523.i.i.us to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ch ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %rolename_lookup.exit.thread.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %bb.q, %bb.s
  %i.cl = phi ptr [ %i.cv, %bb.s ], [ %i.ci, %bb.q ] ; 2 uses
  %.01524.i.i.us = phi i32 [ %.015.i.i.us, %bb.s ], [ %.01523.i.i.us, %bb.q ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = icmp eq i32 %i.cf, %i.cn
  br i1 %i.co, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i.i.us
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  %i.cr = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cq, ptr noundef nonnull readonly dereferenceable(1) %.0127.ph.us) #15
  %i.cs = icmp eq i32 %i.cr, 0
  br i1 %i.cs, label %rolename_lookup.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i.i.us
  %i.ct = add i32 %.01524.i.i.us, 1
  %.015.i.i.us = and i32 %i.ct, %.val.i.i.us      ; 2 uses
  %i.cu = zext i32 %.015.i.i.us to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.cu ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 8
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %rolename_lookup.exit.thread.us, label %.lr.ph.i.i.us

rolename_lookup.exit.us:                          ; preds = %bb.r, %bb.p, %bb.o, %.thread160.us
  %.0166.us = phi ptr [ @.str.281, %.thread160.us ], [ %i.cc, %bb.o ], [ %i.cc, %bb.p ], [ %i.cc, %bb.r ]
  %.0127156165.us = phi ptr [ null, %.thread160.us ], [ %.0127.ph.us, %bb.o ], [ %.0127.ph.us, %bb.p ], [ %.0127.ph.us, %bb.r ]
  %.0126.shrunk158164.us = phi i1 [ false, %.thread160.us ], [ false, %bb.o ], [ true, %bb.p ], [ true, %bb.r ]
  %i.cy = phi ptr [ %i.by, %.thread160.us ], [ %i.cb, %bb.o ], [ %i.cb, %bb.p ], [ %i.cb, %bb.r ] ; 2 uses
  store i8 1, ptr %i.bq, align 1
  %i.cz = add i32 %.1131234.us, -1
  %i.da = load i8, ptr %i.cy, align 1
  %i.db = icmp eq i8 %i.da, 116
  br i1 %i.db, label %.loopexit.i.i.us, label %rolename_insert.exit.us

.loopexit.i.i.us:                                 ; preds = %rolename_lookup.exit.us
  %i.dc = tail call fastcc i32 @hash_string(ptr noundef %i.bw) ; 4 uses
  %.pre.i.us = load i32, ptr %i.bn, align 8
  %.pre73.i.us = load i32, ptr %i.bk, align 8
  %i.dd = icmp ult i32 %.pre.i.us, %.pre73.i.us
  br i1 %i.dd, label %bb.ab, label %bb.t, !prof !24

bb.t:                                             ; preds = %.loopexit.loopexit.i.i.us, %.loopexit.i.i.us
  %i.de = load i64, ptr %i.af, align 8            ; 6 uses
  %i.df = icmp eq i64 %i.de, 4294967296
  br i1 %i.df, label %.split242.us, label %bb.u, !prof !21

bb.u:                                             ; preds = %bb.t
  %i.dg = shl i64 %i.de, 1
  %i.dh = load ptr, ptr %i.av, align 8            ; 3 uses
  %i.di = tail call i64 @llvm.umax.i64(i64 %i.dg, i64 2) ; 3 uses
  %i.dj = tail call range(i64 1, 64) i64 @llvm.ctpop.i64(i64 %i.di)
  %i.dk = icmp samesign ult i64 %i.dj, 2
  %i.dl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dm = sub nuw nsw i64 64, %i.dl
  %i.dn = shl nuw i64 1, %i.dm
  %.0.i.i.i148.us = select i1 %i.dk, i64 %i.di, i64 %i.dn ; 4 uses
  %i.do = shl i64 %.0.i.i.i148.us, 4              ; 2 uses
  %i.dp = icmp ugt i64 %i.do, 9223372036854775806
  br i1 %i.dp, label %.split244.us, label %rolename_compute_size.exit.i149.us, !prof !21

rolename_compute_size.exit.i149.us:               ; preds = %bb.u
  %i.dq = tail call ptr @pg_malloc0(i64 noundef %i.do) #14 ; 2 uses
  store ptr %i.dq, ptr %i.av, align 8
  %i.dr = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %.0.i.i.i148.us)
  %i.ds = icmp samesign ult i64 %i.dr, 2
  %i.dt = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0.i.i.i148.us, i1 true)
  %i.du = sub nuw nsw i64 64, %i.dt
  %i.dv = shl nuw i64 1, %i.du
  %.0.i.i.i.i150.us = select i1 %i.ds, i64 %.0.i.i.i148.us, i64 %i.dv ; 5 uses
  %i.dw = shl i64 %.0.i.i.i.i150.us, 4
  %i.dx = icmp ugt i64 %i.dw, 9223372036854775806
  br i1 %i.dx, label %.split246.us, label %rolename_update_parameters.exit.i.us, !prof !21

rolename_update_parameters.exit.i.us:             ; preds = %rolename_compute_size.exit.i149.us
  store i64 %.0.i.i.i.i150.us, ptr %i.af, align 8
  %i.dy = trunc i64 %.0.i.i.i.i150.us to i32
  %i.dz = add i32 %i.dy, -1                       ; 2 uses
  store i32 %i.dz, ptr %i.bf, align 4
  %i.ea = icmp eq i64 %.0.i.i.i.i150.us, 4294967296
  %i.eb = uitofp i64 %.0.i.i.i.i150.us to double
  %i.ec = fmul nnan double %i.eb, 9.000000e-01
  %i.ed = fptoui double %i.ec to i32
  %.sink.i.i151.us = select i1 %i.ea, i32 -85899346, i32 %i.ed
  store i32 %.sink.i.i151.us, ptr %i.bk, align 8
  %.not70.i.us = icmp eq i64 %i.de, 0
  br i1 %.not70.i.us, label %rolename_grow.exit.us, label %.lr.ph.i152.us

.lr.ph.i152.us:                                   ; preds = %rolename_update_parameters.exit.i.us, %bb.w
  %i.ee = phi i64 [ %i.el, %bb.w ], [ 0, %rolename_update_parameters.exit.i.us ]
  %.05162.i.us = phi i32 [ %i.ek, %bb.w ], [ 0, %rolename_update_parameters.exit.i.us ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8
  %.not.i.us = icmp eq i32 %i.eg, 1
  br i1 %.not.i.us, label %bb.v, label %.lr.ph69.i.us.preheader

bb.v:                                             ; preds = %.lr.ph.i152.us
  %i.eh = getelementptr i8, ptr %i.ef, i64 4
  %.val59.i.us = load i32, ptr %i.eh, align 4
  %i.ei = and i32 %.val59.i.us, %i.dz
  %i.ej = icmp eq i32 %i.ei, %.05162.i.us
  br i1 %i.ej, label %.lr.ph69.i.us.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ek = add i32 %.05162.i.us, 1                 ; 2 uses
  %i.el = zext i32 %i.ek to i64                   ; 2 uses
  %i.em = icmp ugt i64 %i.de, %i.el
  br i1 %i.em, label %.lr.ph.i152.us, label %.lr.ph69.i.us.preheader, !llvm.loop !16

.lr.ph69.i.us.preheader:                          ; preds = %bb.w, %bb.v, %.lr.ph.i152.us
  %.04968.i.us.ph = phi i32 [ 0, %bb.w ], [ %.05162.i.us, %bb.v ], [ %.05162.i.us, %.lr.ph.i152.us ]
  br label %.lr.ph69.i.us

.lr.ph69.i.us:                                    ; preds = %.lr.ph69.i.us.preheader, %bb.aa
  %.04968.i.us = phi i32 [ %spec.store.select.i.us, %bb.aa ], [ %.04968.i.us.ph, %.lr.ph69.i.us.preheader ] ; 2 uses
  %.15267.i.us = phi i32 [ %i.ez, %bb.aa ], [ 0, %.lr.ph69.i.us.preheader ]
  %i.en = zext i32 %.04968.i.us to i64
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.en ; 3 uses
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = icmp eq i32 %i.ep, 1
  br i1 %i.eq, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %.lr.ph69.i.us
  %i.er = getelementptr i8, ptr %i.eo, i64 4
  %.val58.i.us = load i32, ptr %i.er, align 4
  %.val.i.us = load i32, ptr %i.bf, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %.val58.pn.i.us = phi i32 [ %.val58.i.us, %bb.x ], [ %i.ew, %bb.y ]
  %.0.i.us = and i32 %.val58.pn.i.us, %.val.i.us  ; 2 uses
  %i.es = zext i32 %.0.i.us to i64
  %i.et = getelementptr inbounds nuw [16 x i8], ptr %i.dq, i64 %i.es ; 2 uses
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = icmp eq i32 %i.eu, 0
  %i.ew = add i32 %.0.i.us, 1
  br i1 %i.ev, label %bb.z, label %bb.y

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, ptr noundef nonnull align 8 dereferenceable(16) %i.eo, i64 16, i1 false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph69.i.us
  %i.ex = add i32 %.04968.i.us, 1                 ; 2 uses
  %i.ey = zext i32 %i.ex to i64
  %.not55.i.us = icmp ugt i64 %i.de, %i.ey
  %spec.store.select.i.us = select i1 %.not55.i.us, i32 %i.ex, i32 0
  %i.ez = add i32 %.15267.i.us, 1                 ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = icmp ugt i64 %i.de, %i.fa
  br i1 %i.fb, label %.lr.ph69.i.us, label %rolename_grow.exit.us, !llvm.loop !17

rolename_grow.exit.us:                            ; preds = %bb.aa, %rolename_update_parameters.exit.i.us
  tail call void @pfree(ptr noundef %i.dh) #14
  br label %bb.ab

bb.ab:                                            ; preds = %rolename_grow.exit.us, %.loopexit.i.i.us
  %i.fc = load ptr, ptr %i.av, align 8            ; 5 uses
  %.val95.i.i.us = load i32, ptr %i.bf, align 4   ; 5 uses
  %.089.i22.i.us = and i32 %.val95.i.i.us, %i.dc  ; 2 uses
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
  %i.fk = icmp eq i32 %i.dc, %i.fj
  br i1 %i.fk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.i.us
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  %i.fn = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.fm, ptr noundef nonnull dereferenceable(1) %i.bw) #15
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
  br i1 %i.fw, label %bb.ag, label %bb.ah, !prof !21

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
  br i1 %i.gn, label %bb.ai, label %.preheader110.i.i.us, !prof !21

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
  br i1 %.not94.i.i.us, label %._crit_edge.i.i.us, label %.lr.ph.i.i147.us, !llvm.loop !18

._crit_edge.i.i.us:                               ; preds = %.lr.ph.i.i147.us, %.preheader.i.i.us
  %i.he = load i32, ptr %i.bn, align 8
  %i.hf = add i32 %i.he, 1
  store i32 %i.hf, ptr %i.bn, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store ptr %i.bw, ptr %i.hg, align 8
  store i32 %i.dc, ptr %i.gz, align 4
  br label %.thread103.sink.split.i.i.us

._crit_edge.i.us:                                 ; preds = %bb.ah, %bb.ab
  %.lcssa.i.us = phi ptr [ %i.fe, %bb.ab ], [ %i.ge, %bb.ah ] ; 3 uses
  %i.hh = load i32, ptr %i.bn, align 8
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.bn, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.lcssa.i.us, i64 8
  store ptr %i.bw, ptr %i.hj, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %.lcssa.i.us, i64 4
  store i32 %i.dc, ptr %i.hk, align 4
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
  %i.hq = tail call ptr @fmtId(ptr noundef %i.bw) #14
  %i.hr = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.hp, ptr noundef nonnull @.str.286, ptr noundef %i.hq) #14 ; 0 uses
  %i.hs = load i8, ptr %i.cy, align 1
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
  %i.hw = tail call ptr @PQgetvalue(ptr noundef %i.f, i32 noundef %1, i32 noundef %i.n) #14
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

bb.aq:                                            ; preds = %bb.ap
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.288) #14
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  tail call void @appendPQExpBufferStr(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.292) #14
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.id = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ie = load i8, ptr %i.id, align 1
  %.not144.us = icmp eq i8 %i.ie, 0
  br i1 %.not144.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.if = load ptr, ptr @OPF, align 8
  %i.ig = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.if, ptr noundef nonnull @.str.293, ptr noundef nonnull %i.id) #14 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %.0126.shrunk158164.us, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.ih = load ptr, ptr @OPF, align 8
  %i.ii = tail call ptr @fmtId(ptr noundef %.0127156165.us) #14
  %i.ij = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ih, ptr noundef nonnull @.str.294, ptr noundef %i.ii) #14 ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ik = load ptr, ptr @OPF, align 8
  %i.il = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ik, ptr noundef nonnull @.str.261) #14 ; 0 uses
  br label %rolename_lookup.exit.thread.us

rolename_lookup.exit.thread.us:                   ; preds = %bb.s, %bb.aw, %bb.q, %bb.j, %.preheader.us
  %.2.us = phi i32 [ %i.cz, %bb.aw ], [ %i.bv, %bb.j ], [ %.1131234.us, %.preheader.us ], [ %.1131234.us, %bb.q ], [ %.1131234.us, %bb.s ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond319.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond319.not, label %..loopexit_crit_edge.us, label %.preheader.us, !llvm.loop !19

..loopexit_crit_edge.us:                          ; preds = %rolename_lookup.exit.thread.us
  %i.im = icmp sgt i32 %.2.us, 0
  br i1 %i.im, label %.lr.ph239.split.us, label %._crit_edge240.loopexit, !llvm.loop !20

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
  %i.in = phi ptr [ %i.au, %rolename_create.exit ], [ %.pre, %._crit_edge240.loopexit ]
  tail call void @pfree(ptr noundef %i.in) #14
  tail call void @pfree(ptr noundef nonnull %i.af) #14
  tail call void @pg_free(ptr noundef %i.ae) #14
  %i.io = icmp slt i32 %.0133.lcssa, %i.t
  br i1 %i.io, label %.lr.ph269, label %.loopexit175

.loopexit175:                                     ; preds = %._crit_edge240, %bb.e, %.thread168
  tail call void @PQclear(ptr noundef %i.f) #14
  tail call void @destroyPQExpBuffer(ptr noundef nonnull %i.a) #14
  %i.ip = load ptr, ptr @OPF, align 8
  %i.iq = tail call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.ip, ptr noundef nonnull @.str.217) #14 ; 0 uses
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
end_hunk_0
