Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sifive_u?download=true
inline.NumInlined: 100
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumUnrolled: 31
begin_hunk_0_@sifive_u_machine_init:bb.a
  %i.j = alloca [4 x i32], align 16               ; 4 uses
  %i.k = alloca [4 x i32], align 16               ; 4 uses
  %i.l = alloca [3 x i32], align 4                ; 6 uses
  %i.m = alloca [2 x i32], align 4                ; 5 uses
  %i.n = alloca [4 x i32], align 16               ; 4 uses
  %i.o = alloca [2 x i32], align 8                ; 4 uses
  %i.p = alloca [2 x i32], align 4                ; 5 uses
  %i.q = alloca [4 x i32], align 16               ; 4 uses
  %i.r = alloca [8 x i32], align 16               ; 5 uses
  %i.s = alloca [4 x i32], align 16               ; 7 uses
  %i.t = alloca [4 x i32], align 16               ; 4 uses
  %i.u = alloca [4 x i32], align 16               ; 4 uses
  %i.v = alloca [2 x i32], align 4                ; 5 uses
  %i.w = alloca [4 x i32], align 16               ; 4 uses
  %i.x = alloca [4 x i32], align 16               ; 4 uses
  %i.y = alloca [2 x i32], align 4                ; 5 uses
  %i.z = alloca [4 x i32], align 16               ; 4 uses
  %i.aa = alloca [2 x i32], align 4               ; 5 uses
  %i.ab = alloca [4 x i32], align 16              ; 4 uses
  %i.ac = alloca [2 x i32], align 4               ; 5 uses
  %i.ad = alloca i64, align 8                     ; 6 uses
  %1 = alloca %struct.RISCVBootInfo, align 8      ; 9 uses
  %i.ae = alloca [12 x i32], align 16             ; 16 uses
  %i.af = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i32 noundef 449, ptr noundef nonnull @__func__.sifive_u_machine_init) #8 ; 18 uses
  %i.ag = tail call ptr @get_system_memory() #8   ; 2 uses
  %i.ah = tail call noalias dereferenceable_or_null(272) ptr @g_malloc(i64 noundef 272) #9 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #8
  store i64 2147483648, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1, i8 0, i64 64, i1 false), !annotation !7
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 400 ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.ai, i64 noundef 98656, ptr noundef nonnull @.str.15) #8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 99068
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = zext i32 %i.ak to i64
  %i.am = tail call zeroext i1 @object_property_set_uint(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.6, i64 noundef %i.al, ptr noundef nonnull @error_abort) #8 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call zeroext i1 @object_property_set_str(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.16, ptr noundef %i.ao, ptr noundef nonnull @error_abort) #8 ; 0 uses
  %i.aq = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ai, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #8
  %i.ar = tail call zeroext i1 @qdev_realize(ptr noundef %i.aq, ptr noundef null, ptr noundef nonnull @error_fatal) #8 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.at = load ptr, ptr %i.as, align 8
  tail call void @memory_region_add_subregion(ptr noundef %i.ag, i64 noundef 2147483648, ptr noundef %i.at) #8
  %i.au = tail call zeroext i1 @memory_region_init_ram(ptr noundef %i.ah, ptr noundef null, ptr noundef nonnull @.str.17, i64 noundef 268435456, ptr noundef nonnull @error_fatal) #8 ; 0 uses
  tail call void @memory_region_add_subregion(ptr noundef %i.ag, i64 noundef 536870912, ptr noundef %i.ah) #8
  %i.av = getelementptr inbounds nuw i8, ptr %i.af, i64 3760
  %i.aw = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.av, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #8
  %i.ax = tail call ptr @qemu_allocate_irq(ptr noundef nonnull @sifive_u_machine_reset, ptr noundef null, i32 noundef 0) #8
  tail call void @qdev_connect_gpio_out(ptr noundef %i.aw, i32 noundef 10, ptr noundef %i.ax) #8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 99056
  %i.bb = tail call ptr @load_device_tree(ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba) #8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.bb, ptr %i.bc, align 8
  %.not99 = icmp eq ptr %i.bb, null
  br i1 %.not99, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @error_report(ptr noundef nonnull @.str.18) #8
  tail call void @exit(i32 noundef 1) #10
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 1744
  %i.be = tail call zeroext i1 @riscv_is_32bit(ptr noundef nonnull %i.bd) #8
  %i.bf = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.13, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 304 ; 5 uses
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = zext i32 %i.bh to i64
  %i.bj = tail call noalias ptr @g_malloc0_n(i64 noundef %i.bi, i64 noundef 4) #11 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 99056
  %i.bl = tail call ptr @create_board_device_tree(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.bk) #8 ; 139 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store ptr %i.bl, ptr %i.bm, align 8
  %i.bn = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.32) #8 ; 7 uses
  %i.bo = tail call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.bn) #8 ; 0 uses
  %i.bp = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef nonnull @.str.33, i32 noundef 1) #8 ; 0 uses
  %i.bq = tail call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35) #8 ; 0 uses
  %i.br = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef nonnull @.str.36, i32 noundef 33333333) #8 ; 0 uses
  %i.bs = tail call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #8 ; 0 uses
  %i.bt = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.bn, ptr noundef nonnull @.str.39, i32 noundef 0) #8 ; 0 uses
  tail call void @g_free(ptr noundef %i.bn) #8
  store i32 3, ptr %i.a, align 4
  %i.bu = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.40) #8 ; 7 uses
  %i.bv = tail call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.bu) #8 ; 0 uses
  %i.bw = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.bu, ptr noundef nonnull @.str.33, i32 noundef 2) #8 ; 0 uses
  %i.bx = tail call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.bu, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.41) #8 ; 0 uses
  %i.by = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.bu, ptr noundef nonnull @.str.36, i32 noundef 1000000) #8 ; 0 uses
  %i.bz = tail call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.bu, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #8 ; 0 uses
  %i.ca = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.bu, ptr noundef nonnull @.str.39, i32 noundef 0) #8 ; 0 uses
  tail call void @g_free(ptr noundef %i.bu) #8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bf, i64 152
  %i.cc = load i64, ptr %i.cb, align 8
  tail call void @create_fdt_socket_memory(ptr noundef %i.bl, i64 noundef 2147483648, i64 noundef %i.cc, i32 noundef 0, i1 noundef zeroext false) #8
  tail call void @fdt_create_cpu_socket_subnode(ptr noundef %i.bl, i64 noundef 1000000) #8
  %i.cd = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.42, i32 noundef 0) #8 ; 3 uses
  %i.ce = tail call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.cd) #8 ; 0 uses
  %i.cf = load i32, ptr %i.bg, align 8            ; 3 uses
  %.05696.i = add i32 %i.cf, -1                   ; 2 uses
  %i.cg = icmp sgt i32 %.05696.i, -1
  br i1 %i.cg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.ch = getelementptr inbounds nuw i8, ptr %i.af, i64 2608
  %i.ci = getelementptr inbounds nuw i8, ptr %i.af, i64 1736
  %i.cj = zext nneg i32 %.05696.i to i64
  %i.ck = zext i32 %i.cf to i64
  %.str.45..str.46.i = select i1 %i.be, ptr @.str.45, ptr @.str.46
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv42.i = phi i64 [ %i.ck, %.lr.ph.i ], [ %indvars.iv.next43.i, %bb.h ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.cj, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.cm = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.43, i32 noundef %i.cl) #8 ; 4 uses
  %i.cn = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.cm) #8 ; 0 uses
  %.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.co = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.cm, ptr noundef nonnull @.str.44, ptr noundef nonnull %.str.45..str.46.i) #8 ; 0 uses
  %i.cp = load ptr, ptr %i.ch, align 16
  %i.cq = add nsw i64 %indvars.iv42.i, 4294967294
  %i.cr = and i64 %i.cq, 4294967295
  %i.cs = getelementptr inbounds nuw [32384 x i8], ptr %i.cp, i64 %i.cr
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ct = load ptr, ptr %i.ci, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi ptr [ %i.ct, %bb.g ], [ %i.cs, %bb.f ]
  call void @riscv_isa_write_fdt(ptr noundef %.sink.i, ptr noundef %i.bl, ptr noundef %i.cm) #8
  call void @create_fdt_socket_cpu_sifive(ptr noundef %i.bl, ptr noundef %i.cd, i32 noundef %i.cl, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef %i.bj) #8
  call void @g_free(ptr noundef %i.cm) #8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.cu = icmp sgt i64 %indvars.iv.i, 0
  %indvars.iv.next43.i = add nsw i64 %indvars.iv42.i, -1
  br i1 %i.cu, label %bb.e, label %._crit_edge.loopexit.i, !llvm.loop !8

._crit_edge.loopexit.i:                           ; preds = %bb.h
  %.pre.i = load i32, ptr %i.bg, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %i.cv = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.cf, %bb.d ]
  call void @create_fdt_socket_clint(ptr noundef %i.bl, i64 noundef 33554432, i64 noundef 65536, i32 noundef 0, ptr noundef %i.bj, i32 noundef %i.cv, i1 noundef zeroext false) #8
  %i.cw = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.47, i64 noundef 268894208) #8 ; 5 uses
  %i.cx = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.cw) #8 ; 0 uses
  %i.cy = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.cw, ptr noundef nonnull @.str.48, i32 noundef 4096) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store <4 x i32> <i32 0, i32 1808, i32 0, i32 1048576>, ptr %i.b, align 16
  %i.cz = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.cw, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.b, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.da = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.cw, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.50) #8 ; 0 uses
  call void @g_free(ptr noundef %i.cw) #8
  %i.db = load i32, ptr %i.a, align 4             ; 3 uses
  %i.dc = add i32 %i.db, 1
  store i32 %i.dc, ptr %i.a, align 4
  %i.dd = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.51, i64 noundef 268435456) #8 ; 7 uses
  %i.de = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.dd) #8 ; 0 uses
  %i.df = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.dd, ptr noundef nonnull @.str.33, i32 noundef %i.db) #8 ; 0 uses
  %i.dg = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.dd, ptr noundef nonnull @.str.39, i32 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store i64 144115188092633088, ptr %i.c, align 8, !annotation !7
  %i.dh = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.dd, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.c, i32 noundef 8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store <4 x i32> <i32 0, i32 16, i32 0, i32 1048576>, ptr %i.d, align 16
  %i.di = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.dd, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.d, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.dj = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.dd, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.53) #8 ; 0 uses
  call void @g_free(ptr noundef %i.dd) #8
  %i.dk = load i32, ptr %i.a, align 4             ; 12 uses
  %i.dl = add i32 %i.dk, 1
  store i32 %i.dl, ptr %i.a, align 4
  %i.dm = load i32, ptr %i.bg, align 8
  %i.dn = shl i32 %i.dm, 2
  %i.do = add i32 %i.dn, -2                       ; 2 uses
  %i.dp = zext i32 %i.do to i64
  %i.dq = call noalias ptr @g_malloc0_n(i64 noundef %i.dp, i64 noundef 4) #11 ; 7 uses
  %i.dr = load i32, ptr %i.bg, align 8            ; 3 uses
  %.not41.i = icmp eq i32 %i.dr, 0
  br i1 %.not41.i, label %create_fdt.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dq, i64 4
  %i.dt = load i32, ptr %i.bj, align 4
  %i.du = call noundef i32 @llvm.bswap.i32(i32 %i.dt)
  store i32 %i.du, ptr %i.dq, align 4
  store i32 184549376, ptr %i.ds, align 4
  %.not133.i = icmp eq i32 %i.dr, 1
  br i1 %.not133.i, label %create_fdt.exit, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.i, %.peel.next.i
  %.112.i = phi i32 [ %3, %.peel.next.i ], [ 1, %bb.i ] ; 3 uses
  %2 = sext i32 %.112.i to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %2
  %i.dw = load i32, ptr %i.dv, align 4
  %i.dx = call noundef i32 @llvm.bswap.i32(i32 %i.dw) ; 2 uses
  %i.dy = shl i32 %.112.i, 2                      ; 3 uses
  %i.dz = add i32 %i.dy, -2
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ea
  store i32 %i.dx, ptr %i.eb, align 4
  %i.ec = add i32 %i.dy, -1
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ed
  store i32 184549376, ptr %i.ee, align 4
  %i.ef = sext i32 %i.dy to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.ef ; 2 uses
  store i32 %i.dx, ptr %i.eg, align 4
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  store i32 150994944, ptr %i.eh, align 4
  %3 = add nuw i32 %.112.i, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %3, %i.dr
  br i1 %exitcond.not, label %create_fdt.exit, label %.peel.next.i, !llvm.loop !10

create_fdt.exit:                                  ; preds = %.peel.next.i, %._crit_edge.i, %bb.i
  %i.ei = shl i32 %i.do, 2
  call void @create_fdt_plic(ptr noundef %i.bl, i64 noundef 201326592, i64 noundef 67108864, i32 noundef %i.dk, i32 noundef 1, i32 noundef 0, ptr noundef %i.dq, i32 noundef %i.ei, i32 noundef 53, i1 noundef zeroext false, i32 noundef 0) #8
  call void @g_free(ptr noundef %i.dq) #8
  %i.ej = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ek = add i32 %i.ej, 1
  store i32 %i.ek, ptr %i.a, align 4
  %i.el = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.54, i64 noundef 268828672) #8 ; 12 uses
  %i.em = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.el) #8 ; 0 uses
  %i.en = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.33, i32 noundef %i.ej) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.ep = call noundef i32 @llvm.bswap.i32(i32 %i.db) ; 9 uses
  store i32 %i.ep, ptr %i.e, align 4
  store i32 50331648, ptr %i.eo, align 4
  %i.eq = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.e, i32 noundef 8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.er = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.55, i32 noundef 2) #8 ; 0 uses
  %i.es = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.56, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.et = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.57, i32 noundef 2) #8 ; 0 uses
  %i.eu = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.58, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  store <4 x i32> <i32 0, i32 1552, i32 0, i32 1048576>, ptr %i.f, align 16
  %i.ev = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.f, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  store <4 x i32> <i32 117440512, i32 134217728, i32 150994944, i32 167772160>, ptr %i.g, align 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> <i32 184549376, i32 201326592, i32 218103808, i32 234881024>, ptr %i.ew, align 16
  %i.ex = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store <4 x i32> <i32 251658240, i32 268435456, i32 285212672, i32 301989888>, ptr %i.ex, align 16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store <4 x i32> <i32 318767104, i32 335544320, i32 352321536, i32 369098752>, ptr %i.ey, align 16
  %i.ez = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.g, i32 noundef 64) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  %i.fa = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.60, i32 noundef %i.dk) #8 ; 0 uses
  %i.fb = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.el, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.61) #8 ; 0 uses
  call void @g_free(ptr noundef %i.el) #8
  %i.fc = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.62) #8 ; 4 uses
  %i.fd = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.fc) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.fg = call noundef i32 @llvm.bswap.i32(i32 %i.ej)
  store i32 %i.fg, ptr %i.h, align 4
  store i32 167772160, ptr %i.fe, align 4
  store i32 16777216, ptr %i.ff, align 4
  %i.fh = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.fc, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.h, i32 noundef 12) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  %i.fi = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.fc, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.64) #8 ; 0 uses
  call void @g_free(ptr noundef %i.fc) #8
  %i.fj = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.65, i64 noundef 50331648) #8 ; 7 uses
  %i.fk = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.fj) #8 ; 0 uses
  %i.fl = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.fj, ptr noundef nonnull @.str.66, i32 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  store <4 x i32> <i32 385875968, i32 402653184, i32 419430400, i32 436207616>, ptr %i.i, align 16
  %i.fm = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> <i32 452984832, i32 469762048, i32 486539264, i32 503316480>, ptr %i.fm, align 16
  %i.fn = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.fj, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.i, i32 noundef 32) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  %i.fo = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.fj, ptr noundef nonnull @.str.60, i32 noundef %i.dk) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  store <4 x i32> <i32 0, i32 3, i32 0, i32 4096>, ptr %i.j, align 16
  %i.fp = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.fj, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.j, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  %i.fq = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.fj, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.68) #8 ; 0 uses
  call void @g_free(ptr noundef %i.fj) #8
  %i.fr = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.69, i64 noundef 33619968) #8 ; 11 uses
  %i.fs = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.fr) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  store <4 x i32> <i32 0, i32 258, i32 0, i32 1048576>, ptr %i.k, align 16
  %i.ft = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.k, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #8
  store i32 16777216, ptr %i.l, align 4
  %i.fu = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 33554432, ptr %i.fu, align 4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 50331648, ptr %i.fv, align 4
  %i.fw = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.l, i32 noundef 12) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #8
  %i.fx = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.60, i32 noundef %i.dk) #8 ; 0 uses
  %i.fy = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.71, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.fz = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.72, i32 noundef 2097152) #8 ; 0 uses
  %i.ga = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.73, i32 noundef 1024) #8 ; 0 uses
  %i.gb = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.74, i32 noundef 2) #8 ; 0 uses
  %i.gc = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.75, i32 noundef 64) #8 ; 0 uses
  %i.gd = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.fr, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.76) #8 ; 0 uses
  call void @g_free(ptr noundef %i.fr) #8
  %i.ge = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.77, i64 noundef 268763136) #8 ; 9 uses
  %i.gf = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.ge) #8 ; 0 uses
  %i.gg = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.ge, ptr noundef nonnull @.str.78, i32 noundef 0) #8 ; 0 uses
  %i.gh = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.ge, ptr noundef nonnull @.str.79, i32 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #8
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.ep, ptr %i.m, align 4
  store i32 50331648, ptr %i.gi, align 4
  %i.gj = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.ge, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.m, i32 noundef 8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #8
  %i.gk = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.ge, ptr noundef nonnull @.str.59, i32 noundef 6) #8 ; 0 uses
  %i.gl = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.ge, ptr noundef nonnull @.str.60, i32 noundef %i.dk) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #8
  store <4 x i32> <i32 0, i32 1296, i32 0, i32 1048576>, ptr %i.n, align 16
  %i.gm = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.ge, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.n, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #8
  %i.gn = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.ge, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.80) #8 ; 0 uses
  call void @g_free(ptr noundef %i.ge) #8
  %i.go = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.81, i64 noundef 268763136) #8 ; 7 uses
  %i.gp = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.go) #8 ; 0 uses
  %i.gq = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.go, ptr noundef nonnull @.str.82, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #8
  store i64 -2014234929515462656, ptr %i.o, align 8
  %i.gr = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.go, ptr noundef nonnull @.str.84, ptr noundef nonnull %i.o, i32 noundef 8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #8
  %i.gs = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.go, ptr noundef nonnull @.str.85, i32 noundef 20000000) #8 ; 0 uses
  %i.gt = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.go, ptr noundef nonnull @.str.49, i32 noundef 0) #8 ; 0 uses
  %i.gu = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.go, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.86) #8 ; 0 uses
  call void @g_free(ptr noundef %i.go) #8
  %i.gv = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.77, i64 noundef 268697600) #8 ; 9 uses
  %i.gw = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.gv) #8 ; 0 uses
  %i.gx = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.gv, ptr noundef nonnull @.str.78, i32 noundef 0) #8 ; 0 uses
  %i.gy = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.gv, ptr noundef nonnull @.str.79, i32 noundef 1) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.ep, ptr %i.p, align 4
  store i32 50331648, ptr %i.gz, align 4
  %i.ha = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.gv, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.p, i32 noundef 8) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #8
  %i.hb = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.gv, ptr noundef nonnull @.str.59, i32 noundef 51) #8 ; 0 uses
  %i.hc = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.gv, ptr noundef nonnull @.str.60, i32 noundef %i.dk) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #8
  store <4 x i32> <i32 0, i32 1040, i32 0, i32 1048576>, ptr %i.q, align 16
  %i.hd = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.gv, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.q, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #8
  %i.he = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.gv, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.80) #8 ; 0 uses
  call void @g_free(ptr noundef %i.gv) #8
  %i.hf = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.87, i64 noundef 268697600) #8 ; 8 uses
  %i.hg = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.hf) #8 ; 0 uses
  %i.hh = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hf, ptr noundef nonnull @.str.88, i32 noundef 4) #8 ; 0 uses
  %i.hi = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hf, ptr noundef nonnull @.str.89, i32 noundef 4) #8 ; 0 uses
  %i.hj = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.hf, ptr noundef nonnull @.str.90, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.hk = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hf, ptr noundef nonnull @.str.85, i32 noundef 50000000) #8 ; 0 uses
  %i.hl = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hf, ptr noundef nonnull @.str.49, i32 noundef 0) #8 ; 0 uses
  %i.hm = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.hf, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.91) #8 ; 0 uses
  call void @g_free(ptr noundef %i.hf) #8
  %i.hn = load i32, ptr %i.a, align 4             ; 3 uses
  %i.ho = add i32 %i.hn, 1
  store i32 %i.ho, ptr %i.a, align 4
  %i.hp = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.92, i64 noundef 269025280) #8 ; 15 uses
  %i.hq = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.hp) #8 ; 0 uses
  %i.hr = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.93) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> <i32 0, i32 2320, i32 0, i32 2097152>, ptr %i.r, align 16
  store <4 x i32> <i32 0, i32 2576, i32 0, i32 1048576>, ptr %i.hs, align 16
  %i.ht = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.r, i32 noundef 32) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #8
  %i.hu = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.95) #8 ; 0 uses
  %i.hv = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.97) #8 ; 0 uses
  %i.hw = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.98, i32 noundef %i.hn) #8 ; 0 uses
  %i.hx = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.60, i32 noundef %i.dk) #8 ; 0 uses
  %i.hy = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.59, i32 noundef 53) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.ep, ptr %i.s, align 16
  store i32 33554432, ptr %i.hz, align 4
  store i32 %i.ep, ptr %i.ia, align 8
  store i32 33554432, ptr %i.ib, align 4
  %i.ic = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.52, ptr noundef nonnull %i.s, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #8
  %i.id = call i32 @qemu_fdt_setprop_string_array(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.99, ptr noundef nonnull @create_fdt.ethclk_names, i32 noundef 2) #8 ; 0 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.af, i64 44672
  %i.if = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.100, ptr noundef nonnull %i.ie, i32 noundef 6) #8 ; 0 uses
  %i.ig = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.79, i32 noundef 1) #8 ; 0 uses
  %i.ih = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.hp, ptr noundef nonnull @.str.78, i32 noundef 0) #8 ; 0 uses
  %i.ii = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef nonnull @.str.101) #8 ; 0 uses
  %i.ij = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.102, ptr noundef %i.hp) #8 ; 0 uses
  call void @g_free(ptr noundef %i.hp) #8
  %i.ik = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.103, i64 noundef 269025280) #8 ; 4 uses
  %i.il = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.ik) #8 ; 0 uses
  %i.im = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.ik, ptr noundef nonnull @.str.33, i32 noundef %i.hn) #8 ; 0 uses
  %i.in = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.ik, ptr noundef nonnull @.str.49, i32 noundef 0) #8 ; 0 uses
  call void @g_free(ptr noundef %i.ik) #8
  %i.io = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.104, i64 noundef 268566528) #8 ; 8 uses
  %i.ip = call i32 @qemu_fdt_add_subnode(ptr noundef %i.bl, ptr noundef %i.io) #8 ; 0 uses
  %i.iq = call i32 @qemu_fdt_setprop_string(ptr noundef %i.bl, ptr noundef %i.io, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.105) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #8
  store <4 x i32> <i32 0, i32 528, i32 0, i32 1048576>, ptr %i.t, align 16
  %i.ir = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.io, ptr noundef nonnull @.str.49, ptr noundef nonnull %i.t, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #8
  %i.is = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.bl, ptr noundef %i.io, ptr noundef nonnull @.str.60, i32 noundef %i.dk) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #8
  store <4 x i32> <i32 704643072, i32 721420288, i32 738197504, i32 754974720>, ptr %i.u, align 16
  %i.it = call i32 @qemu_fdt_setprop(ptr noundef %i.bl, ptr noundef %i.io, ptr noundef nonnull @.str.59, ptr noundef nonnull %i.u, i32 noundef 16) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #8
end_hunk_0
