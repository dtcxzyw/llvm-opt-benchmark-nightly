inline.NumInlined: 78
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@mps3r_common_init:bb.a
  %i.cv = tail call ptr @object_new(ptr noundef %i.cu) #5 ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.cr ; 4 uses
  store ptr %i.cv, ptr %i.cw, align 8
  %i.cx = tail call zeroext i1 @object_property_set_link(ptr noundef %i.cv, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.cs, ptr noundef nonnull @error_abort) #5 ; 0 uses
  %i.cy = load ptr, ptr %i.cw, align 8
  %i.cz = tail call zeroext i1 @object_property_set_int(ptr noundef %i.cy, ptr noundef nonnull @.str.11, i64 noundef 4026531840, ptr noundef nonnull @error_abort) #5 ; 0 uses
  %i.da = load ptr, ptr %i.cw, align 8
  %i.db = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.da, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.dc = tail call zeroext i1 @qdev_realize(ptr noundef %i.db, ptr noundef null, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.dd = load ptr, ptr %i.cw, align 8
  tail call void @object_unref(ptr noundef %i.dd) #5
  %i.de = getelementptr inbounds [272 x i8], ptr %i.s, i64 %i.cr ; 2 uses
  %i.df = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.de, ptr noundef null, ptr noundef %i.cp, i64 noundef 4096, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef nonnull %i.cs, i64 noundef 3888123904, ptr noundef nonnull %i.de) #5
  tail call void @g_free(ptr noundef %i.cq) #5
  tail call void @g_free(ptr noundef %i.cp) #5
  tail call void @g_free(ptr noundef %i.co) #5
  %i.dg = add nuw i32 %.0205223, 1                ; 2 uses
  %i.dh = load i32, ptr %i.l, align 8
  %i.di = icmp ult i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.l, label %._crit_edge225, !llvm.loop !11

bb.m:                                             ; preds = %.lr.ph227, %bb.m
  %.0206226 = phi i32 [ 0, %.lr.ph227 ], [ %i.ea, %bb.m ] ; 5 uses
  %i.dj = shl i32 %.0206226, 5                    ; 4 uses
  %i.dk = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.12, i32 noundef %.0206226) #5 ; 2 uses
  %i.dl = sext i32 %.0206226 to i64               ; 2 uses
  %i.dm = getelementptr inbounds [216 x i8], ptr %i.cm, i64 %i.dl ; 2 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.dk, ptr noundef nonnull %i.dm, i64 noundef 216, ptr noundef nonnull @.str.13) #5
  %i.dn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.dm, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5 ; 5 uses
  tail call void @qdev_prop_set_uint32(ptr noundef %i.dn, ptr noundef nonnull @.str.14, i32 noundef 2) #5
  %i.do = tail call zeroext i1 @qdev_realize(ptr noundef %i.dn, ptr noundef null, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.dp = add i32 %i.dj, 115
  %i.dq = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef %i.dp) #5
  tail call void @qdev_connect_gpio_out(ptr noundef %i.dn, i32 noundef 0, ptr noundef %i.dq) #5
  %i.dr = getelementptr inbounds [272 x i8], ptr %i.cn, i64 %i.dl
  %i.ds = add i32 %i.dj, 113
  %i.dt = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef %i.ds) #5
  %i.du = add i32 %i.dj, 112
  %i.dv = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef %i.du) #5
  %i.dw = tail call ptr @qdev_get_gpio_in(ptr noundef %i.dn, i32 noundef 0) #5
  %i.dx = tail call ptr @qdev_get_gpio_in(ptr noundef %i.dn, i32 noundef 1) #5
  %i.dy = add i32 %i.dj, 114
  %i.dz = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef %i.dy) #5
  tail call fastcc void @create_uart(ptr noundef nonnull %i.a, i32 noundef %.0206226, ptr noundef nonnull %i.dr, i64 noundef 3888119808, ptr noundef %i.dt, ptr noundef %i.dv, ptr noundef %i.dw, ptr noundef %i.dx, ptr noundef %i.dz)
  tail call void @g_free(ptr noundef %i.dk) #5
  %i.ea = add nuw i32 %.0206226, 1                ; 2 uses
  %i.eb = load i32, ptr %i.l, align 8
  %i.ec = icmp ult i32 %i.ea, %i.eb
  br i1 %i.ec, label %bb.m, label %.preheader, !llvm.loop !12

.preheader:                                       ; preds = %bb.m, %create_gic.exit
  %i.ed = getelementptr inbounds nuw i8, ptr %i.a, i64 32448 ; 12 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.ed, i64 noundef 216, ptr noundef nonnull @.str.13) #5
  %i.ee = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.ee, ptr noundef nonnull @.str.14, i32 noundef 8) #5
  %i.ef = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.eg = tail call zeroext i1 @qdev_realize(ptr noundef %i.ef, ptr noundef null, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.eh = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.ei = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 17) #5
  tail call void @qdev_connect_gpio_out(ptr noundef %i.eh, i32 noundef 0, ptr noundef %i.ei) #5
  %i.ej = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 6) #5
  %i.ek = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 5) #5
  %i.el = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.em = tail call ptr @qdev_get_gpio_in(ptr noundef %i.el, i32 noundef 0) #5
  %i.en = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.eo = tail call ptr @qdev_get_gpio_in(ptr noundef %i.en, i32 noundef 1) #5
  %i.ep = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 13) #5
  tail call fastcc void @create_uart(ptr noundef nonnull %i.a, i32 noundef 2, ptr noundef %i.d, i64 noundef 3760214016, ptr noundef %i.ej, ptr noundef %i.ek, ptr noundef %i.em, ptr noundef %i.eo, ptr noundef %i.ep)
  %i.eq = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 8) #5
  %i.er = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 7) #5
  %i.es = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.et = tail call ptr @qdev_get_gpio_in(ptr noundef %i.es, i32 noundef 2) #5
  %i.eu = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.ev = tail call ptr @qdev_get_gpio_in(ptr noundef %i.eu, i32 noundef 3) #5
  %i.ew = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 14) #5
  tail call fastcc void @create_uart(ptr noundef nonnull %i.a, i32 noundef 3, ptr noundef %i.d, i64 noundef 3760218112, ptr noundef %i.eq, ptr noundef %i.er, ptr noundef %i.et, ptr noundef %i.ev, ptr noundef %i.ew)
  %i.ex = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 10) #5
  %i.ey = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 9) #5
  %i.ez = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.fa = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ez, i32 noundef 4) #5
  %i.fb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.fc = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fb, i32 noundef 5) #5
  %i.fd = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 15) #5
  tail call fastcc void @create_uart(ptr noundef nonnull %i.a, i32 noundef 4, ptr noundef %i.d, i64 noundef 3760222208, ptr noundef %i.ex, ptr noundef %i.ey, ptr noundef %i.fa, ptr noundef %i.fc, ptr noundef %i.fd)
  %i.fe = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 12) #5
  %i.ff = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 11) #5
  %i.fg = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.fh = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fg, i32 noundef 6) #5
  %i.fi = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.fj = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fi, i32 noundef 7) #5
  %i.fk = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 16) #5
  tail call fastcc void @create_uart(ptr noundef nonnull %i.a, i32 noundef 5, ptr noundef %i.d, i64 noundef 3760226304, ptr noundef %i.fe, ptr noundef %i.ff, ptr noundef %i.fh, ptr noundef %i.fj, ptr noundef %i.fk)
  %i.fl = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.16, i32 noundef 0) #5 ; 2 uses
  %i.fm = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.fm, ptr noundef nonnull @.str.65, ptr noundef %i.fl) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.fm, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.fn = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.fm, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.fo = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.fn, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.fp = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.fm, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.fp, i32 noundef 0, i64 noundef range(i64 0, 4294967296) 3758096384, i32 noundef -1000) #5
  tail call void @g_free(ptr noundef %i.fl) #5
  %i.fq = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.16, i32 noundef 1) #5 ; 2 uses
  %i.fr = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.fr, ptr noundef nonnull @.str.65, ptr noundef %i.fq) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.fr, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.fs = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.fr, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.ft = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.fs, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.fu = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.fr, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.fu, i32 noundef 0, i64 noundef range(i64 0, 4294967296) 3758100480, i32 noundef -1000) #5
  tail call void @g_free(ptr noundef %i.fq) #5
  %i.fv = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.16, i32 noundef 2) #5 ; 2 uses
  %i.fw = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.fw, ptr noundef nonnull @.str.65, ptr noundef %i.fv) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.fw, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.fx = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.fw, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.fy = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.fx, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.fz = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.fw, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.fz, i32 noundef 0, i64 noundef range(i64 0, 4294967296) 3758104576, i32 noundef -1000) #5
  tail call void @g_free(ptr noundef %i.fv) #5
  %i.ga = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.16, i32 noundef 3) #5 ; 2 uses
  %i.gb = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.gb, ptr noundef nonnull @.str.65, ptr noundef %i.ga) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.gb, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.gc = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.gb, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.gd = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.gc, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.ge = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.gb, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.ge, i32 noundef 0, i64 noundef range(i64 0, 4294967296) 3758108672, i32 noundef -1000) #5
  tail call void @g_free(ptr noundef %i.ga) #5
  %i.gf = getelementptr inbounds nuw i8, ptr %i.a, i64 32672 ; 5 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.gf, i64 noundef 1152, ptr noundef nonnull @.str.18) #5
  %i.gg = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gf, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.gh = load ptr, ptr %i.f, align 16
  tail call void @qdev_connect_clock_in(ptr noundef %i.gg, ptr noundef nonnull @.str.19, ptr noundef %i.gh) #5
  %i.gi = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gf, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.gj = tail call zeroext i1 @sysbus_realize(ptr noundef %i.gi, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.gk = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gf, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.gl = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 0) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.gk, i32 noundef 0, ptr noundef %i.gl) #5
  %i.gm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gf, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.gm, i32 noundef 0, i64 noundef 3759144960) #5
  %i.gn = getelementptr inbounds nuw i8, ptr %i.a, i64 33824 ; 7 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.gn, i64 noundef 1200, ptr noundef nonnull @.str.21) #5
  %i.go = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gn, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.gp = load ptr, ptr %i.f, align 16
  tail call void @qdev_connect_clock_in(ptr noundef %i.go, ptr noundef nonnull @.str.22, ptr noundef %i.gp) #5
  %i.gq = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gn, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.gr = tail call zeroext i1 @sysbus_realize(ptr noundef %i.gq, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.gs = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gn, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.gt = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 3) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.gs, i32 noundef 0, ptr noundef %i.gt) #5
  %i.gu = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gn, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.gv = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 1) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.gu, i32 noundef 1, ptr noundef %i.gv) #5
  %i.gw = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gn, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.gx = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 2) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.gw, i32 noundef 2, ptr noundef %i.gx) #5
  %i.gy = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gn, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.gy, i32 noundef 0, i64 noundef 3759149056) #5
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 35024 ; 4 uses
  %i.ha = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, i32 noundef 0) #5 ; 2 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.ha, ptr noundef nonnull %i.gz, i64 noundef 1136, ptr noundef nonnull @.str.24) #5
  %i.hb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gz, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.hc = tail call zeroext i1 @sysbus_realize(ptr noundef %i.hb, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.hd = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gz, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.hd, i32 noundef 0, i64 noundef 3759153152) #5
  %i.he = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.hf = tail call ptr @qdev_get_child_bus(ptr noundef %i.he, ptr noundef nonnull @.str.25) #5
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 69
  store i8 1, ptr %i.hg, align 1
  tail call void @g_free(ptr noundef %i.ha) #5
  %i.hh = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, i32 noundef 1) #5 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 36160 ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.hh, ptr noundef nonnull %i.hi, i64 noundef 1136, ptr noundef nonnull @.str.24) #5
  %i.hj = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hi, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.hk = tail call zeroext i1 @sysbus_realize(ptr noundef %i.hj, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.hl = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hi, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.hl, i32 noundef 0, i64 noundef 3759157248) #5
  %i.hm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hi, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.hn = tail call ptr @qdev_get_child_bus(ptr noundef %i.hm, ptr noundef nonnull @.str.25) #5
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 69
  store i8 1, ptr %i.ho, align 1
  tail call void @g_free(ptr noundef %i.hh) #5
  %i.hp = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, i32 noundef 2) #5 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 37296 ; 3 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.hp, ptr noundef nonnull %i.hq, i64 noundef 1136, ptr noundef nonnull @.str.24) #5
  %i.hr = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hq, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.hs = tail call zeroext i1 @sysbus_realize(ptr noundef %i.hr, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.ht = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hq, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.ht, i32 noundef 0, i64 noundef 3759173632) #5
  tail call void @g_free(ptr noundef %i.hp) #5
  %i.hu = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, i32 noundef 3) #5 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 38432 ; 3 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.hu, ptr noundef nonnull %i.hv, i64 noundef 1136, ptr noundef nonnull @.str.24) #5
  %i.hw = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.hx = tail call zeroext i1 @sysbus_realize(ptr noundef %i.hw, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.hy = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hv, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.hy, i32 noundef 0, i64 noundef 3759177728) #5
  tail call void @g_free(ptr noundef %i.hu) #5
  %i.hz = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.23, i32 noundef 4) #5 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 39568 ; 3 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.hz, ptr noundef nonnull %i.ia, i64 noundef 1136, ptr noundef nonnull @.str.24) #5
  %i.ib = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.ic = tail call zeroext i1 @sysbus_realize(ptr noundef %i.ib, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.id = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ia, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.id, i32 noundef 0, i64 noundef 3759181824) #5
  tail call void @g_free(ptr noundef %i.hz) #5
  %i.ie = getelementptr inbounds nuw i8, ptr %i.a, i64 40704 ; 4 uses
  %i.if = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.26, i32 noundef 0) #5 ; 2 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.if, ptr noundef nonnull %i.ie, i64 noundef 1184, ptr noundef nonnull @.str.27) #5
  %i.ig = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ie, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.ih = tail call zeroext i1 @sysbus_realize(ptr noundef %i.ig, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.ii = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ie, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.ii, i32 noundef 0, i64 noundef 3759161344) #5
  %i.ij = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ie, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.ik = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 22) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.ij, i32 noundef 0, ptr noundef %i.ik) #5
  tail call void @g_free(ptr noundef %i.if) #5
  %i.il = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.26, i32 noundef 1) #5 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.a, i64 41888 ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.il, ptr noundef nonnull %i.im, i64 noundef 1184, ptr noundef nonnull @.str.27) #5
  %i.in = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.im, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.io = tail call zeroext i1 @sysbus_realize(ptr noundef %i.in, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.ip = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.im, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.ip, i32 noundef 0, i64 noundef 3759165440) #5
  %i.iq = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.im, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.ir = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 23) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.iq, i32 noundef 0, ptr noundef %i.ir) #5
  tail call void @g_free(ptr noundef %i.il) #5
  %i.is = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.26, i32 noundef 2) #5 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.a, i64 43072 ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef %i.is, ptr noundef nonnull %i.it, i64 noundef 1184, ptr noundef nonnull @.str.27) #5
  %i.iu = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.it, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.iv = tail call zeroext i1 @sysbus_realize(ptr noundef %i.iu, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.iw = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.it, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.iw, i32 noundef 0, i64 noundef 3759169536) #5
  %i.ix = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.it, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.iy = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 24) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.ix, i32 noundef 0, ptr noundef %i.iy) #5
  tail call void @g_free(ptr noundef %i.is) #5
  %i.iz = getelementptr inbounds nuw i8, ptr %i.a, i64 44256 ; 8 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.iz, i64 noundef 1248, ptr noundef nonnull @.str.29) #5
  %i.ja = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.ja, ptr noundef nonnull @.str.30, i32 noundef 0) #5
  %i.jb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.jb, ptr noundef nonnull @.str.31, i32 noundef 2) #5
  %i.jc = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.jc, ptr noundef nonnull @.str.32, i32 noundef 2097160) #5
  %i.jd = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.jd, ptr noundef nonnull @.str.33, i32 noundef 1090868064) #5
  %i.je = tail call ptr @qlist_new() #5           ; 8 uses
  tail call void @qlist_append_int(ptr noundef %i.je, i64 noundef 24000000) #5
  tail call void @qlist_append_int(ptr noundef %i.je, i64 noundef 50000000) #5
  tail call void @qlist_append_int(ptr noundef %i.je, i64 noundef 50000000) #5
  tail call void @qlist_append_int(ptr noundef %i.je, i64 noundef 50000000) #5
  tail call void @qlist_append_int(ptr noundef %i.je, i64 noundef 24576000) #5
  tail call void @qlist_append_int(ptr noundef %i.je, i64 noundef 23750000) #5
  tail call void @qlist_append_int(ptr noundef %i.je, i64 noundef 100000000) #5
  %i.jf = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_array(ptr noundef %i.jf, ptr noundef nonnull @.str.34, ptr noundef %i.je) #5
  %i.jg = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.jh = tail call zeroext i1 @sysbus_realize(ptr noundef %i.jg, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.ji = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.iz, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.ji, i32 noundef 0, i64 noundef 3760193536) #5
  %i.jj = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.jj, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.35) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.jj, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.jk = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.jj, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.jl = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.jk, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.jm = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.jj, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.jm, i32 noundef 0, i64 noundef 3760197632, i32 noundef -1000) #5
  %i.jn = getelementptr inbounds nuw i8, ptr %i.a, i64 45504 ; 7 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.jn, i64 noundef 1408, ptr noundef nonnull @.str.37) #5
  %i.jo = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jn, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.jo, ptr noundef nonnull @.str.38, i32 noundef 50000000) #5
  %i.jp = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jn, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.jp, ptr noundef nonnull @.str.39, i32 noundef 10) #5
  %i.jq = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jn, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_bit(ptr noundef %i.jq, ptr noundef nonnull @.str.40, i1 noundef zeroext true) #5
  %i.jr = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jn, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_bit(ptr noundef %i.jr, ptr noundef nonnull @.str.41, i1 noundef zeroext false) #5
  %i.js = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jn, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.jt = tail call zeroext i1 @sysbus_realize(ptr noundef %i.js, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.ju = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jn, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.ju, i32 noundef 0, i64 noundef 3760201728) #5
  %i.jv = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.jv, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.42) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.jv, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.jw = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.jv, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.jx = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.jw, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.jy = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.jv, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.jy, i32 noundef 0, i64 noundef 3760230400, i32 noundef -1000) #5
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 48032 ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.43, ptr noundef nonnull %i.jz, i64 noundef 1136, ptr noundef nonnull @.str.44) #5
  %i.ka = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jz, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.kb = tail call zeroext i1 @sysbus_realize(ptr noundef %i.ka, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.kc = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jz, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map(ptr noundef %i.kc, i32 noundef 0, i64 noundef 3760234496) #5
  %i.kd = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jz, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.ke = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 4) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.kd, i32 noundef 0, ptr noundef %i.ke) #5
  %i.kf = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ck, i32 noundef 18) #5
  tail call void @lan9118_init(i32 noundef -533725184, ptr noundef %i.kf) #5
  %i.kg = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.kg, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.45) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.kg, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.kh = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.kg, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.ki = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.kh, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.kj = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.kg, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.kj, i32 noundef 0, i64 noundef 3761246208, i32 noundef -1000) #5
  %i.kk = tail call ptr @qdev_new(ptr noundef nonnull @.str.64) #5 ; 4 uses
  tail call void @qdev_prop_set_string(ptr noundef %i.kk, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.46) #5
  tail call void @qdev_prop_set_uint64(ptr noundef %i.kk, ptr noundef nonnull @.str.66, i64 noundef 4096) #5
  %i.kl = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.kk, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.km = tail call zeroext i1 @sysbus_realize_and_unref(ptr noundef %i.kl, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.kn = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.kk, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  tail call void @sysbus_mmio_map_overlap(ptr noundef %i.kn, i32 noundef 0, i64 noundef 3764387840, i32 noundef -1000) #5
  %i.ko = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.kp = load i64, ptr %i.ko, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 400 ; 2 uses
  store i64 %i.kp, ptr %i.kq, align 16
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  store i32 -1, ptr %i.kr, align 8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.c, i64 416
  %i.kt = load i64, ptr %i.ks, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  store i64 %i.kt, ptr %i.ku, align 16
  %i.kv = getelementptr inbounds nuw i8, ptr %i.a, i64 520
  store ptr @mps3r_write_secondary_boot, ptr %i.kv, align 8
  %i.kw = getelementptr inbounds nuw i8, ptr %i.a, i64 528
  store ptr @mps3r_secondary_cpu_reset, ptr %i.kw, align 16
  %i.kx = getelementptr inbounds nuw i8, ptr %i.a, i64 3072
  %i.ky = load ptr, ptr %i.kx, align 16
  %i.kz = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ky, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.71, i32 noundef 27, ptr noundef nonnull @__func__.ARM_CPU) #5
  tail call void @arm_load_kernel(ptr noundef %i.kz, ptr noundef nonnull %0, ptr noundef nonnull %i.kq) #5
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @get_system_memory() local_unnamed_addr #1

declare ptr @clock_new(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #1

declare void @memory_region_init(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @memory_region_init_alias(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare void @memory_region_add_subregion_overlap(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_new(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @object_property_set_link(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @object_property_set_int(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @qdev_realize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @object_unref(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @memory_region_init_ram(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @object_initialize_child_internal(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_uint32(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qdev_connect_gpio_out(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_get_gpio_in(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @create_uart(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef range(i64 0, 4294967296) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.59, i32 noundef %1) #5 ; 2 uses
  %i.b = icmp ult i32 %1, 6
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.7, i32 noundef 339, ptr noundef nonnull @__PRETTY_FUNCTION__.create_uart) #6
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24720
  %i.e = getelementptr inbounds nuw [1216 x i8], ptr %i.d, i64 %i.c ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull %i.e, i64 noundef 1216, ptr noundef nonnull @.str.61) #5
  %i.f = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  tail call void @qdev_prop_set_uint32(ptr noundef %i.f, ptr noundef nonnull @.str.62, i32 noundef 50000000) #5
  %i.g = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.h = tail call ptr @serial_hd(i32 noundef %1) #5
  tail call void @qdev_prop_set_chr(ptr noundef %i.g, ptr noundef nonnull @.str.63, ptr noundef %i.h) #5
  %i.i = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5 ; 7 uses
  %i.j = tail call zeroext i1 @sysbus_realize(ptr noundef %i.i, ptr noundef nonnull @error_fatal) #5 ; 0 uses
  %i.k = tail call ptr @sysbus_mmio_get_region(ptr noundef %i.i, i32 noundef 0) #5
  tail call void @memory_region_add_subregion(ptr noundef %2, i64 noundef %3, ptr noundef %i.k) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.i, i32 noundef 0, ptr noundef %4) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.i, i32 noundef 1, ptr noundef %5) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.i, i32 noundef 2, ptr noundef %6) #5
  tail call void @sysbus_connect_irq(ptr noundef %i.i, i32 noundef 3, ptr noundef %7) #5
end_hunk_0
