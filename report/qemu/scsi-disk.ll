Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/scsi-disk?download=true
inline.NumInlined: 175
inline.NumDeleted: 76
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@scsi_disk_emulate_write_data:bb.a
  %i.ld = zext i32 %i.jz to i64
  %i.le = add i64 %i.lc, %i.ld                    ; 2 uses
  %.not.i.i41 = icmp ugt i64 %i.lc, %i.le
  br i1 %.not.i.i41, label %check_lba_range.exit.thread.i, label %check_lba_range.exit.i

check_lba_range.exit.i:                           ; preds = %bb.cq
  %i.lf = getelementptr inbounds nuw i8, ptr %i.jy, i64 608
  %i.lg = load i64, ptr %i.lf, align 8
  %i.lh = add i64 %i.lg, 1
  %.not116.i = icmp ugt i64 %i.le, %i.lh
  br i1 %.not116.i, label %check_lba_range.exit.thread.i, label %bb.cu

check_lba_range.exit.thread.i:                    ; preds = %check_lba_range.exit.i, %bb.cq
  %.0.copyload.i42 = load i24, ptr @sense_code_LBA_OUT_OF_RANGE, align 1 ; 4 uses
  %.sroa.3.0.extract.shift.i106.i = lshr i24 %.0.copyload.i42, 8
  %.sroa.4.0.extract.shift.i107.i = lshr i24 %.0.copyload.i42, 16
  %.sroa.4.0.extract.trunc.i108.i = zext nneg i24 %.sroa.4.0.extract.shift.i107.i to i32
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.lj = load i32, ptr %i.li, align 4
  %i.lk = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i109.i = icmp eq i32 %i.lk, 0
  br i1 %.not.i.i109.i, label %scsi_check_condition.exit112.i, label %bb.cr, !prof !10

bb.cr:                                            ; preds = %check_lba_range.exit.thread.i
  %i.ll = load i16, ptr @_TRACE_SCSI_DISK_CHECK_CONDITION_DSTATE, align 2
  %.not4.i.i110.i = icmp eq i16 %i.ll, 0
  br i1 %.not4.i.i110.i, label %scsi_check_condition.exit112.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lm = load i32, ptr @qemu_loglevel, align 4
  %i.ln = and i32 %i.lm, 32768
  %.not5.i.i111.i = icmp eq i32 %i.ln, 0
  br i1 %.not5.i.i111.i, label %scsi_check_condition.exit112.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.lo = and i24 %.0.copyload.i42, 255
  %i.lp = zext nneg i24 %i.lo to i32
  %i.lq = and i24 %.sroa.3.0.extract.shift.i106.i, 255
  %i.lr = zext nneg i24 %i.lq to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.24, i32 noundef %i.lj, i32 noundef %i.lp, i32 noundef %i.lr, i32 noundef %.sroa.4.0.extract.trunc.i108.i) #16
  br label %scsi_check_condition.exit112.i

scsi_check_condition.exit112.i:                   ; preds = %bb.ct, %bb.cs, %bb.cr, %check_lba_range.exit.thread.i
  tail call void @scsi_req_build_sense(ptr noundef nonnull %0, i24 %.0.copyload.i42) #16
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 2) #16
  br label %scsi_disk_emulate_mode_select.exit

bb.cu:                                            ; preds = %check_lba_range.exit.i
  %i.ls = load i8, ptr %i.kb, align 1
  %i.lt = and i8 %i.ls, 1
  %.not97.i = icmp eq i8 %i.lt, 0
  br i1 %.not97.i, label %.split.i, label %bb.cv

.split.i:                                         ; preds = %bb.cu
  %i.lu = getelementptr inbounds nuw i8, ptr %i.jy, i64 600 ; 3 uses
  %i.lv = load i32, ptr %i.lu, align 8
  %i.lw = sext i32 %i.lv to i64
  %i.lx = tail call zeroext i1 @buffer_is_zero_ool(ptr noundef %i.jw, i64 noundef range(i64 -2147483648, 2147483648) %i.lw) #16
  br i1 %i.lx, label %bb.cv, label %buffer_is_zero.exit.thread.i

bb.cv:                                            ; preds = %.split.i, %bb.cu
  %i.ly = load i8, ptr %i.kb, align 1
  %i.lz = lshr i8 %i.ly, 1
  %i.ma = and i8 %i.lz, 4
  %i.mb = zext nneg i8 %i.ma to i32
  %i.mc = tail call ptr @scsi_req_ref(ptr noundef nonnull %0) #16 ; 0 uses
  %i.md = load ptr, ptr %i.ko, align 8
  %i.me = tail call ptr @blk_get_stats(ptr noundef %i.md) #16
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.mg = getelementptr inbounds nuw i8, ptr %i.jy, i64 600 ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 8
  %i.mi = mul i32 %i.mh, %i.jz
  %i.mj = zext i32 %i.mi to i64
  tail call void @block_acct_start(ptr noundef %i.me, ptr noundef nonnull %i.mf, i64 noundef %i.mj, i32 noundef 2) #16
  %i.mk = load ptr, ptr %i.ko, align 8
  %i.ml = load i64, ptr %i.lb, align 8
  %i.mm = load i32, ptr %i.mg, align 8            ; 2 uses
  %i.mn = sext i32 %i.mm to i64
  %i.mo = mul i64 %i.ml, %i.mn
  %i.mp = mul i32 %i.mm, %i.jz
  %i.mq = zext i32 %i.mp to i64
  %i.mr = tail call ptr @blk_aio_pwrite_zeroes(ptr noundef %i.mk, i64 noundef %i.mo, i64 noundef %i.mq, i32 noundef %i.mb, ptr noundef nonnull @scsi_aio_complete, ptr noundef nonnull %0) #16
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.mr, ptr %i.ms, align 8
  br label %scsi_disk_emulate_mode_select.exit

buffer_is_zero.exit.thread.i:                     ; preds = %.split.i
  %i.mt = tail call noalias dereferenceable_or_null(80) ptr @g_malloc0(i64 noundef 80) #17 ; 7 uses
  store ptr %0, ptr %i.mt, align 8
  %i.mu = load i64, ptr %i.lb, align 8
  %i.mv = load i32, ptr %i.lu, align 8            ; 2 uses
  %i.mw = sext i32 %i.mv to i64
  %i.mx = lshr i64 %i.mw, 9
  %i.my = mul i64 %i.mx, %i.mu
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 2 uses
  store i64 %i.my, ptr %i.mz, align 8
  %i.na = ashr i32 %i.mv, 9
  %i.nb = mul i32 %i.na, %i.jz                    ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store i32 %i.nb, ptr %i.nc, align 8
  %i.nd = sext i32 %i.nb to i64
  %i.ne = shl nsw i64 %i.nd, 9
  %i.nf = tail call i64 @llvm.umin.i64(i64 %i.ne, i64 524288) ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mt, i64 64 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mt, i64 72 ; 3 uses
  store i64 %i.nf, ptr %i.nh, align 8
  %i.ni = load ptr, ptr %i.ko, align 8
  %i.nj = tail call ptr @blk_blockalign(ptr noundef %i.ni, i64 noundef %i.nf) #16 ; 2 uses
  store ptr %i.nj, ptr %i.ng, align 8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.mt, i64 24 ; 2 uses
  tail call void @qemu_iovec_init_external(ptr noundef nonnull %i.nk, ptr noundef nonnull %i.ng, i32 noundef 1) #16
  %i.nl = load i64, ptr %i.nh, align 8            ; 3 uses
  %.not118.i = icmp eq i64 %i.nl, 0
  br i1 %.not118.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %buffer_is_zero.exit.thread.i, %.lr.ph.i
  %i.nm = phi i64 [ %i.nv, %.lr.ph.i ], [ 0, %buffer_is_zero.exit.thread.i ] ; 2 uses
  %.0117.i = phi i32 [ %i.nu, %.lr.ph.i ], [ 0, %buffer_is_zero.exit.thread.i ]
  %i.nn = load i32, ptr %i.lu, align 8
  %i.no = sext i32 %i.nn to i64
  %i.np = sub nuw i64 %i.nl, %i.nm
  %i.nq = tail call i64 @llvm.umin.i64(i64 %i.np, i64 %i.no) ; 2 uses
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = getelementptr inbounds i8, ptr %i.nj, i64 %i.nm
  %sext.i = shl i64 %i.nq, 32
  %i.nt = ashr exact i64 %sext.i, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ns, ptr noundef nonnull align 1 %i.jw, i64 noundef %i.nt, i1 noundef false) #16
  %i.nu = add i32 %.0117.i, %i.nr                 ; 2 uses
  %i.nv = sext i32 %i.nu to i64                   ; 2 uses
  %i.nw = icmp ugt i64 %i.nl, %i.nv
  br i1 %i.nw, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %buffer_is_zero.exit.thread.i
  %i.nx = tail call ptr @scsi_req_ref(ptr noundef nonnull %0) #16 ; 0 uses
  %i.ny = load ptr, ptr %i.ko, align 8
  %i.nz = tail call ptr @blk_get_stats(ptr noundef %i.ny) #16
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ob = load i64, ptr %i.nh, align 8
  tail call void @block_acct_start(ptr noundef %i.nz, ptr noundef nonnull %i.oa, i64 noundef %i.ob, i32 noundef 2) #16
  %i.oc = load ptr, ptr %i.ko, align 8
  %i.od = load i64, ptr %i.mz, align 8
  %i.oe = shl i64 %i.od, 9
  %i.of = tail call ptr @blk_aio_pwritev(ptr noundef %i.oc, i64 noundef %i.oe, ptr noundef nonnull %i.nk, i32 noundef 0, ptr noundef nonnull @scsi_write_same_complete, ptr noundef nonnull %i.mt) #16
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 384
  store ptr %i.of, ptr %i.og, align 8
  br label %scsi_disk_emulate_mode_select.exit

bb.cw:                                            ; preds = %bb.f
  tail call void @scsi_req_complete(ptr noundef nonnull %0, i32 noundef 0) #16
  br label %scsi_disk_emulate_mode_select.exit

bb.cx:                                            ; preds = %bb.f
  tail call void @abort() #19
  unreachable

scsi_disk_emulate_mode_select.exit:               ; preds = %._crit_edge.i, %bb.cv, %scsi_check_condition.exit112.i, %scsi_check_condition.exit105.i, %scsi_check_condition.exit.i40, %scsi_check_condition.exit55.i, %scsi_check_condition.exit.i30, %bb.br, %bb.bq, %scsi_check_condition.exit85.i, %scsi_check_condition.exit78.i, %scsi_check_condition.exit.i, %bb.ay, %bb.ax, %bb.ak, %bb.cw, %scsi_check_condition.exit, %bb.ca, %trace_scsi_disk_emulate_write_data.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_disk_emulate_save_request(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 804
  %i.d = load i8, ptr %i.c, align 4, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @scsi_disk_save_request(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @scsi_disk_emulate_load_request(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 804
  %i.d = load i8, ptr %i.c, align 4, !range !8, !noundef !9
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @scsi_disk_load_request(ptr noundef %0, ptr noundef nonnull %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -2147483648, 260) i32 @scsi_disk_emulate_inquiry(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SCSIBlockLimits, align 4    ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 22 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.d = load i8, ptr %i.c, align 1
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.g = load i8, ptr %i.f, align 2               ; 3 uses
  br i1 %.not, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 604 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = trunc i32 %i.i to i8
  %i.k = and i8 %i.j, 31
  store i8 %i.k, ptr %1, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.g, ptr %i.l, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 0, ptr %i.m, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  store i8 0, ptr %i.n, align 1
  switch i8 %i.g, label %scsi_disk_emulate_vpd_page.exit [
    i8 0, label %bb.c
    i8 -128, label %bb.j
    i8 -125, label %bb.s
    i8 -80, label %bb.af
    i8 -79, label %bb.am
    i8 -78, label %bb.an
  ]

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.p = load i64, ptr %i.o, align 8
  %i.q = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %trace_scsi_disk_emulate_vpd_page_00.exit.i, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  %i.r = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_VPD_PAGE_00_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.r, 0
  br i1 %.not1.i.i, label %trace_scsi_disk_emulate_vpd_page_00.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 32768
  %.not2.i.i = icmp eq i32 %i.t, 0
  br i1 %.not2.i.i, label %trace_scsi_disk_emulate_vpd_page_00.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.41, i64 noundef %i.p) #16
  br label %trace_scsi_disk_emulate_vpd_page_00.exit.i

trace_scsi_disk_emulate_vpd_page_00.exit.i:       ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 760
  %i.w = load ptr, ptr %i.v, align 8
  %.not171.i = icmp eq ptr %i.w, null
  br i1 %.not171.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %trace_scsi_disk_emulate_vpd_page_00.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 -128, ptr %i.x, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %trace_scsi_disk_emulate_vpd_page_00.exit.i
  %.0156.i = phi i32 [ 6, %bb.g ], [ 5, %trace_scsi_disk_emulate_vpd_page_00.exit.i ] ; 3 uses
  %i.y = add nuw nsw i32 %.0156.i, 1              ; 2 uses
  %i.z = zext nneg i32 %.0156.i to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.z ; 3 uses
  store i8 -125, ptr %i.aa, align 1
  %i.ab = load i32, ptr %i.h, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.ao

bb.i:                                             ; preds = %bb.h
  %i.ad = zext nneg i32 %i.y to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.ad
  store i8 -80, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 -79, ptr %i.af, align 1
  %i.ag = add nuw nsw i32 %.0156.i, 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 3
  store i8 -78, ptr %i.ah, align 1
  br label %bb.ao

bb.j:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 760 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8            ; 5 uses
  %.not170.not.i = icmp eq ptr %i.aj, null
  br i1 %.not170.not.i, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.ak = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i172.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i172.i, label %scsi_disk_emulate_vpd_page.exit, label %bb.l, !prof !10

bb.l:                                             ; preds = %bb.k
  %i.al = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_VPD_PAGE_80_NOT_SUPPORTED_DSTATE, align 2
  %.not1.i173.i = icmp eq i16 %i.al, 0
  br i1 %.not1.i173.i, label %scsi_disk_emulate_vpd_page.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 32768
  %.not2.i174.i = icmp eq i32 %i.an, 0
  br i1 %.not2.i174.i, label %scsi_disk_emulate_vpd_page.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.42) #16
  br label %scsi_disk_emulate_vpd_page.exit

bb.o:                                             ; preds = %bb.j
  %i.ao = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #18
  %i.ap = trunc i64 %i.ao to i32
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 36) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i175.i = icmp eq i32 %i.as, 0
  br i1 %.not.i175.i, label %trace_scsi_disk_emulate_vpd_page_80_not_supported.exit.i, label %bb.p, !prof !10

bb.p:                                             ; preds = %bb.o
  %i.at = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_VPD_PAGE_80_DSTATE, align 2
  %.not1.i176.i = icmp eq i16 %i.at, 0
  br i1 %.not1.i176.i, label %trace_scsi_disk_emulate_vpd_page_80_not_supported.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.au = load i32, ptr @qemu_loglevel, align 4
  %i.av = and i32 %i.au, 32768
  %.not2.i177.i = icmp eq i32 %i.av, 0
  br i1 %.not2.i177.i, label %trace_scsi_disk_emulate_vpd_page_80_not_supported.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.43, i64 noundef %i.ar) #16
  %.pre.i = load ptr, ptr %i.ai, align 8
  br label %trace_scsi_disk_emulate_vpd_page_80_not_supported.exit.i

trace_scsi_disk_emulate_vpd_page_80_not_supported.exit.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.aw = phi ptr [ %.pre.i, %bb.r ], [ %i.aj, %bb.q ], [ %i.aj, %bb.p ], [ %i.aj, %bb.o ]
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ay = sext i32 %spec.store.select.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ax, ptr noundef nonnull align 1 %i.aw, i64 noundef %i.ay, i1 noundef false) #16
  %i.az = add nsw i32 %spec.store.select.i, 4
  br label %bb.ao

bb.s:                                             ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 784 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not165.i = icmp eq ptr %i.bb, null
  br i1 %.not165.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #18
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 247)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bf = phi i32 [ %i.be, %bb.t ], [ 0, %bb.s ]  ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i178.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i178.i, label %trace_scsi_disk_emulate_vpd_page_83.exit.i, label %bb.v, !prof !10

bb.v:                                             ; preds = %bb.u
  %i.bj = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_VPD_PAGE_83_DSTATE, align 2
  %.not1.i179.i = icmp eq i16 %i.bj, 0
  br i1 %.not1.i179.i, label %trace_scsi_disk_emulate_vpd_page_83.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = load i32, ptr @qemu_loglevel, align 4
  %i.bl = and i32 %i.bk, 32768
  %.not2.i180.i = icmp eq i32 %i.bl, 0
  br i1 %.not2.i180.i, label %trace_scsi_disk_emulate_vpd_page_83.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, i64 noundef %i.bh) #16
  br label %trace_scsi_disk_emulate_vpd_page_83.exit.i

trace_scsi_disk_emulate_vpd_page_83.exit.i:       ; preds = %bb.x, %bb.w, %bb.v, %bb.u
  %.not166.i = icmp eq i32 %i.bf, 0
  br i1 %.not166.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %trace_scsi_disk_emulate_vpd_page_83.exit.i
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 2, ptr %i.bm, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 0, ptr %i.bn, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 0, ptr %i.bo, align 1
  %i.bp = trunc nuw i32 %i.bf to i8
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.bp, ptr %i.bq, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bs = load ptr, ptr %i.ba, align 8
  %i.bt = zext nneg i32 %i.bf to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.br, ptr noundef nonnull align 1 %i.bs, i64 noundef %i.bt, i1 noundef false) #16
  %i.bu = add nuw nsw i32 %i.bf, 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %trace_scsi_disk_emulate_vpd_page_83.exit.i
  %.2158.i = phi i32 [ %i.bu, %bb.y ], [ 4, %trace_scsi_disk_emulate_vpd_page_83.exit.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 616 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8
  %.not167.i = icmp eq i64 %i.bw, 0
  br i1 %.not167.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bx = zext nneg i32 %.2158.i to i64
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx ; 2 uses
  store <4 x i8> <i8 1, i8 3, i8 0, i8 8>, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i64, ptr %i.bv, align 8
  %i.cb = tail call i64 @llvm.bswap.i64(i64 %i.ca)
  store i64 %i.cb, ptr %i.bz, align 1
  %i.cc = add nuw nsw i32 %.2158.i, 12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.3.i = phi i32 [ %i.cc, %bb.aa ], [ %.2158.i, %bb.z ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 624 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8
  %.not168.i = icmp eq i64 %i.ce, 0
  br i1 %.not168.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cf = zext nneg i32 %.3.i to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cf ; 2 uses
  store <4 x i8> <i8 97, i8 -109, i8 0, i8 8>, ptr %i.cg, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %i.ci = load i64, ptr %i.cd, align 8
  %i.cj = tail call i64 @llvm.bswap.i64(i64 %i.ci)
  store i64 %i.cj, ptr %i.ch, align 1
  %i.ck = add nuw nsw i32 %.3.i, 12
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.4.i = phi i32 [ %i.ck, %bb.ac ], [ %.3.i, %bb.ab ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 720 ; 2 uses
  %i.cm = load i16, ptr %i.cl, align 8
  %.not169.i = icmp eq i16 %i.cm, 0
  br i1 %.not169.i, label %bb.ao, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cn = zext nneg i32 %.4.i to i64
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn ; 2 uses
  store <4 x i8> <i8 97, i8 -108, i8 0, i8 4>, ptr %i.co, align 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 6
  %i.cq = load i16, ptr %i.cl, align 8
  %i.cr = tail call i16 @llvm.bswap.i16(i16 %i.cq)
  store i16 %i.cr, ptr %i.cp, align 1
  %i.cs = add nuw nsw i32 %.4.i, 8
  br label %bb.ao

bb.af:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store i32 1, ptr %2, align 4
  %i.ct = load i32, ptr %i.h, align 4             ; 2 uses
  %.not164.i = icmp eq i32 %i.ct, 5
  br i1 %.not164.i, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.cu = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i181.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i181.i, label %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.thread.i, label %bb.ah, !prof !10

bb.ah:                                            ; preds = %bb.ag
  %i.cv = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_VPD_PAGE_B0_NOT_SUPPORTED_DSTATE, align 2
  %.not1.i182.i = icmp eq i16 %i.cv, 0
  br i1 %.not1.i182.i, label %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.thread.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cw = load i32, ptr @qemu_loglevel, align 4
  %i.cx = and i32 %i.cw, 32768
  %.not2.i183.i = icmp eq i32 %i.cx, 0
  br i1 %.not2.i183.i, label %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.thread.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45) #16
  br label %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.thread.i

bb.ak:                                            ; preds = %bb.af
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.cz = load i32, ptr %i.cy, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.b, i64 600 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8            ; 4 uses
  %i.dc = udiv i32 %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.dc, ptr %i.dd, align 4
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 188
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = udiv i32 %i.df, %i.db
  %i.dh = trunc i32 %i.dg to i16
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.dh, ptr %i.di, align 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.dk = load i32, ptr %i.dj, align 8
  %i.dl = udiv i32 %i.dk, %i.db
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.dl, ptr %i.dm, align 4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 728
  %i.do = load i64, ptr %i.dn, align 8
  %i.dp = sext i32 %i.db to i64                   ; 2 uses
  %i.dq = udiv i64 %i.do, %i.dp
  %i.dr = trunc i64 %i.dq to i32
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dr, ptr %i.ds, align 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 736
  %i.du = load i64, ptr %i.dt, align 8
  %i.dv = udiv i64 %i.du, %i.dp
  %.fr193.i = freeze i64 %i.dv
  %i.dw = trunc i64 %.fr193.i to i32              ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %i.dw, ptr %i.dx, align 4
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 255, ptr %i.dy, align 4
  %i.dz = icmp eq i32 %i.ct, 0
  br i1 %i.dz, label %bb.al, label %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = tail call i32 @blk_get_max_transfer(ptr noundef %i.eb) #16
  %i.ed = load i32, ptr %i.da, align 8
  %i.ee = sdiv i32 %i.ec, %i.ed                   ; 2 uses
  %i.ef = add i32 %i.dw, -1
  %i.eg = add i32 %i.ee, -1
  %.not188.i = icmp ult i32 %i.eg, %i.ef
  %i.eh = select i1 %.not188.i, i32 %i.ee, i32 %i.dw
  store i32 %i.eh, ptr %i.dx, align 4
  br label %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.i

trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.thread.i: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %scsi_disk_emulate_vpd_page.exit

trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.i: ; preds = %bb.al, %bb.ak
  %i.ei = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ej = call i32 @scsi_emulate_block_limits(ptr noundef nonnull %i.ei, ptr noundef nonnull %2) #16
  %i.ek = add i32 %i.ej, 4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.ao

bb.am:                                            ; preds = %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %i.b, i64 802 ; 2 uses
  %3 = load i16, ptr %i.el, align 2
  %4 = lshr i16 %3, 8
  %5 = trunc nuw i16 %4 to i8
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %5, ptr %i.em, align 1
  %i.en = load i16, ptr %i.el, align 2
  %i.eo = trunc i16 %i.en to i8
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 %i.eo, ptr %i.ep, align 1
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 6
  store i8 0, ptr %i.eq, align 1
  br label %.thread.i

bb.an:                                            ; preds = %bb.b
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 0, ptr %i.er, align 1
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 5
  store i8 -32, ptr %i.es, align 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.eu = load i32, ptr %i.et, align 8
  %.not.i = icmp eq i32 %i.eu, 0
  %i.ev = select i1 %.not.i, i8 1, i8 2
  br label %.thread.i

.thread.i:                                        ; preds = %bb.an, %bb.am
  %.sink196.i = phi i64 [ 6, %bb.an ], [ 7, %bb.am ]
  %.sink.i = phi i8 [ %i.ev, %bb.an ], [ 0, %bb.am ]
  %.sink194.i = phi i64 [ 7, %bb.an ], [ 8, %bb.am ]
  %.7.ph.i = phi i32 [ 8, %bb.an ], [ 64, %bb.am ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 %.sink196.i
  store i8 %.sink.i, ptr %i.ew, align 1
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 %.sink194.i
  store i8 0, ptr %i.ex, align 1
  %i.ey = add nsw i32 %.7.ph.i, -4
  br label %bb.aq

bb.ao:                                            ; preds = %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.i, %bb.ae, %bb.ad, %trace_scsi_disk_emulate_vpd_page_80_not_supported.exit.i, %bb.i, %bb.h
  %.7.i = phi i32 [ %i.ag, %bb.i ], [ %i.y, %bb.h ], [ %i.az, %trace_scsi_disk_emulate_vpd_page_80_not_supported.exit.i ], [ %i.cs, %bb.ae ], [ %i.ek, %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.i ], [ %.4.i, %bb.ad ] ; 2 uses
  %i.ez = add i32 %.7.i, -4                       ; 2 uses
  %i.fa = icmp slt i32 %i.ez, 256
  br i1 %i.fa, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @__assert_fail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.6, i32 noundef 810, ptr noundef nonnull @__PRETTY_FUNCTION__.scsi_disk_emulate_vpd_page) #19
  unreachable

bb.aq:                                            ; preds = %bb.ao, %.thread.i
  %i.fb = phi i32 [ %i.ey, %.thread.i ], [ %i.ez, %bb.ao ]
  %.7187.i = phi i32 [ %.7.ph.i, %.thread.i ], [ %.7.i, %bb.ao ]
  %i.fc = trunc i32 %i.fb to i8
  store i8 %i.fc, ptr %i.n, align 1
  br label %scsi_disk_emulate_vpd_page.exit

bb.ar:                                            ; preds = %bb.a
  %.not37 = icmp eq i8 %i.g, 0
  br i1 %.not37, label %bb.as, label %scsi_disk_emulate_vpd_page.exit

bb.as:                                            ; preds = %bb.ar
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fe = load i64, ptr %i.fd, align 8
  %i.ff = trunc i64 %i.fe to i32                  ; 2 uses
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.ff, i32 256) ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 604
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = trunc i32 %i.fh to i8
  %i.fj = and i8 %i.fi, 31
  store i8 %i.fj, ptr %1, align 1
  %i.fk = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  %i.fl = load i32, ptr %i.fk, align 8
  %.tr = trunc i32 %i.fl to i8
  %i.fm = shl i8 %.tr, 7
  %i.fn = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.fm, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 776
  %i.fq = load ptr, ptr %i.fp, align 8
  tail call void @strpadcpy(ptr noundef nonnull %i.fo, i32 noundef 16, ptr noundef %i.fq, i8 noundef signext 32) #16
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.b, i64 768
  %i.ft = load ptr, ptr %i.fs, align 8
  tail call void @strpadcpy(ptr noundef nonnull %i.fr, i32 noundef 8, ptr noundef %i.ft, i8 noundef signext 32) #16
  %i.fu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 0, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 752
  %i.fw = load ptr, ptr %i.fv, align 8            ; 2 uses
  %i.fx = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fw) #18
  %i.fy = tail call i64 @llvm.umin.i64(i64 %i.fx, i64 4)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.fu, ptr noundef nonnull align 1 %i.fw, i64 noundef %i.fy, i1 noundef false) #16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 636
  %i.ga = load i32, ptr %i.fz, align 4
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.gb, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 18, ptr %i.gd, align 1
  %i.ge = icmp sgt i32 %i.ff, 36
  %i.gf = trunc i32 %spec.store.select to i8
  %i.gg = add i8 %i.gf, -5
  %.sink = select i1 %i.ge, i8 %i.gg, i8 31
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %.sink, ptr %i.gh, align 1
  %i.gi = load ptr, ptr %0, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 128
  %i.gk = load ptr, ptr %i.gj, align 8
  %i.gl = load i32, ptr %i.gk, align 8
  %.not39 = icmp eq i32 %i.gl, 0
  %i.gm = select i1 %.not39, i8 16, i8 18
  %i.gn = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.gm, ptr %i.gn, align 1
  br label %scsi_disk_emulate_vpd_page.exit

scsi_disk_emulate_vpd_page.exit:                  ; preds = %bb.aq, %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.thread.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.b, %bb.ar, %bb.as
  %.0 = phi i32 [ -1, %bb.ar ], [ %spec.store.select, %bb.as ], [ -1, %trace_scsi_disk_emulate_vpd_page_b0_not_supported.exit.thread.i ], [ %.7187.i, %bb.aq ], [ -1, %bb.b ], [ -1, %bb.n ], [ -1, %bb.m ], [ -1, %bb.l ], [ -1, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @scsi_disk_emulate_read_toc(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !annotation !7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.e = load i8, ptr %i.d, align 1
  %i.f = and i8 %i.e, 2
  %i.g = zext nneg i8 %i.f to i32                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 66
  %i.i = load i8, ptr %i.h, align 2
  %i.j = and i8 %i.i, 15                          ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 70
  %i.m = load i8, ptr %i.l, align 2
  %i.n = zext i8 %i.m to i32                      ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.p = load ptr, ptr %i.o, align 8
  call void @blk_get_geometry(ptr noundef %i.p, ptr noundef nonnull %i.a) #16
  %i.q = lshr exact i32 %i.g, 1
  %i.r = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %trace_scsi_disk_emulate_read_toc.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  %i.s = load i16, ptr @_TRACE_SCSI_DISK_EMULATE_READ_TOC_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.s, 0
  br i1 %.not3.i, label %trace_scsi_disk_emulate_read_toc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not4.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i, label %trace_scsi_disk_emulate_read_toc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.50, i32 noundef range(i32 0, 256) %i.n, i32 noundef range(i32 0, 16) %i.k, i32 noundef range(i32 0, 2) %i.q) #16
  br label %trace_scsi_disk_emulate_read_toc.exit

trace_scsi_disk_emulate_read_toc.exit:            ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 600
  %i.w = load i32, ptr %i.v, align 8
  %i.x = sext i32 %i.w to i64
  %i.y = lshr i64 %i.x, 9
  %i.z = load i64, ptr %i.a, align 8
  %i.aa = udiv i64 %i.z, %i.y                     ; 3 uses
  store i64 %i.aa, ptr %i.a, align 8
  switch i8 %i.j, label %bb.h [
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.e:                                             ; preds = %trace_scsi_disk_emulate_read_toc.exit
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = call i32 @cdrom_read_toc(i32 noundef %i.ab, ptr noundef %1, i32 noundef %i.g, i32 noundef %i.n) #16
  br label %bb.h

bb.f:                                             ; preds = %trace_scsi_disk_emulate_read_toc.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %1, i8 noundef 0, i64 noundef 12, i1 noundef false) #16
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 10, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 1, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 1, ptr %i.af, align 1
  br label %bb.h

bb.g:                                             ; preds = %trace_scsi_disk_emulate_read_toc.exit
  %i.ag = trunc i64 %i.aa to i32
  %i.ah = call i32 @cdrom_read_toc_raw(i32 noundef %i.ag, ptr noundef %1, i32 noundef %i.g, i32 noundef %i.n) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g, %trace_scsi_disk_emulate_read_toc.exit
  %.024 = phi i32 [ -1, %trace_scsi_disk_emulate_read_toc.exit ], [ %i.ac, %bb.e ], [ 12, %bb.f ], [ %i.ah, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.024
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 -1, 1) i32 @scsi_disk_emulate_start_stop(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = load i8, ptr %i.c, align 4               ; 2 uses
end_hunk_0
