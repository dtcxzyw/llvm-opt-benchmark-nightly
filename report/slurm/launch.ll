Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/launch?download=true
inline.NumInlined: 25
inline.NumDeleted: 15
begin_hunk_0_@launch_create_job_step:bb.a
  store ptr %i.my, ptr %i.mv, align 8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.na = load ptr, ptr %i.mz, align 8
  %i.nb = load ptr, ptr %i.lf, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %i.t, i64 288
  %i.nd = load ptr, ptr %i.nc, align 8
  %i.ne = load ptr, ptr %i.ly, align 8
  %i.nf = load ptr, ptr %i.kx, align 8
  %i.ng = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.nh = load ptr, ptr %i.ng, align 8
  %i.ni = load i16, ptr %i.ih, align 2
  %i.nj = load i32, ptr %i.eh, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.nl = load i32, ptr %i.nk, align 8
  %i.nm = call i32 @gres_step_state_validate(ptr noundef %i.na, ptr noundef %i.nb, ptr noundef %i.nd, ptr noundef %i.ne, ptr noundef %i.nf, ptr noundef %i.nh, i16 noundef zeroext %i.ni, i32 noundef %i.nj, ptr noundef nonnull %i.a, i32 noundef %i.nl, i32 noundef -2, ptr noundef nonnull %i.ik, ptr noundef nonnull %i.li, ptr noundef null) #17 ; 2 uses
  %i.nn = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not334.i = icmp eq ptr %i.nn, null
  br i1 %.not334.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  call void @list_destroy(ptr noundef nonnull %i.nn) #17
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  store ptr null, ptr %i.a, align 8
  %.not335.i = icmp eq i32 %i.nm, 0
  br i1 %.not335.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.no = call ptr @slurm_strerror(i32 noundef %i.nm) #17
  %i.np = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.51, ptr noundef %i.no) #17 ; 0 uses
  br label %_create_job_step_create_request.exit.thread

bb.cz:                                            ; preds = %bb.cx
  %i.nq = getelementptr inbounds nuw i8, ptr %i.t, i64 156 ; 2 uses
  store i16 -2, ptr %i.nq, align 4
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 252 ; 2 uses
  %i.ns = load i32, ptr %i.nr, align 4            ; 3 uses
  %i.nt = trunc i32 %i.ns to i16
  %trunc.i = and i16 %i.nt, -3841
  switch i16 %trunc.i, label %bb.dc [
    i16 2, label %bb.da
    i16 3, label %bb.da
    i16 1, label %bb.da
    i16 17, label %bb.da
    i16 33, label %bb.da
    i16 18, label %bb.da
    i16 34, label %bb.da
    i16 49, label %bb.da
    i16 50, label %bb.da
    i16 4, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz, %bb.cz
  %i.nu = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  store i32 %i.ns, ptr %i.nu, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.nw = load i32, ptr %i.nv, align 4            ; 2 uses
  %.not336.i = icmp eq i32 %i.nw, -2
  br i1 %.not336.i, label %bb.dh, label %.sink.split394.i

bb.db:                                            ; preds = %bb.cz
  %i.nx = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  store i32 4, ptr %i.nx, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.nz = load i32, ptr %i.ny, align 8
  br label %.sink.split394.i

bb.dc:                                            ; preds = %bb.cz
  %i.oa = load i64, ptr %i.ip, align 8
  %.not337.i = icmp eq i64 %i.oa, 0
  br i1 %.not337.i, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.oc = load i64, ptr %i.ob, align 8
  %.not338.i = icmp eq i64 %i.oc, 0
  br i1 %.not338.i, label %bb.dg, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.od = load i8, ptr %i.cc, align 8, !range !8, !noundef !9
  %i.oe = trunc nuw i8 %i.od to i1
  br i1 %i.oe, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.of = load i32, ptr %i.ik, align 8
  %i.og = load i32, ptr %i.eh, align 8
  %.not339.i = icmp ugt i32 %i.of, %i.og
  %i.oh = select i1 %.not339.i, i32 2, i32 1
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc
  %.0.i = phi i32 [ %i.oh, %bb.df ], [ 8192, %bb.de ], [ 8192, %bb.dd ], [ 8192, %bb.dc ]
  %i.oi = and i32 %i.ns, 16711680
  %i.oj = or disjoint i32 %.0.i, %i.oi            ; 2 uses
  store i32 %i.oj, ptr %i.nr, align 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.t, i64 248
  store i32 %i.oj, ptr %i.ok, align 8
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 180
  %i.om = load i32, ptr %i.ol, align 4            ; 2 uses
  %.not340.i = icmp eq i32 %i.om, -2
  br i1 %.not340.i, label %bb.dh, label %.sink.split394.i

.sink.split394.i:                                 ; preds = %bb.dg, %bb.db, %bb.da
  %.sink396.i = phi i32 [ %i.nw, %bb.da ], [ %i.nz, %bb.db ], [ %i.om, %bb.dg ]
  %i.on = trunc i32 %.sink396.i to i16
  store i16 %i.on, ptr %i.nq, align 4
  br label %bb.dh

bb.dh:                                            ; preds = %.sink.split394.i, %bb.dg, %bb.da
  %i.oo = load i8, ptr %i.dm, align 8, !range !8, !noundef !9
  %i.op = trunc nuw i8 %i.oo to i1
  br i1 %i.op, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.oq = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 392, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.4, i32 noundef 1106, ptr noundef nonnull @__func__._create_job_step_create_request) #17 ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  store ptr %i.oq, ptr %i.or, align 8
  call void @slurm_step_launch_params_t_init(ptr noundef %i.oq) #17
  %i.os = load ptr, ptr %i.or, align 8
  call fastcc void @_build_launch_params(ptr noundef %i.os, ptr noundef nonnull %0, ptr noundef nonnull %2)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.ot = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.ou = load i8, ptr %i.ot, align 8, !range !8, !noundef !9
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ow = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  %i.ox = load i32, ptr %i.ow, align 8
  %i.oy = or i32 %i.ox, 8
  store i32 %i.oy, ptr %i.ow, align 8
  br label %bb.dl

_create_job_step_create_request.exit.thread:      ; preds = %bb.cy, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.gm

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.oz = load i32, ptr %i.jp, align 8
  %.not156 = icmp eq i32 %i.oz, -2
  %i.pa = call i32 @get_log_level() #17
  %i.pb = icmp sgt i32 %i.pa, 4                   ; 2 uses
  br i1 %.not156, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  br i1 %i.pb, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.pc = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.pd = load i32, ptr %i.pc, align 8
  %i.pe = load i32, ptr %i.jp, align 8
  %i.pf = load i32, ptr %i.mn, align 8
  %i.pg = load i32, ptr %i.eh, align 8
  %i.ph = load ptr, ptr %i.ic, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.9, i32 noundef %i.pd, i32 noundef %i.pe, i32 noundef %i.pf, i32 noundef %i.pg, ptr noundef %i.ph) #17
  br label %bb.dq

bb.do:                                            ; preds = %bb.dl
  br i1 %i.pb, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.pi = getelementptr inbounds nuw i8, ptr %i.t, i64 184
  %i.pj = load i32, ptr %i.pi, align 8
  %i.pk = load i32, ptr %i.mn, align 8
  %i.pl = load i32, ptr %i.eh, align 8
  %i.pm = load ptr, ptr %i.ic, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.10, i32 noundef %i.pj, i32 noundef %i.pk, i32 noundef %i.pl, ptr noundef %i.pm) #17
  br label %bb.dq

bb.dq:                                            ; preds = %bb.do, %bb.dp, %bb.dm, %bb.dn
  %i.pn = call i32 @get_log_level() #17
  %i.po = icmp sgt i32 %i.pn, 4
  br i1 %i.po, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.pp = load i32, ptr %i.li, align 8
  %i.pq = load i32, ptr %i.ik, align 8
  %i.pr = load ptr, ptr %i.hu, align 8
  %i.ps = load i16, ptr %i.iy, align 8
  %i.pt = zext i16 %i.ps to i32
  call void (i32, ptr, ...) @log_var(i32 noundef 5, ptr noundef nonnull @.str.11, i32 noundef %i.pp, i32 noundef %i.pq, ptr noundef %i.pr, i32 noundef %i.pt) #17
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i8 0, ptr %i.e, align 1
  %i.pu = call i32 @pthread_mutex_lock(ptr noundef nonnull @srun_destroy_sig_lock) #17 ; 2 uses
  %.not157226 = icmp eq i32 %i.pu, 0
  br i1 %.not157226, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.ds
  %.pre.a = tail call ptr @__errno_location() #19
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.ds
  %i.pv = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.t, i64 184 ; 11 uses
  br label %bb.dt

._crit_edge:                                      ; preds = %bb.fh, %.._crit_edge_crit_edge
  %.pre-phi = phi ptr [ %.pre.a, %.._crit_edge_crit_edge ], [ %i.rm, %bb.fh ]
  %.lcssa206 = phi i32 [ %i.pu, %.._crit_edge_crit_edge ], [ %i.tm, %bb.fh ]
  store i32 %.lcssa206, ptr %.pre-phi, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.launch_create_job_step) #18
  unreachable

bb.dt:                                            ; preds = %.lr.ph, %bb.fh
  %.0130227 = phi i32 [ 0, %.lr.ph ], [ %i.tl, %bb.fh ] ; 4 uses
  %i.qb = load i32, ptr @srun_destroy_sig, align 4
  %i.qc = call i32 @pthread_mutex_unlock(ptr noundef nonnull @srun_destroy_sig_lock) #17 ; 2 uses
  %.not158 = icmp eq i32 %i.qc, 0
  br i1 %.not158, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.qd = tail call ptr @__errno_location() #19
  store i32 %i.qc, ptr %i.qd, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.launch_create_job_step) #18
  unreachable

bb.dv:                                            ; preds = %bb.dt
  %.not159 = icmp eq i32 %i.qb, 0
  br i1 %.not159, label %bb.dw, label %.thread185

bb.dw:                                            ; preds = %bb.dv
  %i.qe = load i8, ptr %i.pv, align 8, !range !8, !noundef !9
  %i.qf = trunc nuw i8 %i.qe to i1
  br i1 %i.qf, label %bb.dx, label %bb.ea

bb.dx:                                            ; preds = %bb.dw
  %i.qg = load i32, ptr %i.ik, align 8
  %i.qh = icmp eq i32 %i.qg, -2
  br i1 %i.qh, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.qi = load i32, ptr %i.px, align 8
  store i32 %i.qi, ptr %i.ik, align 8
  %i.qj = load i32, ptr %i.py, align 8
  store i32 %i.qj, ptr %i.li, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.qk = load i32, ptr %i.pz, align 8
  %i.ql = call ptr @step_ctx_create_no_alloc(ptr noundef nonnull %i.t, i32 noundef %i.qk) #17
  br label %bb.ef

bb.ea:                                            ; preds = %bb.dw
  %i.qm = load i32, ptr %i.ds, align 8            ; 2 uses
  %.not160 = icmp eq i32 %i.qm, 0
  br i1 %.not160, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.qn = sitofp i32 %i.qm to double
  %i.qo = call i64 @time(ptr noundef null) #17
  %i.qp = load i64, ptr @srun_begin_time, align 8
  %i.qq = call double @difftime(i64 noundef %i.qo, i64 noundef %i.qp) #19
  %i.qr = fsub double %i.qn, %i.qq
  %i.qs = fcmp olt double %i.qr, 1.000000e+00
  br i1 %i.qs, label %bb.ee, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.qt = load i32, ptr %i.ds, align 8
  %i.qu = sitofp i32 %i.qt to double
  %i.qv = call i64 @time(ptr noundef null) #17
  %i.qw = load i64, ptr @srun_begin_time, align 8
  %i.qx = call double @difftime(i64 noundef %i.qv, i64 noundef %i.qw) #19
  %i.qy = fsub double %i.qu, %i.qx
  %i.qz = fmul double %i.qy, 1.000000e+03
  %i.ra = fptoui double %i.qz to i64
  %i.rb = trunc i64 %i.ra to i32
  br label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  %i.rc = load i16, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 1330), align 2
  %i.rd = call i16 @llvm.umax.i16(i16 %i.rc, i16 60)
  %i.re = call i16 @llvm.umin.i16(i16 %i.rd, i16 300)
  %i.rf = call i32 @getpid() #17
  %i.rg = srem i32 %i.rf, 10
  %i.rh = zext nneg i16 %i.re to i32
  %i.ri = add nsw i32 %i.rg, %i.rh
  %i.rj = mul nuw nsw i32 %i.ri, 1000
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ec, %bb.eb, %bb.ed
  %.0129 = phi i32 [ %i.rj, %bb.ed ], [ %i.rb, %bb.ec ], [ 1000, %bb.eb ]
  %i.rk = call ptr @step_ctx_create_timeout(ptr noundef %i.t, i32 noundef %.0129, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h) #17
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.dz
  %i.rl = phi ptr [ %i.rk, %bb.ee ], [ %i.ql, %bb.dz ] ; 3 uses
  store ptr %i.rl, ptr %i.pw, align 8
  %i.rm = tail call ptr @__errno_location() #19   ; 4 uses
  %i.rn = load i32, ptr %i.rm, align 4            ; 4 uses
  %.not161 = icmp eq ptr %i.rl, null
  br i1 %.not161, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.ro = load i8, ptr %i.dm, align 8, !range !8, !noundef !9
  %i.rp = trunc nuw i8 %i.ro to i1
  %i.rq = icmp eq i32 %i.rn, 2188
  %or.cond = select i1 %i.rp, i1 %i.rq, i1 false
  br i1 %or.cond, label %.thread185, label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %i.rr = getelementptr inbounds nuw i8, ptr %2, i64 364
  %i.rs = load i32, ptr %i.rr, align 4
  %i.rt = trunc i32 %i.rs to i16
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rl, i64 32
  store i16 %i.rt, ptr %i.ru, align 8
  br label %.thread185

bb.ei:                                            ; preds = %bb.eg
  %i.rv = load i32, ptr %i.ds, align 8
  switch i32 %i.rv, label %bb.ej [
    i32 0, label %bb.ek
    i32 1, label %bb.el
  ]

bb.ej:                                            ; preds = %bb.ei
  %i.rw = call i64 @time(ptr noundef null) #17
  %i.rx = load i64, ptr @srun_begin_time, align 8
  %i.ry = call double @difftime(i64 noundef %i.rw, i64 noundef %i.rx) #19
  %i.rz = load i32, ptr %i.ds, align 8
  %i.sa = sitofp i32 %i.rz to double
  %i.sb = fcmp ult double %i.ry, %i.sa
  br i1 %i.sb, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ei, %bb.ej
  switch i32 %i.rn, label %bb.el [
    i32 2061, label %bb.en
    i32 5004, label %.thread186
    i32 2059, label %.thread186
    i32 2037, label %.thread186
    i32 2016, label %.thread186
    i32 11, label %.thread186
  ]

bb.el:                                            ; preds = %bb.ek, %bb.ei, %bb.ej
  %i.sc = load i32, ptr %i.qa, align 8
  %i.sd = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.14, i32 noundef %i.sc) #17 ; 0 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 6 uses
  %i.sf = load ptr, ptr %i.se, align 8            ; 2 uses
  %.not.i179 = icmp eq ptr %i.sf, null
  br i1 %.not.i179, label %.thread191, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = load ptr, ptr %i.sg, align 8
  call void @env_array_free(ptr noundef %i.sh) #17
  %i.si = load ptr, ptr %i.se, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 72
  call void @slurm_xfree(ptr noundef nonnull %i.sj) #17
  %i.sk = load ptr, ptr %i.se, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 64
  call void @slurm_xfree(ptr noundef nonnull %i.sl) #17
  %i.sm = load ptr, ptr %i.se, align 8
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 80
  call void @slurm_xfree(ptr noundef nonnull %i.sn) #17
  call void @slurm_xfree(ptr noundef nonnull %i.se) #17
  store ptr null, ptr %i.se, align 8
  br label %.thread191

.thread191:                                       ; preds = %bb.em, %bb.el
  call void @slurm_free_job_step_create_request_msg(ptr noundef nonnull %i.t) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  br label %bb.gm

bb.en:                                            ; preds = %bb.ek
  %i.so = icmp eq i32 %.0130227, 0
  %i.sp = call i32 @get_log_level() #17
  %i.sq = icmp sgt i32 %i.sp, 3                   ; 2 uses
  br i1 %i.so, label %bb.eo, label %bb.ev

.thread186:                                       ; preds = %bb.ek, %bb.ek, %bb.ek, %bb.ek, %bb.ek
  %i.sr = icmp eq i32 %.0130227, 0
  %i.ss = load i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.st = trunc nuw i8 %i.ss to i1                ; 2 uses
  %i.su = call i32 @get_log_level() #17           ; 4 uses
  br i1 %i.sr, label %bb.eq, label %bb.ex

bb.eo:                                            ; preds = %bb.en
  br i1 %i.sq, label %bb.ep, label %bb.fc

bb.ep:                                            ; preds = %bb.eo
  %i.sv = load i32, ptr %i.qa, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.15, i32 noundef %i.sv) #17
  br label %bb.fc

bb.eq:                                            ; preds = %.thread186
  br i1 %i.st, label %bb.er, label %bb.et

bb.er:                                            ; preds = %bb.eq
  %i.sw = icmp sgt i32 %i.su, 2
  br i1 %i.sw, label %bb.es, label %bb.fc

bb.es:                                            ; preds = %bb.er
  %i.sx = load i32, ptr %i.qa, align 8
  %i.sy = call ptr @slurm_strerror(i32 noundef %i.rn) #17
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.16, i32 noundef %i.sx, ptr noundef %i.sy) #17
  br label %bb.fc

bb.et:                                            ; preds = %bb.eq
  %i.sz = icmp sgt i32 %i.su, 3
  br i1 %i.sz, label %bb.eu, label %bb.fc

bb.eu:                                            ; preds = %bb.et
  %i.ta = load i32, ptr %i.qa, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %i.ta) #17
  br label %bb.fc

bb.ev:                                            ; preds = %bb.en
  br i1 %i.sq, label %bb.ew, label %bb.fc

bb.ew:                                            ; preds = %bb.ev
  %i.tb = load i32, ptr %i.qa, align 8
  %i.tc = call ptr @slurm_strerror(i32 noundef 2061) #17
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.18, i32 noundef %i.tb, ptr noundef %i.tc) #17
  br label %bb.fc

bb.ex:                                            ; preds = %.thread186
  br i1 %i.st, label %bb.ey, label %bb.fa

bb.ey:                                            ; preds = %bb.ex
  %i.td = icmp sgt i32 %i.su, 2
  br i1 %i.td, label %bb.ez, label %bb.fc

bb.ez:                                            ; preds = %bb.ey
  %i.te = load i32, ptr %i.qa, align 8
  %i.tf = call ptr @slurm_strerror(i32 noundef %i.rn) #17
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.18, i32 noundef %i.te, ptr noundef %i.tf) #17
  br label %bb.fc

bb.fa:                                            ; preds = %bb.ex
  %i.tg = icmp sgt i32 %i.su, 3
  br i1 %i.tg, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.th = load i32, ptr %i.qa, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.17, i32 noundef %i.th) #17
  br label %bb.fc

bb.fc:                                            ; preds = %bb.es, %bb.er, %bb.eu, %bb.et, %bb.eo, %bb.ep, %bb.ez, %bb.ey, %bb.fb, %bb.fa, %bb.ev, %bb.ew
  %i.ti = call i32 @pthread_mutex_lock(ptr noundef nonnull @srun_destroy_sig_lock) #17 ; 2 uses
  %.not164 = icmp eq i32 %i.ti, 0
  br i1 %.not164, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  store i32 %i.ti, ptr %i.rm, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.launch_create_job_step) #18
  unreachable

bb.fe:                                            ; preds = %bb.fc
  %i.tj = load i32, ptr @srun_destroy_sig, align 4
  %i.tk = call i32 @pthread_mutex_unlock(ptr noundef nonnull @srun_destroy_sig_lock) #17 ; 2 uses
  %.not165 = icmp eq i32 %i.tk, 0
  br i1 %.not165, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 %i.tk, ptr %i.rm, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.launch_create_job_step) #18
  unreachable

bb.fg:                                            ; preds = %bb.fe
  %.not166 = icmp eq i32 %i.tj, 0
  br i1 %.not166, label %bb.fh, label %.thread185

bb.fh:                                            ; preds = %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.tl = add nuw nsw i32 %.0130227, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i8 0, ptr %i.e, align 1
  %i.tm = call i32 @pthread_mutex_lock(ptr noundef nonnull @srun_destroy_sig_lock) #17 ; 2 uses
  %.not157 = icmp eq i32 %i.tm, 0
  br i1 %.not157, label %bb.dt, label %._crit_edge, !llvm.loop !14

.thread185:                                       ; preds = %bb.eg, %bb.dv, %bb.fg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  %i.tn = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 6 uses
  %i.to = load ptr, ptr %i.tn, align 8            ; 2 uses
  %.not.i180 = icmp eq ptr %i.to, null
  br i1 %.not.i180, label %_free_built_launch_params.exit181, label %bb.fi

bb.fi:                                            ; preds = %.thread185
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 24
  %i.tq = load ptr, ptr %i.tp, align 8
  call void @env_array_free(ptr noundef %i.tq) #17
  %i.tr = load ptr, ptr %i.tn, align 8
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 72
  call void @slurm_xfree(ptr noundef nonnull %i.ts) #17
  %i.tt = load ptr, ptr %i.tn, align 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 64
  call void @slurm_xfree(ptr noundef nonnull %i.tu) #17
  %i.tv = load ptr, ptr %i.tn, align 8
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 80
  call void @slurm_xfree(ptr noundef nonnull %i.tw) #17
  call void @slurm_xfree(ptr noundef nonnull %i.tn) #17
  store ptr null, ptr %i.tn, align 8
  br label %_free_built_launch_params.exit181

_free_built_launch_params.exit181:                ; preds = %.thread185, %bb.fi
  %.not168 = icmp eq i32 %.0130227, 0
  br i1 %.not168, label %bb.fr, label %bb.fj

bb.fj:                                            ; preds = %_free_built_launch_params.exit181
  %i.tx = call i32 @pthread_mutex_lock(ptr noundef nonnull @srun_destroy_sig_lock) #17 ; 2 uses
  %.not169 = icmp eq i32 %i.tx, 0
  br i1 %.not169, label %bb.fl, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.ty = tail call ptr @__errno_location() #19
  store i32 %i.tx, ptr %i.ty, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.launch_create_job_step) #18
  unreachable

bb.fl:                                            ; preds = %bb.fj
  %i.tz = load i32, ptr @srun_destroy_sig, align 4
  %i.ua = call i32 @pthread_mutex_unlock(ptr noundef nonnull @srun_destroy_sig_lock) #17 ; 2 uses
  %.not170 = icmp eq i32 %i.ua, 0
  br i1 %.not170, label %bb.fn, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ub = tail call ptr @__errno_location() #19
  store i32 %i.ua, ptr %i.ub, align 4
  call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.launch_create_job_step) #18
  unreachable

bb.fn:                                            ; preds = %bb.fl
  %.not171 = icmp eq i32 %i.tz, 0
  br i1 %.not171, label %.thread193, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.uc = call i32 @get_log_level() #17
  %i.ud = icmp sgt i32 %i.uc, 2
  br i1 %i.ud, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  %i.ue = load i32, ptr %i.qa, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.19, i32 noundef %i.ue) #17
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fp, %bb.fo
  call void @slurm_free_job_step_create_request_msg(ptr noundef nonnull %i.t) #17
  br label %bb.gm

bb.fr:                                            ; preds = %_free_built_launch_params.exit181
  %i.uf = load i32, ptr %i.qa, align 8
  store i32 %i.uf, ptr %i.nk, align 8
  %i.ug = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.uh = load i32, ptr %i.ug, align 8
  store i32 %i.uh, ptr %i.pz, align 8
  %i.ui = load i8, ptr %i.dm, align 8, !range !8, !noundef !9
  %i.uj = trunc nuw i8 %i.ui to i1
  br i1 %i.uj, label %bb.fs, label %..thread197_crit_edge

..thread197_crit_edge:                            ; preds = %bb.fr
  %.pre = load ptr, ptr %i.pw, align 8
  br label %bb.gc

.thread193:                                       ; preds = %bb.fn
  %i.uk = load i32, ptr %i.qa, align 8
  store i32 %i.uk, ptr %i.nk, align 8
  %i.ul = getelementptr inbounds nuw i8, ptr %i.t, i64 192
  %i.um = load i32, ptr %i.ul, align 8
  store i32 %i.um, ptr %i.pz, align 8
  %i.un = load i8, ptr %i.dm, align 8, !range !8, !noundef !9
  %i.uo = trunc nuw i8 %i.un to i1
  br i1 %i.uo, label %bb.fs, label %bb.fx

bb.fs:                                            ; preds = %.thread193, %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.up = call ptr @log_build_step_id_str(ptr noundef nonnull %i.jm, ptr noundef nonnull %i.f, i32 noundef 64, i16 noundef zeroext 4) #17 ; 0 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.ur = load i32, ptr %i.uq, align 8
  %.not172 = icmp eq i32 %i.ur, 0
  br i1 %.not172, label %bb.ft, label %bb.fw

bb.ft:                                            ; preds = %bb.fs
  %i.us = getelementptr inbounds nuw i8, ptr %2, i64 832
  %i.ut = load i8, ptr %i.us, align 8, !range !8, !noundef !9
  %i.uu = trunc nuw i8 %i.ut to i1
  br i1 %i.uu, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %i.f) ; 0 uses
  br label %bb.fw

bb.fv:                                            ; preds = %bb.ft
  %i.uv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %i.f) ; 0 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fu, %bb.fv, %bb.fs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  br label %bb.fz

bb.fx:                                            ; preds = %.thread193
  %i.uw = call i32 @get_log_level() #17
  %i.ux = icmp sgt i32 %i.uw, 2
  br i1 %i.ux, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.jm) #17
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %bb.fx, %bb.fw
  %i.uy = load i8, ptr %i.dm, align 8
  %i.uz = trunc nuw i8 %i.uy to i1
  %i.va = load ptr, ptr %i.pw, align 8            ; 2 uses
  br i1 %i.uz, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %.not176 = icmp eq ptr %i.va, null
  br i1 %.not176, label %bb.gb, label %bb.gm

bb.gb:                                            ; preds = %bb.ga
  call void @slurm_free_job_step_create_request_msg(ptr noundef nonnull %i.t) #17
  br label %bb.gm

bb.gc:                                            ; preds = %..thread197_crit_edge, %bb.fz
  %3 = phi ptr [ %.pre, %..thread197_crit_edge ], [ %i.va, %bb.fz ] ; 2 uses
  %.not4.i = icmp eq ptr %3, null
  br i1 %.not4.i, label %launch_get_slurm_step_layout.exit.thread, label %launch_get_slurm_step_layout.exit

launch_get_slurm_step_layout.exit:                ; preds = %bb.gc
  %i.vb = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.vc = load ptr, ptr %i.vb, align 8
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 40
  %i.ve = load ptr, ptr %i.vd, align 8            ; 5 uses
  %.not173 = icmp eq ptr %i.ve, null
  br i1 %.not173, label %launch_get_slurm_step_layout.exit.thread, label %bb.gf

launch_get_slurm_step_layout.exit.thread:         ; preds = %bb.gc, %launch_get_slurm_step_layout.exit
  %i.vf = call i32 @get_log_level() #17
  %i.vg = icmp sgt i32 %i.vf, 2
  br i1 %i.vg, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %launch_get_slurm_step_layout.exit.thread
  %i.vh = load i32, ptr %i.qa, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.23, i32 noundef %i.vh) #17
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %launch_get_slurm_step_layout.exit.thread
  call void @slurm_free_job_step_create_request_msg(ptr noundef nonnull %i.t) #17
  br label %bb.gm

bb.gf:                                            ; preds = %launch_get_slurm_step_layout.exit
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vj = load ptr, ptr %i.vi, align 8
  call void @fwd_set_alias_addrs(ptr noundef %i.vj) #17
  %i.vk = load i8, ptr %i.mb, align 4, !range !8, !noundef !9
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.gg, label %bb.gi

bb.gg:                                            ; preds = %bb.gf
  %i.vm = load i32, ptr %i.py, align 8
  %i.vn = icmp eq i32 %i.vm, -2
  br i1 %i.vn, label %bb.gh, label %bb.gi

bb.gh:                                            ; preds = %bb.gg
  %i.vo = getelementptr inbounds nuw i8, ptr %i.ve, i64 64
  %i.vp = load i32, ptr %i.vo, align 8
  %i.vq = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.vr = load i32, ptr %i.vq, align 8
  %i.vs = mul i32 %i.vr, %i.vp
  store i32 %i.vs, ptr %i.py, align 8
  br label %bb.gi

bb.gi:                                            ; preds = %bb.gh, %bb.gg, %bb.gf
  %i.vt = load i32, ptr %i.px, align 8
  %i.vu = getelementptr inbounds nuw i8, ptr %i.ve, i64 64
  %i.vv = load i32, ptr %i.vu, align 8            ; 2 uses
  %.not174 = icmp eq i32 %i.vt, %i.vv
  br i1 %.not174, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  store i32 %i.vv, ptr %i.px, align 8
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %i.vw = getelementptr inbounds nuw i8, ptr %i.ve, i64 32
  %i.vx = load i32, ptr %i.vw, align 8
  store i32 %i.vx, ptr %i.dw, align 4
  call void @job_update_io_fnames(ptr noundef nonnull %0, ptr noundef nonnull %2) #17
  %i.vy = load ptr, ptr @totalview_jobid, align 8
  %.not175 = icmp eq ptr %i.vy, null
  br i1 %.not175, label %bb.gl, label %bb.gm

bb.gl:                                            ; preds = %bb.gk
  %i.vz = load i32, ptr %i.nk, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull @totalview_jobid, ptr noundef nonnull @.str.24, i32 noundef %i.vz) #17
  %i.wa = load i32, ptr %i.pz, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull @totalview_stepid, ptr noundef nonnull @.str.24, i32 noundef %i.wa) #17
  br label %bb.gm

bb.gm:                                            ; preds = %.thread191, %_create_job_step_create_request.exit.thread, %bb.gk, %bb.gl, %bb.ga, %bb.gb, %bb.ge, %bb.fq, %bb.g, %bb.e, %bb.b
  %.2 = phi i32 [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %.thread191 ], [ -1, %bb.fq ], [ -1, %_create_job_step_create_request.exit.thread ], [ 0, %bb.ga ], [ -1, %bb.ge ], [ -1, %bb.b ], [ 0, %bb.gb ], [ 0, %bb.gl ], [ 0, %bb.gk ]
  ret i32 %.2
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @fatal_abort(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #8

declare ptr @step_ctx_create_no_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare double @difftime(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getpid() local_unnamed_addr #8

declare ptr @step_ctx_create_timeout(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @slurm_free_job_step_create_request_msg(ptr noundef) local_unnamed_addr #1

declare ptr @slurm_strerror(i32 noundef) local_unnamed_addr #1

declare ptr @log_build_step_id_str(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

declare void @fwd_set_alias_addrs(ptr noundef) local_unnamed_addr #1

declare void @job_update_io_fnames(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @launch_step_launch(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.timeval, align 8            ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.slurm_step_launch_params_t, align 8 ; 10 uses
  %8 = alloca %struct.slurm_step_launch_callbacks_t, align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.c = load ptr, ptr @task_state_list, align 8
  %i.d = tail call ptr @task_state_find(ptr noundef %0, ptr noundef %i.c) #17 ; 2 uses
  %.not = icmp eq ptr %i.d, null                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8
  %i.i = tail call ptr @task_state_create(ptr noundef %0, i32 noundef %i.f, i32 noundef %i.h) #17
  %i.j = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @het_job_lock) #17 ; 2 uses
  %.not65 = icmp eq i32 %i.j, 0
  br i1 %.not65, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call ptr @__errno_location() #19
  store i32 %i.j, ptr %i.k, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.launch_step_launch) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @local_job_list, align 8
  %.not66 = icmp eq ptr %i.l, null
  br i1 %.not66, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call ptr @list_create(ptr noundef null) #17
  store ptr %i.m, ptr @local_job_list, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = load ptr, ptr @task_state_list, align 8
  %.not67 = icmp eq ptr %i.n, null
  br i1 %.not67, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = tail call ptr @list_create(ptr noundef nonnull @_task_state_del) #17
  store ptr %i.o, ptr @task_state_list, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.p = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @het_job_lock) #17 ; 2 uses
  %.not68 = icmp eq i32 %i.p, 0
  br i1 %.not68, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @__errno_location() #19
  store i32 %i.p, ptr %i.q, align 4
  tail call void (ptr, ...) @fatal_abort(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.launch_step_launch) #18
  unreachable

bb.j:                                             ; preds = %bb.h
  store ptr %2, ptr @local_global_rc, align 8
  %i.r = load ptr, ptr @local_job_list, align 8
  tail call void @list_append(ptr noundef %i.r, ptr noundef nonnull %0) #17
  %i.s = load ptr, ptr @task_state_list, align 8
  tail call void @list_append(ptr noundef %i.s, ptr noundef %i.i) #17
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  tail call void @task_state_alter(ptr noundef nonnull %i.d, i32 noundef %i.f) #17
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call fastcc void @_build_launch_params(ptr noundef nonnull %7, ptr noundef nonnull %0, ptr noundef nonnull %4)
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.t, ptr noundef nonnull align 4 dereferenceable(36) %1, i64 36, i1 false)
  %i.u = load i32, ptr @MPIR_being_debugged, align 4
  %.not69 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 200 ; 2 uses
  br i1 %.not69, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.v, align 8
  call void @pmi_server_max_threads(i32 noundef 1) #17
  br label %bb.o
end_hunk_0
