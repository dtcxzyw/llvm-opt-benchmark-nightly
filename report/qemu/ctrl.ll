Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ctrl?download=true
inline.NumInlined: 1462
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@nvme_del_sq:bb.a
bb.s:                                             ; preds = %bb.r
  %.not58 = icmp eq ptr %i.bb, null
  %i.be = getelementptr inbounds nuw i8, ptr %.06, i64 208
  %i.bf = load ptr, ptr %i.be, align 8            ; 3 uses
  br i1 %.not58, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 208
  store ptr %i.bf, ptr %i.bg, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  store ptr %i.bf, ptr %i.ay, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.bh = load ptr, ptr %i.ba, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %.06, i64 208
  store ptr %i.bh, ptr %i.bf, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false)
  %i.bj = load ptr, ptr %i.az, align 8            ; 2 uses
  store ptr %i.bj, ptr %i.bi, align 8
  store ptr %.06, ptr %i.bj, align 8
  store ptr %i.ba, ptr %i.az, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v
  %.not57 = icmp eq ptr %i.bb, null
  br i1 %.not57, label %.critedge, label %bb.r, !llvm.loop !79

.critedge:                                        ; preds = %bb.w, %bb.q, %nvme_sq_cancel_inflight.exit, %nvme_check_cqid.exit
  tail call fastcc void @nvme_free_sq(ptr noundef %i.p, ptr noundef %0)
  br label %bb.x

bb.x:                                             ; preds = %.critedge, %.critedge60
  %.050 = phi i16 [ 16641, %.critedge60 ], [ 0, %.critedge ]
  ret i16 %.050
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16643) i16 @nvme_create_sq(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.b = load i16, ptr %i.a, align 1              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.d = load i16, ptr %i.c, align 1              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.f = load i16, ptr %i.e, align 1              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.h = load i16, ptr %i.g, align 1              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 1              ; 4 uses
  %i.k = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %trace_pci_nvme_create_sq.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr @_TRACE_PCI_NVME_CREATE_SQ_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.l, 0
  br i1 %.not5.i, label %trace_pci_nvme_create_sq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr @qemu_loglevel, align 4
  %i.n = and i32 %i.m, 32768
  %.not6.i = icmp eq i32 %i.n, 0
  br i1 %.not6.i, label %trace_pci_nvme_create_sq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = zext i16 %i.d to i32
  %i.p = zext i16 %i.b to i32
  %i.q = zext i16 %i.f to i32
  %i.r = zext i16 %i.h to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.232, i64 noundef %i.j, i32 noundef %i.o, i32 noundef %i.p, i32 noundef %i.q, i32 noundef %i.r) #23
  br label %trace_pci_nvme_create_sq.exit

trace_pci_nvme_create_sq.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.e, !prof !25

bb.e:                                             ; preds = %trace_pci_nvme_create_sq.exit
  %i.s = zext i16 %i.b to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.u = load i32, ptr %i.t, align 16             ; 2 uses
  %i.v = add i32 %i.u, 1
  %i.w = icmp ugt i32 %i.v, %i.s
  br i1 %i.w, label %nvme_check_cqid.exit, label %.critedge

nvme_check_cqid.exit:                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 26264
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = zext i16 %i.b to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.critedge, label %bb.f, !prof !28

.critedge:                                        ; preds = %bb.e, %trace_pci_nvme_create_sq.exit, %nvme_check_cqid.exit
  tail call fastcc void @trace_pci_nvme_err_invalid_create_sq_cqid(i16 noundef zeroext %i.b)
  br label %bb.o

bb.f:                                             ; preds = %nvme_check_cqid.exit
  %.not39 = icmp eq i16 %i.d, 0
  %i.ad = zext i16 %i.d to i32
  %i.ae = icmp ult i32 %i.u, %i.ad
  %or.cond = or i1 %.not39, %i.ae
  br i1 %or.cond, label %.critedge44, label %bb.g, !prof !80

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 26256
  %i.ag = load ptr, ptr %i.af, align 16
  %i.ah = zext i16 %i.d to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8
  %.not49 = icmp eq ptr %i.aj, null
  br i1 %.not49, label %bb.h, label %.critedge44, !prof !17

.critedge44:                                      ; preds = %bb.f, %bb.g
  tail call fastcc void @trace_pci_nvme_err_invalid_create_sq_sqid(i16 noundef zeroext %i.d)
  br label %bb.o

bb.h:                                             ; preds = %bb.g
  %.not40 = icmp eq i16 %i.f, 0
  br i1 %.not40, label %.critedge46, label %bb.i, !prof !25

bb.i:                                             ; preds = %bb.h
  %i.ak = zext i16 %i.f to i64
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %.val = load i64, ptr %i.al, align 16
  %i.am = and i64 %.val, 65535
  %i.an = icmp samesign ult i64 %i.am, %i.ak
  br i1 %i.an, label %.critedge46, label %bb.j, !prof !25

.critedge46:                                      ; preds = %bb.h, %bb.i
  tail call fastcc void @trace_pci_nvme_err_invalid_create_sq_size(i16 noundef zeroext %i.f)
  br label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 7620
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = add i32 %i.ap, -1
  %i.ar = zext i32 %i.aq to i64
  %i.as = and i64 %i.j, %i.ar
  %.not41 = icmp eq i64 %i.as, 0
  br i1 %.not41, label %bb.l, label %bb.k, !prof !17

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @trace_pci_nvme_err_invalid_create_sq_addr(i64 noundef %i.j)
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.at = and i16 %i.h, 1
  %.not42 = icmp eq i16 %i.at, 0
  br i1 %.not42, label %bb.m, label %bb.n, !prof !25

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @trace_pci_nvme_err_invalid_create_sq_qflags(i16 noundef zeroext 0)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.au = tail call noalias dereferenceable_or_null(128) ptr @g_malloc0(i64 noundef 128) #26 ; 8 uses
  %i.av = add i16 %i.f, 1
  store ptr %0, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  store i64 %i.j, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i16 %i.d, ptr %i.ax, align 8
  %i.ay = zext i16 %i.av to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 %i.ay, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 10
  store i16 %i.b, ptr %i.ba, align 2
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 12
  store i32 0, ptr %i.bc, align 4
  tail call fastcc void @__nvme_init_sq(ptr noundef nonnull %i.au), !inline_history !1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k, %.critedge46, %.critedge44, %.critedge
  %.0 = phi i16 [ 16640, %.critedge ], [ 16641, %.critedge44 ], [ 16642, %.critedge46 ], [ 16403, %bb.k ], [ 16386, %bb.m ], [ 0, %bb.n ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16426) i16 @nvme_get_log(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %struct.NvmeSmartLogExtended, align 8 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.c = load i32, ptr %i.b, align 1              ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.e = load i32, ptr %i.d, align 1              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i32, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.i = load i32, ptr %i.h, align 1
  %i.j = trunc i32 %i.c to i8                     ; 2 uses
  %i.k = lshr i32 %i.c, 15                        ; 2 uses
  %i.l = trunc i32 %i.k to i8
  %i.m = and i8 %i.l, 1                           ; 4 uses
  %i.n = getelementptr i8, ptr %1, i64 115
  %3 = load i8, ptr %i.n, align 1
  %i.o = lshr i32 %i.e, 16                        ; 4 uses
  %i.p = zext i32 %i.g to i64                     ; 2 uses
  %i.q = zext i32 %i.i to i64
  %i.r = tail call i32 @llvm.fshl.i32(i32 %i.e, i32 %i.c, i32 16)
  %i.s = shl i32 %i.r, 2
  %i.t = add i32 %i.s, 4                          ; 13 uses
  %i.u = shl nuw i64 %i.q, 32
  %i.v = or disjoint i64 %i.u, %i.p               ; 14 uses
  %i.w = and i64 %i.p, 3
  %.not = icmp eq i64 %i.w, 0
  br i1 %.not, label %nvme_cid.exit, label %nvme_vendor_specific_log.exit

nvme_cid.exit:                                    ; preds = %bb.a
  %i.x = zext i32 %i.t to i64                     ; 2 uses
  %i.y = lshr i32 %i.c, 8
  %i.z = and i32 %i.y, 15
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 52 ; 3 uses
  %i.ab = load i16, ptr %i.aa, align 4
  %i.ac = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i91 = icmp eq i32 %i.ac, 0
  br i1 %.not.i91, label %trace_pci_nvme_get_log.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %nvme_cid.exit
  %i.ad = load i16, ptr @_TRACE_PCI_NVME_GET_LOG_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.ad, 0
  br i1 %.not6.i, label %trace_pci_nvme_get_log.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i32, ptr @qemu_loglevel, align 4
  %i.af = and i32 %i.ae, 32768
  %.not7.i = icmp eq i32 %i.af, 0
  br i1 %.not7.i, label %trace_pci_nvme_get_log.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = zext i16 %i.ab to i32
  %i.ah = and i32 %i.c, 255
  %i.ai = and i32 %i.k, 1
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.238, i32 noundef %i.ag, i32 noundef %i.ah, i32 noundef %i.z, i32 noundef %i.ai, i32 noundef range(i32 0, -3) %i.t, i64 noundef %i.v) #23
  br label %trace_pci_nvme_get_log.exit

trace_pci_nvme_get_log.exit:                      ; preds = %nvme_cid.exit, %bb.b, %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 7456
  %i.ak = load i8, ptr %i.aj, align 16            ; 2 uses
  %.not.i92 = icmp eq i8 %i.ak, 0
  br i1 %.not.i92, label %nvme_check_mdts.exit, label %bb.e

bb.e:                                             ; preds = %trace_pci_nvme_get_log.exit
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 7620
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = shl i32 %i.an, %i.al
  %i.ap = icmp ugt i32 %i.t, %i.ao
  br i1 %i.ap, label %bb.f, label %nvme_check_mdts.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i, label %nvme_vendor_specific_log.exit, label %bb.g, !prof !17

bb.g:                                             ; preds = %bb.f
  %i.ar = load i16, ptr @_TRACE_PCI_NVME_ERR_MDTS_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.ar, 0
  br i1 %.not1.i.i, label %nvme_vendor_specific_log.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 32768
  %.not2.i.i = icmp eq i32 %i.at, 0
  br i1 %.not2.i.i, label %nvme_vendor_specific_log.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.158, i64 noundef range(i64 1, 0) %i.x) #23
  br label %nvme_vendor_specific_log.exit

nvme_check_mdts.exit:                             ; preds = %bb.e, %trace_pci_nvme_get_log.exit
  switch i8 %i.j, label %nvme_cid.exit99 [
    i8 1, label %bb.j
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 -64, label %bb.m
    i8 -63, label %bb.m
    i8 -62, label %bb.m
    i8 -61, label %bb.m
    i8 -60, label %bb.m
    i8 -59, label %bb.m
    i8 -58, label %bb.m
    i8 -57, label %bb.m
    i8 -56, label %bb.m
    i8 -55, label %bb.m
    i8 -54, label %bb.m
    i8 -53, label %bb.m
    i8 -52, label %bb.m
    i8 -51, label %bb.m
    i8 -50, label %bb.m
    i8 -49, label %bb.m
    i8 -48, label %bb.m
    i8 -47, label %bb.m
    i8 -46, label %bb.m
    i8 -45, label %bb.m
    i8 -44, label %bb.m
    i8 -43, label %bb.m
    i8 -42, label %bb.m
    i8 -41, label %bb.m
    i8 -40, label %bb.m
    i8 -39, label %bb.m
    i8 -38, label %bb.m
    i8 -37, label %bb.m
    i8 -36, label %bb.m
    i8 -35, label %bb.m
    i8 -34, label %bb.m
    i8 -33, label %bb.m
    i8 -32, label %bb.m
    i8 -31, label %bb.m
    i8 -30, label %bb.m
    i8 -29, label %bb.m
    i8 -28, label %bb.m
    i8 -27, label %bb.m
    i8 -26, label %bb.m
    i8 -25, label %bb.m
    i8 -24, label %bb.m
    i8 -23, label %bb.m
    i8 -22, label %bb.m
    i8 -21, label %bb.m
    i8 -20, label %bb.m
    i8 -19, label %bb.m
    i8 -18, label %bb.m
    i8 -17, label %bb.m
    i8 -16, label %bb.m
    i8 -15, label %bb.m
    i8 -14, label %bb.m
    i8 -13, label %bb.m
    i8 -12, label %bb.m
    i8 -11, label %bb.m
    i8 -10, label %bb.m
    i8 -9, label %bb.m
    i8 -8, label %bb.m
    i8 -7, label %bb.m
    i8 -6, label %bb.m
    i8 -5, label %bb.m
    i8 -4, label %bb.m
    i8 -3, label %bb.m
    i8 -2, label %bb.m
    i8 -1, label %bb.m
    i8 4, label %bb.ai
    i8 5, label %bb.aj
    i8 9, label %bb.ak
    i8 32, label %bb.al
    i8 33, label %bb.am
    i8 34, label %bb.an
    i8 35, label %bb.ao
  ]

bb.j:                                             ; preds = %nvme_check_mdts.exit
  %i.au = tail call fastcc zeroext i16 @nvme_error_info(ptr noundef nonnull %0, i8 noundef zeroext %i.m, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.k:                                             ; preds = %nvme_check_mdts.exit
  %i.av = tail call fastcc zeroext i16 @nvme_smart_info(ptr noundef nonnull %0, i8 noundef zeroext %i.m, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.l:                                             ; preds = %nvme_check_mdts.exit
  %i.aw = tail call fastcc zeroext i16 @nvme_fw_log_info(ptr noundef nonnull %0, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.m:                                             ; preds = %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit, %nvme_check_mdts.exit
  %cond.i = icmp eq i8 %i.j, -64
  br i1 %cond.i, label %bb.n, label %nvme_cid.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 7481
  %i.ay = load i8, ptr %i.ax, align 1, !range !18, !noundef !19
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.o, label %nvme_cid.exit.i

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(486) %i.ba, i8 0, i64 486, i1 false)
  %i.bb = icmp ugt i64 %i.v, 511
  br i1 %i.bb, label %nvme_ocp_extended_smart_info.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24192
  br label %nvme_ns.exit.i.i

bb.p:                                             ; preds = %nvme_ns.exit.thread.i.i
  %i.bd = extractelement <2 x i64> %i.bq, i64 1
  store i64 %i.bd, ptr %2, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bf = extractelement <2 x i64> %i.bq, i64 0
  store i64 %i.bf, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 494
  store i16 5, ptr %i.bg, align 2
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 496
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, ptr noundef nonnull align 16 dereferenceable(16) @nvme_ocp_extended_smart_info.guid, i64 noundef 16, i1 noundef false) #23
  %.not.i.i96 = icmp eq i8 %i.m, 0
  br i1 %.not.i.i96, label %bb.r, label %nvme_clear_events.exit.i.i

nvme_ns.exit.i.i:                                 ; preds = %nvme_ns.exit.thread.i.i, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 1, %.preheader.i.i ], [ %indvars.iv.next.i.i, %nvme_ns.exit.thread.i.i ] ; 2 uses
  %i.bi = phi <2 x i64> [ zeroinitializer, %.preheader.i.i ], [ %i.bq, %nvme_ns.exit.thread.i.i ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i.i
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %.not23.i.i = icmp eq ptr %i.bk, null
  br i1 %.not23.i.i, label %nvme_ns.exit.thread.i.i, label %bb.q

bb.q:                                             ; preds = %nvme_ns.exit.i.i
  %i.bl = getelementptr i8, ptr %i.bk, i64 152
  %.val.i.i = load ptr, ptr %i.bl, align 8
  %i.bm = tail call ptr @blk_get_stats(ptr noundef %.val.i.i) #23
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 56
  %i.bo = load <2 x i64>, ptr %i.bn, align 8
  %i.bp = add <2 x i64> %i.bo, %i.bi
  br label %nvme_ns.exit.thread.i.i

nvme_ns.exit.thread.i.i:                          ; preds = %bb.q, %nvme_ns.exit.i.i
  %i.bq = phi <2 x i64> [ %i.bi, %nvme_ns.exit.i.i ], [ %i.bp, %bb.q ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 257
  br i1 %exitcond.not.i.i, label %bb.p, label %nvme_ns.exit.i.i, !llvm.loop !81

bb.r:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 11112 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8
  %i.bt = and i8 %i.bs, -3
  store i8 %i.bt, ptr %i.br, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 11128
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not21.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not21.i.i.i, label %nvme_clear_events.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 11136
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 11144 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.x, %.lr.ph.i.i.i
  %.022.i.i.i = phi ptr [ %i.bv, %.lr.ph.i.i.i ], [ %i.by, %bb.x ] ; 6 uses
  %i.by = load ptr, ptr %.022.i.i.i, align 8      ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 16
  %i.ca = load i8, ptr %i.bz, align 8
  %i.cb = icmp eq i8 %i.ca, 1
  br i1 %i.cb, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %.not20.i.i.i = icmp eq ptr %i.by, null
  %i.cc = getelementptr inbounds nuw i8, ptr %.022.i.i.i, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 3 uses
  br i1 %.not20.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cd, ptr %i.ce, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store ptr %i.cd, ptr %i.bw, align 16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cf = load ptr, ptr %.022.i.i.i, align 8
  store ptr %i.cf, ptr %i.cd, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.022.i.i.i, i8 0, i64 16, i1 false)
  %i.cg = load i32, ptr %i.bx, align 8
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr %i.bx, align 8
  tail call void @g_free(ptr noundef nonnull %.022.i.i.i) #23
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.s
  %.not.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i.i, label %nvme_clear_events.exit.i.i, label %bb.s, !llvm.loop !8

nvme_clear_events.exit.i.i:                       ; preds = %bb.x, %bb.r, %bb.p
  %i.ci = sub nuw nsw i64 512, %i.v
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 %i.x) ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cn = tail call zeroext i16 @nvme_map_dptr(ptr noundef %0, ptr noundef nonnull %i.cl, i64 noundef %i.cj, ptr noundef nonnull %i.cm) ; 2 uses
  %.not.i24.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not.i24.i.i, label %bb.y, label %nvme_ocp_extended_smart_info.exit.i

bb.y:                                             ; preds = %nvme_clear_events.exit.i.i
  %i.co = load i32, ptr %i.cl, align 8            ; 2 uses
  %i.cp = and i32 %i.co, 1
  %.not.i.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @__assert_fail(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str, i32 noundef 1377, ptr noundef nonnull @__PRETTY_FUNCTION__.nvme_tx) #24
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cq = and i32 %i.co, 2
  %.not24.i.i.i.i = icmp eq i32 %i.cq, 0
  br i1 %.not24.i.i.i.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 0, ptr %i.a, align 8, !annotation !22
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cs = call i32 @dma_buf_read(ptr noundef nonnull %i.ck, i64 noundef %i.cj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.cr, i64 4294967296) #23 ; 0 uses
  %i.ct = load i64, ptr %i.a, align 8
  %.not26.not.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not26.not.i.i.i.i, label %.thread.i.i.i.i, label %bb.ac, !prof !17

.thread.i.i.i.i:                                  ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_ocp_extended_smart_info.exit.i

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %nvme_ocp_extended_smart_info.exit.i

bb.ad:                                            ; preds = %bb.aa
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cv = call i64 @qemu_iovec_from_buf(ptr noundef nonnull %i.cu, i64 noundef 0, ptr noundef nonnull %i.ck, i64 noundef %i.cj) #23
  %.not25.not.i.i.i.i = icmp eq i64 %i.cv, %i.cj
  br i1 %.not25.not.i.i.i.i, label %nvme_ocp_extended_smart_info.exit.i, label %bb.ae, !prof !17

bb.ae:                                            ; preds = %bb.ad
  call fastcc void @trace_pci_nvme_err_invalid_dma()
  br label %nvme_ocp_extended_smart_info.exit.i

nvme_ocp_extended_smart_info.exit.i:              ; preds = %bb.ae, %bb.ad, %bb.ac, %.thread.i.i.i.i, %nvme_clear_events.exit.i.i, %bb.o
  %.0.i.i = phi i16 [ 16386, %bb.o ], [ %i.cn, %nvme_clear_events.exit.i.i ], [ 16386, %bb.ae ], [ 16386, %bb.ac ], [ 0, %.thread.i.i.i.i ], [ 0, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %nvme_vendor_specific_log.exit

nvme_cid.exit.i:                                  ; preds = %bb.n, %bb.m
  %i.cw = load i16, ptr %i.aa, align 4
  %i.cx = zext i16 %i.cw to i32
  %i.cy = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i11.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i11.i, label %nvme_vendor_specific_log.exit, label %bb.af, !prof !17

bb.af:                                            ; preds = %nvme_cid.exit.i
  %i.cz = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_LOG_PAGE_DSTATE, align 2
  %.not2.i.i94 = icmp eq i16 %i.cz, 0
  br i1 %.not2.i.i94, label %nvme_vendor_specific_log.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.da = load i32, ptr @qemu_loglevel, align 4
  %i.db = and i32 %i.da, 32768
  %.not3.i.i = icmp eq i32 %i.db, 0
  br i1 %.not3.i.i, label %nvme_vendor_specific_log.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dc = and i32 %i.c, 255
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.243, i32 noundef %i.cx, i32 noundef %i.dc) #23
  br label %nvme_vendor_specific_log.exit

bb.ai:                                            ; preds = %nvme_check_mdts.exit
  %i.dd = tail call fastcc zeroext i16 @nvme_changed_nslist(ptr noundef nonnull %0, i8 noundef zeroext %i.m, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.aj:                                            ; preds = %nvme_check_mdts.exit
  %i.de = tail call fastcc zeroext i16 @nvme_cmd_effects(ptr noundef nonnull %0, i8 noundef zeroext %3, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.ak:                                            ; preds = %nvme_check_mdts.exit
  %i.df = tail call fastcc zeroext i16 @nvme_endgrp_info(ptr noundef nonnull %0, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.al:                                            ; preds = %nvme_check_mdts.exit
  %i.dg = tail call fastcc zeroext i16 @nvme_fdp_confs(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.am:                                            ; preds = %nvme_check_mdts.exit
  %i.dh = tail call fastcc zeroext i16 @nvme_fdp_ruh_usage(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.an:                                            ; preds = %nvme_check_mdts.exit
  %i.di = tail call fastcc zeroext i16 @nvme_fdp_stats(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

bb.ao:                                            ; preds = %nvme_check_mdts.exit
  %i.dj = tail call fastcc zeroext i16 @nvme_fdp_events(ptr noundef nonnull %0, i32 noundef %i.o, i32 noundef %i.t, i64 noundef %i.v, ptr noundef nonnull %1)
  br label %nvme_vendor_specific_log.exit

nvme_cid.exit99:                                  ; preds = %nvme_check_mdts.exit
  %i.dk = load i16, ptr %i.aa, align 4
  %i.dl = trunc i32 %i.c to i16
  %i.dm = and i16 %i.dl, 255
  tail call fastcc void @trace_pci_nvme_err_invalid_log_page(i16 noundef zeroext %i.dk, i16 noundef zeroext %i.dm)
  br label %nvme_vendor_specific_log.exit

nvme_vendor_specific_log.exit:                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.ah, %bb.ag, %bb.af, %nvme_cid.exit.i, %nvme_ocp_extended_smart_info.exit.i, %bb.a, %nvme_cid.exit99, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.l, %bb.k, %bb.j
  %.0 = phi i16 [ %i.dj, %bb.ao ], [ 16386, %bb.a ], [ 16386, %nvme_cid.exit99 ], [ %i.au, %bb.j ], [ %i.av, %bb.k ], [ %i.aw, %bb.l ], [ 16386, %bb.ah ], [ %i.dd, %bb.ai ], [ %i.de, %bb.aj ], [ %i.df, %bb.ak ], [ %i.dg, %bb.al ], [ %i.dh, %bb.am ], [ %i.di, %bb.an ], [ %.0.i.i, %nvme_ocp_extended_smart_info.exit.i ], [ 16386, %nvme_cid.exit.i ], [ 16386, %bb.af ], [ 16386, %bb.ag ], [ 16386, %bb.f ], [ 16386, %bb.g ], [ 16386, %bb.h ], [ 16386, %bb.i ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16641) i16 @nvme_del_cq(ptr noundef %0, i16 %.96.val) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i16 %.96.val, 0
  br i1 %.not, label %.critedge, label %bb.b, !prof !25

bb.b:                                             ; preds = %bb.a
  %i.a = zext i16 %.96.val to i32                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 7680
  %i.c = load i32, ptr %i.b, align 16
  %i.d = add i32 %i.c, 1
  %i.e = icmp ugt i32 %i.d, %i.a
  br i1 %i.e, label %nvme_check_cqid.exit, label %.critedge

nvme_check_cqid.exit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 26264
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext i16 %.96.val to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8              ; 7 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge, label %bb.c, !prof !28

.critedge:                                        ; preds = %bb.b, %bb.a, %nvme_check_cqid.exit
  tail call fastcc void @trace_pci_nvme_err_invalid_del_cq_cqid(i16 noundef zeroext %.96.val)
  br label %bb.l

bb.c:                                             ; preds = %nvme_check_cqid.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.m = load ptr, ptr %i.l, align 8
  %.not20 = icmp eq ptr %i.m, null
  br i1 %.not20, label %bb.e, label %bb.d, !prof !17

bb.d:                                             ; preds = %bb.c
  tail call fastcc void @trace_pci_nvme_err_invalid_del_cq_notempty(i16 noundef zeroext %.96.val)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.o = load i16, ptr %i.n, align 4
  %.not21 = icmp eq i16 %i.o, 0
  br i1 %.not21, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load i32, ptr %i.r, align 8
  %.not22 = icmp eq i32 %i.q, %i.s
  br i1 %.not22, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 7640 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = add i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  tail call fastcc void @nvme_irq_deassert(ptr noundef nonnull %0, ptr noundef nonnull %i.j)
  %i.w = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %trace_pci_nvme_del_cq.exit, label %bb.i, !prof !17

bb.i:                                             ; preds = %bb.h
  %i.x = load i16, ptr @_TRACE_PCI_NVME_DEL_CQ_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.x, 0
  br i1 %.not1.i, label %trace_pci_nvme_del_cq.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 32768
  %.not2.i = icmp eq i32 %i.z, 0
  br i1 %.not2.i, label %trace_pci_nvme_del_cq.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.246, i32 noundef %i.a) #23
  br label %trace_pci_nvme_del_cq.exit

trace_pci_nvme_del_cq.exit:                       ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  tail call fastcc void @nvme_free_cq(ptr noundef nonnull %i.j, ptr noundef nonnull %0)
  br label %bb.l

bb.l:                                             ; preds = %trace_pci_nvme_del_cq.exit, %bb.d, %.critedge
  %.0 = phi i16 [ 16640, %.critedge ], [ 268, %bb.d ], [ 0, %trace_pci_nvme_del_cq.exit ]
  ret i16 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext range(i16 0, 16649) i16 @nvme_create_cq(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.b = load i16, ptr %i.a, align 1              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 102
  %i.d = load i16, ptr %i.c, align 1              ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 98
  %i.f = load i16, ptr %i.e, align 1              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 100
  %i.h = load i16, ptr %i.g, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = load i64, ptr %i.i, align 1              ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3312
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %.val59 = load i64, ptr %i.l, align 1           ; 2 uses
  %i.m = lshr i64 %.val59, 20
  %i.n = trunc i64 %i.m to i8
  %i.o = and i8 %i.n, 15                          ; 2 uses
  %i.p = lshr i64 %.val59, 16
  %i.q = trunc i64 %i.p to i8
  %i.r = and i8 %i.q, 15                          ; 2 uses
  %i.s = zext i16 %i.h to i32                     ; 3 uses
  %i.t = lshr i32 %i.s, 1                         ; 2 uses
  %i.u = and i32 %i.t, 1
  %i.v = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %trace_pci_nvme_create_cq.exit, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.w = load i16, ptr @_TRACE_PCI_NVME_CREATE_CQ_DSTATE, align 2
  %.not6.i = icmp eq i16 %i.w, 0
  br i1 %.not6.i, label %trace_pci_nvme_create_cq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = load i32, ptr @qemu_loglevel, align 4
  %i.y = and i32 %i.x, 32768
  %.not7.i = icmp eq i32 %i.y, 0
  br i1 %.not7.i, label %trace_pci_nvme_create_cq.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = zext i16 %i.b to i32
  %i.aa = zext i16 %i.d to i32
  %i.ab = zext i16 %i.f to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.247, i64 noundef %i.j, i32 noundef %i.z, i32 noundef %i.aa, i32 noundef %i.ab, i32 noundef %i.s, i32 noundef range(i32 0, 2) %i.u) #23
  br label %trace_pci_nvme_create_cq.exit

trace_pci_nvme_create_cq.exit:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.ac = icmp ne i8 %i.r, 6
  %i.ad = icmp ne i8 %i.o, 4
  %or.cond = select i1 %i.ac, i1 true, i1 %i.ad
  br i1 %or.cond, label %bb.e, label %bb.i

bb.e:                                             ; preds = %trace_pci_nvme_create_cq.exit
  %i.ae = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i60 = icmp eq i32 %i.ae, 0
  br i1 %.not.i60, label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit, label %bb.f, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.af = load i16, ptr @_TRACE_PCI_NVME_ERR_INVALID_CREATE_CQ_ENTRY_SIZE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.af, 0
  br i1 %.not2.i, label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 32768
  %.not3.i = icmp eq i32 %i.ah, 0
  br i1 %.not3.i, label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = zext nneg i8 %i.r to i32
  %i.aj = zext nneg i8 %i.o to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.248, i32 noundef %i.ai, i32 noundef %i.aj) #23
  br label %trace_pci_nvme_err_invalid_create_cq_entry_size.exit

bb.i:                                             ; preds = %trace_pci_nvme_create_cq.exit
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %.critedge, label %bb.j, !prof !25
end_hunk_0
