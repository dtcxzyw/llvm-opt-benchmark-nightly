Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_dp_mst_topology?download=true
inline.NumInlined: 535
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 16
begin_hunk_0_@drm_dp_mst_dump_topology:bb.a
bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  br label %drm_dp_mst_topology_get_port_validated.exit

drm_dp_mst_topology_get_port_validated.exit.thread: ; preds = %bb.g, %bb.f, %kref_get_unless_zero.exit.i.i
  call void @mutex_unlock(ptr noundef %i.c) #23
  br label %fetch_monitor_name.exit

drm_dp_mst_topology_get_port_validated.exit:      ; preds = %bb.j, %bb.k
  %i.bb = phi ptr [ %i.ba, %bb.k ], [ null, %bb.j ]
  %i.bc = load volatile i32, ptr %i.ak, align 8
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ak, i32 noundef %i.bc) #23
  call void @mutex_unlock(ptr noundef %i.c) #23
  %i.bd = getelementptr i8, ptr %i.ak, i64 1400   ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8            ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not13.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %drm_dp_mst_topology_get_port_validated.exit
  %i.bf = call ptr @drm_edid_dup(ptr noundef nonnull %i.be) #23
  br label %bb.n

bb.m:                                             ; preds = %drm_dp_mst_topology_get_port_validated.exit
  %i.bg = getelementptr i8, ptr %i.ak, i64 56
  %i.bh = call ptr @drm_edid_read_ddc(ptr noundef %i.ai, ptr noundef %i.bg) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0.i.i.i = phi ptr [ %i.bf, %bb.l ], [ %i.bh, %bb.m ] ; 4 uses
  %i.bi = load ptr, ptr %i.al, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 88
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.o, %bb.n
  %i.bn = phi ptr [ %i.bm, %bb.o ], [ null, %bb.n ]
  %i.bo = load volatile i32, ptr %i.ak, align 8
  %i.bp = add i32 %i.bo, -1
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bn, i32 noundef 1, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ak, i32 noundef %i.bp) #23
  %i.bq = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock xaddl $0, $1", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) %i.ak, i32 -1, ptr nonnull elementtype(i32) %i.ak) #21, !srcloc !26 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 1
  br i1 %i.br, label %bb.r, label %bb.p

bb.p:                                             ; preds = %__drm_to_dev.exit.i
  %i.bs = icmp slt i32 %i.bq, 1
  br i1 %i.bs, label %bb.q, label %fetch_monitor_name.exit, !prof !27

bb.q:                                             ; preds = %bb.p
  call void @refcount_warn_saturate(ptr noundef nonnull %i.ak, i32 noundef 3) #23
  br label %fetch_monitor_name.exit

bb.r:                                             ; preds = %__drm_to_dev.exit.i
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !srcloc !28
  %i.bt = getelementptr i8, ptr %i.ak, i64 9
  %i.bu = load i8, ptr %i.bt, align 1, !range !13, !noundef !14
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @drm_dp_mst_put_port_malloc(ptr noundef nonnull %i.ak) #24
  br label %fetch_monitor_name.exit

bb.t:                                             ; preds = %bb.r
  %i.bw = load ptr, ptr %i.al, align 8            ; 4 uses
  %i.bx = load ptr, ptr %i.bd, align 8
  call void @drm_edid_free(ptr noundef %i.bx) #23
  %i.by = getelementptr i8, ptr %i.bw, i64 1032   ; 2 uses
  call void @mutex_lock(ptr noundef %i.by) #23
  %i.bz = getelementptr i8, ptr %i.ak, i64 24     ; 3 uses
  %i.ca = getelementptr i8, ptr %i.bw, i64 1000   ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  store ptr %i.bz, ptr %i.cc, align 8
  store ptr %i.cb, ptr %i.bz, align 8
  %i.cd = getelementptr i8, ptr %i.ak, i64 32
  store ptr %i.ca, ptr %i.cd, align 8
  store volatile ptr %i.bz, ptr %i.ca, align 8
  call void @mutex_unlock(ptr noundef %i.by) #23
  %i.ce = getelementptr i8, ptr %i.bw, i64 1056
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr i8, ptr %i.bw, i64 1064
  %i.ch = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.cf, ptr noundef %i.cg) #23 ; 0 uses
  br label %fetch_monitor_name.exit

fetch_monitor_name.exit:                          ; preds = %bb.t, %bb.s, %bb.q, %bb.p, %drm_dp_mst_topology_get_port_validated.exit.thread
  %.010.i.i.i = phi ptr [ null, %drm_dp_mst_topology_get_port_validated.exit.thread ], [ %.0.i.i.i, %bb.t ], [ %.0.i.i.i, %bb.p ], [ %.0.i.i.i, %bb.q ], [ %.0.i.i.i, %bb.s ] ; 2 uses
  %i.ci = call ptr @drm_edid_raw(ptr noundef %.010.i.i.i) #23
  %i.cj = call ptr @drm_edid_duplicate(ptr noundef %i.ci) #23 ; 2 uses
  call void @drm_edid_free(ptr noundef %.010.i.i.i) #23
  call void @drm_edid_get_monitor_name(ptr noundef %i.cj, ptr noundef nonnull %i.a, i32 noundef 14) #23
  call void @kfree(ptr noundef %i.cj) #23
  %i.ck = load ptr, ptr %.0109, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = load i8, ptr %i.cl, align 8
  %i.cn = zext i8 %i.cm to i32
  %i.co = load i8, ptr %i.aa, align 1
  %i.cp = zext i8 %i.co to i32
  %i.cq = getelementptr i8, ptr %.pn108, i64 -24
  %i.cr = load i8, ptr %i.cq, align 8
  %i.cs = sext i8 %i.cr to i32                    ; 2 uses
  %i.ct = getelementptr i8, ptr %.pn108, i64 -20
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add nsw i32 %i.cs, -1
  %i.cw = add i32 %i.cv, %i.cu
  %i.cx = getelementptr i8, ptr %.pn108, i64 -16
  %i.cy = load i32, ptr %i.cx, align 8
  %i.cz = load i8, ptr %i.ad, align 4
  %i.da = and i8 %i.cz, 2
  %.not76 = icmp eq i8 %i.da, 0
  %i.db = select i1 %.not76, ptr @.str.50, ptr @.str.49
  %i.dc = getelementptr i8, ptr %.pn108, i64 -8
  %i.dd = load i32, ptr %i.dc, align 8
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr [8 x i8], ptr @drm_dp_mst_dump_topology.status, i64 %i.de
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i8, ptr %i.a, align 1
  %.not77 = icmp eq i8 %i.dh, 0
  %i.di = select i1 %.not77, ptr @.str.51, ptr %i.a
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %.069110, i32 noundef %i.cn, i32 noundef %i.cp, i32 noundef %i.cs, i32 noundef %i.cw, i32 noundef %i.cy, ptr noundef nonnull %i.db, ptr noundef %i.dg, ptr noundef nonnull %i.di) #23
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %bb.e, %fetch_monitor_name.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.pn = load ptr, ptr %.pn108, align 8           ; 2 uses
  %.not104 = icmp eq ptr %.pn, %i.w
  br i1 %.not104, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !113

._crit_edge.loopexit:                             ; preds = %bb.u
  %.pre = load i32, ptr %i.m, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph112.split
  %i.dj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.z, %.lr.ph112.split ] ; 2 uses
  %i.dk = add nuw nsw i32 %.069110, 1             ; 2 uses
  %i.dl = icmp slt i32 %i.dk, %i.dj
  br i1 %i.dl, label %.lr.ph112.split, label %._crit_edge113, !llvm.loop !114

._crit_edge113:                                   ; preds = %._crit_edge, %.lr.ph112, %bb.d
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.52) #23
  call void @mutex_lock(ptr noundef %i.c) #23
  %i.dm = load ptr, ptr %i.d, align 8
  %.not72 = icmp eq ptr %i.dm, null
  br i1 %.not72, label %bb.ai, label %bb.v

bb.v:                                             ; preds = %._crit_edge113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false), !annotation !33
  %i.dn = getelementptr i8, ptr %1, i64 112       ; 5 uses
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call i32 @drm_dp_read_dpcd_caps(ptr noundef %i.do, ptr noundef nonnull %i.b) #23
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.53) #23
  br label %dump_dp_payload_table.exit.thread

bb.x:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.54, i32 noundef 15, ptr noundef nonnull %i.b) #23
  %i.dr = load ptr, ptr %i.dn, align 8            ; 3 uses
  %i.ds = call i64 @drm_dp_dpcd_read(ptr noundef %i.dr, i32 noundef 32, ptr noundef nonnull %i.b, i64 noundef 2) #23 ; 2 uses
  %i.dt = and i64 %i.ds, 2147483648
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.y, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.x
  %i.dv = call i64 @drm_dp_dpcd_read(ptr noundef %i.dr, i32 noundef 32, ptr noundef nonnull %i.b, i64 noundef 1) #23
  %i.dw = and i64 %i.dv, 2147483648
  %.not101 = icmp eq i64 %i.dw, 0
  br i1 %.not101, label %.lr.ph.i.1, label %select.unfold

bb.y:                                             ; preds = %bb.x
  %i.dx = and i64 %i.ds, 2147483646
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %select.unfold, label %drm_dp_dpcd_read_data.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.dz = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.ea = call i64 @drm_dp_dpcd_read(ptr noundef %i.dr, i32 noundef 33, ptr noundef nonnull %i.dz, i64 noundef 1) #23
  %i.eb = and i64 %i.ea, 2147483648
  %.not101.1 = icmp eq i64 %i.eb, 0
  br i1 %.not101.1, label %drm_dp_dpcd_read_data.exit, label %select.unfold

select.unfold:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.1, %bb.y
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.55) #23
  br label %dump_dp_payload_table.exit.thread

drm_dp_dpcd_read_data.exit:                       ; preds = %.lr.ph.i.1, %bb.y
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.56, i32 noundef 2, ptr noundef nonnull %i.b) #23
  %i.ec = load ptr, ptr %i.dn, align 8            ; 2 uses
  %i.ed = call i64 @drm_dp_dpcd_read(ptr noundef %i.ec, i32 noundef 273, ptr noundef nonnull %i.b, i64 noundef 1) #23 ; 2 uses
  %i.ee = and i64 %i.ed, 2147483648
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %.lr.ph.i79.preheader, label %bb.z

.lr.ph.i79.preheader:                             ; preds = %drm_dp_dpcd_read_data.exit
  %i.eg = and i64 %i.ed, 2147483647
  %.not102.a = icmp eq i64 %i.eg, 0
  br i1 %.not102.a, label %select.unfold97, label %drm_dp_dpcd_read_data.exit84

bb.z:                                             ; preds = %drm_dp_dpcd_read_data.exit
  %2 = call i64 @drm_dp_dpcd_read(ptr noundef %i.ec, i32 noundef 273, ptr noundef nonnull %i.b, i64 noundef 1) #23
  %i.eh = and i64 %2, 2147483648
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %drm_dp_dpcd_read_data.exit84, label %select.unfold97

select.unfold97:                                  ; preds = %bb.z, %.lr.ph.i79.preheader
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.57) #23
  br label %dump_dp_payload_table.exit.thread

drm_dp_dpcd_read_data.exit84:                     ; preds = %bb.z, %.lr.ph.i79.preheader
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.58, i32 noundef 1, ptr noundef nonnull %i.b) #23
  %i.ej = load ptr, ptr %i.dn, align 8            ; 13 uses
  %i.ek = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1280, ptr noundef nonnull %i.b, i64 noundef 12) #23 ; 2 uses
  %i.el = and i64 %i.ek, 2147483648
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.aa, label %.lr.ph.i86.preheader

.lr.ph.i86.preheader:                             ; preds = %drm_dp_dpcd_read_data.exit84
  %i.en = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1280, ptr noundef nonnull %i.b, i64 noundef 1) #23
  %i.eo = and i64 %i.en, 2147483648
  %.not103 = icmp eq i64 %i.eo, 0
  br i1 %.not103, label %.lr.ph.i86.1, label %select.unfold99

bb.aa:                                            ; preds = %drm_dp_dpcd_read_data.exit84
  %i.ep = and i64 %i.ek, 2147483644
  %i.eq = icmp samesign ult i64 %i.ep, 12
  br i1 %i.eq, label %select.unfold99, label %drm_dp_dpcd_read_data.exit91

.lr.ph.i86.1:                                     ; preds = %.lr.ph.i86.preheader
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.es = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1281, ptr noundef nonnull %i.er, i64 noundef 1) #23
  %i.et = and i64 %i.es, 2147483648
  %.not103.1 = icmp eq i64 %i.et, 0
  br i1 %.not103.1, label %.lr.ph.i86.2, label %select.unfold99

.lr.ph.i86.2:                                     ; preds = %.lr.ph.i86.1
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %i.ev = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1282, ptr noundef nonnull %i.eu, i64 noundef 1) #23
  %i.ew = and i64 %i.ev, 2147483648
  %.not103.2 = icmp eq i64 %i.ew, 0
  br i1 %.not103.2, label %.lr.ph.i86.3, label %select.unfold99

.lr.ph.i86.3:                                     ; preds = %.lr.ph.i86.2
  %i.ex = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.ey = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1283, ptr noundef nonnull %i.ex, i64 noundef 1) #23
  %i.ez = and i64 %i.ey, 2147483648
  %.not103.3 = icmp eq i64 %i.ez, 0
  br i1 %.not103.3, label %.lr.ph.i86.4, label %select.unfold99

.lr.ph.i86.4:                                     ; preds = %.lr.ph.i86.3
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.fb = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1284, ptr noundef nonnull %i.fa, i64 noundef 1) #23
  %i.fc = and i64 %i.fb, 2147483648
  %.not103.4 = icmp eq i64 %i.fc, 0
  br i1 %.not103.4, label %.lr.ph.i86.5, label %select.unfold99

.lr.ph.i86.5:                                     ; preds = %.lr.ph.i86.4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.fe = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1285, ptr noundef nonnull %i.fd, i64 noundef 1) #23
  %i.ff = and i64 %i.fe, 2147483648
  %.not103.5 = icmp eq i64 %i.ff, 0
  br i1 %.not103.5, label %.lr.ph.i86.6, label %select.unfold99

.lr.ph.i86.6:                                     ; preds = %.lr.ph.i86.5
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.fh = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1286, ptr noundef nonnull %i.fg, i64 noundef 1) #23
  %i.fi = and i64 %i.fh, 2147483648
  %.not103.6 = icmp eq i64 %i.fi, 0
  br i1 %.not103.6, label %.lr.ph.i86.7, label %select.unfold99

.lr.ph.i86.7:                                     ; preds = %.lr.ph.i86.6
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.fk = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1287, ptr noundef nonnull %i.fj, i64 noundef 1) #23
  %i.fl = and i64 %i.fk, 2147483648
  %.not103.7 = icmp eq i64 %i.fl, 0
  br i1 %.not103.7, label %.lr.ph.i86.8, label %select.unfold99

.lr.ph.i86.8:                                     ; preds = %.lr.ph.i86.7
  %i.fm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.fn = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1288, ptr noundef nonnull %i.fm, i64 noundef 1) #23
  %i.fo = and i64 %i.fn, 2147483648
  %.not103.8 = icmp eq i64 %i.fo, 0
  br i1 %.not103.8, label %.lr.ph.i86.9, label %select.unfold99

.lr.ph.i86.9:                                     ; preds = %.lr.ph.i86.8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.fq = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1289, ptr noundef nonnull %i.fp, i64 noundef 1) #23
  %i.fr = and i64 %i.fq, 2147483648
  %.not103.9 = icmp eq i64 %i.fr, 0
  br i1 %.not103.9, label %.lr.ph.i86.10, label %select.unfold99

.lr.ph.i86.10:                                    ; preds = %.lr.ph.i86.9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.ft = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1290, ptr noundef nonnull %i.fs, i64 noundef 1) #23
  %i.fu = and i64 %i.ft, 2147483648
  %.not103.10 = icmp eq i64 %i.fu, 0
  br i1 %.not103.10, label %.lr.ph.i86.11, label %select.unfold99

.lr.ph.i86.11:                                    ; preds = %.lr.ph.i86.10
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.fw = call i64 @drm_dp_dpcd_read(ptr noundef %i.ej, i32 noundef 1291, ptr noundef nonnull %i.fv, i64 noundef 1) #23
  %i.fx = and i64 %i.fw, 2147483648
  %.not103.11 = icmp eq i64 %i.fx, 0
  br i1 %.not103.11, label %drm_dp_dpcd_read_data.exit91, label %select.unfold99

select.unfold99:                                  ; preds = %.lr.ph.i86.preheader, %.lr.ph.i86.1, %.lr.ph.i86.2, %.lr.ph.i86.3, %.lr.ph.i86.4, %.lr.ph.i86.5, %.lr.ph.i86.6, %.lr.ph.i86.7, %.lr.ph.i86.8, %.lr.ph.i86.9, %.lr.ph.i86.10, %.lr.ph.i86.11, %bb.aa
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.59) #23
  br label %dump_dp_payload_table.exit.thread

drm_dp_dpcd_read_data.exit91:                     ; preds = %.lr.ph.i86.11, %bb.aa
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef 3, ptr noundef nonnull %i.b) #23
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.fz = load i8, ptr %i.fy, align 1             ; 2 uses
  %.not73 = icmp eq i8 %i.fz, 0
  br i1 %.not73, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %drm_dp_dpcd_read_data.exit91
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.fz) #23
  %i.ga = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.gb = load i8, ptr %i.ga, align 4             ; 2 uses
  %.not73.1 = icmp eq i8 %i.gb, 0
  br i1 %.not73.1, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.gb) #23
  %i.gc = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %i.gd = load i8, ptr %i.gc, align 1             ; 2 uses
  %.not73.2 = icmp eq i8 %i.gd, 0
  br i1 %.not73.2, label %.critedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.gd) #23
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %i.gf = load i8, ptr %i.ge, align 2             ; 2 uses
  %.not73.3 = icmp eq i8 %i.gf, 0
  br i1 %.not73.3, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.gf) #23
  %i.gg = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  %i.gh = load i8, ptr %i.gg, align 1             ; 2 uses
  %.not73.4 = icmp eq i8 %i.gh, 0
  br i1 %.not73.4, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @seq_putc(ptr noundef %0, i8 noundef zeroext %i.gh) #23
  br label %.critedge

.critedge:                                        ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %drm_dp_dpcd_read_data.exit91
  %i.gi = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.gj = load i8, ptr %i.gi, align 1
  %i.gk = zext i8 %i.gj to i32                    ; 2 uses
  %i.gl = lshr i32 %i.gk, 4
  %i.gm = and i32 %i.gk, 15
  %i.gn = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.go = load i8, ptr %i.gn, align 2
  %i.gp = zext i8 %i.go to i32
  %i.gq = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = zext i8 %i.gr to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.61, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef %i.gp, i32 noundef %i.gs) #23
  br label %bb.ag

bb.ag:                                            ; preds = %drm_dp_dpcd_read_data.exit.i, %.critedge
  %indvars.iv.i = phi i64 [ 0, %.critedge ], [ %indvars.iv.next.i, %drm_dp_dpcd_read_data.exit.i ] ; 4 uses
  %i.gt = load ptr, ptr %i.dn, align 8            ; 17 uses
  %i.gu = getelementptr i8, ptr %i.b, i64 %indvars.iv.i ; 17 uses
  %i.gv = trunc nuw nsw i64 %indvars.iv.i to i32  ; 16 uses
  %i.gw = or i32 %i.gv, 704                       ; 2 uses
  %i.gx = call i64 @drm_dp_dpcd_read(ptr noundef %i.gt, i32 noundef %i.gw, ptr noundef %i.gu, i64 noundef 16) #23 ; 2 uses
  %i.gy = and i64 %i.gx, 2147483648
  %i.gz = icmp eq i64 %i.gy, 0
  br i1 %i.gz, label %bb.ah, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.ag
  %i.ha = call i64 @drm_dp_dpcd_read(ptr noundef %i.gt, i32 noundef %i.gw, ptr noundef %i.gu, i64 noundef 1) #23
  %i.hb = and i64 %i.ha, 2147483648
  %.not.i = icmp eq i64 %i.hb, 0
  br i1 %.not.i, label %.lr.ph.i.1.i, label %dump_dp_payload_table.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %i.hc = and i64 %i.gx, 2147483632
  %i.hd = icmp eq i64 %i.hc, 0
  br i1 %i.hd, label %dump_dp_payload_table.exit.thread, label %drm_dp_dpcd_read_data.exit.i

.lr.ph.i.1.i:                                     ; preds = %.lr.ph.i.preheader.i
  %i.he = getelementptr i8, ptr %i.gu, i64 1
  %i.hf = add nuw nsw i32 %i.gv, 705
  %i.hg = call i64 @drm_dp_dpcd_read(ptr noundef %i.gt, i32 noundef %i.hf, ptr noundef %i.he, i64 noundef 1) #23
  %i.hh = and i64 %i.hg, 2147483648
  %.not.1.i = icmp eq i64 %i.hh, 0
  br i1 %.not.1.i, label %.lr.ph.i.2.i, label %dump_dp_payload_table.exit.thread

.lr.ph.i.2.i:                                     ; preds = %.lr.ph.i.1.i
  %i.hi = getelementptr i8, ptr %i.gu, i64 2
  %i.hj = add nuw nsw i32 %i.gv, 706
  %i.hk = call i64 @drm_dp_dpcd_read(ptr noundef %i.gt, i32 noundef %i.hj, ptr noundef %i.hi, i64 noundef 1) #23
  %i.hl = and i64 %i.hk, 2147483648
  %.not.2.i = icmp eq i64 %i.hl, 0
  br i1 %.not.2.i, label %.lr.ph.i.3.i, label %dump_dp_payload_table.exit.thread

.lr.ph.i.3.i:                                     ; preds = %.lr.ph.i.2.i
  %i.hm = getelementptr i8, ptr %i.gu, i64 3
  %i.hn = add nuw nsw i32 %i.gv, 707
  %i.ho = call i64 @drm_dp_dpcd_read(ptr noundef %i.gt, i32 noundef %i.hn, ptr noundef %i.hm, i64 noundef 1) #23
  %i.hp = and i64 %i.ho, 2147483648
  %.not.3.i = icmp eq i64 %i.hp, 0
  br i1 %.not.3.i, label %.lr.ph.i.4.i, label %dump_dp_payload_table.exit.thread

.lr.ph.i.4.i:                                     ; preds = %.lr.ph.i.3.i
end_hunk_0
begin_hunk_1_@drm_dp_mst_dsc_aux_for_port:bb.a
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8              ; 11 uses
  %.not35 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not35, label %drm_dp_mst_is_virtual_dpcd.exit59.thread103, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %drm_dp_mst_is_virtual_dpcd.exit.thread
  %.029133 = phi ptr [ %i.ax, %drm_dp_mst_is_virtual_dpcd.exit.thread ], [ %i.h, %bb.b ] ; 9 uses
  %i.i = getelementptr i8, ptr %.029133, i64 14
  %i.j = load i8, ptr %i.i, align 2
  %i.k = icmp ult i8 %i.j, 20
  br i1 %i.k, label %drm_dp_mst_is_virtual_dpcd.exit.thread96, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr i8, ptr %.029133, i64 8
  %.val.i = load i8, ptr %i.l, align 8
  %i.m = icmp ugt i8 %.val.i, 7
  br i1 %i.m, label %drm_dp_mst_is_virtual_dpcd.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.029133, i64 12   ; 2 uses
  %i.o = load i8, ptr %i.n, align 4
  %i.p = icmp eq i8 %i.o, 4
  br i1 %i.p, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %.029133, i64 10
  %i.r = load i8, ptr %i.q, align 2, !range !13, !noundef !14
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %.029133, i64 13
  %i.u = load i8, ptr %i.t, align 1, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %drm_dp_mst_is_virtual_dpcd.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.w = getelementptr i8, ptr %.029133, i64 1392 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr i8, ptr %i.x, i64 784
  tail call void @mutex_lock(ptr noundef %i.y) #23
  %i.z = load i8, ptr %i.n, align 4
  %i.aa = icmp eq i8 %i.z, 2
  br i1 %i.aa, label %bb.h, label %drm_dp_mst_is_virtual_dpcd.exit.thread99

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %.029133, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8            ; 3 uses
  %.not26.i = icmp eq ptr %i.ac, null
  br i1 %.not26.i, label %drm_dp_mst_is_virtual_dpcd.exit.thread99, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.ac, i64 36
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = icmp eq i32 %i.ae, 2
  br i1 %i.af, label %bb.j, label %drm_dp_mst_is_virtual_dpcd.exit.thread99

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %i.ac, i64 40     ; 3 uses
  %.pn29.i = load ptr, ptr %i.ag, align 8         ; 2 uses
  %.not2830.i = icmp eq ptr %.pn29.i, %i.ag
  br i1 %.not2830.i, label %drm_dp_mst_is_virtual_dpcd.exit.thread99, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.pn31.i = phi ptr [ %.pn.i, %bb.l ], [ %.pn29.i, %bb.j ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.pn31.i, i64 -12
  %i.ai = load i8, ptr %i.ah, align 4
  %i.aj = icmp eq i8 %i.ai, 3
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr i8, ptr %.pn31.i, i64 -15
  %i.al = load i8, ptr %i.ak, align 1, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.l, label %drm_dp_mst_is_virtual_dpcd.exit

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.pn.i = load ptr, ptr %.pn31.i, align 8        ; 2 uses
  %.not28.i = icmp eq ptr %.pn.i, %i.ag
  br i1 %.not28.i, label %drm_dp_mst_is_virtual_dpcd.exit.thread99, label %.lr.ph.i, !llvm.loop !122

drm_dp_mst_is_virtual_dpcd.exit.thread99:         ; preds = %bb.l, %bb.j, %bb.i, %bb.h, %bb.g
  %i.an = load ptr, ptr %i.w, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 784
  tail call void @mutex_unlock(ptr noundef %i.ao) #23
  br label %drm_dp_mst_is_virtual_dpcd.exit.thread96

drm_dp_mst_is_virtual_dpcd.exit:                  ; preds = %bb.k
  %i.ap = load ptr, ptr %i.w, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 784
  tail call void @mutex_unlock(ptr noundef %i.aq) #23
  br label %drm_dp_mst_is_virtual_dpcd.exit.thread

drm_dp_mst_is_virtual_dpcd.exit.thread96:         ; preds = %.lr.ph, %drm_dp_mst_is_virtual_dpcd.exit.thread99
  %i.ar = getelementptr i8, ptr %.029133, i64 1408
  %i.as = load i8, ptr %i.ar, align 8, !range !13, !noundef !14
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %drm_dp_mst_is_virtual_dpcd.exit.thread, label %drm_dp_dpcd_read_data.exit.thread

drm_dp_mst_is_virtual_dpcd.exit.thread:           ; preds = %bb.f, %bb.c, %drm_dp_mst_is_virtual_dpcd.exit, %drm_dp_mst_is_virtual_dpcd.exit.thread96
  %i.au = getelementptr i8, ptr %.029133, i64 1376
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = getelementptr i8, ptr %i.av, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not36 = icmp eq ptr %i.ax, null
  br i1 %.not36, label %._crit_edge, label %.lr.ph, !llvm.loop !123

._crit_edge:                                      ; preds = %drm_dp_mst_is_virtual_dpcd.exit.thread
  %i.ay = getelementptr i8, ptr %i.h, i64 14
  %i.az = load i8, ptr %i.ay, align 2
  %i.ba = icmp ult i8 %i.az, 20
  br i1 %i.ba, label %drm_dp_mst_is_virtual_dpcd.exit59.thread103, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bb = getelementptr i8, ptr %i.h, i64 8
  %.val.i48 = load i8, ptr %i.bb, align 8
  %i.bc = icmp ugt i8 %.val.i48, 7
  br i1 %i.bc, label %drm_dp_mst_is_virtual_dpcd.exit59.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr i8, ptr %i.h, i64 12      ; 2 uses
  %i.be = load i8, ptr %i.bd, align 4
  %i.bf = icmp eq i8 %i.be, 4
  br i1 %i.bf, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr i8, ptr %i.h, i64 10
  %i.bh = load i8, ptr %i.bg, align 2, !range !13, !noundef !14
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bj = getelementptr i8, ptr %i.h, i64 13
  %i.bk = load i8, ptr %i.bj, align 1, !range !13, !noundef !14
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %drm_dp_mst_is_virtual_dpcd.exit59.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.bm = getelementptr i8, ptr %i.h, i64 1392    ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr i8, ptr %i.bn, i64 784
  tail call void @mutex_lock(ptr noundef %i.bo) #23
  %i.bp = load i8, ptr %i.bd, align 4
  %i.bq = icmp eq i8 %i.bp, 2
  br i1 %i.bq, label %bb.r, label %drm_dp_mst_is_virtual_dpcd.exit59.thread106

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr i8, ptr %i.h, i64 40
  %i.bs = load ptr, ptr %i.br, align 8            ; 3 uses
  %.not26.i52 = icmp eq ptr %i.bs, null
  br i1 %.not26.i52, label %drm_dp_mst_is_virtual_dpcd.exit59.thread106, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bt = getelementptr i8, ptr %i.bs, i64 36
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.t, label %drm_dp_mst_is_virtual_dpcd.exit59.thread106

bb.t:                                             ; preds = %bb.s
  %i.bw = getelementptr i8, ptr %i.bs, i64 40     ; 3 uses
  %.pn29.i53 = load ptr, ptr %i.bw, align 8       ; 2 uses
  %.not2830.i54 = icmp eq ptr %.pn29.i53, %i.bw
  br i1 %.not2830.i54, label %drm_dp_mst_is_virtual_dpcd.exit59.thread106, label %.lr.ph.i55

.lr.ph.i55:                                       ; preds = %bb.t, %bb.v
  %.pn31.i56 = phi ptr [ %.pn.i57, %bb.v ], [ %.pn29.i53, %bb.t ] ; 3 uses
  %i.bx = getelementptr i8, ptr %.pn31.i56, i64 -12
  %i.by = load i8, ptr %i.bx, align 4
  %i.bz = icmp eq i8 %i.by, 3
  br i1 %i.bz, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i55
  %i.ca = getelementptr i8, ptr %.pn31.i56, i64 -15
  %i.cb = load i8, ptr %i.ca, align 1, !range !13, !noundef !14
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.v, label %drm_dp_mst_is_virtual_dpcd.exit59

bb.v:                                             ; preds = %bb.u, %.lr.ph.i55
  %.pn.i57 = load ptr, ptr %.pn31.i56, align 8    ; 2 uses
  %.not28.i58 = icmp eq ptr %.pn.i57, %i.bw
  br i1 %.not28.i58, label %drm_dp_mst_is_virtual_dpcd.exit59.thread106, label %.lr.ph.i55, !llvm.loop !122

drm_dp_mst_is_virtual_dpcd.exit59.thread106:      ; preds = %bb.v, %bb.t, %bb.s, %bb.r, %bb.q
  %i.cd = load ptr, ptr %i.bm, align 8
  %i.ce = getelementptr i8, ptr %i.cd, i64 784
  tail call void @mutex_unlock(ptr noundef %i.ce) #23
  br label %drm_dp_mst_is_virtual_dpcd.exit59.thread103

drm_dp_mst_is_virtual_dpcd.exit59:                ; preds = %bb.u
  %i.cf = load ptr, ptr %i.bm, align 8
  %i.cg = getelementptr i8, ptr %i.cf, i64 784
  tail call void @mutex_unlock(ptr noundef %i.cg) #23
  br label %drm_dp_mst_is_virtual_dpcd.exit59.thread

drm_dp_mst_is_virtual_dpcd.exit59.thread:         ; preds = %bb.p, %bb.m, %drm_dp_mst_is_virtual_dpcd.exit59
  %i.ch = getelementptr i8, ptr %0, i64 48        ; 5 uses
  %i.ci = call i64 @drm_dp_dpcd_read(ptr noundef %i.ch, i32 noundef 96, ptr noundef nonnull %i.c, i64 noundef 1) #23 ; 2 uses
  %i.cj = and i64 %i.ci, 2147483648
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i60.preheader, label %bb.w

.lr.ph.i60.preheader:                             ; preds = %drm_dp_mst_is_virtual_dpcd.exit59.thread
  %i.cl = and i64 %i.ci, 2147483647
  %.not123.a = icmp eq i64 %i.cl, 0
  br i1 %.not123.a, label %drm_dp_dpcd_read_data.exit.thread, label %drm_dp_dpcd_read_data.exit

bb.w:                                             ; preds = %drm_dp_mst_is_virtual_dpcd.exit59.thread
  %2 = call i64 @drm_dp_dpcd_read(ptr noundef %i.ch, i32 noundef 96, ptr noundef nonnull %i.c, i64 noundef 1) #23
  %i.cm = and i64 %2, 2147483648
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %drm_dp_dpcd_read_data.exit, label %drm_dp_dpcd_read_data.exit.thread

drm_dp_dpcd_read_data.exit:                       ; preds = %bb.w, %.lr.ph.i60.preheader
  %i.co = call i64 @drm_dp_dpcd_read(ptr noundef %i.ch, i32 noundef 144, ptr noundef nonnull %i.b, i64 noundef 1) #23 ; 2 uses
  %i.cp = and i64 %i.co, 2147483648
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i62.preheader, label %bb.x

.lr.ph.i62.preheader:                             ; preds = %drm_dp_dpcd_read_data.exit
  %i.cr = and i64 %i.co, 2147483647
  %.not124.a = icmp eq i64 %i.cr, 0
  br i1 %.not124.a, label %drm_dp_dpcd_read_data.exit.thread, label %drm_dp_dpcd_read_data.exit67

bb.x:                                             ; preds = %drm_dp_dpcd_read_data.exit
  %3 = call i64 @drm_dp_dpcd_read(ptr noundef %i.ch, i32 noundef 144, ptr noundef nonnull %i.b, i64 noundef 1) #23
  %i.cs = and i64 %3, 2147483648
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %drm_dp_dpcd_read_data.exit67, label %drm_dp_dpcd_read_data.exit.thread

drm_dp_dpcd_read_data.exit67:                     ; preds = %bb.x, %.lr.ph.i62.preheader
  %i.cu = getelementptr i8, ptr %i.h, i64 48      ; 6 uses
  %i.cv = call i64 @drm_dp_dpcd_read(ptr noundef %i.cu, i32 noundef 96, ptr noundef nonnull %i.a, i64 noundef 1) #23 ; 2 uses
  %i.cw = and i64 %i.cv, 2147483648
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i69.preheader, label %bb.y

.lr.ph.i69.preheader:                             ; preds = %drm_dp_dpcd_read_data.exit67
  %i.cy = and i64 %i.cv, 2147483647
  %.not125.a = icmp eq i64 %i.cy, 0
  br i1 %.not125.a, label %drm_dp_dpcd_read_data.exit.thread, label %drm_dp_dpcd_read_data.exit74

bb.y:                                             ; preds = %drm_dp_dpcd_read_data.exit67
  %4 = call i64 @drm_dp_dpcd_read(ptr noundef %i.cu, i32 noundef 96, ptr noundef nonnull %i.a, i64 noundef 1) #23
  %i.cz = and i64 %4, 2147483648
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %drm_dp_dpcd_read_data.exit74, label %drm_dp_dpcd_read_data.exit.thread

drm_dp_dpcd_read_data.exit74:                     ; preds = %bb.y, %.lr.ph.i69.preheader
  %i.db = load i8, ptr %i.c, align 1
  %i.dc = and i8 %i.db, 1
  %.not44 = icmp eq i8 %i.dc, 0
  br i1 %.not44, label %drm_dp_dpcd_read_data.exit.thread, label %bb.z

bb.z:                                             ; preds = %drm_dp_dpcd_read_data.exit74
  %i.dd = load i8, ptr %i.b, align 1
  %i.de = and i8 %i.dd, 1
  %.not45 = icmp eq i8 %i.de, 0
  br i1 %.not45, label %drm_dp_dpcd_read_data.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.df = load i8, ptr %i.a, align 1
  %i.dg = and i8 %i.df, 2
  %.not46 = icmp eq i8 %i.dg, 0
  br i1 %.not46, label %drm_dp_dpcd_read_data.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dh = getelementptr i8, ptr %0, i64 1368
  store ptr %i.cu, ptr %i.dh, align 8
  br label %drm_dp_dpcd_read_data.exit.thread

drm_dp_mst_is_virtual_dpcd.exit59.thread103:      ; preds = %bb.b, %._crit_edge, %drm_dp_mst_is_virtual_dpcd.exit59.thread106
  %i.di = getelementptr i8, ptr %0, i64 14
  %i.dj = load i8, ptr %i.di, align 2
  %i.dk = icmp ult i8 %i.dj, 20
  br i1 %i.dk, label %drm_dp_mst_is_virtual_dpcd.exit87.thread114, label %bb.ac

bb.ac:                                            ; preds = %drm_dp_mst_is_virtual_dpcd.exit59.thread103
  %i.dl = getelementptr i8, ptr %0, i64 8
  %.val.i76 = load i8, ptr %i.dl, align 8
  %i.dm = icmp ugt i8 %.val.i76, 7
  br i1 %i.dm, label %drm_dp_mst_is_virtual_dpcd.exit87.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = getelementptr i8, ptr %0, i64 12        ; 2 uses
  %i.do = load i8, ptr %i.dn, align 4
  %i.dp = icmp eq i8 %i.do, 4
  br i1 %i.dp, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.dq = getelementptr i8, ptr %0, i64 10
  %i.dr = load i8, ptr %i.dq, align 2, !range !13, !noundef !14
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dt = getelementptr i8, ptr %0, i64 13
  %i.du = load i8, ptr %i.dt, align 1, !range !13, !noundef !14
  %i.dv = trunc nuw i8 %i.du to i1
  br i1 %i.dv, label %drm_dp_mst_is_virtual_dpcd.exit87.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.dw = getelementptr i8, ptr %0, i64 1392      ; 3 uses
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr i8, ptr %i.dx, i64 784
  tail call void @mutex_lock(ptr noundef %i.dy) #23
  %i.dz = load i8, ptr %i.dn, align 4
  %i.ea = icmp eq i8 %i.dz, 2
  br i1 %i.ea, label %bb.ah, label %drm_dp_mst_is_virtual_dpcd.exit87.thread117

bb.ah:                                            ; preds = %bb.ag
  %i.eb = getelementptr i8, ptr %0, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8            ; 3 uses
  %.not26.i80 = icmp eq ptr %i.ec, null
  br i1 %.not26.i80, label %drm_dp_mst_is_virtual_dpcd.exit87.thread117, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = getelementptr i8, ptr %i.ec, i64 36
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = icmp eq i32 %i.ee, 2
  br i1 %i.ef, label %bb.aj, label %drm_dp_mst_is_virtual_dpcd.exit87.thread117

bb.aj:                                            ; preds = %bb.ai
  %i.eg = getelementptr i8, ptr %i.ec, i64 40     ; 3 uses
  %.pn29.i81 = load ptr, ptr %i.eg, align 8       ; 2 uses
  %.not2830.i82 = icmp eq ptr %.pn29.i81, %i.eg
  br i1 %.not2830.i82, label %drm_dp_mst_is_virtual_dpcd.exit87.thread117, label %.lr.ph.i83

.lr.ph.i83:                                       ; preds = %bb.aj, %bb.al
  %.pn31.i84 = phi ptr [ %.pn.i85, %bb.al ], [ %.pn29.i81, %bb.aj ] ; 3 uses
  %i.eh = getelementptr i8, ptr %.pn31.i84, i64 -12
  %i.ei = load i8, ptr %i.eh, align 4
  %i.ej = icmp eq i8 %i.ei, 3
  br i1 %i.ej, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i83
  %i.ek = getelementptr i8, ptr %.pn31.i84, i64 -15
  %i.el = load i8, ptr %i.ek, align 1, !range !13, !noundef !14
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.al, label %drm_dp_mst_is_virtual_dpcd.exit87

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i83
  %.pn.i85 = load ptr, ptr %.pn31.i84, align 8    ; 2 uses
  %.not28.i86 = icmp eq ptr %.pn.i85, %i.eg
  br i1 %.not28.i86, label %drm_dp_mst_is_virtual_dpcd.exit87.thread117, label %.lr.ph.i83, !llvm.loop !122

drm_dp_mst_is_virtual_dpcd.exit87.thread117:      ; preds = %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %i.en = load ptr, ptr %i.dw, align 8
  %i.eo = getelementptr i8, ptr %i.en, i64 784
  tail call void @mutex_unlock(ptr noundef %i.eo) #23
  br label %drm_dp_mst_is_virtual_dpcd.exit87.thread114

drm_dp_mst_is_virtual_dpcd.exit87:                ; preds = %bb.ak
  %i.ep = load ptr, ptr %i.dw, align 8
  %i.eq = getelementptr i8, ptr %i.ep, i64 784
  tail call void @mutex_unlock(ptr noundef %i.eq) #23
  br label %drm_dp_mst_is_virtual_dpcd.exit87.thread

drm_dp_mst_is_virtual_dpcd.exit87.thread:         ; preds = %bb.af, %bb.ac, %drm_dp_mst_is_virtual_dpcd.exit87
  %i.er = getelementptr i8, ptr %0, i64 48
  br label %drm_dp_dpcd_read_data.exit.thread

drm_dp_mst_is_virtual_dpcd.exit87.thread114:      ; preds = %drm_dp_mst_is_virtual_dpcd.exit59.thread103, %drm_dp_mst_is_virtual_dpcd.exit87.thread117
  br i1 %.not35, label %bb.an, label %bb.am

bb.am:                                            ; preds = %drm_dp_mst_is_virtual_dpcd.exit87.thread114
  %i.es = getelementptr i8, ptr %i.h, i64 48
  br label %bb.ao

bb.an:                                            ; preds = %drm_dp_mst_is_virtual_dpcd.exit87.thread114
  %i.et = getelementptr i8, ptr %0, i64 1392
  %i.eu = load ptr, ptr %i.et, align 8
  %i.ev = getelementptr i8, ptr %i.eu, i64 112
  %i.ew = load ptr, ptr %i.ev, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.030 = phi ptr [ %i.es, %bb.am ], [ %i.ew, %bb.an ] ; 4 uses
  %i.ex = call i32 @drm_dp_read_desc(ptr noundef %.030, ptr noundef nonnull %1, i1 noundef zeroext true) #23
  %.not38 = icmp eq i32 %i.ex, 0
  br i1 %.not38, label %bb.ap, label %drm_dp_dpcd_read_data.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.val = load i32, ptr %i.ey, align 4
  %i.ez = and i32 %.val, 8
  %.not126 = icmp eq i32 %i.ez, 0
  br i1 %.not126, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.d, i8 0, i64 15, i1 false), !annotation !33
  %i.fa = call fastcc i32 @drm_dp_dpcd_read_data(ptr noundef %.030, i32 noundef 96, ptr noundef nonnull %i.a, i64 noundef 1) #24, !srcloc !124
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fc = load i8, ptr %i.a, align 1
  %i.fd = and i8 %i.fc, 1
  %.not39 = icmp eq i8 %i.fd, 0
  br i1 %.not39, label %.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fe = call i32 @drm_dp_read_dpcd_caps(ptr noundef %.030, ptr noundef nonnull %i.d) #23
  %i.ff = icmp slt i32 %i.fe, 0
  br i1 %i.ff, label %.thread, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fg = load i8, ptr %i.d, align 1
  %i.fh = icmp ugt i8 %i.fg, 19
  br i1 %i.fh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fi = getelementptr inbounds nuw i8, ptr %i.d, i64 5
  %i.fj = load i8, ptr %i.fi, align 1
  %i.fk = zext i8 %i.fj to i32                    ; 2 uses
  %i.fl = and i32 %i.fk, 1
  %.not40 = icmp eq i32 %i.fl, 0
  %i.fm = and i32 %i.fk, 6
  %.not41 = icmp eq i32 %i.fm, 2
  %or.cond = or i1 %.not40, %.not41
  br i1 %or.cond, label %bb.av, label %.thread

.thread:                                          ; preds = %bb.aq, %bb.ar, %bb.as, %bb.au
  %.032.ph = phi ptr [ %.030, %bb.au ], [ null, %bb.as ], [ null, %bb.ar ], [ null, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %drm_dp_dpcd_read_data.exit.thread

bb.av:                                            ; preds = %bb.at, %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.ap
  %i.fn = getelementptr i8, ptr %0, i64 48        ; 4 uses
  %i.fo = call i64 @drm_dp_dpcd_read(ptr noundef %i.fn, i32 noundef 96, ptr noundef nonnull %i.c, i64 noundef 1) #23 ; 2 uses
  %i.fp = and i64 %i.fo, 2147483648
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %.lr.ph.i89.preheader, label %bb.ax

.lr.ph.i89.preheader:                             ; preds = %bb.aw
  %i.fr = and i64 %i.fo, 2147483647
  %.not127.a = icmp eq i64 %i.fr, 0
  br i1 %.not127.a, label %drm_dp_dpcd_read_data.exit.thread, label %drm_dp_dpcd_read_data.exit94

bb.ax:                                            ; preds = %bb.aw
  %5 = call i64 @drm_dp_dpcd_read(ptr noundef %i.fn, i32 noundef 96, ptr noundef nonnull %i.c, i64 noundef 1) #23
  %i.fs = and i64 %5, 2147483648
  %i.ft = icmp eq i64 %i.fs, 0
  br i1 %i.ft, label %drm_dp_dpcd_read_data.exit94, label %drm_dp_dpcd_read_data.exit.thread

drm_dp_dpcd_read_data.exit94:                     ; preds = %bb.ax, %.lr.ph.i89.preheader
  %i.fu = call fastcc i32 @drm_dp_dpcd_read_data(ptr noundef %i.fn, i32 noundef 144, ptr noundef nonnull %i.b, i64 noundef 1) #24, !srcloc !125
  %i.fv = icmp slt i32 %i.fu, 0
  br i1 %i.fv, label %drm_dp_dpcd_read_data.exit.thread, label %bb.ay

bb.ay:                                            ; preds = %drm_dp_dpcd_read_data.exit94
  %i.fw = load i8, ptr %i.c, align 1
  %i.fx = and i8 %i.fw, 1
  %.not42 = icmp eq i8 %i.fx, 0
  br i1 %.not42, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fy = load i8, ptr %i.b, align 1
  %i.fz = and i8 %i.fy, 1
  %.not43 = icmp eq i8 %i.fz, 0
  br i1 %.not43, label %bb.ba, label %drm_dp_dpcd_read_data.exit.thread

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br label %drm_dp_dpcd_read_data.exit.thread

drm_dp_dpcd_read_data.exit.thread:                ; preds = %drm_dp_mst_is_virtual_dpcd.exit.thread96, %bb.w, %bb.x, %bb.y, %bb.ax, %.lr.ph.i89.preheader, %.lr.ph.i69.preheader, %.lr.ph.i62.preheader, %.lr.ph.i60.preheader, %.thread, %bb.az, %drm_dp_dpcd_read_data.exit94, %bb.ao, %drm_dp_dpcd_read_data.exit74, %bb.z, %bb.aa, %bb.a, %bb.ba, %drm_dp_mst_is_virtual_dpcd.exit87.thread, %bb.ab
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.x ], [ %i.fn, %bb.az ], [ null, %.lr.ph.i60.preheader ], [ %i.ch, %bb.ab ], [ null, %.lr.ph.i62.preheader ], [ %i.er, %drm_dp_mst_is_virtual_dpcd.exit87.thread ], [ %i.cu, %drm_dp_dpcd_read_data.exit74 ], [ null, %bb.ao ], [ null, %.lr.ph.i69.preheader ], [ null, %drm_dp_dpcd_read_data.exit94 ], [ null, %bb.ba ], [ %.032.ph, %.thread ], [ %i.cu, %bb.aa ], [ %i.cu, %bb.z ], [ null, %bb.y ], [ null, %bb.ax ], [ null, %bb.w ], [ null, %.lr.ph.i89.preheader ], [ null, %drm_dp_mst_is_virtual_dpcd.exit.thread96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret ptr %.1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i32 @drm_dp_mst_atomic_enable_dsc(ptr noundef %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 1392       ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @drm_atomic_get_private_obj_state(ptr noundef %0, ptr noundef %i.b) #23 ; 4 uses
  %i.d = icmp ugt ptr %i.c, inttoptr (i64 -4096 to ptr)
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = trunc i64 %i.e to i32
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 56       ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.pn.in.i = phi ptr [ %i.g, %bb.c ], [ %.pn.i, %bb.e ]
  %.pn.i = load ptr, ptr %.pn.in.i, align 8       ; 6 uses
  %.not.i = icmp eq ptr %.pn.i, %i.g
  br i1 %.not.i, label %drm_atomic_get_mst_payload_state.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.012.i = getelementptr i8, ptr %.pn.i, i64 -32
  %i.h = load ptr, ptr %.012.i, align 8
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %drm_atomic_get_mst_payload_state.exit, label %bb.d, !llvm.loop !31

drm_atomic_get_mst_payload_state.exit:            ; preds = %bb.e
  %.012.i.le = getelementptr i8, ptr %.pn.i, i64 -32
  %.not = icmp eq ptr %.012.i.le, null
  br i1 %.not, label %drm_atomic_get_mst_payload_state.exit.thread, label %bb.g

drm_atomic_get_mst_payload_state.exit.thread:     ; preds = %bb.d, %drm_atomic_get_mst_payload_state.exit
  %i.j = getelementptr i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i33 = icmp eq ptr %i.k, null
  br i1 %.not.i33, label %__drm_to_dev.exit, label %bb.f

bb.f:                                             ; preds = %drm_atomic_get_mst_payload_state.exit.thread
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %drm_atomic_get_mst_payload_state.exit.thread, %bb.f
  %i.n = phi ptr [ %i.m, %bb.f ], [ null, %drm_atomic_get_mst_payload_state.exit.thread ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.n, i32 noundef 4, ptr noundef nonnull @.str.64, ptr noundef %1, ptr noundef %i.c) #23
  br label %bb.n

bb.g:                                             ; preds = %drm_atomic_get_mst_payload_state.exit
  %i.o = getelementptr i8, ptr %.pn.i, i64 -12    ; 3 uses
  %i.p = load i8, ptr %i.o, align 4
  %i.q = and i8 %i.p, 2
  %i.r = icmp eq i8 %i.q, 0
  %i.s = xor i1 %3, %i.r
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.t = zext i1 %3 to i32
  %i.u = getelementptr i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not.i34 = icmp eq ptr %i.v, null
  br i1 %.not.i34, label %__drm_to_dev.exit35, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  br label %__drm_to_dev.exit35

__drm_to_dev.exit35:                              ; preds = %bb.h, %bb.i
  %i.y = phi ptr [ %i.x, %bb.i ], [ null, %bb.h ]
  %i.z = getelementptr i8, ptr %.pn.i, i64 -20    ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.y, i32 noundef 4, ptr noundef nonnull @.str.65, ptr noundef %1, i32 noundef %i.t, i32 noundef %i.aa) #23
  %i.ab = load i32, ptr %i.z, align 4
  br label %bb.j

bb.j:                                             ; preds = %__drm_to_dev.exit35, %bb.g
  %.0 = phi i32 [ %i.ab, %__drm_to_dev.exit35 ], [ 0, %bb.g ]
  br i1 %3, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.a, align 8
  %i.ad = tail call i32 @drm_dp_atomic_find_time_slots(ptr noundef %0, ptr noundef %i.ac, ptr noundef %1, i32 noundef %2) #24 ; 3 uses
  %i.ae = getelementptr i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not.i36 = icmp eq ptr %i.af, null
  br i1 %.not.i36, label %__drm_to_dev.exit37, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  br label %__drm_to_dev.exit37

__drm_to_dev.exit37:                              ; preds = %bb.k, %bb.l
  %i.ai = phi ptr [ %i.ah, %bb.l ], [ null, %bb.k ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.ai, i32 noundef 4, ptr noundef nonnull @.str.66, ptr noundef %1, i32 noundef %i.ad) #23
  %i.aj = icmp slt i32 %i.ad, 0
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %__drm_to_dev.exit37, %bb.j
  %i.ak = phi i8 [ 2, %__drm_to_dev.exit37 ], [ 0, %bb.j ]
  %.1 = phi i32 [ %i.ad, %__drm_to_dev.exit37 ], [ %.0, %bb.j ]
  %i.al = load i8, ptr %i.o, align 4
  %i.am = and i8 %i.al, -3
  %i.an = or disjoint i8 %i.am, %i.ak
  store i8 %i.an, ptr %i.o, align 4
  br label %bb.n

bb.n:                                             ; preds = %__drm_to_dev.exit37, %bb.m, %__drm_to_dev.exit, %bb.b
  %.029 = phi i32 [ %i.f, %bb.b ], [ -22, %__drm_to_dev.exit ], [ %.1, %bb.m ], [ -22, %__drm_to_dev.exit37 ]
  ret i32 %.029
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_mst_atomic_check_mgr(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) #0 align 16 prefalign(16) {
bb.a:
  store ptr null, ptr %3, align 8
  %i.a = getelementptr i8, ptr %1, i64 832
  %i.b = load i8, ptr %i.a, align 8
  %i.c = trunc i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %drm_dp_mst_atomic_check_payload_alloc_limits.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 784        ; 2 uses
  tail call void @mutex_lock(ptr noundef %i.d) #23
  %i.e = getelementptr i8, ptr %1, i64 840
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call fastcc i32 @drm_dp_mst_atomic_check_mstb_bw_limit(ptr noundef %i.f, ptr noundef %2, ptr noundef %3) #24, !srcloc !126 ; 2 uses
  tail call void @mutex_unlock(ptr noundef %i.d) #23
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %drm_dp_mst_atomic_check_payload_alloc_limits.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %2, i64 72         ; 2 uses
  %i.j = load i8, ptr %i.i, align 8
  %i.k = zext i8 %i.j to i32                      ; 2 uses
  %i.l = getelementptr i8, ptr %2, i64 56         ; 3 uses
  %.pn75.i = load ptr, ptr %i.l, align 8          ; 2 uses
  %.not77.i = icmp eq ptr %.pn75.i, %i.l
  br i1 %.not77.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 88         ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 120
  %i.o = getelementptr i8, ptr %2, i64 48         ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %.lr.ph.i
  %.pn80.i = phi ptr [ %.pn75.i, %.lr.ph.i ], [ %.pn.i, %bb.q ] ; 5 uses
  %.04979.i = phi i32 [ %i.k, %.lr.ph.i ], [ %.1.i, %bb.q ] ; 3 uses
  %.05078.i = phi i32 [ 0, %.lr.ph.i ], [ %.151.i, %bb.q ] ; 2 uses
  %.04881.i = getelementptr i8, ptr %.pn80.i, i64 -32 ; 4 uses
  %i.p = getelementptr i8, ptr %.pn80.i, i64 -12
  %i.q = load i8, ptr %i.p, align 4
  %i.r = trunc i8 %i.q to i1
  %i.s = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null              ; 2 uses
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %__drm_to_dev.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  br label %__drm_to_dev.exit.i

__drm_to_dev.exit.i:                              ; preds = %bb.f, %bb.e
  %i.v = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ]
  %i.w = load ptr, ptr %.04881.i, align 8
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.v, i32 noundef 4, ptr noundef nonnull @.str.173, ptr noundef %i.w) #23
  br label %bb.q

bb.g:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %__drm_to_dev.exit58.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.s, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  br label %__drm_to_dev.exit58.i

__drm_to_dev.exit58.i:                            ; preds = %bb.h, %bb.g
  %i.z = phi ptr [ %i.y, %bb.h ], [ null, %bb.g ]
  %i.aa = load ptr, ptr %.04881.i, align 8
  %i.ab = getelementptr i8, ptr %.pn80.i, i64 -20 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.z, i32 noundef 4, ptr noundef nonnull @.str.174, ptr noundef %i.aa, i32 noundef %i.ac) #23
end_hunk_1
