Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/realview?download=true
inline.NumInlined: 34
inline.NumDeleted: 7
begin_hunk_0_@realview_init:bb.a
  br label %bb.x

bb.w:                                             ; preds = %bb.r
  %i.az = select i1 %i.k, i64 503316480, i64 268697600
  %i.ba = load ptr, ptr %i.b, align 16
  %i.bb = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.19, i64 noundef range(i64 268443648, 503316481) %i.az, ptr noundef %i.ba, ptr noundef null) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge231
  %.1197 = phi ptr [ %.0196, %._crit_edge231 ], [ %i.bb, %bb.w ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false), !annotation !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.y
  %indvars.iv = phi i64 [ 0, %bb.x ], [ %indvars.iv.next, %bb.y ] ; 3 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  %i.bd = tail call ptr @qdev_get_gpio_in(ptr noundef %.1197, i32 noundef %i.bc) #6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store ptr %i.bd, ptr %i.be, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond241.not = icmp eq i64 %indvars.iv.next, 64
  br i1 %exitcond241.not, label %bb.z, label %bb.y, !llvm.loop !9

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call ptr @qdev_new(ptr noundef nonnull @.str.20) #6 ; 5 uses
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bf, ptr noundef nonnull @.str.21, i32 noundef 512) #6
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %.not209 = icmp eq ptr %i.bh, null
  br i1 %.not209, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @qdev_prop_set_string(ptr noundef %i.bf, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.bh) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bi = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.bf, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  %i.bj = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.bi, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.bk = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.bf, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.bk, i32 noundef 0, i64 noundef 268451840) #6
  %i.bl = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.bf, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void @sysbus_connect_irq(ptr noundef %i.bl, i32 noundef 0, ptr noundef %i.bn) #6
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bp = load ptr, ptr %i.bo, align 16
  %i.bq = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.23, i64 noundef 268460032, ptr noundef %i.bp, ptr noundef null) #6 ; 0 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.24, i64 noundef 268464128, ptr noundef %i.bs, ptr noundef null) #6 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.bv = load ptr, ptr %i.bu, align 16
  %i.bw = tail call ptr @serial_hd(i32 noundef 0) #6
  %i.bx = tail call ptr @pl011_create(i64 noundef 268472320, ptr noundef %i.bv, ptr noundef %i.bw) #6 ; 0 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = tail call ptr @serial_hd(i32 noundef 1) #6
  %i.cb = tail call ptr @pl011_create(i64 noundef 268476416, ptr noundef %i.bz, ptr noundef %i.ca) #6 ; 0 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.cd = load ptr, ptr %i.cc, align 16
  %i.ce = tail call ptr @serial_hd(i32 noundef 2) #6
  %i.cf = tail call ptr @pl011_create(i64 noundef 268480512, ptr noundef %i.cd, ptr noundef %i.ce) #6 ; 0 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = tail call ptr @serial_hd(i32 noundef 3) #6
  %i.cj = tail call ptr @pl011_create(i64 noundef 268484608, ptr noundef %i.ch, ptr noundef %i.ci) #6 ; 0 uses
  %i.ck = tail call ptr @qdev_new(ptr noundef nonnull @.str.25) #6 ; 2 uses
  %i.cl = tail call zeroext i1 @object_property_set_link(ptr noundef %i.ck, ptr noundef nonnull @.str.26, ptr noundef %i.c, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.cm = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ck, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6 ; 3 uses
  %i.cn = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.cm, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  tail call void @sysbus_mmio_map(ptr noundef %i.cm, i32 noundef 0, i64 noundef 268632064) #6
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.cp = load ptr, ptr %i.co, align 16
  tail call void @sysbus_connect_irq(ptr noundef %i.cm, i32 noundef 0, ptr noundef %i.cp) #6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cr = load ptr, ptr %i.cq, align 16
  %i.cs = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.27, i64 noundef 268505088, ptr noundef %i.cr, ptr noundef null) #6 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.27, i64 noundef 268509184, ptr noundef %i.cu, ptr noundef null) #6 ; 0 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.cx = load ptr, ptr %i.cw, align 16
  %i.cy = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.28, i64 noundef 268513280, ptr noundef %i.cx, ptr noundef null) #6 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.28, i64 noundef 268517376, ptr noundef %i.da, ptr noundef null) #6 ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.dd = load ptr, ptr %i.dc, align 16
  %i.de = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.28, i64 noundef 268521472, ptr noundef %i.dd, ptr noundef null) #6 ; 2 uses
  %i.df = tail call ptr @qdev_new(ptr noundef nonnull @.str.29) #6 ; 4 uses
  %i.dg = tail call zeroext i1 @object_property_set_link(ptr noundef %i.df, ptr noundef nonnull @.str.30, ptr noundef %i.c, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.dh = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.df, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  %i.di = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.dh, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.dj = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.df, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.dj, i32 noundef 0, i64 noundef 268566528) #6
  %i.dk = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.df, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6
  %i.dl = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.dm = load ptr, ptr %i.dl, align 8
  tail call void @sysbus_connect_irq(ptr noundef %i.dk, i32 noundef 0, ptr noundef %i.dm) #6
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.dq = load ptr, ptr %i.dp, align 16
  %i.dr = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.31, i64 noundef 268455936, ptr noundef %i.do, ptr noundef %i.dq, ptr noundef null) #6 ; 3 uses
  %i.ds = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ak, i32 noundef 0) #6
  %i.dt = tail call ptr @qdev_get_gpio_in(ptr noundef %i.de, i32 noundef 1) #6
  %i.du = tail call ptr @qdev_new(ptr noundef nonnull @.str.56) #6 ; 5 uses
  tail call void @qdev_prop_set_uint32(ptr noundef %i.du, ptr noundef nonnull @.str.57, i32 noundef 2) #6
  %i.dv = tail call zeroext i1 @qdev_realize_and_unref(ptr noundef %i.du, ptr noundef null, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  tail call void @qdev_connect_gpio_out(ptr noundef %i.du, i32 noundef 0, ptr noundef %i.ds) #6
  tail call void @qdev_connect_gpio_out(ptr noundef %i.du, i32 noundef 1, ptr noundef %i.dt) #6
  %i.dw = tail call ptr @qdev_get_gpio_in(ptr noundef %i.du, i32 noundef 0) #6
  tail call void @qdev_connect_gpio_out_named(ptr noundef %i.dr, ptr noundef nonnull @.str.32, i32 noundef 0, ptr noundef %i.dw) #6
  %i.dx = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ak, i32 noundef 1) #6
  %i.dy = tail call ptr @qdev_get_gpio_in(ptr noundef %i.de, i32 noundef 0) #6
  %i.dz = tail call ptr @qemu_irq_invert(ptr noundef %i.dy) #6
  %i.ea = tail call ptr @qdev_new(ptr noundef nonnull @.str.56) #6 ; 5 uses
  tail call void @qdev_prop_set_uint32(ptr noundef %i.ea, ptr noundef nonnull @.str.57, i32 noundef 2) #6
  %i.eb = tail call zeroext i1 @qdev_realize_and_unref(ptr noundef %i.ea, ptr noundef null, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  tail call void @qdev_connect_gpio_out(ptr noundef %i.ea, i32 noundef 0, ptr noundef %i.dx) #6
  tail call void @qdev_connect_gpio_out(ptr noundef %i.ea, i32 noundef 1, ptr noundef %i.dz) #6
  %i.ec = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ea, i32 noundef 0) #6
  tail call void @qdev_connect_gpio_out_named(ptr noundef %i.dr, ptr noundef nonnull @.str.33, i32 noundef 0, ptr noundef %i.ec) #6
  %i.ed = tail call ptr @drive_get(i32 noundef 6, i32 noundef 0, i32 noundef 0) #6 ; 2 uses
  %.not210 = icmp eq ptr %i.ed, null
  br i1 %.not210, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = tail call ptr @qdev_new(ptr noundef nonnull @.str.34) #6 ; 2 uses
  %i.ef = tail call ptr @blk_by_legacy_dinfo(ptr noundef nonnull %i.ed) #6
  %i.eg = tail call zeroext i1 @qdev_prop_set_drive_err(ptr noundef %i.ee, ptr noundef nonnull @.str.35, ptr noundef %i.ef, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  %i.eh = tail call ptr @qdev_get_child_bus(ptr noundef %i.dr, ptr noundef nonnull @.str.36) #6
  %i.ei = tail call zeroext i1 @qdev_realize_and_unref(ptr noundef %i.ee, ptr noundef %i.eh, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ej = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ek = load ptr, ptr %i.ej, align 16
  %i.el = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.37, i64 noundef 268529664, ptr noundef %i.ek, ptr noundef null) #6 ; 0 uses
  br i1 %i.k, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.em = tail call ptr @qdev_new(ptr noundef nonnull @.str.38) #6 ; 2 uses
  %i.en = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.em, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #6 ; 12 uses
  %i.eo = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.en, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  tail call void @sysbus_mmio_map(ptr noundef %i.en, i32 noundef 0, i64 noundef 268537856) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.en, i32 noundef 1, i64 noundef 1610612736) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.en, i32 noundef 2, i64 noundef 1627389952) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.en, i32 noundef 3, i64 noundef 1644167168) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.en, i32 noundef 4, i64 noundef 1660944384) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.en, i32 noundef 5, i64 noundef 1677721600) #6
  tail call void @sysbus_mmio_map(ptr noundef %i.en, i32 noundef 6, i64 noundef 1744830464) #6
  %i.ep = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %i.eq = load ptr, ptr %i.ep, align 16
  tail call void @sysbus_connect_irq(ptr noundef %i.en, i32 noundef 0, ptr noundef %i.eq) #6
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 392
  %i.es = load ptr, ptr %i.er, align 8
  tail call void @sysbus_connect_irq(ptr noundef %i.en, i32 noundef 1, ptr noundef %i.es) #6
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  %i.eu = load ptr, ptr %i.et, align 16
  tail call void @sysbus_connect_irq(ptr noundef %i.en, i32 noundef 2, ptr noundef %i.eu) #6
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  %i.ew = load ptr, ptr %i.ev, align 8
  tail call void @sysbus_connect_irq(ptr noundef %i.en, i32 noundef 3, ptr noundef %i.ew) #6
  %i.ex = tail call ptr @qdev_get_child_bus(ptr noundef %i.em, ptr noundef nonnull @.str.39) #6 ; 4 uses
  %i.ey = tail call zeroext i1 @machine_usb(ptr noundef nonnull %0) #6
  br i1 %i.ey, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ez = tail call ptr @pci_create_simple(ptr noundef %i.ex, i32 noundef -1, ptr noundef nonnull @.str.40) #6 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fa = tail call i32 @drive_get_max_bus(i32 noundef 2) #6 ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %.lr.ph235, label %._crit_edge236

.lr.ph235:                                        ; preds = %bb.ag, %.lr.ph235
  %.3233 = phi i32 [ %i.fe, %.lr.ph235 ], [ %i.fa, %bb.ag ] ; 2 uses
  %i.fc = tail call ptr @pci_create_simple(ptr noundef %i.ex, i32 noundef -1, ptr noundef nonnull @.str.41) #6
  %i.fd = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.fc, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #6
  tail call void @lsi53c8xx_handle_legacy_cmdline(ptr noundef %i.fd) #6
  %i.fe = add nsw i32 %.3233, -1
  %.not251 = icmp eq i32 %.3233, 0
  br i1 %.not251, label %._crit_edge236, label %.lr.ph235, !llvm.loop !10

._crit_edge236:                                   ; preds = %.lr.ph235, %bb.ag
  %i.ff = tail call ptr @qemu_find_nic_info(ptr noundef nonnull @.str.43, i1 noundef zeroext true, ptr noundef null) #6
  %.not211 = icmp eq ptr %i.ff, null
  br i1 %.not211, label %bb.ai, label %bb.ah

.thread:                                          ; preds = %bb.ad
  %i.fg = tail call ptr @qemu_find_nic_info(ptr noundef nonnull @.str.42, i1 noundef zeroext true, ptr noundef null) #6
  %.not211218 = icmp eq ptr %i.fg, null
  br i1 %.not211218, label %.thread224, label %.thread248

.thread248:                                       ; preds = %.thread
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.fi = load ptr, ptr %i.fh, align 16
  tail call void @lan9118_init(i32 noundef 1308622848, ptr noundef %i.fi) #6
  br label %bb.ai

bb.ah:                                            ; preds = %._crit_edge236
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.fk = load ptr, ptr %i.fj, align 16
  tail call void @smc91c111_init(i32 noundef 1308622848, ptr noundef %i.fk) #6
  br label %bb.ai

bb.ai:                                            ; preds = %.thread248, %bb.ah, %._crit_edge236
  %.0195220 = phi ptr [ %i.ex, %._crit_edge236 ], [ null, %.thread248 ], [ %i.ex, %bb.ah ] ; 2 uses
  %.not212 = icmp eq ptr %.0195220, null
  br i1 %.not212, label %.thread224, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @pci_init_nic_devices(ptr noundef nonnull %.0195220, ptr noundef nonnull @.str.44) #6
  br label %.thread224

.thread224:                                       ; preds = %.thread, %bb.aj, %bb.ai
  %i.fl = tail call ptr (ptr, i64, ...) @sysbus_create_varargs(ptr noundef nonnull @.str.45, i64 noundef 268443648, ptr noundef null, ptr noundef null) #6
  %i.fm = tail call ptr @qdev_get_child_bus(ptr noundef %i.fl, ptr noundef nonnull @.str.46) #6
  %i.fn = tail call ptr @i2c_slave_create_simple(ptr noundef %i.fm, ptr noundef nonnull @.str.47, i8 noundef zeroext 104) #6 ; 0 uses
  %i.fo = tail call zeroext i1 @memory_region_init_ram(ptr noundef %i.f, ptr noundef null, ptr noundef nonnull @.str.48, i64 noundef 4096, ptr noundef nonnull @error_fatal) #6 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef %i.c, i64 noundef 3758096384, ptr noundef %i.f) #6
  store i64 %.1, ptr @realview_binfo, align 8
  %i.fp = zext nneg i32 %1 to i64
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr @realview_board_id, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4
  store i32 %i.fr, ptr getelementptr inbounds nuw (i8, ptr @realview_binfo, i64 104), align 8
  %i.fs = icmp eq i32 %1, 2
  %i.ft = select i1 %i.fs, i64 1879048192, i64 0
  store i64 %i.ft, ptr getelementptr inbounds nuw (i8, ptr @realview_binfo, i64 48), align 8
  tail call void @arm_load_kernel(ptr noundef nonnull %i.z, ptr noundef nonnull %0, ptr noundef nonnull @realview_binfo) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare ptr @get_system_memory() local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare ptr @object_new(ptr noundef) local_unnamed_addr #1

declare ptr @object_property_find(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @object_property_set_bool(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @object_property_set_int(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qdev_realize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_gpio_in(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_init_ram(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_init_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @qdev_new(ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_uint32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @sysbus_realize_and_unref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_mmio_map(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_connect_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @sysbus_create_varargs(ptr noundef, i64 noundef, ...) local_unnamed_addr #1

declare void @qdev_prop_set_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @pl011_create(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @serial_hd(i32 noundef) local_unnamed_addr #1

declare zeroext i1 @object_property_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_irq_invert(ptr noundef) local_unnamed_addr #1

declare ptr @drive_get(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @qdev_prop_set_drive_err(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @blk_by_legacy_dinfo(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qdev_realize_and_unref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_child_bus(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @machine_usb(ptr noundef) local_unnamed_addr #1

declare ptr @pci_create_simple(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @drive_get_max_bus(i32 noundef) local_unnamed_addr #1

declare void @lsi53c8xx_handle_legacy_cmdline(ptr noundef) local_unnamed_addr #1

declare ptr @qemu_find_nic_info(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @lan9118_init(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @smc91c111_init(i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @pci_init_nic_devices(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @i2c_slave_create_simple(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare void @arm_load_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_connect_gpio_out(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_connect_gpio_out_named(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @realview_eb_mpcore_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_CLASS) #6 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @.str.60, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @realview_eb_mpcore_init, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 4, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 273
  store i8 1, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @.str.61, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 205
  store i8 1, ptr %i.h, align 1
  tail call void @machine_add_audiodev_property(ptr noundef %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @realview_eb_mpcore_init(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @realview_init(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @realview_pb_a8_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_CLASS) #6 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @.str.64, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @realview_pb_a8_init, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 273
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @.str.65, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 205
  store i8 1, ptr %i.f, align 1
  tail call void @machine_add_audiodev_property(ptr noundef %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @realview_pb_a8_init(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @realview_init(ptr noundef %0, i32 noundef 2)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @realview_pbx_a9_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE_CLASS) #6 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @.str.68, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr @realview_pbx_a9_init, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 4, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 273
  store i8 1, ptr %i.e, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr @.str.69, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 205
  store i8 1, ptr %i.g, align 1
  tail call void @machine_add_audiodev_property(ptr noundef %i.a) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @realview_pbx_a9_init(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @realview_init(ptr noundef %0, i32 noundef 3)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
end_hunk_0
