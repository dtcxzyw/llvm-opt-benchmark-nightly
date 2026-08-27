Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tt_atlantis?download=true
inline.NumInlined: 58
inline.NumDeleted: 20
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@tt_atlantis_machine_done:bb.a
  %i.gj = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %i.gk = load i64, ptr %i.gj, align 8
  %i.gl = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 40
  %i.gn = load i64, ptr %i.gm, align 8
  %spec.select = call i64 @llvm.umin.i64(i64 %i.gk, i64 %i.gn)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  %i.gp = load i64, ptr %i.go, align 8
  call void @riscv_boot_info_init_discontig_mem(ptr noundef nonnull %2, ptr noundef nonnull %i.m, i64 noundef %i.gp, i64 noundef %spec.select) #8
  %i.gq = call i64 @riscv_find_and_load_firmware(ptr noundef nonnull %i.h, ptr noundef nonnull %2, ptr noundef %i.n, ptr noundef nonnull %i.f, ptr noundef null) #8
  %i.gr = call i64 @riscv_calc_kernel_start_addr(ptr noundef nonnull %2, i64 noundef %i.gq) #8 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.h, i64 248
  %i.gt = load ptr, ptr %i.gs, align 8
  %.not = icmp eq ptr %i.gt, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @riscv_load_kernel(ptr noundef nonnull %i.h, ptr noundef nonnull %2, i64 noundef %i.gr, i1 noundef zeroext true, ptr noundef null) #8
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.gv = load i64, ptr %i.gu, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0 = phi i64 [ %i.gv, %bb.e ], [ %i.gr, %bb.d ]
  %i.gw = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 32
  %i.gy = load i64, ptr %i.gx, align 8
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 40
  %i.ha = load i64, ptr %i.gz, align 8
  %i.hb = call i64 @riscv_compute_fdt_addr(i64 noundef %i.gy, i64 noundef %i.ha, ptr noundef nonnull %i.h, ptr noundef nonnull %2) #8 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.hd = load ptr, ptr %i.hc, align 8
  call void @riscv_load_fdt(i64 noundef %i.hb, ptr noundef %i.hd) #8
  %i.he = load i64, ptr %i.f, align 8
  %i.hf = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i64, ptr %i.hg, align 8
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  %i.hj = load i64, ptr %i.hi, align 8
  call void @riscv_setup_rom_reset_vec(ptr noundef nonnull %i.h, ptr noundef nonnull %i.m, i64 noundef %i.he, i64 noundef %i.hh, i64 noundef %i.hj, i64 noundef %.0, i64 noundef %i.hb) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  ret void
}

declare void @qemu_add_machine_init_done_notifier(ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qdev_new(ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_prop_set_uint64(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare zeroext i1 @sysbus_realize_and_unref(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @sysbus_mmio_map_overlap(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @load_device_tree(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @qemu_fdt_add_path(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @qemu_fdt_node_unit_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @warn_report_err(ptr noundef) local_unnamed_addr #1

declare void @warn_report(ptr noundef, ...) local_unnamed_addr #1

declare i32 @qemu_fdt_nop_node(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @g_strfreev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @create_fdt_memory(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.j = load i64, ptr %i.i, align 8              ; 5 uses
  %i.k = icmp ugt i64 %i.f, %i.j
  br i1 %i.k, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.m = load i64, ptr %i.l, align 8
  tail call void @create_fdt_socket_memory(ptr noundef %i.c, i64 noundef %i.m, i64 noundef %i.f, i32 noundef 0, i1 noundef zeroext false) #8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.n = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.p = load i64, ptr %i.o, align 8              ; 2 uses
  %.pre = load ptr, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %i.r = load i64, ptr %i.q, align 8
  tail call void @create_fdt_socket_memory(ptr noundef %i.c, i64 noundef %i.r, i64 noundef %i.j, i32 noundef 0, i1 noundef zeroext false) #8
  %.not = icmp eq i64 %i.p, %i.j
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = sub i64 %i.p, %i.j
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, %i.j
  tail call void @create_fdt_socket_memory(ptr noundef %i.c, i64 noundef %i.w, i64 noundef %i.s, i32 noundef 0, i1 noundef zeroext false) #8
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  ret void
}

declare void @create_fdt_socket_memory(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare ptr @create_board_device_tree(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @qemu_fdt_add_subnode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @qemu_guest_getrandom_nofail(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @qemu_fdt_setprop(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @qemu_fdt_setprop_string(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @riscv_pmu_generate_fdt_node(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @riscv_default_firmware_name(ptr noundef) local_unnamed_addr #1

declare void @riscv_boot_info_init_discontig_mem(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

declare i64 @riscv_find_and_load_firmware(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @riscv_calc_kernel_start_addr(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @riscv_load_kernel(ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare i64 @riscv_compute_fdt_addr(i64 noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @riscv_load_fdt(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @riscv_setup_rom_reset_vec(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #6

declare void @fdt_create_cpu_socket_subnode(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @create_fdt_socket_cpus(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

declare i32 @imsic_num_bits(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @create_fdt_one_imsic(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef range(i32 9, 12) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = shl i32 %2, 1
  %i.c = sext i32 %i.b to i64
  %i.d = tail call noalias ptr @g_malloc0_n(i64 noundef %i.c, i64 noundef 4) #11 ; 7 uses
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = shl nuw nsw i32 %5, 24                   ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %2, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.g = add nsw i64 %wide.trip.count, -1
  %i.h = and i64 %i.g, -3221225472
  %.not58 = icmp eq i64 %i.h, 0
  br i1 %.not58, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.f, i64 0 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = trunc i64 %index to i32                  ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %wide.load = load <2 x i32>, ptr %i.j, align 4
  %wide.load55 = load <2 x i32>, ptr %i.k, align 4
  %i.l = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load)
  %i.m = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load55)
  %i.n = shl i32 %i.i, 1
  %i.o = shl i32 %i.i, 1
  %i.p = sext i32 %i.n to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.p
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr [4 x i8], ptr %i.d, i64 %i.r
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %interleaved.vec = shufflevector <2 x i32> %i.l, <2 x i32> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec, ptr %i.q, align 4
  %interleaved.vec56 = shufflevector <2 x i32> %i.m, <2 x i32> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec56, ptr %i.t, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.ph
  %i.w = load i32, ptr %i.v, align 4
  %i.x = tail call noundef i32 @llvm.bswap.i32(i32 %i.w)
  %indvars.iv.tr.prol = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.y = shl nuw i32 %indvars.iv.tr.prol, 1
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.z ; 2 uses
  store i32 %i.x, ptr %i.aa, align 4
  %i.ab = getelementptr i8, ptr %i.aa, i64 4
  store i32 %i.f, ptr %i.ab, align 4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ac = add nsw i64 %wide.trip.count, -1
  %i.ad = icmp eq i64 %indvars.iv.ph, %i.ac
  br i1 %i.ad, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ae = load i64, ptr %1, align 8
  %i.af = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.47, i64 noundef %i.ae) #8 ; 11 uses
  %i.ag = tail call i32 @qemu_fdt_add_subnode(ptr noundef %0, ptr noundef %i.af) #8 ; 0 uses
  %i.ah = tail call i32 @qemu_fdt_setprop_string(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.48) #8 ; 0 uses
  %i.ai = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.49, i32 noundef 0) #8 ; 0 uses
  %i.aj = tail call i32 @qemu_fdt_setprop(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.50, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.ak = tail call i32 @qemu_fdt_setprop(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.51, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.al = shl i32 %2, 3
  %i.am = tail call i32 @qemu_fdt_setprop(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.46, ptr noundef %i.d, i32 noundef %i.al) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 2, ptr %i.a, align 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ao = load i64, ptr %1, align 8
  store i64 %i.ao, ptr %i.an, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %i.ap, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  store i64 %i.as, ptr %i.aq, align 8
  %i.at = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.45, i32 noundef 2, ptr noundef nonnull %i.a) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.au = call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.52, i32 noundef 255) #8 ; 0 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = tail call noundef i32 @llvm.bswap.i32(i32 %i.aw)
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ay = shl i32 %indvars.iv.tr, 1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.az ; 2 uses
  store i32 %i.ax, ptr %i.ba, align 4
  %i.bb = getelementptr i8, ptr %i.ba, i64 4
  store i32 %i.f, ptr %i.bb, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = tail call noundef i32 @llvm.bswap.i32(i32 %i.bd)
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.bf = shl i32 %indvars.iv.tr.1, 1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.bg ; 2 uses
  store i32 %i.be, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %i.bh, i64 4
  store i32 %i.f, ptr %i.bi, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !16

bb.b:                                             ; preds = %._crit_edge
  %i.bj = call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.53, i32 noundef %6) #8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.bk = call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.af, ptr noundef nonnull @.str.54, i32 noundef %4) #8 ; 0 uses
  call void @g_free(ptr noundef %i.d) #8
  call void @g_free(ptr noundef %i.af) #8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @create_fdt_one_aplic(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 9, 12) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = load i64, ptr %1, align 8
  %i.d = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.47, i64 noundef %i.c) #8 ; 13 uses
  %i.e = shl i32 %7, 1
  %i.f = sext i32 %i.e to i64
  %i.g = tail call noalias ptr @g_malloc0_n(i64 noundef %i.f, i64 noundef 4) #11 ; 7 uses
  %i.h = icmp sgt i32 %7, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.i = shl nuw nsw i32 %6, 24                   ; 4 uses
  %wide.trip.count = zext nneg i32 %7 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %7, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.j = add nsw i64 %wide.trip.count, -1
  %i.k = and i64 %i.j, -3221225472
  %.not76 = icmp eq i64 %i.k, 0
  br i1 %.not76, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.i, i64 0 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = trunc i64 %index to i32                  ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %wide.load = load <2 x i32>, ptr %i.m, align 4
  %wide.load73 = load <2 x i32>, ptr %i.n, align 4
  %i.o = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load)
  %i.p = tail call <2 x i32> @llvm.bswap.v2i32(<2 x i32> %wide.load73)
  %i.q = shl i32 %i.l, 1
  %i.r = shl i32 %i.l, 1
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.s
  %i.u = sext i32 %i.r to i64
  %i.v = getelementptr [4 x i8], ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 16
  %interleaved.vec = shufflevector <2 x i32> %i.o, <2 x i32> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec, ptr %i.t, align 4
  %interleaved.vec74 = shufflevector <2 x i32> %i.p, <2 x i32> %broadcast.splatinsert, <4 x i32> <i32 0, i32 2, i32 1, i32 2>
  store <4 x i32> %interleaved.vec74, ptr %i.w, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.ph
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.z)
  %indvars.iv.tr.prol = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.ab = shl nuw i32 %indvars.iv.tr.prol, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ac ; 2 uses
  store i32 %i.aa, ptr %i.ad, align 4
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  store i32 %i.i, ptr %i.ae, align 4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.af = add nsw i64 %wide.trip.count, -1
  %i.ag = icmp eq i64 %indvars.iv.ph, %i.af
  br i1 %i.ag, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %i.ah = tail call i32 @qemu_fdt_add_subnode(ptr noundef %0, ptr noundef %i.d) #8 ; 0 uses
  %i.ai = tail call i32 @qemu_fdt_setprop_string(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.55) #8 ; 0 uses
  %i.aj = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.56, i32 noundef 0) #8 ; 0 uses
  %i.ak = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.49, i32 noundef 2) #8 ; 0 uses
  %i.al = tail call i32 @qemu_fdt_setprop(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.50, ptr noundef null, i32 noundef 0) #8 ; 0 uses
  %i.am = shl i32 %7, 3
  %i.an = tail call i32 @qemu_fdt_setprop(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.46, ptr noundef %i.g, i32 noundef %i.am) #8 ; 0 uses
  %i.ao = tail call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.57, i32 noundef %2) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i64 2, ptr %i.a, align 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = load i64, ptr %1, align 8
  store i64 %i.aq, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 2, ptr %i.ar, align 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load i64, ptr %i.at, align 8
  store i64 %i.au, ptr %i.as, align 8
  %i.av = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.45, i32 noundef 2, ptr noundef nonnull %i.a) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.aw = call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.58, i32 noundef 128) #8 ; 0 uses
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = tail call noundef i32 @llvm.bswap.i32(i32 %i.ay)
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.ba = shl i32 %indvars.iv.tr, 1
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bb ; 2 uses
  store i32 %i.az, ptr %i.bc, align 4
  %i.bd = getelementptr i8, ptr %i.bc, i64 4
  store i32 %i.i, ptr %i.bd, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.bf = load i32, ptr %i.be, align 4
  %i.bg = tail call noundef i32 @llvm.bswap.i32(i32 %i.bf)
  %indvars.iv.tr.1 = trunc i64 %indvars.iv.next to i32
  %i.bh = shl i32 %indvars.iv.tr.1, 1
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bi ; 2 uses
  store i32 %i.bg, ptr %i.bj, align 4
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  store i32 %i.i, ptr %i.bk, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !18

bb.b:                                             ; preds = %._crit_edge
  %i.bl = call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.59, i32 noundef %5) #8 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bo = call noundef i32 @llvm.bswap.i32(i32 %5)
  store i32 %i.bo, ptr %i.b, align 4
  store i32 16777216, ptr %i.bm, align 4
  store i32 -2147483648, ptr %i.bn, align 4
  %i.bp = call i32 @qemu_fdt_setprop(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.b, i32 noundef 12) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %i.bq = call i32 @qemu_fdt_setprop_cell(ptr noundef %0, ptr noundef %i.d, ptr noundef nonnull @.str.54, i32 noundef %4) #8 ; 0 uses
  call void @g_free(ptr noundef %i.g) #8
  call void @g_free(ptr noundef %i.d) #8
  ret void
}

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #1

declare i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

declare i32 @qemu_fdt_setprop_cell(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.bswap.v2i32(<2 x i32>) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { cold noreturn nounwind }
attributes #11 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{!"auto-init"}
!10 = distinct !{!10, !8, !11, !12}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !8, !11}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8, !11, !12}
!16 = distinct !{!16, !8, !11}
!17 = distinct !{!17, !8, !11, !12}
!18 = distinct !{!18, !8, !11}
end_hunk_0
