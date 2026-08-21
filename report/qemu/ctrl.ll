Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ctrl?download=true
inline.NumInlined: 1462
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@nvme_process_sq:bb.a
bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not3.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not3.i.i, label %nvme_update_sq_tail.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = zext i16 %i.v to i32
  %i.ac = and i32 %i.w, 65535
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.140, i32 noundef %i.ab, i32 noundef %i.ac) #23
  br label %nvme_update_sq_tail.exit

nvme_update_sq_tail.exit:                         ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.ad = getelementptr i8, ptr %0, i64 12        ; 4 uses
  %i.ae = getelementptr i8, ptr %0, i64 16        ; 6 uses
  %.val147 = load i32, ptr %i.ad, align 4         ; 2 uses
  %.val75148 = load i32, ptr %i.ae, align 8
  %.not149 = icmp eq i32 %.val147, %.val75148
  br i1 %.not149, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %nvme_update_sq_tail.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24192 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 35272
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 35248 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 26248
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 26256
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 9756
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 7456
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 7620
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8732
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 7708
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %nvme_update_sq_tail.exit102
  %.val150 = phi i32 [ %.val147, %.lr.ph ], [ %.val, %nvme_update_sq_tail.exit102 ]
  %i.bb = load ptr, ptr %i.af, align 8
  %.not124 = icmp eq ptr %i.bb, null
  br i1 %.not124, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = load i64, ptr %i.ag, align 8
  %i.bd = shl i32 %.val150, 6
  %i.be = zext i32 %i.bd to i64
  %i.bf = add i64 %i.bc, %i.be                    ; 2 uses
  %i.bg = call fastcc i32 @nvme_addr_read(ptr noundef nonnull %i.b, i64 noundef %i.bf, ptr noundef nonnull %1, i32 noundef 64)
  %.not70 = icmp eq i32 %i.bg, 0
  br i1 %.not70, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.bh, 0
  br i1 %.not.i, label %trace_pci_nvme_err_cfs.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.bi = load i16, ptr @_TRACE_PCI_NVME_ERR_ADDR_READ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.bi, 0
  br i1 %.not1.i, label %trace_pci_nvme_err_addr_read.exit.thread104, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr @qemu_loglevel, align 4
  %i.bk = and i32 %i.bj, 32768
  %.not2.i = icmp eq i32 %i.bk, 0
  br i1 %.not2.i, label %trace_pci_nvme_err_addr_read.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %i.bf) #23
  %.pr.pre = load i32, ptr @trace_events_enabled_count, align 4
  %i.bl = icmp eq i32 %.pr.pre, 0
  br label %trace_pci_nvme_err_addr_read.exit

trace_pci_nvme_err_addr_read.exit:                ; preds = %bb.l, %bb.m
  %.pr = phi i1 [ false, %bb.l ], [ %i.bl, %bb.m ]
  %i.bm = load i16, ptr @_TRACE_PCI_NVME_ERR_CFS_DSTATE, align 2
  %.not1.i78 = icmp eq i16 %i.bm, 0
  %or.cond123 = select i1 %.pr, i1 true, i1 %.not1.i78, !prof !45
  br i1 %or.cond123, label %trace_pci_nvme_err_cfs.exit, label %bb.n, !prof !45

trace_pci_nvme_err_addr_read.exit.thread104:      ; preds = %bb.k
  %.old = load i16, ptr @_TRACE_PCI_NVME_ERR_CFS_DSTATE, align 2
  %.not1.i78.old = icmp eq i16 %.old, 0
  br i1 %.not1.i78.old, label %trace_pci_nvme_err_cfs.exit, label %bb.n

bb.n:                                             ; preds = %trace_pci_nvme_err_addr_read.exit, %trace_pci_nvme_err_addr_read.exit.thread104
  %i.bn = load i32, ptr @qemu_loglevel, align 4
  %i.bo = and i32 %i.bn, 32768
  %.not2.i79 = icmp eq i32 %i.bo, 0
  br i1 %.not2.i79, label %trace_pci_nvme_err_cfs.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.133) #23
  br label %trace_pci_nvme_err_cfs.exit

trace_pci_nvme_err_cfs.exit:                      ; preds = %bb.j, %trace_pci_nvme_err_addr_read.exit, %trace_pci_nvme_err_addr_read.exit.thread104, %bb.n, %bb.o
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 3340
  store i32 2, ptr %i.bp, align 4
  br label %.critedge

bb.p:                                             ; preds = %bb.i
  %.val76 = load i32, ptr %i.ah, align 1          ; 4 uses
  %i.bq = add i32 %.val76, -257
  %or.cond.i.i = icmp ult i32 %i.bq, -256
  br i1 %or.cond.i.i, label %nvme_ns.exit.thread.i, label %nvme_ns.exit.i

nvme_ns.exit.i:                                   ; preds = %bb.p
  %i.br = zext nneg i32 %.val76 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8            ; 3 uses
  %.not.i80 = icmp eq ptr %i.bt, null
  br i1 %.not.i80, label %nvme_ns.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %nvme_ns.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 12984
  %i.bv = load i8, ptr %i.bu, align 8, !range !8, !noundef !9
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.r, label %nvme_ns.exit.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 12960
  br label %nvme_get_atomic.exit

nvme_ns.exit.thread.i:                            ; preds = %bb.q, %nvme_ns.exit.i, %bb.p
  %i.by = load i8, ptr %i.aj, align 8, !range !8, !noundef !9
  %i.bz = trunc nuw i8 %i.by to i1
  %spec.select.i = select i1 %i.bz, ptr %i.ak, ptr null
  br label %nvme_get_atomic.exit

nvme_get_atomic.exit:                             ; preds = %bb.r, %nvme_ns.exit.thread.i
  %.0.i = phi ptr [ %i.bx, %bb.r ], [ %spec.select.i, %nvme_ns.exit.thread.i ] ; 4 uses
  %i.ca = load i16, ptr %i.al, align 8
  %i.cb = icmp ne i16 %i.ca, 0
  %i.cc = icmp ne ptr %.0.i, null                 ; 2 uses
  %or.cond = select i1 %i.cb, i1 %i.cc, i1 false
  br i1 %or.cond, label %bb.s, label %nvme_atomic_write_check.exit.thread110

bb.s:                                             ; preds = %nvme_get_atomic.exit
  %i.cd = load i64, ptr %i.am, align 1            ; 5 uses
  %i.ce = load i16, ptr %i.an, align 1            ; 2 uses
  %i.cf = zext i16 %i.ce to i64                   ; 2 uses
  %i.cg = add i64 %i.cd, %i.cf                    ; 3 uses
  %i.ch = load i8, ptr %1, align 1
  switch i8 %i.ch, label %.thread63.i [
    i8 2, label %nvme_atomic_boundary_check.exit.thread.i
    i8 1, label %.thread65.i
  ]

.thread63.i:                                      ; preds = %bb.s
  br label %nvme_atomic_boundary_check.exit.thread.i

.thread65.i:                                      ; preds = %bb.s
  %i.ci = zext i16 %i.ce to i32                   ; 2 uses
  %i.cj = load i32, ptr %.0.i, align 8
  %.not.i81 = icmp ugt i32 %i.cj, %i.ci           ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 2 uses
  %.not.i.i82 = icmp eq i64 %i.cl, 0
  br i1 %.not.i.i82, label %nvme_atomic_boundary_check.exit.thread.i, label %bb.t

bb.t:                                             ; preds = %.thread65.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cn = load i64, ptr %i.cm, align 8            ; 3 uses
  %i.co = icmp ult i64 %i.cd, %i.cn
  %i.cp = icmp ult i64 %i.cg, %i.cn
  %or.cond.i.i83 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond.i.i83, label %nvme_atomic_boundary_check.exit.thread69.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cq = sub nuw i64 %i.cd, %i.cn                ; 2 uses
  %i.cr = add i64 %i.cq, %i.cf
  %i.cs = sub i64 0, %i.cl
  %i.ct = xor i64 %i.cr, %i.cq
  %i.cu = and i64 %i.ct, %i.cs
  %.not27.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not27.i.i, label %nvme_atomic_boundary_check.exit.thread.i, label %nvme_atomic_boundary_check.exit.i

nvme_atomic_boundary_check.exit.i:                ; preds = %bb.u
  %i.cv = load i32, ptr %i.ak, align 16           ; 2 uses
  %.not28.i.i = icmp eq i32 %i.cv, 0
  %.not29.not.i.i = icmp ule i32 %i.cv, %i.ci
  %or.cond31.i.not.i = select i1 %.not28.i.i, i1 true, i1 %.not29.not.i.i
  %cond.fr.i = freeze i1 %or.cond31.i.not.i
  br i1 %cond.fr.i, label %nvme_atomic_boundary_check.exit.thread69.i, label %nvme_atomic_boundary_check.exit.thread.i

nvme_atomic_boundary_check.exit.thread69.i:       ; preds = %nvme_atomic_boundary_check.exit.i, %bb.t
  br label %nvme_atomic_boundary_check.exit.thread.i

nvme_atomic_boundary_check.exit.thread.i:         ; preds = %nvme_atomic_boundary_check.exit.thread69.i, %nvme_atomic_boundary_check.exit.i, %bb.u, %.thread65.i, %.thread63.i, %bb.s
  %.1.shrunk.i = phi i1 [ false, %bb.s ], [ true, %.thread63.i ], [ false, %nvme_atomic_boundary_check.exit.thread69.i ], [ %.not.i81, %nvme_atomic_boundary_check.exit.i ], [ %.not.i81, %.thread65.i ], [ %.not.i81, %bb.u ]
  %.1.shrunk.fr.i = freeze i1 %.1.shrunk.i        ; 2 uses
  %i.cw = load i32, ptr %i.ao, align 8            ; 3 uses
  %i.cx = icmp ugt i32 %i.cw, 1
  br i1 %i.cx, label %.lr.ph79.i, label %._crit_edge.i

.lr.ph79.i:                                       ; preds = %nvme_atomic_boundary_check.exit.thread.i
  %i.cy = load ptr, ptr %i.ap, align 16           ; 2 uses
  br i1 %.1.shrunk.fr.i, label %.lr.ph79.split.us.i, label %.lr.ph79.split.i

.lr.ph79.split.us.i:                              ; preds = %.lr.ph79.i, %.loopexit.us.i
  %.04478.us.i = phi i32 [ %3, %.loopexit.us.i ], [ 1, %.lr.ph79.i ] ; 2 uses
  %2 = sext i32 %.04478.us.i to i64
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %2
  %i.da = load ptr, ptr %i.cz, align 8            ; 2 uses
  %.not52.us.i = icmp eq ptr %i.da, null
  br i1 %.not52.us.i, label %.loopexit.us.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph79.split.us.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 96
  %.04375.us.i = load ptr, ptr %i.db, align 8     ; 2 uses
  %.not5376.us.i = icmp eq ptr %.04375.us.i, null
  br i1 %.not5376.us.i, label %.loopexit.us.i, label %.lr.ph.us.i

.loopexit.us.i:                                   ; preds = %bb.y, %bb.v, %.lr.ph79.split.us.i
  %3 = add nuw i32 %.04478.us.i, 1                ; 2 uses
  %exitcond82.not.i = icmp eq i32 %3, %i.cw
  br i1 %exitcond82.not.i, label %._crit_edge.i, label %.lr.ph79.split.us.i, !llvm.loop !49

.lr.ph.us.i:                                      ; preds = %bb.v, %bb.y
  %.04377.us.us.i = phi ptr [ %.043.us.us.i, %bb.y ], [ %.04375.us.i, %bb.v ] ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.04377.us.us.i, i64 56
  %i.dd = load i8, ptr %i.dc, align 1
  %.off.us.us.i = add i8 %i.dd, -1
  %switch.us.us.i = icmp ult i8 %.off.us.us.i, 2
  br i1 %switch.us.us.i, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.lr.ph.us.i
  %i.de = getelementptr inbounds nuw i8, ptr %.04377.us.us.i, i64 8
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12772
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = icmp eq i32 %.val76, %i.dh
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %.04377.us.us.i, i64 96
  %i.dk = load i64, ptr %i.dj, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.04377.us.us.i, i64 104
  %i.dm = load i16, ptr %i.dl, align 8
  %i.dn = zext i16 %i.dm to i64
  %i.do = add i64 %i.dk, %i.dn
  %.not56.us.us.i = icmp ult i64 %i.cg, %i.dk
  %.not57.us.us.i = icmp ugt i64 %i.cd, %i.do
  %or.cond.us.us.i = select i1 %.not56.us.us.i, i1 true, i1 %.not57.us.us.i
  br i1 %or.cond.us.us.i, label %bb.y, label %nvme_atomic_write_check.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %.lr.ph.us.i
  %i.dp = getelementptr inbounds nuw i8, ptr %.04377.us.us.i, i64 200
  %.043.us.us.i = load ptr, ptr %i.dp, align 8    ; 2 uses
  %.not53.us.us.i = icmp eq ptr %.043.us.us.i, null
  br i1 %.not53.us.us.i, label %.loopexit.us.i, label %.lr.ph.us.i, !llvm.loop !50

.lr.ph79.split.i:                                 ; preds = %.lr.ph79.i, %.loopexit.i
  %.04478.i = phi i32 [ %5, %.loopexit.i ], [ 1, %.lr.ph79.i ] ; 2 uses
  %4 = sext i32 %.04478.i to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %4
  %i.dr = load ptr, ptr %i.dq, align 8            ; 2 uses
  %.not52.i = icmp eq ptr %i.dr, null
  br i1 %.not52.i, label %.loopexit.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph79.split.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %.04375.i = load ptr, ptr %i.ds, align 8        ; 2 uses
  %.not5376.i = icmp eq ptr %.04375.i, null
  br i1 %.not5376.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.z, %bb.ac
  %.04377.i = phi ptr [ %.043.i, %bb.ac ], [ %.04375.i, %bb.z ] ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.04377.i, i64 56
  %i.du = load i8, ptr %i.dt, align 1
  %.off.i = add i8 %i.du, -1
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dv = getelementptr inbounds nuw i8, ptr %.04377.i, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12772
  %i.dy = load i32, ptr %i.dx, align 4
  %i.dz = icmp eq i32 %.val76, %i.dy
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %.04377.i, i64 96
  %i.eb = load i64, ptr %i.ea, align 8            ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.04377.i, i64 104
  %i.ed = load i16, ptr %i.ec, align 8
  %i.ee = zext i16 %i.ed to i64
  %i.ef = add i64 %i.eb, %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %.04377.i, i64 192
  %i.eh = load i8, ptr %i.eg, align 8, !range !8, !noundef !9
  %i.ei = trunc nuw i8 %i.eh to i1
  %.not58.i = xor i1 %i.ei, true
  %.not54.i = icmp ult i64 %i.cg, %i.eb
  %or.cond59.i = select i1 %.not58.i, i1 true, i1 %.not54.i
  %.not55.i = icmp ugt i64 %i.cd, %i.ef
  %or.cond60.i = select i1 %or.cond59.i, i1 true, i1 %.not55.i
  br i1 %or.cond60.i, label %bb.ac, label %nvme_atomic_write_check.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i
  %i.ej = getelementptr inbounds nuw i8, ptr %.04377.i, i64 200
  %.043.i = load ptr, ptr %i.ej, align 8          ; 2 uses
  %.not53.i = icmp eq ptr %.043.i, null
  br i1 %.not53.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !50

.loopexit.i:                                      ; preds = %bb.ac, %bb.z, %.lr.ph79.split.i
  %5 = add nuw i32 %.04478.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i32 %5, %i.cw
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph79.split.i, !llvm.loop !49

._crit_edge.i:                                    ; preds = %.loopexit.i, %.loopexit.us.i, %nvme_atomic_boundary_check.exit.thread.i
  %spec.select = zext i1 %.1.shrunk.fr.i to i8
  br label %nvme_atomic_write_check.exit.thread110

nvme_atomic_write_check.exit:                     ; preds = %bb.ab, %bb.x
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.el = load ptr, ptr %i.ek, align 8
  call void @qemu_bh_schedule(ptr noundef %i.el) #23
  br label %.critedge

nvme_atomic_write_check.exit.thread110:           ; preds = %._crit_edge.i, %nvme_get_atomic.exit
  %.2 = phi i8 [ 0, %nvme_get_atomic.exit ], [ %spec.select, %._crit_edge.i ]
  %i.em = load i32, ptr %i.ad, align 4
  %i.en = add i32 %i.em, 1
  %i.eo = load i32, ptr %i.aq, align 4
  %i.ep = urem i32 %i.en, %i.eo
  store i32 %i.ep, ptr %i.ad, align 4
  %i.eq = load ptr, ptr %i.af, align 8            ; 54 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 200 ; 4 uses
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.es, null
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 208
  %i.eu = load ptr, ptr %i.et, align 8            ; 3 uses
  br i1 %.not71, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %nvme_atomic_write_check.exit.thread110
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 208
  store ptr %i.eu, ptr %i.ev, align 8
  br label %bb.af

bb.ae:                                            ; preds = %nvme_atomic_write_check.exit.thread110
  store ptr %i.eu, ptr %i.ar, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ew = load ptr, ptr %i.er, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 208
  store ptr %i.ew, ptr %i.eu, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.er, i8 0, i64 16, i1 false)
  %i.ey = load ptr, ptr %i.as, align 8            ; 2 uses
  store ptr %i.ey, ptr %i.ex, align 8
  store ptr %i.eq, ptr %i.ey, align 8
  store ptr %i.er, ptr %i.as, align 8
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  store ptr null, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ez, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.fb, i8 noundef 0, i64 noundef 16, i1 noundef false) #23
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eq, i64 24 ; 4 uses
  store i16 0, ptr %i.fc, align 8
  %i.fd = load i16, ptr %i.al, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eq, i64 50
  store i16 %i.fd, ptr %i.fe, align 2
  %i.ff = load i16, ptr %i.at, align 1            ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eq, i64 52
  store i16 %i.ff, ptr %i.fg, align 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.fh, ptr noundef nonnull align 1 dereferenceable(64) %1, i64 noundef 64, i1 noundef false) #23
  %i.fi = load i16, ptr %i.al, align 8            ; 2 uses
  %i.fj = icmp ne i16 %i.fi, 0
  %or.cond3 = select i1 %i.fj, i1 %i.cc, i1 false
  br i1 %or.cond3, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eq, i64 192
  store i8 %.2, ptr %i.fk, align 8
  %.pr113 = load i16, ptr %i.al, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.fl = phi i16 [ %.pr113, %bb.ag ], [ %i.fi, %bb.af ]
  %.not72 = icmp eq i16 %i.fl, 0
  br i1 %.not72, label %nvme_cid.exit.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eq, i64 60 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4
  %.fr47.i = freeze i32 %i.fn                     ; 3 uses
  %.val.i = load ptr, ptr %i.eq, align 8
  %i.fo = getelementptr i8, ptr %.val.i, i64 8
  %.val.val.i = load i16, ptr %i.fo, align 8
  %i.fp = load i8, ptr %i.fh, align 8             ; 5 uses
  switch i8 %i.fp, label %bb.at [
    i8 0, label %nvme_io_opc_str.exit.i
    i8 1, label %bb.aj
    i8 2, label %bb.ak
    i8 5, label %bb.al
    i8 8, label %bb.am
    i8 9, label %bb.an
    i8 12, label %bb.ao
    i8 25, label %bb.ap
    i8 121, label %bb.aq
    i8 122, label %bb.ar
    i8 125, label %bb.as
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.ak:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.al:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.am:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.an:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.ao:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.ap:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.aq:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.ar:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.as:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

bb.at:                                            ; preds = %bb.ai
  br label %nvme_io_opc_str.exit.i

nvme_io_opc_str.exit.i:                           ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai
  %.0.i31.i = phi ptr [ @.str.153, %bb.at ], [ @.str.152, %bb.as ], [ @.str.143, %bb.aj ], [ @.str.144, %bb.ak ], [ @.str.145, %bb.al ], [ @.str.146, %bb.am ], [ @.str.147, %bb.an ], [ @.str.148, %bb.ao ], [ @.str.149, %bb.ap ], [ @.str.150, %bb.aq ], [ @.str.151, %bb.ar ], [ @.str.142, %bb.ai ]
  %i.fq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i32.i = icmp eq i32 %i.fq, 0
  br i1 %.not.i32.i, label %trace_pci_nvme_io_cmd.exit.i, label %bb.au, !prof !7

bb.au:                                            ; preds = %nvme_io_opc_str.exit.i
  %i.fr = load i16, ptr @_TRACE_PCI_NVME_IO_CMD_DSTATE, align 2
  %.not4.i.i = icmp eq i16 %i.fr, 0
  br i1 %.not4.i.i, label %trace_pci_nvme_io_cmd.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = load i32, ptr @qemu_loglevel, align 4
  %i.ft = and i32 %i.fs, 32768
  %.not5.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not5.i.i, label %trace_pci_nvme_io_cmd.exit.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fu = zext i16 %i.ff to i32
  %i.fv = zext i16 %.val.val.i to i32
  %i.fw = zext i8 %i.fp to i32
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.141, i32 noundef %i.fu, i32 noundef %.fr47.i, i32 noundef %i.fv, i32 noundef %i.fw, ptr noundef nonnull %.0.i31.i) #23
  %.pre.i = load i8, ptr %i.fh, align 8
  br label %trace_pci_nvme_io_cmd.exit.i

trace_pci_nvme_io_cmd.exit.i:                     ; preds = %bb.aw, %bb.av, %bb.au, %nvme_io_opc_str.exit.i
  %i.fx = phi i8 [ %i.fp, %nvme_io_opc_str.exit.i ], [ %i.fp, %bb.au ], [ %i.fp, %bb.av ], [ %.pre.i, %bb.aw ] ; 6 uses
  %i.fy = icmp eq i8 %i.fx, 0
  br i1 %i.fy, label %bb.ax, label %bb.bc

bb.ax:                                            ; preds = %trace_pci_nvme_io_cmd.exit.i
  %i.fz = load i32, ptr %i.fm, align 4            ; 4 uses
  %i.ga = call ptr @qemu_aio_get(ptr noundef nonnull @nvme_flush_aiocb_info, ptr noundef null, ptr noundef nonnull @nvme_misc_cb, ptr noundef nonnull %i.eq) #23 ; 8 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store ptr %i.eq, ptr %i.gb, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store i32 0, ptr %i.gc, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 64 ; 2 uses
  store ptr null, ptr %i.gd, align 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 72 ; 2 uses
  store i32 0, ptr %i.ge, align 8
  %i.gf = icmp eq i32 %i.fz, -1                   ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 76
  %i.gh = zext i1 %i.gf to i8
  store i8 %i.gh, ptr %i.gg, align 4
  br i1 %i.gf, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gi = add i32 %i.fz, -1
  %i.gj = icmp ult i32 %i.gi, 256
  br i1 %i.gj, label %nvme_ns.exit.i.i, label %bb.bb

nvme_ns.exit.i.i:                                 ; preds = %bb.ay
  %i.gk = zext nneg i32 %i.fz to i64
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.gk
  %i.gm = load ptr, ptr %i.gl, align 8            ; 2 uses
  store ptr %i.gm, ptr %i.gd, align 8
  %.not.i34.i = icmp eq ptr %i.gm, null
  br i1 %.not.i34.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %nvme_ns.exit.i.i
  store i32 %i.fz, ptr %i.ge, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.gn = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store ptr %i.ga, ptr %i.gn, align 8
  call fastcc void @nvme_do_flush(ptr noundef nonnull %i.ga)
end_hunk_0
begin_hunk_1_@nvme_ctrl_post_load:bb.a
  store ptr %0, ptr %i.ad, align 8
  store ptr %0, ptr %i.v, align 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.an = load i64, ptr %i.am, align 8
  store i64 %i.an, ptr %i.w, align 8
  %i.ao = load i16, ptr %i.ae, align 8
  store i16 %i.ao, ptr %i.x, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.aq = load i32, ptr %i.ap, align 4
  store i32 %i.aq, ptr %i.y, align 4
  %i.ar = load i16, ptr %i.ah, align 2
  store i16 %i.ar, ptr %i.z, align 2
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.at = load i32, ptr %i.as, align 4
  store i32 %i.at, ptr %i.aa, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.av = load i32, ptr %i.au, align 8
  store i32 %i.av, ptr %i.ab, align 16
  tail call fastcc void @__nvme_init_sq(ptr noundef nonnull %i.v)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.bb = load i32, ptr %i.ba, align 4
  %i.bc = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i222.peel = icmp eq i32 %i.bc, 0
  br i1 %.not.i222.peel, label %trace_pci_nvme_post_load_restore_sq.exit.peel, label %bb.g, !prof !7

bb.g:                                             ; preds = %nvme_restore_sq.exit.peel
  %i.bd = load i16, ptr @_TRACE_PCI_NVME_POST_LOAD_RESTORE_SQ_DSTATE, align 2
  %.not4.i223.peel = icmp eq i16 %i.bd, 0
  br i1 %.not4.i223.peel, label %trace_pci_nvme_post_load_restore_sq.exit.peel, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.be = load i32, ptr @qemu_loglevel, align 4
  %i.bf = and i32 %i.be, 32768
  %.not5.i224.peel = icmp eq i32 %i.bf, 0
  br i1 %.not5.i224.peel, label %trace_pci_nvme_post_load_restore_sq.exit.peel, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.434, ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) 0, i32 noundef %i.ax, i32 noundef %i.az, i32 noundef %i.bb) #23
  br label %trace_pci_nvme_post_load_restore_sq.exit.peel

trace_pci_nvme_post_load_restore_sq.exit.peel:    ; preds = %nvme_restore_sq.exit.peel, %bb.g, %bb.h, %bb.i
  tail call void @g_free(ptr noundef nonnull %i.ad) #23
  br label %bb.j

bb.j:                                             ; preds = %trace_pci_nvme_post_load_restore_sq.exit.peel, %.lr.ph246
  %i.bg = load i32, ptr %i.e, align 8             ; 3 uses
  %i.bh = icmp ugt i32 %i.bg, 1
  br i1 %i.bh, label %.peel.next, label %.preheader241

bb.k:                                             ; preds = %.lr.ph, %bb.x
  %.0186244 = phi i32 [ 0, %.lr.ph ], [ %i.da, %bb.x ] ; 5 uses
  %i.bi = load ptr, ptr %i.g, align 8
  %i.bj = sext i32 %.0186244 to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bj
  %i.bl = load ptr, ptr %i.bk, align 8            ; 17 uses
  %.not218 = icmp eq ptr %i.bl, null
  br i1 %.not218, label %bb.x, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 10 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2            ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  %.not219 = icmp eq i32 %.0186244, %i.bo
  br i1 %.not219, label %bb.m, label %bb.w

bb.m:                                             ; preds = %bb.l
  store ptr %0, ptr %i.bl, align 8
  %i.bp = icmp eq i16 %i.bn, 0
  br i1 %i.bp, label %bb.n, label %nvme_restore_cq.exit

bb.n:                                             ; preds = %bb.m
  store ptr %0, ptr %i.h, align 8
  %i.bq = load i16, ptr %i.bm, align 2
  store i16 %i.bq, ptr %i.i, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.bs = load i32, ptr %i.br, align 4
  store i32 %i.bs, ptr %i.j, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bu = load i64, ptr %i.bt, align 8
  store i64 %i.bu, ptr %i.k, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bw = load i8, ptr %i.bv, align 8
  store i8 %i.bw, ptr %i.l, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.by = load i16, ptr %i.bx, align 4
  store i16 %i.by, ptr %i.m, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.ca = load i32, ptr %i.bz, align 8
  store i32 %i.ca, ptr %i.n, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cc = load i32, ptr %i.cb, align 8
  store i32 %i.cc, ptr %i.o, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.ce = load i32, ptr %i.cd, align 4
  store i32 %i.ce, ptr %i.p, align 4
  store ptr null, ptr %i.q, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 96
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not23.i.i = icmp eq ptr %i.cg, null
  br i1 %.not23.i.i, label %nvme_restore_cq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bl, i64 104
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %.lr.ph.i.i
  %.024.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.cj, %bb.r ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 200 ; 4 uses
  %i.cj = load ptr, ptr %i.ci, align 8            ; 3 uses
  %.not22.i.i = icmp eq ptr %i.cj, null           ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.024.i.i, i64 208 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8            ; 3 uses
  br i1 %.not22.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 208
  store ptr %i.cl, ptr %i.cm, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store ptr %i.cl, ptr %i.ch, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cn = load ptr, ptr %i.ci, align 8
  store ptr %i.cn, ptr %i.cl, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ci, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %i.r, align 8             ; 2 uses
  store ptr %i.co, ptr %i.ck, align 8
  store ptr %.024.i.i, ptr %i.co, align 8
  store ptr %i.ci, ptr %i.r, align 8
  br i1 %.not22.i.i, label %nvme_restore_cq.exit, label %bb.o, !llvm.loop !107

nvme_restore_cq.exit:                             ; preds = %bb.r, %bb.m, %bb.n
  %.0.i = phi ptr [ %i.bl, %bb.m ], [ %i.h, %bb.n ], [ %i.h, %bb.r ]
  tail call fastcc void @__nvme_init_cq(ptr noundef nonnull %.0.i)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bl, i64 28
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i220 = icmp eq i32 %i.cv, 0
  br i1 %.not.i220, label %trace_pci_nvme_post_load_restore_cq.exit, label %bb.s, !prof !7

bb.s:                                             ; preds = %nvme_restore_cq.exit
  %i.cw = load i16, ptr @_TRACE_PCI_NVME_POST_LOAD_RESTORE_CQ_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.cw, 0
  br i1 %.not4.i, label %trace_pci_nvme_post_load_restore_cq.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = load i32, ptr @qemu_loglevel, align 4
  %i.cy = and i32 %i.cx, 32768
  %.not5.i = icmp eq i32 %i.cy, 0
  br i1 %.not5.i, label %trace_pci_nvme_post_load_restore_cq.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.433, ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %.0186244, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.cu) #23
  br label %trace_pci_nvme_post_load_restore_cq.exit

trace_pci_nvme_post_load_restore_cq.exit:         ; preds = %nvme_restore_cq.exit, %bb.s, %bb.t, %bb.u
  %i.cz = icmp eq i32 %.0186244, 0
  br i1 %i.cz, label %bb.v, label %bb.x

bb.v:                                             ; preds = %trace_pci_nvme_post_load_restore_cq.exit
  tail call void @g_free(ptr noundef nonnull %i.bl) #23
  br label %bb.x

bb.w:                                             ; preds = %bb.l
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 10327, ptr noundef nonnull @__func__.nvme_ctrl_post_load, ptr noundef nonnull @.str.428) #23
  br label %.loopexit

bb.x:                                             ; preds = %bb.k, %bb.v, %trace_pci_nvme_post_load_restore_cq.exit
  %i.da = add nuw i32 %.0186244, 1                ; 2 uses
  %i.db = load i32, ptr %i.e, align 8             ; 2 uses
  %i.dc = icmp ult i32 %i.da, %i.db
  br i1 %i.dc, label %bb.k, label %.preheader242, !llvm.loop !108

.preheader241:                                    ; preds = %bb.af, %bb.j
  %i.dd = phi i32 [ %i.bg, %bb.j ], [ %i.eq, %bb.af ] ; 2 uses
  %.not266 = icmp eq i32 %i.dd, 0
  br i1 %.not266, label %._crit_edge, label %.lr.ph252

.lr.ph252:                                        ; preds = %.preheader241
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 26264
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 26256
  br label %bb.ag

.peel.next:                                       ; preds = %bb.j, %bb.af
  %i.di = phi i32 [ %i.eq, %bb.af ], [ %i.bg, %bb.j ]
  %.1187245 = phi i32 [ %i.er, %bb.af ], [ 1, %bb.j ] ; 4 uses
  %i.dj = load ptr, ptr %i.t, align 16
  %4 = sext i32 %.1187245 to i64
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.dj, i64 %4
  %i.dl = load ptr, ptr %i.dk, align 8            ; 12 uses
  %.not215 = icmp eq ptr %i.dl, null
  br i1 %.not215, label %bb.af, label %bb.y

bb.y:                                             ; preds = %.peel.next
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 2 uses
  %i.dn = load i16, ptr %i.dm, align 8            ; 2 uses
  %i.do = zext i16 %i.dn to i32
  %.not216 = icmp eq i32 %.1187245, %i.do
  br i1 %.not216, label %bb.z, label %.loopexit272

.loopexit272:                                     ; preds = %bb.y, %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 10356, ptr noundef nonnull @__func__.nvme_ctrl_post_load, ptr noundef nonnull @.str.429) #23
  br label %.loopexit

bb.z:                                             ; preds = %bb.y
  %i.dp = load ptr, ptr %i.u, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 10 ; 2 uses
  %i.dr = load i16, ptr %i.dq, align 2
  %i.ds = zext i16 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ds
  %i.du = load ptr, ptr %i.dt, align 8
  %.not217 = icmp eq ptr %i.du, null
  br i1 %.not217, label %.loopexit273, label %bb.aa

.loopexit273:                                     ; preds = %bb.z, %bb.f
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 10362, ptr noundef nonnull @__func__.nvme_ctrl_post_load, ptr noundef nonnull @.str.430) #23
  br label %.loopexit

bb.aa:                                            ; preds = %bb.z
  store ptr %0, ptr %i.dl, align 8
  %i.dv = icmp eq i16 %i.dn, 0
  br i1 %i.dv, label %bb.ab, label %nvme_restore_sq.exit

bb.ab:                                            ; preds = %bb.aa
  store ptr %0, ptr %i.v, align 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dx = load i64, ptr %i.dw, align 8
  store i64 %i.dx, ptr %i.w, align 8
  %i.dy = load i16, ptr %i.dm, align 8
  store i16 %i.dy, ptr %i.x, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.ea = load i32, ptr %i.dz, align 4
  store i32 %i.ea, ptr %i.y, align 4
  %i.eb = load i16, ptr %i.dq, align 2
  store i16 %i.eb, ptr %i.z, align 2
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.ed = load i32, ptr %i.ec, align 4
  store i32 %i.ed, ptr %i.aa, align 4
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ef = load i32, ptr %i.ee, align 8
  store i32 %i.ef, ptr %i.ab, align 16
  br label %nvme_restore_sq.exit

nvme_restore_sq.exit:                             ; preds = %bb.aa, %bb.ab
  %.0.i221 = phi ptr [ %i.v, %bb.ab ], [ %i.dl, %bb.aa ]
  tail call fastcc void @__nvme_init_sq(ptr noundef nonnull %.0.i221)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 12
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ej = load i32, ptr %i.ei, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dl, i64 20
  %i.el = load i32, ptr %i.ek, align 4
  %i.em = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i222 = icmp eq i32 %i.em, 0
  br i1 %.not.i222, label %trace_pci_nvme_post_load_restore_sq.exit._crit_edge, label %bb.ac, !prof !7

bb.ac:                                            ; preds = %nvme_restore_sq.exit
  %i.en = load i16, ptr @_TRACE_PCI_NVME_POST_LOAD_RESTORE_SQ_DSTATE, align 2
  %.not4.i223 = icmp eq i16 %i.en, 0
  br i1 %.not4.i223, label %trace_pci_nvme_post_load_restore_sq.exit._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eo = load i32, ptr @qemu_loglevel, align 4
  %i.ep = and i32 %i.eo, 32768
  %.not5.i224 = icmp eq i32 %i.ep, 0
  br i1 %.not5.i224, label %trace_pci_nvme_post_load_restore_sq.exit._crit_edge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.434, ptr noundef nonnull %0, i32 noundef range(i32 0, 65536) %.1187245, i32 noundef %i.eh, i32 noundef %i.ej, i32 noundef %i.el) #23
  br label %trace_pci_nvme_post_load_restore_sq.exit._crit_edge

trace_pci_nvme_post_load_restore_sq.exit._crit_edge: ; preds = %bb.ae, %bb.ad, %bb.ac, %nvme_restore_sq.exit
  %.pre = load i32, ptr %i.e, align 8
  br label %bb.af

bb.af:                                            ; preds = %trace_pci_nvme_post_load_restore_sq.exit._crit_edge, %.peel.next
  %i.eq = phi i32 [ %.pre, %trace_pci_nvme_post_load_restore_sq.exit._crit_edge ], [ %i.di, %.peel.next ] ; 3 uses
  %i.er = add nuw i32 %.1187245, 1                ; 2 uses
  %i.es = icmp ult i32 %i.er, %i.eq
  br i1 %i.es, label %.peel.next, label %.preheader241, !llvm.loop !109

bb.ag:                                            ; preds = %.lr.ph252, %bb.au
  %i.et = phi i32 [ %i.dd, %.lr.ph252 ], [ %i.gy, %bb.au ] ; 2 uses
  %.2251 = phi i32 [ 0, %.lr.ph252 ], [ %i.gz, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false), !annotation !16
  %i.eu = load ptr, ptr %i.de, align 8
  %i.ev = sext i32 %.2251 to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ev
  %i.ex = load ptr, ptr %i.ew, align 8            ; 4 uses
  %.not208 = icmp eq ptr %i.ex, null
  br i1 %.not208, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 96 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8            ; 2 uses
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %bb.au, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %3, ptr %i.df, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 104 ; 4 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.am
  %.0183247 = phi ptr [ %i.ez, %bb.ai ], [ %i.fd, %bb.am ] ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0183247, i64 200 ; 4 uses
  %i.fd = load ptr, ptr %i.fc, align 8            ; 3 uses
  %.not214 = icmp eq ptr %i.fd, null              ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0183247, i64 208
  %i.ff = load ptr, ptr %i.fe, align 8            ; 3 uses
  br i1 %.not214, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 208
  store ptr %i.ff, ptr %i.fg, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  store ptr %i.ff, ptr %i.fb, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.fh = load ptr, ptr %i.fc, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.0183247, i64 208
  store ptr %i.fh, ptr %i.ff, align 8
  store i64 0, ptr %i.fc, align 8
  %i.fj = load ptr, ptr %i.df, align 8            ; 2 uses
  store ptr %i.fj, ptr %i.fi, align 8
  store ptr %.0183247, ptr %i.fj, align 8
  store ptr %i.fc, ptr %i.df, align 8
  br i1 %.not214, label %.critedge, label %bb.aj, !llvm.loop !110

.critedge:                                        ; preds = %bb.am
  store ptr null, ptr %i.ey, align 8
  store ptr %i.ey, ptr %i.fb, align 8
  %i.fk = load ptr, ptr %3, align 8               ; 2 uses
  %.not210248 = icmp eq ptr %i.fk, null
  br i1 %.not210248, label %.critedge2, label %.lr.ph250

.lr.ph250:                                        ; preds = %.critedge, %bb.at
  %.1249 = phi ptr [ %i.fm, %bb.at ], [ %i.fk, %.critedge ] ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1249, i64 200 ; 4 uses
  %i.fm = load ptr, ptr %i.fl, align 8            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.1249, i64 40
  %i.fo = getelementptr inbounds nuw i8, ptr %.1249, i64 50
  %i.fp = load i16, ptr %i.fo, align 2            ; 2 uses
  %i.fq = zext i16 %i.fp to i32
  %i.fr = load i32, ptr %i.dg, align 16
  %i.fs = add i32 %i.fr, 1
  %i.ft = icmp ugt i32 %i.fs, %i.fq
  br i1 %i.ft, label %nvme_check_sqid.exit, label %nvme_check_sqid.exit.thread

nvme_check_sqid.exit:                             ; preds = %.lr.ph250
  %i.fu = load ptr, ptr %i.dh, align 16
  %i.fv = zext i16 %i.fp to i64
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fu, i64 %i.fv
  %i.fx = load ptr, ptr %i.fw, align 8            ; 3 uses
  %.not238 = icmp eq ptr %i.fx, null
  br i1 %.not238, label %nvme_check_sqid.exit.thread, label %bb.an

nvme_check_sqid.exit.thread:                      ; preds = %.lr.ph250, %nvme_check_sqid.exit
  call void @__assert_fail(ptr noundef nonnull @.str.431, ptr noundef nonnull @.str, i32 noundef 10409, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_ctrl_post_load) #24
  unreachable

bb.an:                                            ; preds = %nvme_check_sqid.exit
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 80
  %i.fz = load ptr, ptr %i.fy, align 8            ; 9 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 200 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %.not212 = icmp eq ptr %i.gb, null
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 208
  %i.gd = load ptr, ptr %i.gc, align 8            ; 3 uses
  br i1 %.not212, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gb, i64 208
  store ptr %i.gd, ptr %i.ge, align 8
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fx, i64 88
  store ptr %i.gd, ptr %i.gf, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gg = load ptr, ptr %i.ga, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fz, i64 208
  store ptr %i.gg, ptr %i.gd, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ga, i8 0, i64 16, i1 false)
  %i.gi = load ptr, ptr %i.fb, align 8            ; 2 uses
  store ptr %i.gi, ptr %i.gh, align 8
  store ptr %i.fz, ptr %i.gi, align 8
  store ptr %i.ga, ptr %i.fb, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fz, i64 32
  store ptr null, ptr %i.gk, align 8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.fz, i64 40 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gl, i8 noundef 0, i64 noundef 16, i1 noundef false) #23
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  store i16 0, ptr %i.gm, align 8
  %i.gn = getelementptr inbounds nuw i8, ptr %.1249, i64 24
  %i.go = load i16, ptr %i.gn, align 8
  store i16 %i.go, ptr %i.gm, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.gl, ptr noundef nonnull align 1 dereferenceable(16) %i.fn, i64 noundef 16, i1 noundef false) #23
  %i.gp = getelementptr inbounds nuw i8, ptr %i.fz, i64 56
  %i.gq = getelementptr inbounds nuw i8, ptr %.1249, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.gp, ptr noundef nonnull align 1 dereferenceable(64) %i.gq, i64 noundef 64, i1 noundef false) #23
  %i.gr = load ptr, ptr %i.fl, align 8            ; 2 uses
  %.not213 = icmp eq ptr %i.gr, null
  %i.gs = getelementptr inbounds nuw i8, ptr %.1249, i64 208
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  br i1 %.not213, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 208
  store ptr %i.gt, ptr %i.gu, align 8
  %.pre278 = load ptr, ptr %i.fl, align 8
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  store ptr %i.gt, ptr %i.df, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.gv = phi ptr [ null, %bb.as ], [ %.pre278, %bb.ar ]
  store ptr %i.gv, ptr %i.gt, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fl, i8 0, i64 16, i1 false)
  call void @g_free(ptr noundef nonnull %.1249) #23
  %.not210 = icmp eq ptr %i.fm, null
  br i1 %.not210, label %.critedge2, label %.lr.ph250, !llvm.loop !111

.critedge2:                                       ; preds = %bb.at, %.critedge
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ex, i64 56
  %i.gx = load ptr, ptr %i.gw, align 8
  call void @qemu_bh_schedule(ptr noundef %i.gx) #23
  %.pre279 = load i32, ptr %i.e, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.ag, %bb.ah, %.critedge2
  %i.gy = phi i32 [ %i.et, %bb.ag ], [ %i.et, %bb.ah ], [ %.pre279, %.critedge2 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  %i.gz = add nuw i32 %.2251, 1                   ; 2 uses
  %i.ha = icmp ult i32 %i.gz, %i.gy
  br i1 %i.ha, label %bb.ag, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.au, %trace_pci_nvme_post_load_enter.exit, %.preheader242, %.preheader241
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 11144
  %i.hc = load i32, ptr %i.hb, align 8
  %.not = icmp eq i32 %i.hc, 0
  br i1 %.not, label %.loopexit240, label %bb.av

bb.av:                                            ; preds = %._crit_edge
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 11128
  %.0253 = load ptr, ptr %i.hd, align 8           ; 2 uses
  %.not202254 = icmp eq ptr %.0253, null
  %i.he = load i32, ptr @trace_events_enabled_count, align 4 ; 2 uses
  %i.hf = icmp eq i32 %i.he, 0
  %or.cond = select i1 %.not202254, i1 true, i1 %i.hf, !prof !36
  br i1 %or.cond, label %.loopexit240, label %.lr.ph257.split, !prof !36

.lr.ph257.split:                                  ; preds = %bb.av, %trace_pci_nvme_post_load_aer.exit
  %i.hg = phi i32 [ %i.ht, %trace_pci_nvme_post_load_aer.exit ], [ %i.he, %bb.av ] ; 3 uses
  %.0255 = phi ptr [ %.0, %trace_pci_nvme_post_load_aer.exit ], [ %.0253, %bb.av ] ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.0255, i64 16
  %i.hi = load i8, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %.0255, i64 17
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = getelementptr inbounds nuw i8, ptr %.0255, i64 18
  %i.hm = load i8, ptr %i.hl, align 2
  %.not.i225 = icmp eq i32 %i.hg, 0
  br i1 %.not.i225, label %trace_pci_nvme_post_load_aer.exit, label %bb.aw, !prof !7

bb.aw:                                            ; preds = %.lr.ph257.split
  %i.hn = load i16, ptr @_TRACE_PCI_NVME_POST_LOAD_AER_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.hn, 0
  br i1 %.not3.i, label %trace_pci_nvme_post_load_aer.exit, label %bb.ax
end_hunk_1
