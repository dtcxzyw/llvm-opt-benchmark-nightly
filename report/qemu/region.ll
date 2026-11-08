Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/region?download=true
inline.NumInlined: 37
inline.NumDeleted: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@vfio_region_setup:bb.a
  %i.by = load i32, ptr %i.br, align 4            ; 2 uses
  %i.bz = icmp ugt i32 %i.by, 1
  br i1 %i.bz, label %.critedge.lr.ph.i, label %vfio_setup_region_sparse_mmaps.exit.thread

.critedge.lr.ph.i:                                ; preds = %bb.q
  %i.ca = load ptr, ptr %i.ao, align 8            ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 280
  %.pre109.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %.critedge.i

bb.r:                                             ; preds = %.critedge.i
  %i.cb = add nuw i32 %.18197.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.cb, %i.by
  br i1 %exitcond.not.i, label %vfio_setup_region_sparse_mmaps.exit.thread, label %.critedge.i, !llvm.loop !13

.critedge.i:                                      ; preds = %bb.r, %.critedge.lr.ph.i
  %i.cc = phi i64 [ %.pre109.i, %.critedge.lr.ph.i ], [ %i.cm, %bb.r ] ; 2 uses
  %.18197.i = phi i32 [ 1, %.critedge.lr.ph.i ], [ %i.cb, %bb.r ] ; 3 uses
  %i.cd = add i32 %.18197.i, -1
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds [304 x i8], ptr %i.ca, i64 %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 288
  %i.ch = load i64, ptr %i.cg, align 16
  %i.ci = add i64 %i.ch, %i.cc                    ; 2 uses
  %i.cj = sext i32 %.18197.i to i64
  %i.ck = getelementptr inbounds [304 x i8], ptr %i.ca, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 280
  %i.cm = load i64, ptr %i.cl, align 8            ; 4 uses
  %.not87.i = icmp sgt i64 %i.ci, %i.cm
  br i1 %.not87.i, label %vfio_setup_region_sparse_mmaps.exit.thread74, label %bb.r

vfio_setup_region_sparse_mmaps.exit.thread74:     ; preds = %.critedge.i
  %i.cn = load i8, ptr %i.o, align 8
  %i.co = zext i8 %i.cn to i32
  %i.cp = add nsw i64 %i.ci, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 288
  %i.cr = load i64, ptr %i.cq, align 16
  %i.cs = add i64 %i.cm, -1
  %i.ct = add i64 %i.cs, %i.cr
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %5, ptr noundef nonnull @.str.6, i32 noundef 219, ptr noundef nonnull @__func__.vfio_setup_region_sparse_mmaps, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.vfio_setup_region_sparse_mmaps, i32 noundef %i.co, i64 noundef %i.cc, i64 noundef %i.cp, i64 noundef %i.cm, i64 noundef %i.ct) #14
  %i.cu = load ptr, ptr %i.ao, align 8
  call void @g_free(ptr noundef %i.cu) #14
  store ptr null, ptr %i.ao, align 8
  store i32 0, ptr %i.br, align 4
  br label %trace_vfio_region_setup.exit

vfio_setup_region_sparse_mmaps.exit:              ; preds = %bb.f
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 36
  store i32 1, ptr %i.cv, align 4
  %i.cw = call noalias dereferenceable_or_null(304) ptr @g_malloc0(i64 noundef 304) #16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.cw, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 280
  store i64 0, ptr %i.cy, align 8
  %i.cz = load i64, ptr %i.j, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 288
  store i64 %i.cz, ptr %i.da, align 16
  br label %vfio_setup_region_sparse_mmaps.exit.thread

vfio_setup_region_sparse_mmaps.exit.thread:       ; preds = %bb.r, %bb.q, %._crit_edge.i, %bb.d, %bb.e, %vfio_setup_region_sparse_mmaps.exit, %bb.c
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load i32, ptr %i.g, align 8
  %i.de = zext i32 %i.dd to i64
  %i.df = load i64, ptr %i.m, align 8
  %i.dg = load i64, ptr %i.j, align 8
  %i.dh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i72 = icmp eq i32 %i.dh, 0
  br i1 %.not.i72, label %trace_vfio_region_setup.exit, label %bb.s, !prof !10

bb.s:                                             ; preds = %vfio_setup_region_sparse_mmaps.exit.thread
  %i.di = load i16, ptr @_TRACE_VFIO_REGION_SETUP_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.di, 0
  br i1 %.not5.i, label %trace_vfio_region_setup.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dj = load i32, ptr @qemu_loglevel, align 4
  %i.dk = and i32 %i.dj, 32768
  %.not6.i = icmp eq i32 %i.dk, 0
  br i1 %.not6.i, label %trace_vfio_region_setup.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, ptr noundef %i.dc, i32 noundef %3, ptr noundef %4, i64 noundef range(i64 0, 4294967296) %i.de, i64 noundef %i.df, i64 noundef %i.dg) #14
  br label %trace_vfio_region_setup.exit

trace_vfio_region_setup.exit:                     ; preds = %bb.u, %bb.t, %bb.s, %vfio_setup_region_sparse_mmaps.exit.thread, %vfio_setup_region_sparse_mmaps.exit.thread74, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -22, %vfio_setup_region_sparse_mmaps.exit.thread74 ], [ 0, %vfio_setup_region_sparse_mmaps.exit.thread ], [ 0, %bb.s ], [ 0, %bb.t ], [ 0, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.0
}

declare i32 @vfio_device_get_region_info(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #6

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #7

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @vfio_region_mmap(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %trace_vfio_region_mmap_fault.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.e = load i32, ptr %i.d, align 4
  %.not120 = icmp eq i32 %i.e, 0
  br i1 %.not120, label %trace_vfio_region_mmap_fault.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = and i32 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = add i64 %i.j, -1
  %i.l = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.k, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  %i.m = add nsw i64 %i.l, -1
  %i.n = lshr exact i64 -9223372036854775808, %i.m
  %.not6.i = icmp eq i64 %i.j, 0
  %i.o = zext i1 %.not6.i to i64
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 1073741824)
  %i.q = select i1 %.not.i, i64 %i.o, i64 %i.p    ; 4 uses
  %i.r = add i64 %i.q, %i.j
  %i.s = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.r, i32 noundef 0, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14 ; 3 uses
  %i.t = icmp eq ptr %i.s, inttoptr (i64 -1 to ptr)
  br i1 %i.t, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.u = tail call ptr @__errno_location() #18
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sub i32 0, %i.v                          ; 5 uses
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = tail call ptr @memory_region_name(ptr noundef %i.x) #14
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ab = load i64, ptr %i.i, align 8
  %i.ac = add i64 %i.aa, -1
  %i.ad = add i64 %i.ac, %i.ab
  %i.ae = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i123 = icmp eq i32 %i.ae, 0
  br i1 %.not.i123, label %trace_vfio_region_mmap_fault.exit, label %bb.e, !prof !10

bb.e:                                             ; preds = %bb.d
  %i.af = load i16, ptr @_TRACE_VFIO_REGION_MMAP_FAULT_DSTATE, align 2
  %.not4.i = icmp eq i16 %i.af, 0
  br i1 %.not4.i, label %trace_vfio_region_mmap_fault.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 32768
  %.not5.i = icmp eq i32 %i.ah, 0
  br i1 %.not5.i, label %trace_vfio_region_mmap_fault.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, ptr noundef %i.y, i32 noundef -1, i64 noundef %i.aa, i64 noundef %i.ad, i32 noundef %i.w) #14
  br label %trace_vfio_region_mmap_fault.exit

bb.h:                                             ; preds = %bb.c
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.ak = load i8, ptr %i.aj, align 8
  %i.al = zext i8 %i.ak to i32
  %i.am = tail call i32 @vfio_device_get_region_fd(ptr noundef %i.ai, i32 noundef %i.al) #14
  %i.an = ptrtoint ptr %i.s to i64                ; 2 uses
  %i.ao = add i64 %i.an, -1
  %i.ap = add i64 %i.ao, %i.q
  %i.aq = sub nsw i64 0, %i.q
  %i.ar = and i64 %i.ap, %i.aq                    ; 2 uses
  %i.as = inttoptr i64 %i.ar to ptr               ; 5 uses
  %i.at = sub i64 %i.ar, %i.an                    ; 2 uses
  %i.au = tail call i32 @munmap(ptr noundef %i.s, i64 noundef %i.at) #14 ; 0 uses
  %i.av = load i64, ptr %i.i, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.av
  %i.ax = sub i64 %i.q, %i.at
  %i.ay = tail call i32 @munmap(ptr noundef %i.aw, i64 noundef %i.ax) #14 ; 0 uses
  %i.az = load i32, ptr %i.d, align 4
  %.not144 = icmp eq i32 %i.az, 0
  br i1 %.not144, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 18 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.ba, align 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %trace_vfio_region_mmap.exit
  %i.bc = phi ptr [ %.pre, %.lr.ph ], [ %i.ep, %trace_vfio_region_mmap.exit ]
  %.0116140 = phi i32 [ 0, %.lr.ph ], [ %i.er, %trace_vfio_region_mmap.exit ] ; 5 uses
  %.0117139 = phi i64 [ 0, %.lr.ph ], [ %i.eq, %trace_vfio_region_mmap.exit ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %i.as, i64 %.0117139
  %i.be = sext i32 %.0116140 to i64               ; 12 uses
  %i.bf = getelementptr inbounds [304 x i8], ptr %i.bc, i64 %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 280
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = sub i64 %i.bh, %.0117139
  %i.bj = tail call i32 @munmap(ptr noundef %i.bd, i64 noundef %i.bi) #14 ; 0 uses
  %i.bk = load ptr, ptr %i.ba, align 8
  %i.bl = getelementptr inbounds [304 x i8], ptr %i.bk, i64 %i.be ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 280
  %i.bn = load i64, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.as, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 288
  %i.bq = load i64, ptr %i.bp, align 16
  %i.br = load i64, ptr %i.bb, align 8
  %i.bs = add i64 %i.br, %i.bn
  %i.bt = tail call ptr @mmap64(ptr noundef %i.bo, i64 noundef %i.bq, i32 noundef %i.h, i32 noundef 17, i32 noundef %i.am, i64 noundef %i.bs) #14
  %i.bu = load ptr, ptr %i.ba, align 8
  %i.bv = getelementptr inbounds [304 x i8], ptr %i.bu, i64 %i.be
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 272
  store ptr %i.bt, ptr %i.bw, align 16
  %i.bx = load ptr, ptr %i.ba, align 8
  %i.by = getelementptr inbounds [304 x i8], ptr %i.bx, i64 %i.be ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 272
  %i.ca = load ptr, ptr %i.bz, align 16
  %i.cb = icmp eq ptr %i.ca, inttoptr (i64 -1 to ptr)
  br i1 %i.cb, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cc = tail call ptr @__errno_location() #18
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = sub i32 0, %i.cd                        ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 280
  %i.cg = load i64, ptr %i.cf, align 8            ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.as, i64 %i.cg
  %i.ci = load i64, ptr %i.i, align 8
  %i.cj = sub i64 %i.ci, %i.cg
  %i.ck = tail call i32 @munmap(ptr noundef %i.ch, i64 noundef %i.cj) #14 ; 0 uses
  %i.cl = load ptr, ptr %i.b, align 8
  %i.cm = tail call ptr @memory_region_name(ptr noundef %i.cl) #14
  %i.cn = load i64, ptr %i.bb, align 8
  %i.co = load ptr, ptr %i.ba, align 8            ; 4 uses
  %i.cp = getelementptr inbounds [304 x i8], ptr %i.co, i64 %i.be ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 280
  %i.cr = load i64, ptr %i.cq, align 8
  %i.cs = add i64 %i.cr, %i.cn                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 288
  %i.cu = load i64, ptr %i.ct, align 16
  %i.cv = add i64 %i.cu, -1
  %i.cw = add i64 %i.cv, %i.cs
  %i.cx = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i124 = icmp eq i32 %i.cx, 0
  br i1 %.not.i124, label %trace_vfio_region_mmap_fault.exit127, label %bb.k, !prof !10

bb.k:                                             ; preds = %bb.j
  %i.cy = load i16, ptr @_TRACE_VFIO_REGION_MMAP_FAULT_DSTATE, align 2
  %.not4.i125 = icmp eq i16 %i.cy, 0
  br i1 %.not4.i125, label %trace_vfio_region_mmap_fault.exit127, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cz = load i32, ptr @qemu_loglevel, align 4
  %i.da = and i32 %i.cz, 32768
  %.not5.i126 = icmp eq i32 %i.da, 0
  br i1 %.not5.i126, label %trace_vfio_region_mmap_fault.exit127, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, ptr noundef %i.cm, i32 noundef %.0116140, i64 noundef %i.cs, i64 noundef %i.cw, i32 noundef %i.ce) #14
  %.pre159 = load ptr, ptr %i.ba, align 8
  br label %trace_vfio_region_mmap_fault.exit127

trace_vfio_region_mmap_fault.exit127:             ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.db = phi ptr [ %i.co, %bb.j ], [ %i.co, %bb.k ], [ %i.co, %bb.l ], [ %.pre159, %bb.m ]
  %i.dc = getelementptr inbounds [304 x i8], ptr %i.db, i64 %i.be
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 272
  store ptr null, ptr %i.dd, align 16
  %.1141 = add i32 %.0116140, -1                  ; 2 uses
  %i.de = icmp sgt i32 %.1141, -1
  br i1 %i.de, label %.lr.ph143.preheader, label %trace_vfio_region_mmap_fault.exit

.lr.ph143.preheader:                              ; preds = %trace_vfio_region_mmap_fault.exit127
  %i.df = zext nneg i32 %.1141 to i64
  br label %.lr.ph143

bb.n:                                             ; preds = %bb.i
  %i.dg = load ptr, ptr %i.b, align 8
  %i.dh = tail call ptr @memory_region_name(ptr noundef %i.dg) #14
  %i.di = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.8, ptr noundef %i.dh, i32 noundef %.0116140) #14 ; 2 uses
  %i.dj = load ptr, ptr %i.ba, align 8
  %i.dk = getelementptr inbounds [304 x i8], ptr %i.dj, i64 %i.be
  %i.dl = load ptr, ptr %i.b, align 8
  %i.dm = tail call ptr @memory_region_owner(ptr noundef %i.dl) #14
  %i.dn = load ptr, ptr %i.ba, align 8
  %i.do = getelementptr inbounds [304 x i8], ptr %i.dn, i64 %i.be ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 288
  %i.dq = load i64, ptr %i.dp, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 272
  %i.ds = load ptr, ptr %i.dr, align 16
  tail call void @memory_region_init_ram_device_ptr(ptr noundef %i.dk, ptr noundef %i.dm, ptr noundef %i.di, i64 noundef %i.dq, ptr noundef %i.ds) #14
  tail call void @g_free(ptr noundef %i.di) #14
  %i.dt = load ptr, ptr %i.b, align 8
  %i.du = load ptr, ptr %i.ba, align 8
  %i.dv = getelementptr inbounds [304 x i8], ptr %i.du, i64 %i.be ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 280
  %i.dx = load i64, ptr %i.dw, align 8
  tail call void @memory_region_add_subregion(ptr noundef %i.dt, i64 noundef %i.dx, ptr noundef %i.dv) #14
  %i.dy = load ptr, ptr %i.ba, align 8
  %i.dz = getelementptr inbounds [304 x i8], ptr %i.dy, i64 %i.be
  %i.ea = tail call ptr @memory_region_name(ptr noundef %i.dz) #14
  %i.eb = load ptr, ptr %i.ba, align 8            ; 4 uses
  %i.ec = getelementptr inbounds [304 x i8], ptr %i.eb, i64 %i.be ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 280
  %i.ee = load i64, ptr %i.ed, align 8            ; 5 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 288
  %i.eg = load i64, ptr %i.ef, align 16           ; 4 uses
  %i.eh = add i64 %i.ee, -1
  %i.ei = add i64 %i.eh, %i.eg
  %i.ej = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i128 = icmp eq i32 %i.ej, 0
  br i1 %.not.i128, label %trace_vfio_region_mmap.exit, label %bb.o, !prof !10

bb.o:                                             ; preds = %bb.n
  %i.ek = load i16, ptr @_TRACE_VFIO_REGION_MMAP_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.ek, 0
  br i1 %.not2.i, label %trace_vfio_region_mmap.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.el = load i32, ptr @qemu_loglevel, align 4
  %i.em = and i32 %i.el, 32768
  %.not3.i = icmp eq i32 %i.em, 0
  br i1 %.not3.i, label %trace_vfio_region_mmap.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17, ptr noundef %i.ea, i64 noundef %i.ee, i64 noundef %i.ei) #14
  %.pre154 = load ptr, ptr %i.ba, align 8         ; 2 uses
  %.phi.trans.insert = getelementptr inbounds [304 x i8], ptr %.pre154, i64 %i.be ; 2 uses
  %.phi.trans.insert155 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 280
  %.pre156 = load i64, ptr %.phi.trans.insert155, align 8
  %.phi.trans.insert157 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 288
  %.pre158 = load i64, ptr %.phi.trans.insert157, align 16
  br label %trace_vfio_region_mmap.exit

trace_vfio_region_mmap.exit:                      ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %i.en = phi i64 [ %i.eg, %bb.n ], [ %i.eg, %bb.o ], [ %i.eg, %bb.p ], [ %.pre158, %bb.q ]
  %i.eo = phi i64 [ %i.ee, %bb.n ], [ %i.ee, %bb.o ], [ %i.ee, %bb.p ], [ %.pre156, %bb.q ]
  %i.ep = phi ptr [ %i.eb, %bb.n ], [ %i.eb, %bb.o ], [ %i.eb, %bb.p ], [ %.pre154, %bb.q ]
  %i.eq = add i64 %i.en, %i.eo                    ; 2 uses
  %i.er = add nuw i32 %.0116140, 1                ; 2 uses
  %i.es = load i32, ptr %i.d, align 4
  %i.et = icmp ult i32 %i.er, %i.es
  br i1 %i.et, label %bb.i, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %trace_vfio_region_mmap.exit, %bb.h
  %.0117.lcssa = phi i64 [ 0, %bb.h ], [ %i.eq, %trace_vfio_region_mmap.exit ] ; 3 uses
  %i.eu = load i64, ptr %i.i, align 8             ; 2 uses
  %i.ev = icmp ult i64 %.0117.lcssa, %i.eu
  br i1 %i.ev, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  %i.ew = getelementptr inbounds i8, ptr %i.as, i64 %.0117.lcssa
  %i.ex = sub nuw i64 %i.eu, %.0117.lcssa
  %i.ey = tail call i32 @munmap(ptr noundef %i.ew, i64 noundef %i.ex) #14 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge
  %i.ez = load ptr, ptr %0, align 8               ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 144
  %i.fb = load ptr, ptr %i.fa, align 8
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = and i64 %i.fc, 1
  %.not.i129 = icmp eq i64 %i.fd, 0
  br i1 %.not.i129, label %vfio_region_create_dma_buf.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fe = load i32, ptr %i.d, align 4
  %i.ff = zext i32 %i.fe to i64
  %i.fg = shl nuw nsw i64 %i.ff, 4
  %i.fh = add nuw nsw i64 %i.fg, 24               ; 2 uses
  %i.fi = tail call noalias ptr @g_malloc0(i64 noundef %i.fh) #16 ; 12 uses
  %i.fj = trunc i64 %i.fh to i32
  store i32 %i.fj, ptr %i.fi, align 4
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store i32 65547, ptr %.sroa.24.0..sroa_idx.i, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fl = load i8, ptr %i.aj, align 8
  %i.fm = zext i8 %i.fl to i32
  %i.fn = load i32, ptr %i.d, align 4             ; 6 uses
  store i32 %i.fm, ptr %i.fk, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 12
  store i32 2, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  store i32 0, ptr %.sroa.3.0..sroa_idx.i, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fi, i64 20
  store i32 %i.fn, ptr %.sroa.4.0..sroa_idx.i, align 4
  %.not52.i = icmp eq i32 %i.fn, 0
  br i1 %.not52.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fp = load ptr, ptr %i.fo, align 8            ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fi, i64 24 ; 3 uses
  %xtraiter = and i32 %i.fn, 1
  %i.fr = icmp eq i32 %i.fn, 1
  br i1 %i.fr, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i32 %i.fn, -2
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i.new
  %.04649.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.gj, %bb.u ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.u ]
  %i.fs = sext i32 %.04649.i to i64               ; 2 uses
  %i.ft = getelementptr inbounds [304 x i8], ptr %i.fp, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 280
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = getelementptr inbounds [16 x i8], ptr %i.fq, i64 %i.fs ; 2 uses
  store i64 %i.fv, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 288
  %i.fy = load i64, ptr %i.fx, align 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store i64 %i.fy, ptr %i.fz, align 8
  %i.ga = or disjoint i32 %.04649.i, 1
  %i.gb = sext i32 %i.ga to i64                   ; 2 uses
  %i.gc = getelementptr inbounds [304 x i8], ptr %i.fp, i64 %i.gb ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 280
  %i.ge = load i64, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds [16 x i8], ptr %i.fq, i64 %i.gb ; 2 uses
  store i64 %i.ge, ptr %i.gf, align 8
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 288
  %i.gh = load i64, ptr %i.gg, align 16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  store i64 %i.gh, ptr %i.gi, align 8
  %i.gj = add nuw i32 %.04649.i, 2                ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.u, !llvm.loop !15

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %bb.u
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.04649.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.gj, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i32 %i.fn to i1
  tail call void @llvm.assume(i1 %lcmp.mod184)
  %i.gk = sext i32 %.04649.i.epil.init to i64     ; 2 uses
  %i.gl = getelementptr inbounds [304 x i8], ptr %i.fp, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 280
  %i.gn = load i64, ptr %i.gm, align 8
  %i.go = getelementptr inbounds [16 x i8], ptr %i.fq, i64 %i.gk ; 2 uses
  store i64 %i.gn, ptr %i.go, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 288
  %i.gq = load i64, ptr %i.gp, align 16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gq, ptr %i.gr, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %bb.t
  %i.gs = tail call i32 @vfio_device_get_feature(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.fi) #14 ; 5 uses
  %i.gt = icmp slt i32 %i.gs, 0
  br i1 %i.gt, label %bb.v, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i
  %i.gu = load i32, ptr %i.d, align 4
  %.not53.i = icmp eq i32 %i.gu, 0
  br i1 %.not53.i, label %vfio_region_create_dma_buf.exit.thread, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  br label %bb.x

bb.v:                                             ; preds = %._crit_edge.i
  %i.gw = icmp eq i32 %i.gs, -25
  br i1 %i.gw, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.gx = tail call zeroext i1 (ptr, ptr, ...) @warn_report_once_cond(ptr noundef nonnull @vfio_region_create_dma_buf.print_once_, ptr noundef nonnull @.str.18) #14 ; 0 uses
  br label %vfio_region_create_dma_buf.exit.thread

bb.x:                                             ; preds = %trace_vfio_region_dmabuf.exit.i, %.lr.ph51.i
  %.150.i = phi i32 [ 0, %.lr.ph51.i ], [ %i.ia, %trace_vfio_region_dmabuf.exit.i ] ; 2 uses
  %i.gy = load ptr, ptr %i.gv, align 8
  %i.gz = sext i32 %.150.i to i64                 ; 3 uses
  %i.ha = getelementptr inbounds [304 x i8], ptr %i.gy, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  %i.hc = load ptr, ptr %i.hb, align 8            ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 368
  store i32 %i.gs, ptr %i.hd, align 8
  %i.he = load ptr, ptr %i.gv, align 8
  %i.hf = getelementptr inbounds [304 x i8], ptr %i.he, i64 %i.gz
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 280
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hc, i64 376
  store i64 %i.hh, ptr %i.hi, align 8
  %i.hj = load ptr, ptr %0, align 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 72
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = load i8, ptr %i.aj, align 8
  %i.hn = zext i8 %i.hm to i32
  %i.ho = load ptr, ptr %i.b, align 8
  %i.hp = tail call ptr @memory_region_name(ptr noundef %i.ho) #14
  %i.hq = load ptr, ptr %i.gv, align 8
  %i.hr = getelementptr inbounds [304 x i8], ptr %i.hq, i64 %i.gz ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 280
  %i.ht = load i64, ptr %i.hs, align 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 288
  %i.hv = load i64, ptr %i.hu, align 16
  %i.hw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i.i, label %trace_vfio_region_dmabuf.exit.i, label %bb.y, !prof !10

bb.y:                                             ; preds = %bb.x
  %i.hx = load i16, ptr @_TRACE_VFIO_REGION_DMABUF_DSTATE, align 2
  %.not5.i.i = icmp eq i16 %i.hx, 0
  br i1 %.not5.i.i, label %trace_vfio_region_dmabuf.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hy = load i32, ptr @qemu_loglevel, align 4
  %i.hz = and i32 %i.hy, 32768
  %.not6.i.i = icmp eq i32 %i.hz, 0
  br i1 %.not6.i.i, label %trace_vfio_region_dmabuf.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.20, ptr noundef %i.hl, i32 noundef range(i32 0, -2147483648) %i.gs, i32 noundef range(i32 0, 256) %i.hn, ptr noundef %i.hp, i64 noundef %i.ht, i64 noundef %i.hv) #14
  br label %trace_vfio_region_dmabuf.exit.i

trace_vfio_region_dmabuf.exit.i:                  ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %i.ia = add nuw i32 %.150.i, 1                  ; 2 uses
  %i.ib = load i32, ptr %i.d, align 4
  %i.ic = icmp ult i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.x, label %vfio_region_create_dma_buf.exit.thread, !llvm.loop !16

vfio_region_create_dma_buf.exit.thread:           ; preds = %trace_vfio_region_dmabuf.exit.i, %bb.s, %bb.w, %.preheader.i
  %.048.i.ph = phi ptr [ null, %bb.s ], [ %i.fi, %.preheader.i ], [ %i.fi, %bb.w ], [ %i.fi, %trace_vfio_region_dmabuf.exit.i ]
  tail call void @g_free(ptr noundef %.048.i.ph) #14
  br label %trace_vfio_region_mmap_fault.exit

bb.ab:                                            ; preds = %bb.v
  %i.id = sub i32 0, %i.gs
  %i.ie = load ptr, ptr %i.b, align 8
  %i.if = tail call ptr @memory_region_name(ptr noundef %i.ie) #14
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6, i32 noundef 330, ptr noundef nonnull @__func__.vfio_region_create_dma_buf, i32 noundef %i.id, ptr noundef nonnull @.str.19, ptr noundef %i.if) #14
  call void @g_free(ptr noundef nonnull %i.fi) #14
  %i.ig = load ptr, ptr %i.a, align 8
  %i.ih = call zeroext i1 @warn_report_err_once_cond(ptr noundef nonnull @vfio_region_mmap.print_once_, ptr noundef %i.ig) #14 ; 0 uses
  br label %trace_vfio_region_mmap_fault.exit

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %vfio_subregion_unmap.exit
  %indvars.iv151 = phi i64 [ %i.df, %.lr.ph143.preheader ], [ %indvars.iv.next152, %vfio_subregion_unmap.exit ] ; 8 uses
end_hunk_0
