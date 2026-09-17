Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/extended_stats_funcs?download=true
inline.NumInlined: 60
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pg_restore_extended_stats:bb.a
  br label %bb.dl

bb.dl:                                            ; preds = %key_in_expr_argnames.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %.0612.i.i.i.i = phi i8 [ 1, %.lr.ph.i.i.i.i ], [ %.2.i.i.i.i, %key_in_expr_argnames.exit.thread.i.i.i.i ]
  %i.pr = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.a, ptr noundef nonnull %2, i1 noundef zeroext false) #6 ; 0 uses
  %i.ps = trunc nuw i8 %.0612.i.i.i.i to i1
  br i1 %i.ps, label %bb.dm, label %key_in_expr_argnames.exit.thread.i.i.i.i

bb.dm:                                            ; preds = %bb.dl
  %.val.i.i.i.i = load i32, ptr %i.me, align 8    ; 3 uses
  %.val7.i.i.i.i = load ptr, ptr %i.mf, align 8   ; 13 uses
  %i.pt = sext i32 %.val.i.i.i.i to i64           ; 13 uses
  switch i32 %.val.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i [
    i32 9, label %bb.dn
    i32 10, label %bb.dp
    i32 16, label %bb.dq
    i32 17, label %bb.dr
    i32 11, label %bb.dt
    i32 22, label %bb.dv
    i32 20, label %bb.dw
  ]

bb.dn:                                            ; preds = %bb.dm
  %i.pu = call i32 @strncmp(ptr noundef nonnull @.str.42, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.pv = icmp eq i32 %i.pu, 0
  br i1 %i.pv, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.pw = call i32 @strncmp(ptr noundef nonnull @.str.43, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.px = icmp eq i32 %i.pw, 0
  br i1 %i.px, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i

bb.dp:                                            ; preds = %bb.dm
  %i.py = call i32 @strncmp(ptr noundef nonnull @.str.11, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i

bb.dq:                                            ; preds = %bb.dm
  %i.qa = call i32 @strncmp(ptr noundef nonnull @.str.13, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qb = icmp eq i32 %i.qa, 0
  br i1 %i.qb, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %bb.ds

bb.dr:                                            ; preds = %bb.dm
  %i.qc = call i32 @strncmp(ptr noundef nonnull @.str.14, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qd = icmp eq i32 %i.qc, 0
  br i1 %i.qd, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %bb.du

bb.ds:                                            ; preds = %bb.dq
  %i.qe = call i32 @strncmp(ptr noundef nonnull @.str.44, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %.thread15.thread.thread28.i.i.i.i.i

bb.dt:                                            ; preds = %bb.dm
  %i.qg = call i32 @strncmp(ptr noundef nonnull @.str.45, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qh = icmp eq i32 %i.qg, 0
  br i1 %i.qh, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i

bb.du:                                            ; preds = %bb.dr
  %i.qi = call i32 @strncmp(ptr noundef nonnull @.str.46, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i

bb.dv:                                            ; preds = %bb.dm
  %i.qk = call i32 @strncmp(ptr noundef nonnull @.str.47, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.ql = icmp eq i32 %i.qk, 0
  br i1 %i.ql, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %bb.dx

bb.dw:                                            ; preds = %bb.dm
  %i.qm = call i32 @strncmp(ptr noundef nonnull @.str.48, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qn = icmp eq i32 %i.qm, 0
  br i1 %i.qn, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.qo = call i32 @strncmp(ptr noundef nonnull @.str.49, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qp = icmp eq i32 %i.qo, 0
  br i1 %i.qp, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %bb.dy

.thread15.thread.thread28.i.i.i.i.i:              ; preds = %bb.ds
  %i.qq = call i32 @strncmp(ptr noundef nonnull @.str.50, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qr = icmp eq i32 %i.qq, 0
  br i1 %i.qr, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.qs = call i32 @strncmp(ptr noundef nonnull @.str.51, ptr noundef readonly %.val7.i.i.i.i, i64 noundef %i.pt) #8
  %i.qt = icmp eq i32 %i.qs, 0
  br i1 %i.qt, label %key_in_expr_argnames.exit.thread.i.i.i.i, label %key_in_expr_argnames.exit.i.i.i.i

key_in_expr_argnames.exit.i.i.i.i:                ; preds = %bb.dy, %.thread15.thread.thread28.i.i.i.i.i, %bb.dw, %bb.du, %bb.dt, %bb.dp, %bb.do, %bb.dm
  %i.qu = add i32 %.val.i.i.i.i, 1
  %i.qv = sext i32 %i.qu to i64
  %i.qw = call ptr @palloc0(i64 noundef %i.qv) #6 ; 2 uses
  %i.qx = load ptr, ptr %i.mf, align 8
  %i.qy = load i32, ptr %i.me, align 8
  %i.qz = sext i32 %i.qy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qw, ptr align 1 %i.qx, i64 %i.qz, i1 false)
  %i.ra = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.ra, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %key_in_expr_argnames.exit.i.i.i.i
  %i.rb = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.rc = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.52, i32 noundef %i.pq) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 968, ptr noundef nonnull @__func__.check_all_expr_argnames_valid) #6
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %key_in_expr_argnames.exit.i.i.i.i
  call void @pfree(ptr noundef %i.qw) #6
  br label %key_in_expr_argnames.exit.thread.i.i.i.i

key_in_expr_argnames.exit.thread.i.i.i.i:         ; preds = %bb.ea, %bb.dy, %.thread15.thread.thread28.i.i.i.i.i, %bb.dx, %bb.dw, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.dq, %bb.dp, %bb.do, %bb.dn, %bb.dl
  %.2.i.i.i.i = phi i8 [ 0, %bb.ea ], [ 0, %bb.dl ], [ 1, %bb.dn ], [ 1, %bb.do ], [ 1, %bb.dy ], [ 1, %bb.dp ], [ 1, %bb.du ], [ 1, %bb.dq ], [ 1, %.thread15.thread.thread28.i.i.i.i.i ], [ 1, %bb.dr ], [ 1, %bb.dw ], [ 1, %bb.ds ], [ 1, %bb.dx ], [ 1, %bb.dt ], [ 1, %bb.dv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.rd = call i32 @JsonbIteratorNext(ptr noundef nonnull %i.a, ptr noundef nonnull %1, i1 noundef zeroext false) #6
  %i.re = icmp eq i32 %i.rd, 7
  br i1 %i.re, label %check_all_expr_argnames_valid.exit.i.i.i, label %bb.dl

check_all_expr_argnames_valid.exit.i.i.i:         ; preds = %key_in_expr_argnames.exit.thread.i.i.i.i
  %i.rf = trunc nuw i8 %.2.i.i.i.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %i.rf, label %bb.eb, label %import_pg_statistic.exit.thread.i.i

bb.eb:                                            ; preds = %check_all_expr_argnames_valid.exit.i.i.i, %check_all_expr_argnames_valid.exit.thread.i.i.i
  %.not143.i.i.i = icmp eq i8 %.sroa.9.0.i.i.i, %.sroa.11.0.i.i.i
  br i1 %.not143.i.i.i, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.rg = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.rg, label %bb.ed, label %import_pg_statistic.exit.thread.i.i

bb.ed:                                            ; preds = %bb.ec
  %i.rh = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.ri = sext i16 %i.nc to i32
  %i.rj = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.34, ptr noundef %i.nn, i32 noundef %i.ri) #6 ; 0 uses
  %i.rk = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1190, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.ee:                                            ; preds = %bb.eb
  %.not144.i.i.i = icmp eq i8 %.sroa.17.0.i.i.i, %.sroa.20.0.i.i.i
  br i1 %.not144.i.i.i, label %bb.eh, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.rl = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.rl, label %bb.eg, label %import_pg_statistic.exit.thread.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.rm = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.rn = sext i16 %i.nc to i32
  %i.ro = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.34, ptr noundef %i.nn, i32 noundef %i.rn) #6 ; 0 uses
  %i.rp = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1201, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.eh:                                            ; preds = %bb.ee
  %.not145.i.i.i = icmp eq i8 %.sroa.25.0.i.i.i, %.sroa.28.0.i.i.i
  %.not146.i.i.i = icmp eq i8 %.sroa.25.0.i.i.i, %.sroa.30.0.i.i.i
  %or.cond197.i.i.i = and i1 %.not145.i.i.i, %.not146.i.i.i
  br i1 %or.cond197.i.i.i, label %bb.ek, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.rq = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.rq, label %bb.ej, label %import_pg_statistic.exit.thread.i.i

bb.ej:                                            ; preds = %bb.ei
  %i.rr = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.rs = sext i16 %i.nc to i32
  %i.rt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.34, ptr noundef %i.nn, i32 noundef %i.rs) #6 ; 0 uses
  %i.ru = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1219, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.ek:                                            ; preds = %bb.eh
  %i.rv = call ptr @lookup_type_cache(i32 noundef %i.ni, i32 noundef 3) #6 ; 5 uses
  call void @statatt_init_empty_tuple(i32 noundef 0, i16 noundef signext 0, i1 noundef zeroext false, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #6
  %i.rw = icmp eq i32 %i.ni, 3614
  %spec.select.i.i.i = select i1 %i.rw, i32 100, i32 %i.nm ; 5 uses
  %i.rx = trunc nuw i8 %.sroa.17.0.i.i.i to i1    ; 2 uses
  %or.cond.i.i.i = or i1 %.sroa.22.0.i.i.i, %i.rx
  br i1 %or.cond.i.i.i, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rv, i64 13
  %i.rz = load i8, ptr %i.ry, align 1
  %i.sa = call zeroext i1 @statatt_get_elem_type(i32 noundef %i.ni, i8 noundef signext %i.rz, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #6
  br i1 %i.sa, label %bb.eo, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.sb = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.sb, label %bb.en, label %import_pg_statistic.exit.thread.i.i

bb.en:                                            ; preds = %bb.em
  %i.sc = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.sd = sext i16 %i.nc to i32
  %i.se = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.38, ptr noundef %i.nn, i32 noundef %i.sd) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1249, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.eo:                                            ; preds = %bb.el, %bb.ek
  br i1 %or.cond5.not.i.i.i, label %bb.es, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.sf = getelementptr inbounds nuw i8, ptr %i.rv, i64 13
  %i.sg = load i8, ptr %i.sf, align 1
  switch i8 %i.sg, label %bb.eq [
    i8 114, label %bb.es
    i8 109, label %bb.es
  ]

bb.eq:                                            ; preds = %bb.ep
  %i.sh = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.sh, label %bb.er, label %import_pg_statistic.exit.thread.i.i

bb.er:                                            ; preds = %bb.eq
  %i.si = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.sj = sext i16 %i.nc to i32
  %i.sk = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.39, ptr noundef %i.nn, i32 noundef %i.sj) #6 ; 0 uses
  %i.sl = call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1272, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.es:                                            ; preds = %bb.ep, %bb.ep, %bb.eo
  br i1 %.sroa.0.0.i.i.i, label %bb.et, label %bb.ev

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  %i.sm = call fastcc zeroext i1 @jbv_to_infunc_datum(ptr noundef %3, ptr noundef nonnull @float4in, i16 noundef signext %i.nc, ptr noundef nonnull @.str.42, ptr noundef %i.g)
  br i1 %i.sm, label %.thread165.i.i.i, label %bb.eu

.thread165.i.i.i:                                 ; preds = %bb.et
  %i.sn = load i64, ptr %i.g, align 8
  store i64 %i.sn, ptr %i.mg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.ev

bb.eu:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.ev:                                            ; preds = %.thread165.i.i.i, %bb.es
  br i1 %.sroa.5.0.i.i.i, label %bb.ew, label %bb.ey

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #6
  %i.so = call fastcc zeroext i1 @jbv_to_infunc_datum(ptr noundef %i.ls, ptr noundef nonnull @int4in, i16 noundef signext %i.nc, ptr noundef nonnull @.str.43, ptr noundef %i.h)
  br i1 %i.so, label %.thread167.i.i.i, label %bb.ex

.thread167.i.i.i:                                 ; preds = %bb.ew
  %i.sp = load i64, ptr %i.h, align 8
  store i64 %i.sp, ptr %i.mh, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %bb.ey

bb.ex:                                            ; preds = %bb.ew
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.ey:                                            ; preds = %.thread167.i.i.i, %bb.ev
  br i1 %.sroa.7.0.i.i.i, label %bb.ez, label %bb.fb

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #6
  %i.sq = call fastcc zeroext i1 @jbv_to_infunc_datum(ptr noundef %i.lt, ptr noundef nonnull @float4in, i16 noundef signext %i.nc, ptr noundef nonnull @.str.11, ptr noundef %i.i)
  br i1 %i.sq, label %.thread169.i.i.i, label %bb.fa

.thread169.i.i.i:                                 ; preds = %bb.ez
  %i.sr = load i64, ptr %i.i, align 8
  store i64 %i.sr, ptr %i.mi, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.fb:                                            ; preds = %.thread169.i.i.i, %bb.ey
  %i.ss = trunc nuw i8 %.sroa.9.0.i.i.i to i1
  br i1 %i.ss, label %bb.fc, label %bb.fh

bb.fc:                                            ; preds = %bb.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  %i.st = load i32, ptr %i.mj, align 8
  %i.su = add i32 %i.st, 1
  %i.sv = sext i32 %i.su to i64
  %i.sw = call ptr @palloc0(i64 noundef %i.sv) #6 ; 3 uses
  %i.sx = load ptr, ptr %i.mk, align 16
  %i.sy = load i32, ptr %i.mj, align 8
  %i.sz = sext i32 %i.sy to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sw, ptr align 1 %i.sx, i64 %i.sz, i1 false)
  %i.ta = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.sw, i32 noundef %i.ni, i32 noundef %i.nk, i16 noundef signext %i.nc, ptr noundef nonnull @.str.13, ptr noundef %i.j) ; 2 uses
  call void @pfree(ptr noundef %i.sw) #6
  %i.tb = load i32, ptr %i.ml, align 8
  %i.tc = add i32 %i.tb, 1
  %i.td = sext i32 %i.tc to i64
  %i.te = call ptr @palloc0(i64 noundef %i.td) #6 ; 3 uses
  %i.tf = load ptr, ptr %i.mm, align 16
  %i.tg = load i32, ptr %i.ml, align 8
  %i.th = sext i32 %i.tg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.te, ptr align 1 %i.tf, i64 %i.th, i1 false)
  %i.ti = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.te, i32 noundef 700, i32 noundef -1, i16 noundef signext %i.nc, ptr noundef nonnull @.str.14, ptr noundef %i.k) ; 2 uses
  call void @pfree(ptr noundef %i.te) #6
  %i.tj = load i8, ptr %i.j, align 1, !range !8, !noundef !9
  %i.tk = trunc nuw i8 %i.tj to i1
  %i.tl = load i8, ptr %i.k, align 1, !range !8
  %i.tm = trunc nuw i8 %i.tl to i1
  %or.cond10.i.i.i = select i1 %i.tk, i1 %i.tm, i1 false
  br i1 %or.cond10.i.i.i, label %bb.fd, label %.thread172.i.i.i

bb.fd:                                            ; preds = %bb.fc
  %i.tn = inttoptr i64 %i.ta to ptr
  %i.to = call ptr @pg_detoast_datum(ptr noundef %i.tn) #6
  %i.tp = inttoptr i64 %i.ti to ptr
  %i.tq = call ptr @pg_detoast_datum(ptr noundef %i.tp) #6
  %i.tr = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.ts = load i32, ptr %i.tr, align 4
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 16
  %i.tu = load i32, ptr %i.tt, align 4
  %.not149.i.i.i = icmp eq i32 %i.ts, %i.tu
  br i1 %.not149.i.i.i, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.tv = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.tv, label %bb.ff, label %.thread172.i.i.i

bb.ff:                                            ; preds = %bb.fe
  %i.tw = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.tx = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1361, ptr noundef nonnull @__func__.import_pg_statistic) #6
  br label %.thread172.i.i.i

.thread172.i.i.i:                                 ; preds = %bb.ff, %bb.fe, %bb.fc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.fg:                                            ; preds = %bb.fd
  %i.ty = getelementptr inbounds nuw i8, ptr %i.rv, i64 52
  %i.tz = load i32, ptr %i.ty, align 4
  call void @statatt_set_slot(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i16 noundef signext 1, i32 noundef %i.tz, i32 noundef %spec.select.i.i.i, i64 noundef %i.ti, i1 noundef zeroext false, i64 noundef %i.ta, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %bb.fb
  br i1 %.sroa.13.0.i.i.i, label %bb.fi, label %bb.fk

bb.fi:                                            ; preds = %bb.fh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  %i.ua = load i32, ptr %i.mn, align 8
  %i.ub = add i32 %i.ua, 1
  %i.uc = sext i32 %i.ub to i64
  %i.ud = call ptr @palloc0(i64 noundef %i.uc) #6 ; 3 uses
  %i.ue = load ptr, ptr %i.mo, align 16
  %i.uf = load i32, ptr %i.mn, align 8
  %i.ug = sext i32 %i.uf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ud, ptr align 1 %i.ue, i64 %i.ug, i1 false)
  %i.uh = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.ud, i32 noundef %i.ni, i32 noundef %i.nk, i16 noundef signext %i.nc, ptr noundef nonnull @.str.44, ptr noundef %i.l)
  call void @pfree(ptr noundef %i.ud) #6
  %i.ui = load i8, ptr %i.l, align 1, !range !8, !noundef !9
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %.thread174.i.i.i, label %bb.fj

.thread174.i.i.i:                                 ; preds = %bb.fi
  %i.uk = getelementptr inbounds nuw i8, ptr %i.rv, i64 56
  %i.ul = load i32, ptr %i.uk, align 8
  call void @statatt_set_slot(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i16 noundef signext 2, i32 noundef %i.ul, i32 noundef %spec.select.i.i.i, i64 noundef 0, i1 noundef zeroext true, i64 noundef %i.uh, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  br label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.fk:                                            ; preds = %.thread174.i.i.i, %bb.fh
  br i1 %.sroa.15.0.i.i.i, label %bb.fl, label %bb.fn

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  store i64 0, ptr %i.m, align 8
  %i.um = call fastcc zeroext i1 @jbv_to_infunc_datum(ptr noundef %i.lx, ptr noundef nonnull @float4in, i16 noundef signext %i.nc, ptr noundef nonnull @.str.45, ptr noundef %i.m)
  br i1 %i.um, label %.thread176.i.i.i, label %bb.fm

.thread176.i.i.i:                                 ; preds = %bb.fl
  %i.un = call ptr @construct_array_builtin(ptr noundef nonnull %i.m, i32 noundef 1, i32 noundef 700) #6
  %i.uo = ptrtoint ptr %i.un to i64
  %i.up = getelementptr inbounds nuw i8, ptr %i.rv, i64 56
  %i.uq = load i32, ptr %i.up, align 8
  call void @statatt_set_slot(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i16 noundef signext 3, i32 noundef %i.uq, i32 noundef %spec.select.i.i.i, i64 noundef %i.uo, i1 noundef zeroext false, i64 noundef 0, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %bb.fn

bb.fm:                                            ; preds = %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.fn:                                            ; preds = %.thread176.i.i.i, %bb.fk
  br i1 %i.rx, label %bb.fo, label %bb.fq

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  %i.ur = load i32, ptr %i.mp, align 8
  %i.us = add i32 %i.ur, 1
  %i.ut = sext i32 %i.us to i64
  %i.uu = call ptr @palloc0(i64 noundef %i.ut) #6 ; 3 uses
  %i.uv = load ptr, ptr %i.mq, align 16
  %i.uw = load i32, ptr %i.mp, align 8
  %i.ux = sext i32 %i.uw to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.uu, ptr align 1 %i.uv, i64 %i.ux, i1 false)
  %i.uy = load i32, ptr %i.e, align 4
  %i.uz = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.uu, i32 noundef %i.uy, i32 noundef %i.nk, i16 noundef signext %i.nc, ptr noundef nonnull @.str.46, ptr noundef %i.n)
  call void @pfree(ptr noundef %i.uu) #6
  %i.va = load i32, ptr %i.mr, align 8
  %i.vb = add i32 %i.va, 1
  %i.vc = sext i32 %i.vb to i64
  %i.vd = call ptr @palloc0(i64 noundef %i.vc) #6 ; 3 uses
  %i.ve = load ptr, ptr %i.ms, align 16
  %i.vf = load i32, ptr %i.mr, align 8
  %i.vg = sext i32 %i.vf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vd, ptr align 1 %i.ve, i64 %i.vg, i1 false)
  %i.vh = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.vd, i32 noundef 700, i32 noundef -1, i16 noundef signext %i.nc, ptr noundef nonnull @.str.47, ptr noundef %i.o)
  call void @pfree(ptr noundef %i.vd) #6
  %i.vi = load i8, ptr %i.n, align 1, !range !8, !noundef !9
  %i.vj = trunc nuw i8 %i.vi to i1
  %i.vk = load i8, ptr %i.o, align 1, !range !8
  %i.vl = trunc nuw i8 %i.vk to i1
  %or.cond12.i.i.i = select i1 %i.vj, i1 %i.vl, i1 false
  br i1 %or.cond12.i.i.i, label %.thread178.i.i.i, label %bb.fp

.thread178.i.i.i:                                 ; preds = %bb.fo
  %i.vm = load i32, ptr %i.f, align 4
  call void @statatt_set_slot(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i16 noundef signext 4, i32 noundef %i.vm, i32 noundef %spec.select.i.i.i, i64 noundef %i.vh, i1 noundef zeroext false, i64 noundef %i.uz, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.fq:                                            ; preds = %.thread178.i.i.i, %bb.fn
  br i1 %.sroa.22.0.i.i.i, label %bb.fr, label %bb.ft

bb.fr:                                            ; preds = %bb.fq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  %i.vn = load i32, ptr %i.mt, align 8
  %i.vo = add i32 %i.vn, 1
  %i.vp = sext i32 %i.vo to i64
  %i.vq = call ptr @palloc0(i64 noundef %i.vp) #6 ; 3 uses
  %i.vr = load ptr, ptr %i.mu, align 16
  %i.vs = load i32, ptr %i.mt, align 8
  %i.vt = sext i32 %i.vs to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vq, ptr align 1 %i.vr, i64 %i.vt, i1 false)
  %i.vu = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.vq, i32 noundef 700, i32 noundef -1, i16 noundef signext %i.nc, ptr noundef nonnull @.str.48, ptr noundef %i.p)
  call void @pfree(ptr noundef %i.vq) #6
  %i.vv = load i8, ptr %i.p, align 1, !range !8, !noundef !9
  %i.vw = trunc nuw i8 %i.vv to i1
  br i1 %i.vw, label %.thread180.i.i.i, label %bb.fs

.thread180.i.i.i:                                 ; preds = %bb.fr
  %i.vx = load i32, ptr %i.f, align 4
  call void @statatt_set_slot(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i16 noundef signext 5, i32 noundef %i.vx, i32 noundef %spec.select.i.i.i, i64 noundef %i.vu, i1 noundef zeroext false, i64 noundef 0, i1 noundef zeroext true) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.ft:                                            ; preds = %.thread180.i.i.i, %bb.fq
  %6 = trunc nuw i8 %.sroa.25.0.i.i.i to i1
  br i1 %6, label %bb.fu, label %bb.gb

bb.fu:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  %i.vy = call zeroext i1 @type_is_multirange(i32 noundef %i.ni) #6
  br i1 %i.vy, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.vz = call i32 @get_multirange_range(i32 noundef %i.ni) #6
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.0137.i.i.i = phi i32 [ %i.vz, %bb.fv ], [ %i.ni, %bb.fu ]
  %i.wa = load i32, ptr %i.mv, align 8
  %i.wb = add i32 %i.wa, 1
  %i.wc = sext i32 %i.wb to i64
  %i.wd = call ptr @palloc0(i64 noundef %i.wc) #6 ; 2 uses
  %i.we = load ptr, ptr %i.mw, align 16
  %i.wf = load i32, ptr %i.mv, align 8
  %i.wg = sext i32 %i.wf to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wd, ptr align 1 %i.we, i64 %i.wg, i1 false)
  %i.wh = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.wd, i32 noundef %.0137.i.i.i, i32 noundef %i.nk, i16 noundef signext %i.nc, ptr noundef nonnull @.str.51, ptr noundef %i.q)
  %i.wi = load i8, ptr %i.q, align 1, !range !8, !noundef !9
  %i.wj = trunc nuw i8 %i.wi to i1
  br i1 %i.wj, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.fy:                                            ; preds = %bb.fw
  call void @statatt_set_slot(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i16 noundef signext 7, i32 noundef 0, i32 noundef 0, i64 noundef 0, i1 noundef zeroext true, i64 noundef %i.wh, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #6
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #6
  %i.wk = call fastcc zeroext i1 @jbv_to_infunc_datum(ptr noundef %i.mc, ptr noundef nonnull @float4in, i16 noundef signext %i.nc, ptr noundef nonnull @.str.50, ptr noundef %i.r)
  br i1 %i.wk, label %bb.fz, label %.thread185.i.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.wl = call ptr @construct_array_builtin(ptr noundef nonnull %i.r, i32 noundef 1, i32 noundef 700) #6
  %i.wm = load i32, ptr %i.mx, align 8
  %i.wn = add i32 %i.wm, 1
  %i.wo = sext i32 %i.wn to i64
  %i.wp = call ptr @palloc0(i64 noundef %i.wo) #6 ; 2 uses
  %i.wq = load ptr, ptr %i.my, align 16
  %i.wr = load i32, ptr %i.mx, align 8
  %i.ws = sext i32 %i.wr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.wp, ptr align 1 %i.wq, i64 %i.ws, i1 false)
  %i.wt = call fastcc i64 @array_in_safe(ptr noundef nonnull %4, ptr noundef %i.wp, i32 noundef 701, i32 noundef -1, i16 noundef signext %i.nc, ptr noundef nonnull @.str.49, ptr noundef %i.s)
  %i.wu = load i8, ptr %i.s, align 1, !range !8, !noundef !9
  %i.wv = trunc nuw i8 %i.wu to i1
  br i1 %i.wv, label %bb.ga, label %.thread185.i.i.i

.thread185.i.i.i:                                 ; preds = %bb.fz, %bb.fy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  br label %import_pg_statistic.exit.thread.i.i

bb.ga:                                            ; preds = %bb.fz
  %i.ww = ptrtoint ptr %i.wl to i64
  call void @statatt_set_slot(ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i16 noundef signext 6, i32 noundef 672, i32 noundef 0, i64 noundef %i.ww, i1 noundef zeroext false, i64 noundef %i.wt, i1 noundef zeroext false) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #6
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.ft
  %i.wx = load ptr, ptr %i.mz, align 8
  %i.wy = call ptr @heap_form_tuple(ptr noundef %i.wx, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6 ; 2 uses
  %i.wz = load ptr, ptr %i.mz, align 8
  %i.xa = call i64 @heap_copy_tuple_as_datum(ptr noundef %i.wy, ptr noundef %i.wz) #6
  call void @heap_freetuple(ptr noundef %i.wy) #6
  br label %import_pg_statistic.exit.thread.i.i

import_pg_statistic.exit.thread.i.i:              ; preds = %bb.gb, %.thread185.i.i.i, %bb.fx, %bb.fs, %bb.fp, %bb.fm, %bb.fj, %.thread172.i.i.i, %bb.fa, %bb.ex, %bb.eu, %bb.er, %bb.eq, %bb.en, %bb.em, %bb.ej, %bb.ei, %bb.eg, %bb.ef, %bb.ed, %bb.ec, %check_all_expr_argnames_valid.exit.i.i.i, %bb.cl, %bb.ck, %bb.ch, %bb.cg
  %i.xb = phi i32 [ 1, %bb.gb ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %.thread185.i.i.i ], [ 0, %bb.fx ], [ 0, %bb.fs ], [ 0, %bb.fp ], [ 0, %bb.fm ], [ 0, %bb.fj ], [ 0, %.thread172.i.i.i ], [ 0, %bb.fa ], [ 0, %bb.ex ], [ 0, %bb.eu ], [ 0, %bb.er ], [ 0, %bb.eq ], [ 0, %bb.en ], [ 0, %bb.em ], [ 0, %bb.ej ], [ 0, %bb.ei ], [ 0, %bb.eg ], [ 0, %bb.ef ], [ 0, %bb.ed ], [ 0, %bb.ec ], [ 0, %check_all_expr_argnames_valid.exit.i.i.i ], [ 0, %bb.cl ], [ 0, %bb.ck ]
  %.0.i204.i = phi i1 [ false, %bb.gb ], [ true, %bb.ch ], [ true, %bb.cg ], [ true, %.thread185.i.i.i ], [ true, %bb.fx ], [ true, %bb.fs ], [ true, %bb.fp ], [ true, %bb.fm ], [ true, %bb.fj ], [ true, %.thread172.i.i.i ], [ true, %bb.fa ], [ true, %bb.ex ], [ true, %bb.eu ], [ true, %bb.er ], [ true, %bb.eq ], [ true, %bb.en ], [ true, %bb.em ], [ true, %bb.ej ], [ true, %bb.ei ], [ true, %bb.eg ], [ true, %bb.ef ], [ true, %bb.ed ], [ true, %bb.ec ], [ true, %check_all_expr_argnames_valid.exit.i.i.i ], [ true, %bb.cl ], [ true, %bb.ck ]
  %i.xc = phi i64 [ %i.xa, %bb.gb ], [ 0, %bb.ch ], [ 0, %bb.cg ], [ 0, %.thread185.i.i.i ], [ 0, %bb.fx ], [ 0, %bb.fs ], [ 0, %bb.fp ], [ 0, %bb.fm ], [ 0, %bb.fj ], [ 0, %.thread172.i.i.i ], [ 0, %bb.fa ], [ 0, %bb.ex ], [ 0, %bb.eu ], [ 0, %bb.er ], [ 0, %bb.eq ], [ 0, %bb.en ], [ 0, %bb.em ], [ 0, %bb.ej ], [ 0, %bb.ei ], [ 0, %bb.eg ], [ 0, %bb.ef ], [ 0, %bb.ed ], [ 0, %bb.ec ], [ 0, %check_all_expr_argnames_valid.exit.i.i.i ], [ 0, %bb.cl ], [ 0, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br label %bb.ge

bb.gc:                                            ; preds = %bb.ce
  %i.xd = call zeroext i1 @errstart(i32 noundef 19, ptr noundef null) #6
  br i1 %i.xd, label %bb.gd, label %bb.gg

bb.gd:                                            ; preds = %bb.gc
  %i.xe = call i32 @errcode(i32 noundef 50856066) #6 ; 0 uses
  %i.xf = sext i16 %i.nc to i32
  %i.xg = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.34, ptr noundef %i.lg, i32 noundef %i.xf) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.2, i32 noundef 1660, ptr noundef nonnull @__func__.import_expressions) #6
  br label %bb.gg

bb.ge:                                            ; preds = %import_pg_statistic.exit.thread.i.i, %bb.ce
  %.pn.i.i = phi i32 [ %i.xb, %import_pg_statistic.exit.thread.i.i ], [ 1, %bb.ce ]
  %.144.i.i = phi i64 [ %i.xc, %import_pg_statistic.exit.thread.i.i ], [ 0, %bb.ce ]
  %.1.i.i = phi i1 [ %.0.i204.i, %import_pg_statistic.exit.thread.i.i ], [ true, %bb.ce ]
  %.2.i.i = add i32 %.pn.i.i, %.04875.i.i         ; 2 uses
  %i.xh = load ptr, ptr @CurrentMemoryContext, align 8
  %i.xi = call ptr @accumArrayResult(ptr noundef %.05174.i.i, i64 noundef %.144.i.i, i1 noundef zeroext %.1.i.i, i32 noundef %i.lh, ptr noundef %i.xh) #6 ; 3 uses
  %indvars.iv.next.i203.i = add nuw nsw i64 %indvars.iv.i202.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i203.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.ce, !llvm.loop !7

._crit_edge.i.i:                                  ; preds = %bb.ge
  %i.xj = icmp eq i32 %.2.i.i, %.0178.i
  %.not59.i.i = icmp eq ptr %i.xi, null
  br i1 %.not59.i.i, label %import_expressions.exit.i, label %bb.gf

bb.gf:                                            ; preds = %._crit_edge.i.i
  %i.xk = load ptr, ptr @CurrentMemoryContext, align 8
  %i.xl = call i64 @makeArrayResult(ptr noundef nonnull %i.xi, ptr noundef %i.xk) #6
  br label %import_expressions.exit.i

bb.gg:                                            ; preds = %bb.gd, %bb.gc
  %.not60.i.i = icmp eq ptr %.05174.i.i, null
  br i1 %.not60.i.i, label %import_expressions.exit.thread.i, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @pfree(ptr noundef nonnull %.05174.i.i) #6
  br label %import_expressions.exit.thread.i

import_expressions.exit.thread.i:                 ; preds = %bb.gh, %bb.gg, %bb.cc, %bb.cb, %bb.bz, %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @table_close(ptr noundef %i.ky, i32 noundef 3) #6
  br label %bb.gj

import_expressions.exit.i:                        ; preds = %bb.gf, %._crit_edge.i.i
  %.055.i.i = phi i64 [ 0, %._crit_edge.i.i ], [ %i.xl, %bb.gf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @table_close(ptr noundef %i.ky, i32 noundef 3) #6
  br i1 %i.xj, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %import_expressions.exit.i, %import_expressions.exit.thread216.i
  %.055.i219.i = phi i64 [ 0, %import_expressions.exit.thread216.i ], [ %.055.i.i, %import_expressions.exit.i ]
  %i.xm = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i64 %.055.i219.i, ptr %i.xm, align 8
  %i.xn = getelementptr inbounds nuw i8, ptr %i.y, i64 5
  store i8 1, ptr %i.xn, align 1
  store i8 0, ptr %i.ib, align 1
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %import_expressions.exit.i, %import_expressions.exit.thread.i, %bb.bw
  %.11.i = phi i1 [ %.9.i, %bb.bw ], [ %.9.i, %bb.gi ], [ false, %import_expressions.exit.i ], [ false, %import_expressions.exit.thread.i ]
  %i.xo = call ptr @table_open(i32 noundef 3429, i32 noundef 3) #6 ; 4 uses
  %i.xp = call ptr @SearchSysCache2(i32 noundef 70, i64 noundef %i.hu, i64 noundef %i.hv) #6 ; 3 uses
  %.not.i205.i = icmp eq ptr %i.xp, null
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xo, i64 64
  %i.xr = load ptr, ptr %i.xq, align 8            ; 2 uses
  br i1 %.not.i205.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.xs = call ptr @heap_modify_tuple(ptr noundef nonnull %i.xp, ptr noundef %i.xr, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y) #6 ; 3 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 4
  call void @CatalogTupleUpdate(ptr noundef nonnull %i.xo, ptr noundef nonnull %i.xt, ptr noundef %i.xs) #6
  call void @ReleaseSysCache(ptr noundef nonnull %i.xp) #6
  br label %bb.gm

bb.gl:                                            ; preds = %bb.gj
  %i.xu = call ptr @heap_form_tuple(ptr noundef %i.xr, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x) #6 ; 2 uses
  call void @CatalogTupleInsert(ptr noundef nonnull %i.xo, ptr noundef %i.xu) #6
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gl, %bb.gk
  %.0.i206.i = phi ptr [ %i.xs, %bb.gk ], [ %i.xu, %bb.gl ]
  call void @heap_freetuple(ptr noundef %.0.i206.i) #6
  call void @CommandCounterIncrement() #6
  call void @table_close(ptr noundef nonnull %i.xo, i32 noundef 3) #6
  br label %.thread233.i

.thread233.i:                                     ; preds = %bb.gm, %bb.l, %bb.k
  %.1246.i = phi ptr [ %.0173.i, %bb.gm ], [ null, %bb.l ], [ null, %bb.k ]
  %.1175245.i = phi ptr [ %.0174.i, %bb.gm ], [ null, %bb.l ], [ null, %bb.k ]
  %.1177244.i = phi ptr [ %.0176.i, %bb.gm ], [ null, %bb.l ], [ null, %bb.k ]
  %.12243.i = phi i1 [ %.11.i, %bb.gm ], [ false, %bb.l ], [ false, %bb.k ]
  call void @heap_freetuple(ptr noundef nonnull %i.ck) #6
  br label %.thread.i

.thread.i:                                        ; preds = %.thread233.i, %bb.i, %bb.h
  %.1231.i = phi ptr [ null, %bb.h ], [ %.1246.i, %.thread233.i ], [ null, %bb.i ] ; 2 uses
  %.1175230.i = phi ptr [ null, %bb.h ], [ %.1175245.i, %.thread233.i ], [ null, %bb.i ] ; 2 uses
  %.1177229.i = phi ptr [ null, %bb.h ], [ %.1177244.i, %.thread233.i ], [ null, %bb.i ] ; 2 uses
  %.12228.i = phi i1 [ false, %bb.h ], [ %.12243.i, %.thread233.i ], [ false, %bb.i ] ; 2 uses
  %.not193.i = icmp eq ptr %i.cj, null
  br i1 %.not193.i, label %bb.go, label %bb.gn

bb.gn:                                            ; preds = %.thread.i
  call void @table_close(ptr noundef nonnull %i.cj, i32 noundef 3) #6
  br label %bb.go

bb.go:                                            ; preds = %bb.gn, %.thread.i
  %.not194.i = icmp eq ptr %.1177229.i, null
  br i1 %.not194.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @pfree(ptr noundef nonnull %.1177229.i) #6
end_hunk_0
