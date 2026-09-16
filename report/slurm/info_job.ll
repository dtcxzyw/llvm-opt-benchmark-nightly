Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/info_job?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
begin_hunk_0_@scontrol_print_job:bb.a
  %i.mn = zext i16 %i.ml to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.23, i32 noundef %i.mn) #14
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.mo = getelementptr inbounds nuw i8, ptr %.058120, i64 968
  %i.mp = load ptr, ptr %i.mo, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.139, ptr noundef %i.mp) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.mq = getelementptr inbounds nuw i8, ptr %.058120, i64 976
  %i.mr = load ptr, ptr %i.mq, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.140, ptr noundef %i.mr) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.ms = getelementptr inbounds nuw i8, ptr %.058120, i64 802
  %i.mt = load i16, ptr %i.ms, align 2            ; 2 uses
  %i.mu = icmp eq i16 %i.mt, -2
  br i1 %i.mu, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.141) #14
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.mv = zext i16 %i.mt to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.142, i32 noundef %i.mv) #14
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.mw = getelementptr inbounds nuw i8, ptr %.058120, i64 564
  %i.mx = load i16, ptr %i.mw, align 4            ; 2 uses
  %i.my = icmp eq i16 %i.mx, -2
  br i1 %i.my, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.143) #14
  br label %bb.ec

bb.eb:                                            ; preds = %bb.dz
  %i.mz = zext i16 %i.mx to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.144, i32 noundef %i.mz) #14
  br label %bb.ec

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.na = getelementptr inbounds nuw i8, ptr %.058120, i64 568
  %i.nb = load i16, ptr %i.na, align 8            ; 2 uses
  %i.nc = icmp eq i16 %i.nb, -2
  br i1 %i.nc, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.136) #14
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.nd = zext i16 %i.nb to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.137, i32 noundef %i.nd) #14
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.ne = getelementptr inbounds nuw i8, ptr %.058120, i64 566
  %i.nf = load i16, ptr %i.ne, align 2            ; 2 uses
  %switch.i.i = icmp ugt i16 %i.nf, -3
  br i1 %switch.i.i, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.136) #14
  br label %bb.ei

bb.eh:                                            ; preds = %bb.ef
  %i.ng = zext i16 %i.nf to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.137, i32 noundef %i.ng) #14
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %bb.eg
  %i.nh = getelementptr inbounds nuw i8, ptr %.058120, i64 560
  %i.ni = load i16, ptr %i.nh, align 8            ; 2 uses
  %switch631.i.i = icmp ugt i16 %i.ni, -3
  br i1 %switch631.i.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.145) #14
  br label %bb.el

bb.ek:                                            ; preds = %bb.ei
  %i.nj = zext i16 %i.ni to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.146, i32 noundef %i.nj) #14
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.nk = getelementptr inbounds nuw i8, ptr %.058120, i64 194
  %i.nl = load i16, ptr %i.nk, align 2            ; 3 uses
  %i.nm = zext i16 %i.nl to i32                   ; 2 uses
  %i.nn = icmp eq i16 %i.nl, -2
  br i1 %i.nn, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.147) #14
  br label %bb.eq

bb.en:                                            ; preds = %bb.el
  %.not558.i.i = icmp sgt i16 %i.nl, -1
  br i1 %.not558.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.no = and i32 %i.nm, 32767
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.148, i32 noundef %i.no) #14
  br label %bb.eq

bb.ep:                                            ; preds = %bb.en
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.149, i32 noundef %i.nm) #14
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.eo, %bb.em
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %.not559.i.i = icmp eq ptr %i.de, null
  br i1 %.not559.i.i, label %bb.fz, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.np = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not560.i.i = icmp eq ptr %i.np, null
  br i1 %.not560.i.i, label %bb.fz, label %bb.es

bb.es:                                            ; preds = %bb.er
  %i.nq = call i64 @bit_fls(ptr noundef nonnull %i.np) #14
  %i.nr = trunc i64 %i.nq to i32                  ; 2 uses
  %.not561.i.i = icmp eq i32 %i.nr, -1
  br i1 %.not561.i.i, label %bb.fz, label %bb.et

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  store ptr null, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #14
  store ptr null, ptr %i.n, align 8
  %i.ns = getelementptr inbounds nuw i8, ptr %.058120, i64 392
  %i.nt = load ptr, ptr %i.ns, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.150, ptr noundef %i.nt) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  %i.nu = getelementptr inbounds nuw i8, ptr %i.de, i64 120 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = call ptr @hostlist_create(ptr noundef %i.nv) #14 ; 4 uses
  %.not562.i.i = icmp eq ptr %i.nw, null
  br i1 %.not562.i.i, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.nx = load ptr, ptr %i.nu, align 8
  %i.ny = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.151, ptr noundef nonnull @__func__._sprint_job_info, ptr noundef %i.nx) #14 ; 0 uses
  br label %bb.fy

bb.ev:                                            ; preds = %bb.et
  %i.nz = call ptr @hostlist_create(ptr noundef null) #14 ; 3 uses
  %.not563.i.i = icmp eq ptr %i.nz, null
  br i1 %.not563.i.i, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.oa = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.152, ptr noundef nonnull @__func__._sprint_job_info) #14 ; 0 uses
  call void @hostlist_destroy(ptr noundef nonnull %i.nw) #14
  br label %bb.fy

bb.ex:                                            ; preds = %bb.ev
  %i.ob = getelementptr inbounds nuw i8, ptr %i.de, i64 92 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 4
  %.not708.i.i = icmp eq i32 %i.oc, 0
  br i1 %.not708.i.i, label %._crit_edge698.i.i, label %.lr.ph697.i.i

.lr.ph697.i.i:                                    ; preds = %bb.ex
  %i.od = getelementptr inbounds nuw i8, ptr %i.de, i64 136
  %i.oe = getelementptr inbounds nuw i8, ptr %i.de, i64 144
  %i.of = getelementptr inbounds nuw i8, ptr %i.de, i64 56
  %i.og = getelementptr inbounds nuw i8, ptr %.058120, i64 376 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.058120, i64 384 ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %i.de, i64 72 ; 2 uses
  br label %bb.ey

bb.ey:                                            ; preds = %bb.fw, %.lr.ph697.i.i
  %indvars.iv727.i.i = phi i64 [ 0, %.lr.ph697.i.i ], [ %indvars.iv.next728.i.i, %bb.fw ] ; 7 uses
  %.0423695.i.i = phi ptr [ %i.nz, %.lr.ph697.i.i ], [ %.2.i.i, %bb.fw ] ; 6 uses
  %.0424694.i.i = phi i64 [ -2, %.lr.ph697.i.i ], [ %.1425.i.i, %bb.fw ] ; 4 uses
  %.0427693.i.i = phi ptr [ null, %.lr.ph697.i.i ], [ %.1428.i.i, %bb.fw ] ; 4 uses
  %.0430692.i.i = phi i32 [ 0, %.lr.ph697.i.i ], [ %.1431.lcssa.i.i, %bb.fw ] ; 2 uses
  %.0435689.i.i = phi i32 [ 0, %.lr.ph697.i.i ], [ %i.op, %bb.fw ] ; 2 uses
  %.0437688.i.i = phi i32 [ 0, %.lr.ph697.i.i ], [ %spec.select628.i.i, %bb.fw ] ; 2 uses
  %.0449687.i.i = phi ptr [ @.str.41, %.lr.ph697.i.i ], [ %.2451.i.i, %bb.fw ] ; 4 uses
  %i.oj = load ptr, ptr %i.od, align 8
  %i.ok = zext nneg i32 %.0437688.i.i to i64
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %i.ok
  %i.om = load i32, ptr %i.ol, align 4
  %.not564.i.i = icmp uge i32 %.0435689.i.i, %i.om ; 2 uses
  %i.on = zext i1 %.not564.i.i to i32
  %spec.select628.i.i = add nuw nsw i32 %.0437688.i.i, %i.on ; 2 uses
  %i.oo = add nsw i32 %.0435689.i.i, 1
  %i.op = select i1 %.not564.i.i, i32 1, i32 %i.oo
  %i.oq = load ptr, ptr %i.oe, align 8
  %i.or = zext nneg i32 %spec.select628.i.i to i64 ; 2 uses
  %i.os = getelementptr inbounds nuw [2 x i8], ptr %i.oq, i64 %i.or
  %i.ot = load i16, ptr %i.os, align 2
  %i.ou = zext i16 %i.ot to i32
  %i.ov = load ptr, ptr %i.of, align 8
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.ov, i64 %i.or
  %i.ox = load i16, ptr %i.ow, align 2
  %i.oy = zext i16 %i.ox to i32
  %i.oz = mul nuw i32 %i.oy, %i.ou                ; 4 uses
  %i.pa = call ptr @hostlist_shift(ptr noundef nonnull %i.nw) #14 ; 4 uses
  %.not.i636.i.i = icmp eq ptr %i.pa, null
  br i1 %.not.i636.i.i, label %_threads_per_core.exit.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  %i.pb = load ptr, ptr @old_node_info_ptr, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.pb, null
  br i1 %.not.i.i.i.i, label %bb.fa, label %_get_node_info_for_jobs.exit.thread32.i.i.i

_get_node_info_for_jobs.exit.thread32.i.i.i:      ; preds = %bb.ez
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %.preheader.i.i.i

bb.fa:                                            ; preds = %bb.ez
  %i.pc = load i32, ptr @federation_flag, align 4
  %.not7.i.i.i.i = icmp eq i32 %i.pc, 0
  %spec.select.i.i.i.i = select i1 %.not7.i.i.i.i, i16 1, i16 65 ; 2 uses
  %i.pd = load i32, ptr @local_flag, align 4
  %.not8.i.i.i.i = icmp eq i32 %i.pd, 0
  %i.pe = or disjoint i16 %spec.select.i.i.i.i, 16
  %.1.i.i.i.i = select i1 %.not8.i.i.i.i, i16 %spec.select.i.i.i.i, i16 %i.pe
  %i.pf = call i32 @scontrol_load_nodes(ptr noundef nonnull %i.a, i16 noundef zeroext %.1.i.i.i.i) #14
  %.not9.i.i.i.i = icmp eq i32 %i.pf, 0
  br i1 %.not9.i.i.i.i, label %_get_node_info_for_jobs.exit.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  store i32 1, ptr @exit_code, align 4
  %i.pg = load i32, ptr @quiet_flag, align 4
  %.not10.i.i.i.i = icmp eq i32 %i.pg, 1
  br i1 %.not10.i.i.i.i, label %_get_node_info_for_jobs.exit.thread.i.i.i, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  call void @slurm_perror(ptr noundef nonnull @.str.72) #14
  br label %_get_node_info_for_jobs.exit.thread.i.i.i

_get_node_info_for_jobs.exit.thread.i.i.i:        ; preds = %bb.fc, %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  br label %_threads_per_core.exit.i.i

_get_node_info_for_jobs.exit.i.i.i:               ; preds = %bb.fa
  %i.ph = load ptr, ptr %i.a, align 8             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.not19.i.i.i = icmp eq ptr %i.ph, null
  br i1 %.not19.i.i.i, label %_threads_per_core.exit.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_get_node_info_for_jobs.exit.i.i.i, %_get_node_info_for_jobs.exit.thread32.i.i.i
  %.05.i35.i.i.i = phi ptr [ %i.pb, %_get_node_info_for_jobs.exit.thread32.i.i.i ], [ %i.ph, %_get_node_info_for_jobs.exit.i.i.i ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %.05.i35.i.i.i, i64 8 ; 2 uses
  %i.pj = load i32, ptr %i.pi, align 8            ; 2 uses
  %.not26.i.i.i = icmp eq i32 %i.pj, 0
  br i1 %.not26.i.i.i, label %_threads_per_core.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.pk = getelementptr inbounds nuw i8, ptr %.05.i35.i.i.i, i64 16 ; 2 uses
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fg, %.lr.ph.i.i.i
  %i.pl = phi i32 [ %i.pj, %.lr.ph.i.i.i ], [ %i.pw, %bb.fg ]
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.fg ] ; 3 uses
  %i.pm = load ptr, ptr %i.pk, align 8
  %i.pn = getelementptr inbounds nuw [424 x i8], ptr %i.pm, i64 %indvars.iv.i.i.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 216
  %i.pp = load ptr, ptr %i.po, align 8            ; 2 uses
  %.not20.i.i.i = icmp eq ptr %i.pp, null
  br i1 %.not20.i.i.i, label %bb.fg, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %i.pq = call i32 @xstrcmp(ptr noundef nonnull %i.pa, ptr noundef nonnull %i.pp) #14
  %.not21.i.i.i = icmp eq i32 %i.pq, 0
  br i1 %.not21.i.i.i, label %bb.ff, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.fe
  %.pre.i.i.i = load i32, ptr %i.pi, align 8
  br label %bb.fg

bb.ff:                                            ; preds = %bb.fe
  %i.pr = load ptr, ptr %i.pk, align 8
  %i.ps = getelementptr inbounds nuw [424 x i8], ptr %i.pr, i64 %indvars.iv.i.i.i
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 384
  %i.pu = load i16, ptr %i.pt, align 8
  %.fr.i.i = freeze i16 %i.pu
  %i.pv = zext i16 %.fr.i.i to i32
  br label %_threads_per_core.exit.i.i

bb.fg:                                            ; preds = %._crit_edge.i.i.i, %bb.fd
  %i.pw = phi i32 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.pl, %bb.fd ] ; 2 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.px = zext i32 %i.pw to i64
  %i.py = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.px
  br i1 %i.py, label %bb.fd, label %_threads_per_core.exit.i.i, !llvm.loop !15

_threads_per_core.exit.i.i:                       ; preds = %bb.fg, %bb.ff, %.preheader.i.i.i, %_get_node_info_for_jobs.exit.i.i.i, %_get_node_info_for_jobs.exit.thread.i.i.i, %bb.ey
  %.015.i.i.i = phi i32 [ 1, %_get_node_info_for_jobs.exit.i.i.i ], [ 1, %bb.ey ], [ %i.pv, %bb.ff ], [ 1, %_get_node_info_for_jobs.exit.thread.i.i.i ], [ 1, %.preheader.i.i.i ], [ 1, %bb.fg ] ; 4 uses
  %i.pz = mul i32 %.015.i.i.i, %i.oz
  %i.qa = zext i32 %i.pz to i64
  %i.qb = call ptr @bit_alloc(i64 noundef %i.qa) #14
  store ptr %i.qb, ptr %i.k, align 8
  %.not709.i.i = icmp eq i32 %i.oz, 0
  br i1 %.not709.i.i, label %._crit_edge684.i.i, label %.lr.ph683.i.i

.lr.ph683.i.i:                                    ; preds = %_threads_per_core.exit.i.i
  %.not710.i.i = icmp eq i32 %.015.i.i.i, 0
  %i.qc = sext i32 %.0430692.i.i to i64           ; 2 uses
  br i1 %.not710.i.i, label %.lr.ph683.split.i.i, label %.lr.ph683.split.us.preheader.i.i

.lr.ph683.split.us.preheader.i.i:                 ; preds = %.lr.ph683.i.i
  %wide.trip.count.i.i = zext nneg i32 %.015.i.i.i to i64
  br label %.lr.ph683.split.us.i.i

.lr.ph683.split.us.i.i:                           ; preds = %..loopexit_crit_edge.us.i.i, %.lr.ph683.split.us.preheader.i.i
  %indvars.iv719.i.i = phi i64 [ %i.qc, %.lr.ph683.split.us.preheader.i.i ], [ %indvars.iv.next720.i.i, %..loopexit_crit_edge.us.i.i ] ; 2 uses
  %.1455680.us.i.i = phi i32 [ 0, %.lr.ph683.split.us.preheader.i.i ], [ %i.qj, %..loopexit_crit_edge.us.i.i ] ; 2 uses
  %i.qd = load ptr, ptr %i.de, align 8
  %i.qe = call i32 @slurm_bit_test(ptr noundef %i.qd, i64 noundef %indvars.iv719.i.i) #14
  %.not625.us.i.i = icmp eq i32 %i.qe, 0
  br i1 %.not625.us.i.i, label %..loopexit_crit_edge.us.i.i, label %.preheader.us.i.i

bb.fh:                                            ; preds = %.preheader.us.i.i, %bb.fh
  %indvars.iv716.i.i = phi i64 [ 0, %.preheader.us.i.i ], [ %indvars.iv.next717.i.i, %bb.fh ] ; 2 uses
  %i.qf = load ptr, ptr %i.k, align 8
  %i.qg = trunc nuw nsw i64 %indvars.iv716.i.i to i32
  %i.qh = add i32 %i.qk, %i.qg
  %i.qi = zext i32 %i.qh to i64
  call void @bit_set(ptr noundef %i.qf, i64 noundef %i.qi) #14
  %indvars.iv.next717.i.i = add nuw nsw i64 %indvars.iv716.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next717.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %..loopexit_crit_edge.us.i.i, label %bb.fh, !llvm.loop !16

..loopexit_crit_edge.us.i.i:                      ; preds = %bb.fh, %.lr.ph683.split.us.i.i
  %indvars.iv.next720.i.i = add nsw i64 %indvars.iv719.i.i, 1 ; 2 uses
  %i.qj = add nuw i32 %.1455680.us.i.i, 1         ; 2 uses
  %exitcond722.not.i.i = icmp eq i32 %i.qj, %i.oz
  br i1 %exitcond722.not.i.i, label %._crit_edge684.loopexit711.i.i, label %.lr.ph683.split.us.i.i, !llvm.loop !17

.preheader.us.i.i:                                ; preds = %.lr.ph683.split.us.i.i
  %i.qk = mul i32 %.1455680.us.i.i, %.015.i.i.i
  br label %bb.fh

.lr.ph683.split.i.i:                              ; preds = %.lr.ph683.i.i, %.lr.ph683.split.i.i
  %indvars.iv723.i.i = phi i64 [ %indvars.iv.next724.i.i, %.lr.ph683.split.i.i ], [ %i.qc, %.lr.ph683.i.i ] ; 2 uses
  %.1455680.i.i = phi i32 [ %i.qn, %.lr.ph683.split.i.i ], [ 0, %.lr.ph683.i.i ]
  %i.ql = load ptr, ptr %i.de, align 8
  %i.qm = call i32 @slurm_bit_test(ptr noundef %i.ql, i64 noundef %indvars.iv723.i.i) #14 ; 0 uses
  %indvars.iv.next724.i.i = add nsw i64 %indvars.iv723.i.i, 1 ; 2 uses
  %i.qn = add nuw i32 %.1455680.i.i, 1            ; 2 uses
  %exitcond726.not.i.i = icmp eq i32 %i.qn, %i.oz
  br i1 %exitcond726.not.i.i, label %._crit_edge684.loopexit.i.i, label %.lr.ph683.split.i.i, !llvm.loop !17

._crit_edge684.loopexit.i.i:                      ; preds = %.lr.ph683.split.i.i
  %i.qo = trunc nsw i64 %indvars.iv.next724.i.i to i32
  br label %._crit_edge684.i.i

._crit_edge684.loopexit711.i.i:                   ; preds = %..loopexit_crit_edge.us.i.i
  %i.qp = trunc nsw i64 %indvars.iv.next720.i.i to i32
  br label %._crit_edge684.i.i

._crit_edge684.i.i:                               ; preds = %._crit_edge684.loopexit711.i.i, %._crit_edge684.loopexit.i.i, %_threads_per_core.exit.i.i
  %.1431.lcssa.i.i = phi i32 [ %.0430692.i.i, %_threads_per_core.exit.i.i ], [ %i.qo, %._crit_edge684.loopexit.i.i ], [ %i.qp, %._crit_edge684.loopexit711.i.i ] ; 2 uses
  %i.qq = load ptr, ptr %i.k, align 8
  %i.qr = call ptr @bit_fmt_full(ptr noundef %i.qq) #14 ; 2 uses
  store ptr %i.qr, ptr %i.m, align 8
  %i.qs = load ptr, ptr %i.k, align 8
  %.not565.i.i = icmp eq ptr %i.qs, null
  br i1 %.not565.i.i, label %bb.fj, label %bb.fi

bb.fi:                                            ; preds = %._crit_edge684.i.i
  call void @slurm_bit_free(ptr noundef nonnull %i.k) #14
  %.pre731.i.i = load ptr, ptr %i.m, align 8
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %._crit_edge684.i.i
  %i.qt = phi ptr [ %.pre731.i.i, %bb.fi ], [ %i.qr, %._crit_edge684.i.i ]
  store ptr null, ptr %i.k, align 8
  %i.qu = load ptr, ptr %i.n, align 8
  %i.qv = call i32 @xstrcmp(ptr noundef %i.qt, ptr noundef %i.qu) #14
  %.not566.i.i = icmp eq i32 %i.qv, 0
  br i1 %.not566.i.i, label %bb.fk, label %bb.fp

bb.fk:                                            ; preds = %bb.fj
  %i.qw = load i32, ptr %i.og, align 8
  %i.qx = zext i32 %i.qw to i64
  %i.qy = icmp samesign ult i64 %indvars.iv727.i.i, %i.qx
  br i1 %i.qy, label %bb.fl, label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  %i.qz = load ptr, ptr %i.oh, align 8
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qz, i64 %indvars.iv727.i.i
  %i.rb = load ptr, ptr %i.ra, align 8
  %i.rc = call i32 @xstrcmp(ptr noundef %i.rb, ptr noundef %.0449687.i.i) #14
  %.not567.i.i = icmp eq i32 %i.rc, 0
  br i1 %.not567.i.i, label %bb.fm, label %bb.fp

bb.fm:                                            ; preds = %bb.fl, %bb.fk
  %i.rd = load ptr, ptr %i.oi, align 8            ; 2 uses
  %.not568.i.i = icmp eq ptr %.0427693.i.i, %i.rd
  br i1 %.not568.i.i, label %bb.fn, label %bb.fp

bb.fn:                                            ; preds = %bb.fm
  %.not569.i.i = icmp eq ptr %.0427693.i.i, null
  br i1 %.not569.i.i, label %bb.fv, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  %i.re = getelementptr inbounds nuw [8 x i8], ptr %i.rd, i64 %indvars.iv727.i.i
  %i.rf = load i64, ptr %i.re, align 8
  %.not570.i.i = icmp eq i64 %.0424694.i.i, %i.rf
  br i1 %.not570.i.i, label %bb.fv, label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fm, %bb.fl, %bb.fj
  %i.rg = call i32 @hostlist_count(ptr noundef %.0423695.i.i) #14
  %.not571.i.i = icmp eq i32 %i.rg, 0
  br i1 %.not571.i.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.rh = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %.0423695.i.i) #14 ; 2 uses
  store ptr %i.rh, ptr %i.l, align 8
  %i.ri = load ptr, ptr %i.n, align 8
  %.not572.i.i = icmp eq ptr %.0427693.i.i, null
  %i.rj = select i1 %.not572.i.i, i64 0, i64 %.0424694.i.i
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.dh, ptr noundef %i.rh, ptr noundef %i.ri, i64 noundef %i.rj, ptr noundef %.0449687.i.i) #14
  call void @slurm_xfree(ptr noundef nonnull %i.l) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  call void @hostlist_destroy(ptr noundef %.0423695.i.i) #14
  %i.rk = call ptr @hostlist_create(ptr noundef null) #14
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.1.i.i = phi ptr [ %i.rk, %bb.fq ], [ %.0423695.i.i, %bb.fp ] ; 2 uses
  call void @slurm_xfree(ptr noundef nonnull %i.n) #14
  %i.rl = load ptr, ptr %i.m, align 8
  store ptr %i.rl, ptr %i.n, align 8
  store ptr null, ptr %i.m, align 8
  %i.rm = load i32, ptr %i.og, align 8
  %i.rn = zext i32 %i.rm to i64
  %i.ro = icmp samesign ult i64 %indvars.iv727.i.i, %i.rn
  br i1 %i.ro, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  %i.rp = load ptr, ptr %i.oh, align 8
  %i.rq = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %indvars.iv727.i.i
  %i.rr = load ptr, ptr %i.rq, align 8
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fr
  %.1450.i.i = phi ptr [ %i.rr, %bb.fs ], [ @.str.41, %bb.fr ] ; 2 uses
  %i.rs = load ptr, ptr %i.oi, align 8            ; 3 uses
  %.not573.i.i = icmp eq ptr %i.rs, null
  br i1 %.not573.i.i, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.rt = getelementptr inbounds nuw [8 x i8], ptr %i.rs, i64 %indvars.iv727.i.i
  %i.ru = load i64, ptr %i.rt, align 8
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft, %bb.fo, %bb.fn
  %.2451.i.i = phi ptr [ %.1450.i.i, %bb.fu ], [ %.0449687.i.i, %bb.fn ], [ %.0449687.i.i, %bb.fo ], [ %.1450.i.i, %bb.ft ] ; 2 uses
  %.1428.i.i = phi ptr [ %i.rs, %bb.fu ], [ null, %bb.fn ], [ %.0427693.i.i, %bb.fo ], [ null, %bb.ft ] ; 2 uses
  %.1425.i.i = phi i64 [ %i.ru, %bb.fu ], [ %.0424694.i.i, %bb.fn ], [ %.0424694.i.i, %bb.fo ], [ -2, %bb.ft ] ; 2 uses
  %.2.i.i = phi ptr [ %.1.i.i, %bb.fu ], [ %.0423695.i.i, %bb.fn ], [ %.0423695.i.i, %bb.fo ], [ %.1.i.i, %bb.ft ] ; 3 uses
  call void @slurm_xfree(ptr noundef nonnull %i.m) #14
  %i.rv = call i32 @hostlist_push_host(ptr noundef %.2.i.i, ptr noundef %i.pa) #14 ; 0 uses
  call void @free(ptr noundef %i.pa) #14
  %i.rw = icmp sgt i32 %.1431.lcssa.i.i, %i.nr
  br i1 %i.rw, label %._crit_edge698.loopexit.i.i, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %indvars.iv.next728.i.i = add nuw nsw i64 %indvars.iv727.i.i, 1 ; 2 uses
  %i.rx = load i32, ptr %i.ob, align 4
  %i.ry = zext i32 %i.rx to i64
  %i.rz = icmp samesign ult i64 %indvars.iv.next728.i.i, %i.ry
  br i1 %i.rz, label %bb.ey, label %._crit_edge698.loopexit.i.i, !llvm.loop !18

._crit_edge698.loopexit.i.i:                      ; preds = %bb.fw, %bb.fv
  %i.sa = icmp eq ptr %.1428.i.i, null
  %i.sb = select i1 %i.sa, i64 0, i64 %.1425.i.i
  br label %._crit_edge698.i.i

._crit_edge698.i.i:                               ; preds = %._crit_edge698.loopexit.i.i, %bb.ex
  %.3452.i.i = phi ptr [ @.str.41, %bb.ex ], [ %.2451.i.i, %._crit_edge698.loopexit.i.i ]
  %.2429.i.i = phi i64 [ 0, %bb.ex ], [ %i.sb, %._crit_edge698.loopexit.i.i ]
  %.3.i.i = phi ptr [ %i.nz, %bb.ex ], [ %.2.i.i, %._crit_edge698.loopexit.i.i ] ; 3 uses
  %i.sc = call i32 @hostlist_count(ptr noundef %.3.i.i) #14
  %.not574.i.i = icmp eq i32 %i.sc, 0
  br i1 %.not574.i.i, label %.critedge.i.i, label %bb.fx

bb.fx:                                            ; preds = %._crit_edge698.i.i
  %i.sd = call ptr @hostlist_ranged_string_xmalloc(ptr noundef %.3.i.i) #14 ; 2 uses
  store ptr %i.sd, ptr %i.l, align 8
  %i.se = load ptr, ptr %i.n, align 8
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.dh, ptr noundef %i.sd, ptr noundef %i.se, i64 noundef %.2429.i.i, ptr noundef %.3452.i.i) #14
  call void @slurm_xfree(ptr noundef nonnull %i.l) #14
  call void @_xstrcat(ptr noundef nonnull %i.i, ptr noundef nonnull %i.dg) #14
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.fx, %._crit_edge698.i.i
  call void @hostlist_destroy(ptr noundef nonnull %i.nw) #14
  call void @hostlist_destroy(ptr noundef %.3.i.i) #14
  call void @slurm_xfree(ptr noundef nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %bb.fz

bb.fy:                                            ; preds = %bb.ew, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  br label %_sprint_job_info.exit.thread.i

bb.fz:                                            ; preds = %.critedge.i.i, %bb.es, %bb.er, %bb.eq
  %i.sf = getelementptr inbounds nuw i8, ptr %.058120, i64 504 ; 2 uses
  %i.sg = load ptr, ptr %i.sf, align 8
  %.not576.i.i = icmp eq ptr %i.sg, null
  br i1 %.not576.i.i, label %bb.ga, label %bb.gc

bb.ga:                                            ; preds = %bb.fz
  %i.sh = getelementptr inbounds nuw i8, ptr %.058120, i64 608 ; 2 uses
  %i.si = load i64, ptr %i.sh, align 8            ; 2 uses
  %.not577.i.i = icmp sgt i64 %i.si, -1
  br i1 %.not577.i.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.sj = and i64 %i.si, 9223372036854775807
  store i64 %i.sj, ptr %i.sh, align 8
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.ga, %bb.fz
  %.0448.i.i = phi ptr [ @.str.154, %bb.fz ], [ @.str.155, %bb.gb ], [ @.str.156, %bb.ga ]
  %i.sk = getelementptr inbounds nuw i8, ptr %.058120, i64 616
  %i.sl = load i16, ptr %i.sk, align 8
  %i.sm = zext i16 %i.sl to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.157, i32 noundef %i.sm) #14
  %i.sn = getelementptr inbounds nuw i8, ptr %.058120, i64 608
  %i.so = load i64, ptr %i.sn, align 8
  %i.sp = uitofp i64 %i.so to float
  %i.sq = fpext float %i.sp to double
  call void @convert_num_unit(double noundef %i.sq, ptr noundef nonnull %i.e, i32 noundef 128, i32 noundef 2, i32 noundef -2, i32 noundef 1) #14
  %i.sr = getelementptr inbounds nuw i8, ptr %.058120, i64 620
  %i.ss = load i32, ptr %i.sr, align 4
  %i.st = uitofp i32 %i.ss to float
  %i.su = fpext float %i.st to double
  call void @convert_num_unit(double noundef %i.su, ptr noundef nonnull %i.f, i32 noundef 128, i32 noundef 2, i32 noundef -2, i32 noundef 1) #14
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.i, ptr noundef nonnull @.str.158, ptr noundef nonnull %.0448.i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #14
  %i.sv = getelementptr inbounds nuw i8, ptr %.058120, i64 512
  %i.sw = load i16, ptr %i.sv, align 8            ; 2 uses
  %.not578.i.i = icmp eq i16 %i.sw, 0
  br i1 %.not578.i.i, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
end_hunk_0
begin_hunk_1_@_list_pids_one_step:bb.a
bb.g:                                             ; preds = %bb.f
  %i.aa = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.21, i32 noundef 1868, ptr noundef nonnull @__func__._list_pids_one_step) #14 ; 6 uses
  %i.ab = load ptr, ptr %i.a, align 8
  %i.ac = getelementptr inbounds nuw [20 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %i.ae, ptr %i.aa, align 8
  %i.af = load i32, ptr %i.t, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  store i32 %i.af, ptr %i.ag, align 4
  %i.ah = load ptr, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw [20 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.ak, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %i.an, ptr %i.ao, align 4
  %i.ap = call ptr @xstrdup(ptr noundef nonnull %i.f) #14
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.ap, ptr %i.aq, align 8
  call void @list_append(ptr noundef %2, ptr noundef nonnull %i.aa) #14
  %.pre = load ptr, ptr %i.a, align 8
  %.pre45 = load i32, ptr %i.d, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ar = phi i32 [ %i.u, %bb.f ], [ %.pre45, %bb.g ] ; 2 uses
  %i.as = phi ptr [ %i.v, %bb.f ], [ %.pre, %bb.g ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = sext i32 %i.ar to i64
  %i.au = icmp slt i64 %indvars.iv.next, %i.at
  br i1 %i.au, label %bb.f, label %._crit_edge, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.h, %bb.e
  %i.av = load i16, ptr %i.e, align 2
  %i.aw = call i32 @stepd_list_pids(i32 noundef %i.g, i16 noundef zeroext %i.av, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.ax = load i32, ptr %i.c, align 4             ; 2 uses
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %._crit_edge39, label %.lr.ph38

.lr.ph38:                                         ; preds = %._crit_edge
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre47 = load ptr, ptr %i.b, align 8
  %.pre49 = load ptr, ptr %i.a, align 8
  %.pre51 = load i32, ptr %i.d, align 4
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph38, %_in_task_array.exit
  %i.az = phi i32 [ %i.ax, %.lr.ph38 ], [ %i.bt, %_in_task_array.exit ]
  %i.ba = phi i32 [ %.pre51, %.lr.ph38 ], [ %i.bu, %_in_task_array.exit ] ; 3 uses
  %i.bb = phi ptr [ %.pre49, %.lr.ph38 ], [ %i.bv, %_in_task_array.exit ] ; 2 uses
  %i.bc = phi ptr [ %.pre47, %.lr.ph38 ], [ %i.bw, %_in_task_array.exit ] ; 2 uses
  %indvars.iv41 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next42, %_in_task_array.exit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv41
  %i.be = load i32, ptr %i.bd, align 4
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext i32 %i.ba to i64
  br label %.lr.ph.i

bb.j:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !37

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [20 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = icmp eq i32 %i.be, %i.bh
  br i1 %i.bi, label %_in_task_array.exit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.bj = call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 24, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str.21, i32 noundef 1885, ptr noundef nonnull @__func__._list_pids_one_step) #14 ; 6 uses
  store i32 -2, ptr %i.bj, align 8
  %i.bk = load i32, ptr %i.ay, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i32 -2, ptr %i.bm, align 8
  %i.bn = load ptr, ptr %i.b, align 8
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv41
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  store i32 %i.bp, ptr %i.bq, align 4
  %i.br = call ptr @xstrdup(ptr noundef nonnull %i.f) #14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.br, ptr %i.bs, align 8
  call void @list_append(ptr noundef %2, ptr noundef nonnull %i.bj) #14
  %.pre46 = load ptr, ptr %i.b, align 8
  %.pre48 = load ptr, ptr %i.a, align 8
  %.pre50 = load i32, ptr %i.d, align 4
  %.pre52 = load i32, ptr %i.c, align 4
  br label %_in_task_array.exit

_in_task_array.exit:                              ; preds = %.lr.ph.i, %.loopexit
  %i.bt = phi i32 [ %.pre52, %.loopexit ], [ %i.az, %.lr.ph.i ] ; 2 uses
  %i.bu = phi i32 [ %.pre50, %.loopexit ], [ %i.ba, %.lr.ph.i ]
  %i.bv = phi ptr [ %.pre48, %.loopexit ], [ %i.bb, %.lr.ph.i ]
  %i.bw = phi ptr [ %.pre46, %.loopexit ], [ %i.bc, %.lr.ph.i ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.bx = zext i32 %i.bt to i64
  %i.by = icmp samesign ult i64 %indvars.iv.next42, %i.bx
  br i1 %i.by, label %bb.i, label %._crit_edge39, !llvm.loop !38

._crit_edge39:                                    ; preds = %_in_task_array.exit, %._crit_edge
  call void @slurm_xfree(ptr noundef nonnull %i.b) #14
  call void @slurm_xfree(ptr noundef nonnull %i.a) #14
  %i.bz = call i32 @close(i32 noundef %i.g) #14   ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.c, %bb.d, %._crit_edge39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #11

declare i32 @stepd_task_info(i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @stepd_list_pids(i32 noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @stepd_sluid(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @get_log_level() local_unnamed_addr #2

declare void @log_var(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @sleep(i32 noundef) local_unnamed_addr #2

declare i32 @slurm_job_node_ready(ptr noundef byval(%struct.slurm_step_id_t) align 8) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal noundef i32 @_print_node_gres(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @bit_fmt_full(ptr noundef nonnull %i.c) #14 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, null                 ; 2 uses
  %spec.select = select i1 %.not9, ptr @.str.41, ptr @.str.237
  %spec.select11 = select i1 %.not9, ptr @.str.41, ptr %i.h
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8
  %.not10 = icmp eq ptr %i.e, null                ; 2 uses
  %i.k = select i1 %.not10, ptr @.str.41, ptr @.str.238
  %i.l = select i1 %.not10, ptr @.str.41, ptr %i.e
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.236, ptr noundef %i.f, ptr noundef nonnull %spec.select, ptr noundef nonnull %spec.select11, i64 noundef %i.j, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l) ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 1
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { cold }
attributes #17 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !8, !9}
!11 = distinct !{!11, !8, !9}
!12 = distinct !{!12, !8, !9}
!13 = distinct !{!13, !8, !9}
!14 = distinct !{!14, !8, !9}
!15 = distinct !{!15, !8, !9}
!16 = distinct !{!16, !8, !9}
!17 = distinct !{!17, !8, !9}
!18 = distinct !{!18, !8, !9}
!19 = distinct !{!19, !8, !9}
!20 = distinct !{!20, !8, !9}
!21 = distinct !{!21, !8, !9}
!22 = distinct !{!22, !8, !9}
!23 = distinct !{!23, !8, !9}
!24 = distinct !{!24, !8, !9}
!25 = distinct !{!25, !8, !9}
!26 = distinct !{!26, !8, !9}
!27 = distinct !{!27, !8, !9}
!28 = distinct !{!28, !8, !9}
!29 = distinct !{!29, !8, !9}
!30 = distinct !{!30, !8, !9}
!31 = distinct !{!31, !8, !9}
!32 = distinct !{!32, !8, !9}
!33 = distinct !{null}
!34 = distinct !{!34, !8, !9}
!35 = distinct !{null}
!36 = distinct !{!36, !8, !9}
!37 = distinct !{!37, !8, !9}
!38 = distinct !{!38, !8, !9}
!39 = !{i8 0, i8 2}
!40 = !{}
end_hunk_1
