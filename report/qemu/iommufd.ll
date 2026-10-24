Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/iommufd?download=true
inline.NumInlined: 81
inline.NumDeleted: 41
begin_hunk_0_@iommufd_cdev_pci_hot_reset:bb.a
  br i1 %i.t, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load i32, ptr %i.u, align 4
  %.not118 = icmp eq i32 %i.v, 0
  br i1 %.not118, label %.loopexit, label %.lr.ph115

.lr.ph115:                                        ; preds = %.preheader, %bb.l
  %i.w = phi ptr [ %i.an, %bb.l ], [ %i.l, %.preheader ]
  %.068114 = phi i32 [ %i.ao, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %i.x = sext i32 %.068114 to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.x ; 4 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph115
  %i.ab = load ptr, ptr %i.c, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i16, ptr %i.ac, align 4
  %i.ae = zext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ag = load i8, ptr %i.af, align 2
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 7
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = lshr i32 %i.ak, 3
  %i.am = and i32 %i.ak, 7
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.40, ptr noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.ah, i32 noundef %i.al, i32 noundef %i.am) #12
  %.pre126 = load ptr, ptr %i.a, align 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph115, %bb.k
  %i.an = phi ptr [ %i.w, %.lr.ph115 ], [ %.pre126, %bb.k ] ; 2 uses
  %i.ao = add nuw i32 %.068114, 1                 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = icmp ult i32 %i.ao, %i.aq
  br i1 %i.ar, label %.lr.ph115, label %.loopexit, !llvm.loop !16

bb.m:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.c, align 8
  %i.at = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i89 = icmp eq i32 %i.at, 0
  br i1 %.not.i89, label %trace_vfio_pci_hot_reset_has_dep_devices.exit, label %bb.n, !prof !11

bb.n:                                             ; preds = %bb.m
  %i.au = load i16, ptr @_TRACE_VFIO_PCI_HOT_RESET_HAS_DEP_DEVICES_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.au, 0
  br i1 %.not1.i, label %trace_vfio_pci_hot_reset_has_dep_devices.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr @qemu_loglevel, align 4
  %i.aw = and i32 %i.av, 32768
  %.not2.i90 = icmp eq i32 %i.aw, 0
  br i1 %.not2.i90, label %trace_vfio_pci_hot_reset_has_dep_devices.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.44, ptr noundef %i.as) #12
  %.pre = load ptr, ptr %i.a, align 8
  br label %trace_vfio_pci_hot_reset_has_dep_devices.exit

trace_vfio_pci_hot_reset_has_dep_devices.exit:    ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.ax = phi ptr [ %i.l, %bb.m ], [ %i.l, %bb.n ], [ %i.l, %bb.o ], [ %.pre, %bb.p ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4
  %.not116 = icmp eq i32 %i.az, 0
  br i1 %.not116, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %trace_vfio_pci_hot_reset_has_dep_devices.exit
  %i.ba = getelementptr i8, ptr %0, i64 208       ; 2 uses
  br i1 %1, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.u
  %.169109.us = phi i32 [ %i.bv, %bb.u ], [ 0, %.lr.ph ] ; 2 uses
  %i.bb = sext i32 %.169109.us to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.bb ; 5 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.be = load i16, ptr %i.bd, align 4
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.bh = load i8, ptr %i.bg, align 2
  %i.bi = zext i8 %i.bh to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 7
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = zext i8 %i.bk to i32                    ; 2 uses
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = and i32 %i.bl, 7
  %i.bo = load i32, ptr %i.bc, align 4            ; 4 uses
  %i.bp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i91.us = icmp eq i32 %i.bp, 0
  br i1 %.not.i91.us, label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit.us, label %bb.q, !prof !11

bb.q:                                             ; preds = %.lr.ph.split.us
  %i.bq = load i16, ptr @_TRACE_IOMMUFD_CDEV_PCI_HOT_RESET_DEP_DEVICES_DSTATE, align 2
  %.not5.i.us = icmp eq i16 %i.bq, 0
  br i1 %.not5.i.us, label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = load i32, ptr @qemu_loglevel, align 4
  %i.bs = and i32 %i.br, 32768
  %.not6.i.us = icmp eq i32 %i.bs, 0
  br i1 %.not6.i.us, label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, i32 noundef range(i32 0, 65536) %i.bf, i32 noundef range(i32 0, 256) %i.bi, i32 noundef range(i32 0, 32) %i.bm, i32 noundef range(i32 0, 8) %i.bn, i32 noundef %i.bo) #12
  %.pr.us.pre = load i32, ptr %i.bc, align 4
  br label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit.us

trace_iommufd_cdev_pci_hot_reset_dep_devices.exit.us: ; preds = %bb.q, %bb.r, %bb.s, %.lr.ph.split.us
  %i.bt = phi i32 [ %i.bo, %.lr.ph.split.us ], [ %.pr.us.pre, %bb.s ], [ %i.bo, %bb.r ], [ %i.bo, %bb.q ] ; 2 uses
  %.not84.us = icmp eq i32 %i.bt, -1
  br i1 %.not84.us, label %.split.us, label %bb.t

bb.t:                                             ; preds = %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit.us
  %.val88.us = load i32, ptr %i.ba, align 8
  %i.bu = call fastcc ptr @iommufd_cdev_dep_get_realized_vpdev(i32 %i.bt, i32 %.val88.us)
  %.not85.us = icmp eq ptr %i.bu, null
  br i1 %.not85.us, label %bb.u, label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.bv = add nuw i32 %.169109.us, 1              ; 2 uses
  %i.bw = load ptr, ptr %i.a, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 4
  %i.bz = icmp ult i32 %i.bv, %i.by
  br i1 %i.bz, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !17

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.z
  %.067110 = phi i1 [ %.199, %bb.z ], [ false, %.lr.ph ]
  %.169109 = phi i32 [ %i.cv, %bb.z ], [ 0, %.lr.ph ] ; 2 uses
  %i.ca = sext i32 %.169109 to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ca ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i16, ptr %i.cc, align 4
  %i.ce = zext i16 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.cg = load i8, ptr %i.cf, align 2
  %i.ch = zext i8 %i.cg to i32
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 7
  %i.cj = load i8, ptr %i.ci, align 1
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = lshr i32 %i.ck, 3
  %i.cm = and i32 %i.ck, 7
  %i.cn = load i32, ptr %i.cb, align 4            ; 4 uses
  %i.co = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i91 = icmp eq i32 %i.co, 0
  br i1 %.not.i91, label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit, label %bb.v, !prof !11

bb.v:                                             ; preds = %.lr.ph.split
  %i.cp = load i16, ptr @_TRACE_IOMMUFD_CDEV_PCI_HOT_RESET_DEP_DEVICES_DSTATE, align 2
  %.not5.i = icmp eq i16 %i.cp, 0
  br i1 %.not5.i, label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load i32, ptr @qemu_loglevel, align 4
  %i.cr = and i32 %i.cq, 32768
  %.not6.i = icmp eq i32 %i.cr, 0
  br i1 %.not6.i, label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.45, i32 noundef range(i32 0, 65536) %i.ce, i32 noundef range(i32 0, 256) %i.ch, i32 noundef range(i32 0, 32) %i.cl, i32 noundef range(i32 0, 8) %i.cm, i32 noundef %i.cn) #12
  %.pr.pre = load i32, ptr %i.cb, align 4
  br label %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit

trace_iommufd_cdev_pci_hot_reset_dep_devices.exit: ; preds = %bb.v, %bb.w, %bb.x, %.lr.ph.split
  %i.cs = phi i32 [ %i.cn, %.lr.ph.split ], [ %.pr.pre, %bb.x ], [ %i.cn, %bb.w ], [ %i.cn, %bb.v ] ; 2 uses
  %.not84 = icmp eq i32 %i.cs, -1
  br i1 %.not84, label %.split.us, label %bb.y

.split.us:                                        ; preds = %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit, %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit.us
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.7, i32 noundef 898, ptr noundef nonnull @__PRETTY_FUNCTION__.iommufd_cdev_pci_hot_reset) #16
  unreachable

bb.y:                                             ; preds = %trace_iommufd_cdev_pci_hot_reset_dep_devices.exit
  %.val88 = load i32, ptr %i.ba, align 8
  %i.ct = call fastcc ptr @iommufd_cdev_dep_get_realized_vpdev(i32 %i.cs, i32 %.val88) ; 3 uses
  %.not85 = icmp eq ptr %i.ct, null
  br i1 %.not85, label %bb.z, label %.thread

.thread:                                          ; preds = %bb.y
  call void @vfio_pci_pre_reset(ptr noundef nonnull %i.ct) #12
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 2866
  store i8 0, ptr %i.cu, align 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.thread
  %.199 = phi i1 [ true, %.thread ], [ %.067110, %bb.y ] ; 2 uses
  %i.cv = add nuw i32 %.169109, 1                 ; 2 uses
  %i.cw = load ptr, ptr %i.a, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = icmp ult i32 %i.cv, %i.cy
  br i1 %i.cz, label %.lr.ph.split, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.z, %bb.u, %trace_vfio_pci_hot_reset_has_dep_devices.exit
  %.067.lcssa = phi i1 [ false, %trace_vfio_pci_hot_reset_has_dep_devices.exit ], [ false, %bb.u ], [ %.199, %bb.z ]
  %or.cond = select i1 %1, i1 true, i1 %.067.lcssa
  br i1 %or.cond, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %._crit_edge
  %i.da = call noalias dereferenceable_or_null(12) ptr @g_malloc0(i64 noundef 12) #15 ; 3 uses
  store i32 12, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.dc, i64 noundef 15217, ptr noundef nonnull %i.da) #12
  call void @g_free(ptr noundef nonnull %i.da) #12
  %.not81 = icmp eq i32 %i.dd, 0
  br i1 %.not81, label %.thread100, label %bb.ab

.thread100:                                       ; preds = %bb.aa
  %i.de = load ptr, ptr %i.c, align 8
  br label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.df = tail call ptr @__errno_location() #13
  %i.dg = load i32, ptr %i.df, align 4            ; 3 uses
  %i.dh = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not82 = icmp eq i32 %i.dg, 0
  br i1 %.not82, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.di = sub i32 0, %i.dg
  %i.dj = call ptr @strerror(i32 noundef %i.dg) #12
  br label %bb.ad

bb.ad:                                            ; preds = %.thread100, %bb.ab, %bb.ac
  %i.dk = phi ptr [ %i.dh, %bb.ac ], [ %i.dh, %bb.ab ], [ %i.de, %.thread100 ]
  %.272103 = phi i32 [ %i.di, %bb.ac ], [ 0, %bb.ab ], [ 0, %.thread100 ] ; 2 uses
  %i.dl = phi ptr [ %i.dj, %bb.ac ], [ @.str.42, %bb.ab ], [ @.str.42, %.thread100 ]
  %i.dm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i92 = icmp eq i32 %i.dm, 0
  br i1 %.not.i92, label %trace_vfio_pci_hot_reset_result.exit, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %bb.ad
  %i.dn = load i16, ptr @_TRACE_VFIO_PCI_HOT_RESET_RESULT_DSTATE, align 2
  %.not2.i93 = icmp eq i16 %i.dn, 0
  br i1 %.not2.i93, label %trace_vfio_pci_hot_reset_result.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.do = load i32, ptr @qemu_loglevel, align 4
  %i.dp = and i32 %i.do, 32768
  %.not3.i94 = icmp eq i32 %i.dp, 0
  br i1 %.not3.i94, label %trace_vfio_pci_hot_reset_result.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.46, ptr noundef %i.dk, ptr noundef %i.dl) #12
  br label %trace_vfio_pci_hot_reset_result.exit

trace_vfio_pci_hot_reset_result.exit:             ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag
  %i.dq = load ptr, ptr %i.a, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i32, ptr %i.dr, align 4
  %.not117 = icmp eq i32 %i.ds, 0
  br i1 %.not117, label %.loopexit, label %.lr.ph113

.lr.ph113:                                        ; preds = %trace_vfio_pci_hot_reset_result.exit
  %i.dt = getelementptr i8, ptr %0, i64 208
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph113, %bb.aj
  %.2112 = phi i32 [ 0, %.lr.ph113 ], [ %i.dx, %bb.aj ] ; 2 uses
  %i.du = sext i32 %.2112 to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.du
  %.val = load i32, ptr %i.dv, align 4
  %.val86 = load i32, ptr %i.dt, align 8
  %i.dw = call fastcc ptr @iommufd_cdev_dep_get_realized_vpdev(i32 %.val, i32 %.val86) ; 2 uses
  %.not83 = icmp eq ptr %i.dw, null
  br i1 %.not83, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @vfio_pci_post_reset(ptr noundef nonnull %i.dw) #12
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dx = add nuw i32 %.2112, 1                   ; 2 uses
  %i.dy = load ptr, ptr %i.a, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = icmp ult i32 %i.dx, %i.ea
  br i1 %i.eb, label %bb.ah, label %.loopexit, !llvm.loop !18

.loopexit:                                        ; preds = %bb.t, %bb.aj, %bb.l, %trace_vfio_pci_hot_reset_result.exit, %.preheader, %bb.j, %bb.f
  %.3 = phi i32 [ %i.k, %bb.f ], [ -1, %.preheader ], [ %.272103, %trace_vfio_pci_hot_reset_result.exit ], [ -1, %bb.j ], [ -1, %bb.l ], [ %.272103, %bb.aj ], [ -22, %bb.t ] ; 2 uses
  br i1 %1, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge, %.loopexit
  %.3106 = phi i32 [ %.3, %.loopexit ], [ -22, %._crit_edge ]
  call void @vfio_pci_post_reset(ptr noundef nonnull %i.b) #12
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %.loopexit
  %.3107 = phi i32 [ %.3106, %bb.ak ], [ %.3, %.loopexit ]
  %i.ec = load ptr, ptr %i.a, align 8
  call void @g_free(ptr noundef %i.ec) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.3107
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @iommufd_set_dirty_page_tracking(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 33, ptr noundef nonnull @__func__.VFIO_IOMMU_IOMMUFD) #12 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 384 ; 2 uses
  %.023 = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not24 = icmp eq ptr %.023, null
  br i1 %.not24, label %.loopexit, label %iommufd_hwpt_dirty_tracking.exit.lr.ph

iommufd_hwpt_dirty_tracking.exit.lr.ph:           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 368 ; 2 uses
  br label %iommufd_hwpt_dirty_tracking.exit

iommufd_hwpt_dirty_tracking.exit:                 ; preds = %iommufd_hwpt_dirty_tracking.exit.lr.ph, %bb.c
  %.025 = phi ptr [ %.023, %iommufd_hwpt_dirty_tracking.exit.lr.ph ], [ %.0, %bb.c ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.025, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = and i32 %i.e, 2
  %.not20 = icmp eq i32 %i.f, 0
  br i1 %.not20, label %bb.c, label %bb.b

bb.b:                                             ; preds = %iommufd_hwpt_dirty_tracking.exit
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = load i32, ptr %.025, align 8
  %i.i = tail call zeroext i1 @iommufd_backend_set_dirty_tracking(ptr noundef %i.g, i32 noundef %i.h, i1 noundef zeroext %1, ptr noundef %2) #12
  br i1 %i.i, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.126 = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not1727 = icmp eq ptr %.126, null
  br i1 %.not1727, label %.loopexit, label %iommufd_hwpt_dirty_tracking.exit19.lr.ph

iommufd_hwpt_dirty_tracking.exit19.lr.ph:         ; preds = %.preheader
  %i.j = xor i1 %1, true
  br label %iommufd_hwpt_dirty_tracking.exit19

bb.c:                                             ; preds = %bb.b, %iommufd_hwpt_dirty_tracking.exit
  %i.k = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %.0 = load ptr, ptr %i.k, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %iommufd_hwpt_dirty_tracking.exit, !llvm.loop !19

iommufd_hwpt_dirty_tracking.exit19:               ; preds = %iommufd_hwpt_dirty_tracking.exit19.lr.ph, %bb.e
  %.128 = phi ptr [ %.126, %iommufd_hwpt_dirty_tracking.exit19.lr.ph ], [ %.1, %bb.e ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.128, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, 2
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %iommufd_hwpt_dirty_tracking.exit19
  %i.o = load ptr, ptr %i.c, align 8
  %i.p = load i32, ptr %.128, align 8
  %i.q = tail call zeroext i1 @iommufd_backend_set_dirty_tracking(ptr noundef %i.o, i32 noundef %i.p, i1 noundef zeroext %i.j, ptr noundef null) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %iommufd_hwpt_dirty_tracking.exit19, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.128, i64 16
  %.1 = load ptr, ptr %i.r, align 8               ; 2 uses
  %.not17 = icmp eq ptr %.1, null
  br i1 %.not17, label %.loopexit, label %iommufd_hwpt_dirty_tracking.exit19, !llvm.loop !20

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.a, %.preheader
  %.016 = phi i32 [ -22, %.preheader ], [ 0, %bb.a ], [ -22, %bb.e ], [ 0, %bb.c ]
  ret i32 %.016
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -22, 1) i32 @iommufd_query_dirty_bitmap(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef 33, ptr noundef nonnull @__func__.VFIO_IOMMU_IOMMUFD) #12 ; 2 uses
  %i.b = tail call i32 @getpagesize() #13
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %.015 = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not16 = icmp eq ptr %.015, null
  br i1 %.not16, label %._crit_edge, label %iommufd_hwpt_dirty_tracking.exit.lr.ph

iommufd_hwpt_dirty_tracking.exit.lr.ph:           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  br label %iommufd_hwpt_dirty_tracking.exit

iommufd_hwpt_dirty_tracking.exit:                 ; preds = %iommufd_hwpt_dirty_tracking.exit.lr.ph, %bb.c
  %.017 = phi ptr [ %.015, %iommufd_hwpt_dirty_tracking.exit.lr.ph ], [ %.0, %bb.c ] ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.017, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = and i32 %i.g, 2
  %.not14 = icmp eq i32 %i.h, 0
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %iommufd_hwpt_dirty_tracking.exit
  %i.i = load ptr, ptr %i.e, align 8
  %i.j = load i32, ptr %.017, align 8
  %i.k = load ptr, ptr %1, align 8
  %i.l = tail call zeroext i1 @iommufd_backend_get_dirty_bitmap(ptr noundef %i.i, i32 noundef %i.j, i64 noundef %2, i64 noundef %3, i64 noundef %i.c, ptr noundef %i.k, i64 noundef %4, ptr noundef %5) #12
  br i1 %i.l, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b, %iommufd_hwpt_dirty_tracking.exit
  %i.m = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %.0 = load ptr, ptr %i.m, align 8               ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %._crit_edge, label %iommufd_hwpt_dirty_tracking.exit, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.b, %bb.c, %bb.a
  %.013 = phi i32 [ 0, %bb.a ], [ 0, %bb.c ], [ -22, %bb.b ]
  ret i32 %.013
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_ram_get_host_addr(ptr noundef) local_unnamed_addr #1

declare i64 @qemu_ram_get_fd_offset(ptr noundef) local_unnamed_addr #1

declare i32 @iommufd_backend_map_file_dma(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @iommufd_backend_map_dma(ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @qemu_ram_get_fd(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_ram_is_shared(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_is_ram_device(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @vfio_container_dirty_tracking_is_started(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @vfio_container_devices_dirty_tracking_is_supported(ptr noundef) local_unnamed_addr #1

declare i32 @vfio_container_query_dirty_bitmap(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @error_report_err(ptr noundef) local_unnamed_addr #1

declare i32 @iommufd_backend_unmap_dma(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @object_class_by_name(ptr noundef) local_unnamed_addr #1

declare void @vfio_cpr_load_device(ptr noundef) local_unnamed_addr #1

declare ptr @vfio_address_space_get(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @cpr_is_incoming() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @iommufd_cdev_attach_container(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ErrorPropagator, align 8    ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %4 = alloca %union.VendorCaps, align 8          ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %3, align 8
  store ptr %2, ptr %i.h, align 8
  %i.i = icmp eq ptr %2, null
  %i.j = icmp eq ptr %2, @error_fatal
  %or.cond.i = or i1 %i.i, %i.j
  %spec.select.i = select i1 %or.cond.i, ptr %3, ptr %2 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @object_dynamic_cast_assert(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 59, ptr noundef nonnull @__func__.VFIO_IOMMU) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 0, ptr %i.b, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i64 40, i1 false), !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 0, ptr %i.c, align 4, !annotation !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 0, ptr %i.d, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 4 uses
  %.089111.i = load ptr, ptr %i.n, align 8        ; 2 uses
  %.not94112.i = icmp eq ptr %.089111.i, null
  br i1 %.not94112.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %.lr.ph.i
  %.089113.i = phi ptr [ %.089111.i, %.lr.ph.i ], [ %.089.i, %bb.h ] ; 7 uses
  %i.p = call zeroext i1 @cpr_is_incoming() #12
end_hunk_0
