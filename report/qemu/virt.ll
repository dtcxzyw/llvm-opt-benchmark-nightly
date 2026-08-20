inline.NumInlined: 169
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 21
begin_hunk_0_@virt_machine_done:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  call void @g_free(ptr noundef %i.om) #13
  %exitcond.not.i9.i = icmp eq i64 %i.ox, 8
  br i1 %exitcond.not.i9.i, label %create_fdt_virtio.exit.i, label %bb.y, !llvm.loop !23

create_fdt_virtio.exit.i:                         ; preds = %bb.ab
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 3632 ; 2 uses
  %i.pf = load i32, ptr %i.pe, align 8
  %i.pg = icmp eq i32 %i.pf, 1
  br i1 %i.pg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %create_fdt_virtio.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.p, ptr noundef nonnull align 1 dereferenceable(12) @__const.create_fdt_iommu_sys.comp, i64 12, i1 false)
  %i.ph = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #13
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 40
  %i.pj = load ptr, ptr %i.pi, align 8            ; 9 uses
  %i.pk = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 320
  %i.pm = load i64, ptr %i.pl, align 8            ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pk, i64 328
  %i.po = load i64, ptr %i.pn, align 8
  %i.pp = trunc i64 %i.pm to i32
  %i.pq = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.138, i32 noundef %i.pp) #13 ; 9 uses
  %i.pr = call i32 @qemu_fdt_alloc_phandle(ptr noundef %i.pj) #13 ; 2 uses
  %i.ps = call i32 @qemu_fdt_add_subnode(ptr noundef %i.pj, ptr noundef %i.pq) #13 ; 0 uses
  %i.pt = call i32 @qemu_fdt_setprop(ptr noundef %i.pj, ptr noundef %i.pq, ptr noundef nonnull @.str.98, ptr noundef nonnull %i.p, i32 noundef 12) #13 ; 0 uses
  %i.pu = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.pj, ptr noundef %i.pq, ptr noundef nonnull @.str.139, i32 noundef 1) #13 ; 0 uses
  %i.pv = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.pj, ptr noundef %i.pq, ptr noundef nonnull @.str.126, i32 noundef %i.pr) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #13
  store i64 2, ptr %i.q, align 16
  %i.pw = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.pm, ptr %i.pw, align 8
  %i.px = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 2, ptr %i.px, align 16
  %i.py = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %i.po, ptr %i.py, align 8
  %i.pz = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %i.pj, ptr noundef %i.pq, ptr noundef nonnull @.str.100, i32 noundef 2, ptr noundef nonnull %i.q) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #13
  %i.qa = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.pj, ptr noundef %i.pq, ptr noundef nonnull @.str.136, i32 noundef %.4.i) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #13
  %i.qb = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x i32> <i32 603979776, i32 16777216, i32 620756992, i32 16777216>, ptr %i.r, align 16
  store <4 x i32> <i32 637534208, i32 16777216, i32 654311424, i32 16777216>, ptr %i.qb, align 16
  %i.qc = call i32 @qemu_fdt_setprop(ptr noundef %i.pj, ptr noundef %i.pq, ptr noundef nonnull @.str.137, ptr noundef nonnull %i.r, i32 noundef 32) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #13
  %i.qd = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.pj, ptr noundef %i.pq, ptr noundef nonnull @.str.130, i32 noundef %.070.i) #13 ; 0 uses
  call void @g_free(ptr noundef %i.pq) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #13
  %i.qe = call i32 @llvm.bswap.i32(i32 %i.pr)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %create_fdt_virtio.exit.i
  %.0.i = phi i32 [ %i.qe, %bb.ac ], [ 16777216, %create_fdt_virtio.exit.i ]
  %i.qf = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #13
  %i.qg = load ptr, ptr %i.ac, align 8
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 304
  %i.qi = load i64, ptr %i.qh, align 8
  %i.qj = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.93, i64 noundef %i.qi) #13 ; 15 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qf, i64 40 ; 13 uses
  %i.ql = load ptr, ptr %i.qk, align 8
  %i.qm = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.ql, ptr noundef %i.qj, ptr noundef nonnull @.str.129, i32 noundef 3) #13 ; 0 uses
  %i.qn = load ptr, ptr %i.qk, align 8
  %i.qo = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.qn, ptr noundef %i.qj, ptr noundef nonnull @.str.112, i32 noundef 1) #13 ; 0 uses
  %i.qp = load ptr, ptr %i.qk, align 8
  %i.qq = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.qp, ptr noundef %i.qj, ptr noundef nonnull @.str.140, i32 noundef 2) #13 ; 0 uses
  %i.qr = load ptr, ptr %i.qk, align 8
  %i.qs = call i32 @qemu_fdt_setprop_string(ptr noundef %i.qr, ptr noundef %i.qj, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.141) #13 ; 0 uses
  %i.qt = load ptr, ptr %i.qk, align 8
  %i.qu = call i32 @qemu_fdt_setprop_string(ptr noundef %i.qt, ptr noundef %i.qj, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.143) #13 ; 0 uses
  %i.qv = load ptr, ptr %i.qk, align 8
  %i.qw = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.qv, ptr noundef %i.qj, ptr noundef nonnull @.str.144, i32 noundef 0) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #13
  %i.qx = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.qy = load ptr, ptr %i.ac, align 8
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 312
  %i.ra = load i64, ptr %i.qz, align 8
  %i.rb = lshr i64 %i.ra, 20
  %i.rc = trunc i64 %i.rb to i32
  %i.rd = add i32 %i.rc, -1
  store i32 0, ptr %i.l, align 4
  %i.re = call noundef i32 @llvm.bswap.i32(i32 %i.rd)
  store i32 %i.re, ptr %i.qx, align 4
  %i.rf = load ptr, ptr %i.qk, align 8
  %i.rg = call i32 @qemu_fdt_setprop(ptr noundef %i.rf, ptr noundef %i.qj, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.l, i32 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #13
  %i.rh = load ptr, ptr %i.qk, align 8
  %i.ri = call i32 @qemu_fdt_setprop(ptr noundef %i.rh, ptr noundef %i.qj, ptr noundef nonnull @.str.104, ptr noundef null, i32 noundef 0) #13 ; 0 uses
  %i.rj = load i32, ptr %i.hs, align 8
  %i.rk = icmp eq i32 %i.rj, 2
  br i1 %i.rk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.rl = load ptr, ptr %i.qk, align 8
  %i.rm = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.rl, ptr noundef %i.qj, ptr noundef nonnull @.str.130, i32 noundef %.070.i) #13 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #13
  store i64 2, ptr %i.m, align 16
  %i.rn = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ro = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 304
  %i.rq = load i64, ptr %i.rp, align 8
  store i64 %i.rq, ptr %i.rn, align 8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 2, ptr %i.rr, align 16
  %i.rs = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 312
  %i.ru = load i64, ptr %i.rt, align 8
  store i64 %i.ru, ptr %i.rs, align 8
  %i.rv = load ptr, ptr %i.qk, align 8
  %i.rw = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %i.rv, ptr noundef %i.qj, ptr noundef nonnull @.str.100, i32 noundef 2, ptr noundef nonnull %i.m) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #13
  store i64 1, ptr %i.n, align 16
  %i.rx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 16777216, ptr %i.rx, align 8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 2, ptr %i.ry, align 16
  %i.rz = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 0, ptr %i.rz, align 8
  %i.sa = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 2, ptr %i.sa, align 16
  %i.sb = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.sc = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 272
  %i.se = load i64, ptr %i.sd, align 8
  store i64 %i.se, ptr %i.sb, align 8
  %i.sf = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  store i64 2, ptr %i.sf, align 16
  %i.sg = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sc, i64 280
  %i.si = load i64, ptr %i.sh, align 8
  store i64 %i.si, ptr %i.sg, align 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store i64 1, ptr %i.sj, align 16
  %i.sk = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store i64 33554432, ptr %i.sk, align 8
  %i.sl = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store i64 2, ptr %i.sl, align 16
  %i.sm = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sc, i64 256
  %i.so = load i64, ptr %i.sn, align 8            ; 2 uses
  store i64 %i.so, ptr %i.sm, align 8
  %i.sp = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store i64 2, ptr %i.sp, align 16
  %i.sq = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 %i.so, ptr %i.sq, align 8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 2, ptr %i.sr, align 16
  %i.ss = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.st = getelementptr inbounds nuw i8, ptr %i.sc, i64 264
  %i.su = load i64, ptr %i.st, align 8
  store i64 %i.su, ptr %i.ss, align 8
  %i.sv = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  store i64 1, ptr %i.sv, align 16
  %i.sw = getelementptr inbounds nuw i8, ptr %i.n, i64 136
  store i64 50331648, ptr %i.sw, align 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.n, i64 144
  store i64 2, ptr %i.sx, align 16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %i.sz = load i64, ptr @virt_high_pcie_memmap.0, align 8 ; 2 uses
  store i64 %i.sz, ptr %i.sy, align 8
  %i.ta = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  store i64 2, ptr %i.ta, align 16
  %i.tb = getelementptr inbounds nuw i8, ptr %i.n, i64 168
  store i64 %i.sz, ptr %i.tb, align 8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.n, i64 176
  store i64 2, ptr %i.tc, align 16
  %i.td = getelementptr inbounds nuw i8, ptr %i.n, i64 184
  %i.te = load i64, ptr @virt_high_pcie_memmap.1, align 8
  store i64 %i.te, ptr %i.td, align 8
  %i.tf = load ptr, ptr %i.qk, align 8
  %i.tg = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %i.tf, ptr noundef %i.qj, ptr noundef nonnull @.str.146, i32 noundef 12, ptr noundef nonnull %i.n) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #13
  %i.th = load i32, ptr %i.pe, align 8
  %i.ti = icmp eq i32 %i.th, 1
  br i1 %i.ti, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #13
  %i.tj = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.tl = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 0, ptr %i.o, align 16
  store i32 %.0.i, ptr %i.tj, align 4
  store i32 0, ptr %i.tk, align 8
  store i32 256, ptr %i.tl, align 4
  %i.tm = load ptr, ptr %i.qk, align 8
  %i.tn = call i32 @qemu_fdt_setprop(ptr noundef %i.tm, ptr noundef %i.qj, ptr noundef nonnull @.str.147, ptr noundef nonnull %i.o, i32 noundef 16) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #13
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.to = load ptr, ptr %i.qk, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.tp = call noundef i32 @llvm.bswap.i32(i32 %.269.i) ; 26 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.j, i8 0, i64 448, i1 false)
  store i32 16777216, ptr %i.tq, align 4
  %i.tr = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i32 %i.tp, ptr %i.tr, align 16
  %i.ts = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  store i32 536870912, ptr %i.ts, align 4
  %i.tt = load i32, ptr %i.hs, align 8
  %.not.i.i10.i = icmp eq i32 %i.tt, 0
  %i.tu = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.j, i64 44
  %i.tw = getelementptr inbounds nuw i8, ptr %i.j, i64 68
  %i.tx = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  br i1 %.not.i.i10.i, label %.thread96.i.i.i, label %bb.ai

.thread96.i.i.i:                                  ; preds = %bb.ah
  %i.ty = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 33554432, ptr %i.ty, align 4
  store i32 %i.tp, ptr %i.tu, align 8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.j, i64 60
  store i32 50331648, ptr %i.tz, align 4
  %i.ua = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i32 %i.tp, ptr %i.ua, align 16
  %i.ub = getelementptr inbounds nuw i8, ptr %i.j, i64 84
  store i32 67108864, ptr %i.ub, align 4
  %i.uc = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  store i32 %i.tp, ptr %i.uc, align 8
  %i.ud = getelementptr inbounds nuw i8, ptr %i.j, i64 92
  store i32 587202560, ptr %i.ud, align 4
  br label %create_fdt_pcie.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.ue = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i32 67108864, ptr %i.ue, align 8
  store i32 33554432, ptr %i.tu, align 8
  %i.uf = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i32 553648128, ptr %i.uf, align 16
  %i.ug = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i32 67108864, ptr %i.ug, align 4
  %i.uh = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store i32 %i.tp, ptr %i.uh, align 8
  %i.ui = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 570425344, ptr %i.ui, align 4
  %i.uj = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i32 67108864, ptr %i.uj, align 16
  %i.uk = getelementptr inbounds nuw i8, ptr %i.j, i64 100
  store i32 %i.tp, ptr %i.uk, align 4
  %i.ul = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i32 587202560, ptr %i.ul, align 8
  store i32 67108864, ptr %.sink189.i.sroa.gep.i, align 4
  store i32 524288, ptr %.sink186.i.sroa.gep.i, align 16
  %i.um = getelementptr inbounds nuw i8, ptr %i.j, i64 124
  store i32 16777216, ptr %i.um, align 4
  %i.un = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  store i32 %i.tp, ptr %i.un, align 16
  store i32 553648128, ptr %.sink177.i.sroa.gep.i, align 4
  store i32 67108864, ptr %.sink174.i.sroa.gep.i, align 8
  store i32 524288, ptr %.sink171.i.sroa.gep.i, align 4
  %i.uo = getelementptr inbounds nuw i8, ptr %i.j, i64 152
  store i32 33554432, ptr %i.uo, align 8
  store i32 %i.tp, ptr %.sink165.i.sroa.gep.i, align 4
  store i32 570425344, ptr %.sink162.i.sroa.gep.i, align 16
  store i32 67108864, ptr %.sink160.i.sroa.gep.i, align 4
  store i32 524288, ptr %.sink157.i.sroa.gep.i, align 8
  store i32 50331648, ptr %.sink154.i.sroa.gep.i, align 4
  store i32 %i.tp, ptr %.sink151.i.sroa.gep.i, align 8
  br label %create_fdt_pcie.exit.i

create_fdt_pcie.exit.i:                           ; preds = %bb.ai, %.thread96.i.i.i
  %.sink = phi i32 [ 553648128, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.sink75.i = phi i32 [ 570425344, %.thread96.i.i.i ], [ 50331648, %bb.ai ] ; 2 uses
  %.sink.i = phi i32 [ 524288, %.thread96.i.i.i ], [ 67108864, %bb.ai ] ; 3 uses
  %.sink189.i.sroa.phi.i = phi ptr [ %.sink189.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink189.i.sroa.gep20.i, %bb.ai ]
  %.sink187.i.i = phi i32 [ 16777216, %.thread96.i.i.i ], [ 587202560, %bb.ai ]
  %.sink186.i.sroa.phi.i = phi ptr [ %.sink186.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink186.i.sroa.gep21.i, %bb.ai ]
  %.sink184.i.i = phi i32 [ %i.tp, %.thread96.i.i.i ], [ 67108864, %bb.ai ] ; 3 uses
  %.sink183.i.sroa.phi.i = phi ptr [ %.sink183.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink183.i.sroa.gep22.i, %bb.ai ]
  %.sink181.i.i = phi i32 [ 553648128, %.thread96.i.i.i ], [ 524288, %bb.ai ]
  %.sink180.i.sroa.phi.i = phi ptr [ %.sink180.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink180.i.sroa.gep23.i, %bb.ai ]
  %.sink177.i.sroa.phi.i = phi ptr [ %.sink177.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink177.i.sroa.gep24.i, %bb.ai ]
  %.sink175.i.i = phi i32 [ 33554432, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.sink174.i.sroa.phi.i = phi ptr [ %.sink174.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink174.i.sroa.gep25.i, %bb.ai ]
  %.sink172.i.i = phi i32 [ %i.tp, %.thread96.i.i.i ], [ 536870912, %bb.ai ]
  %.sink171.i.sroa.phi.i = phi ptr [ %.sink171.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink171.i.sroa.gep26.i, %bb.ai ]
  %.sink169.i.i = phi i32 [ 570425344, %.thread96.i.i.i ], [ 67108864, %bb.ai ]
  %.sink168.i.sroa.phi.i = phi ptr [ %.sink168.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink168.i.sroa.gep27.i, %bb.ai ]
  %.sink166.i.i = phi i32 [ 524288, %.thread96.i.i.i ], [ 1048576, %bb.ai ]
  %.sink165.i.sroa.phi.i = phi ptr [ %.sink165.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink165.i.sroa.gep28.i, %bb.ai ]
  %.sink163.i.i = phi i32 [ 50331648, %.thread96.i.i.i ], [ 16777216, %bb.ai ]
  %.sink162.i.sroa.phi.i = phi ptr [ %.sink162.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink162.i.sroa.gep29.i, %bb.ai ]
  %.sink160.i.sroa.phi.i = phi ptr [ %.sink160.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink160.i.sroa.gep30.i, %bb.ai ]
  %.sink158.i.i = phi i32 [ 587202560, %.thread96.i.i.i ], [ 570425344, %bb.ai ]
  %.sink157.i.sroa.phi.i = phi ptr [ %.sink157.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink157.i.sroa.gep31.i, %bb.ai ]
  %.sink154.i.sroa.phi.i = phi ptr [ %.sink154.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink154.i.sroa.gep32.i, %bb.ai ]
  %.sink152.i.i = phi i32 [ 67108864, %.thread96.i.i.i ], [ 1048576, %bb.ai ]
  %.sink151.i.sroa.phi.i = phi ptr [ %.sink151.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink151.i.sroa.gep33.i, %bb.ai ]
  %.sink149.i11.i = phi i32 [ %i.tp, %.thread96.i.i.i ], [ 33554432, %bb.ai ] ; 2 uses
  %.sink148.i.sroa.phi.i = phi ptr [ %.sink189.i.sroa.gep20.i, %.thread96.i.i.i ], [ %.sink148.i.sroa.gep34.i, %bb.ai ]
  %.sink146.i.i = phi i32 [ 536870912, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.sink145.i.sroa.phi.i = phi ptr [ %.sink186.i.sroa.gep21.i, %.thread96.i.i.i ], [ %.sink145.i.sroa.gep35.i, %bb.ai ]
  %.sink143.i.i = phi i32 [ 1048576, %.thread96.i.i.i ], [ 587202560, %bb.ai ]
  %.sink142.i.sroa.phi.i = phi ptr [ %.sink142.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink142.i.sroa.gep36.i, %bb.ai ]
  %.sink140.i.i = phi i32 [ 16777216, %.thread96.i.i.i ], [ 67108864, %bb.ai ]
  %.sink139.i.sroa.phi.i = phi ptr [ %.sink180.i.sroa.gep23.i, %.thread96.i.i.i ], [ %.sink139.i.sroa.gep37.i, %bb.ai ]
  %.sink137.i.i = phi i32 [ %i.tp, %.thread96.i.i.i ], [ 1048576, %bb.ai ]
  %.sink136.i.sroa.phi.i = phi ptr [ %.sink177.i.sroa.gep24.i, %.thread96.i.i.i ], [ %.sink136.i.sroa.gep38.i, %bb.ai ]
  %.sink133.i.sroa.phi.i = phi ptr [ %.sink174.i.sroa.gep25.i, %.thread96.i.i.i ], [ %.sink133.i.sroa.gep39.i, %bb.ai ]
  %.sink131.i.i = phi i32 [ 1048576, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.sink130.i.sroa.phi.i = phi ptr [ %.sink130.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink130.i.sroa.gep40.i, %bb.ai ]
  %.sink128.i.i = phi i32 [ 33554432, %.thread96.i.i.i ], [ 536870912, %bb.ai ]
  %.sink127.i.sroa.phi.i = phi ptr [ %.sink127.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink127.i.sroa.gep41.i, %bb.ai ]
  %.sink124.i.sroa.phi.i = phi ptr [ %.sink165.i.sroa.gep28.i, %.thread96.i.i.i ], [ %.sink124.i.sroa.gep42.i, %bb.ai ]
  %.sink122.i.i = phi i32 [ 587202560, %.thread96.i.i.i ], [ 1048576, %bb.ai ]
  %.sink121.i.sroa.phi.i = phi ptr [ %.sink162.i.sroa.gep29.i, %.thread96.i.i.i ], [ %.sink121.i.sroa.gep43.i, %bb.ai ]
  %.sink119.i.i = phi i32 [ 1048576, %.thread96.i.i.i ], [ 67108864, %bb.ai ]
  %.sink118.i.sroa.phi.i = phi ptr [ %.sink154.i.sroa.gep32.i, %.thread96.i.i.i ], [ %.sink118.i.sroa.gep44.i, %bb.ai ]
  %.sink116.i.i = phi i32 [ 50331648, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.sink115.i.sroa.phi.i = phi ptr [ %.sink115.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink115.i.sroa.gep45.i, %bb.ai ]
  %.sink113.i.i = phi i32 [ %i.tp, %.thread96.i.i.i ], [ 553648128, %bb.ai ]
  %.sink112.i.sroa.phi.i = phi ptr [ %.sink112.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink112.i.sroa.gep46.i, %bb.ai ]
  %.sink110.i.i = phi i32 [ 536870912, %.thread96.i.i.i ], [ 67108864, %bb.ai ]
  %.sink109.i.sroa.phi.i = phi ptr [ %.sink151.i.sroa.gep33.i, %.thread96.i.i.i ], [ %.sink109.i.sroa.gep47.i, %bb.ai ]
  %.sink107.i.i = phi i32 [ 1048576, %.thread96.i.i.i ], [ 1572864, %bb.ai ]
  %.sink106.i.sroa.phi.i = phi ptr [ %.sink142.i.sroa.gep36.i, %.thread96.i.i.i ], [ %.sink106.i.sroa.gep48.i, %bb.ai ]
  %.sink104.i.i = phi i32 [ 67108864, %.thread96.i.i.i ], [ 16777216, %bb.ai ]
  %.sink103.i.sroa.phi.i = phi ptr [ %.sink139.i.sroa.gep37.i, %.thread96.i.i.i ], [ %.sink103.i.sroa.gep49.i, %bb.ai ]
  %.sink101.i.sroa.phi.i = phi ptr [ %.sink101.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink101.i.sroa.gep50.i, %bb.ai ]
  %.sink99.i.i = phi i32 [ 553648128, %.thread96.i.i.i ], [ 587202560, %bb.ai ]
  %.sink98.i.sroa.phi.i = phi ptr [ %.sink98.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink98.i.sroa.gep51.i, %bb.ai ]
  %.sink96.i.i = phi i32 [ 1572864, %.thread96.i.i.i ], [ 67108864, %bb.ai ] ; 2 uses
  %.sink95.i.sroa.phi.i = phi ptr [ %.sink130.i.sroa.gep40.i, %.thread96.i.i.i ], [ %.sink95.i.sroa.gep52.i, %bb.ai ]
  %.sink93.i.i = phi i32 [ 16777216, %.thread96.i.i.i ], [ 1572864, %bb.ai ]
  %.sink92.i.sroa.phi.i = phi ptr [ %.sink127.i.sroa.gep41.i, %.thread96.i.i.i ], [ %.sink92.i.sroa.gep53.i, %bb.ai ]
  %.sink89.i.sroa.phi.i = phi ptr [ %.sink124.i.sroa.gep42.i, %.thread96.i.i.i ], [ %.sink89.i.sroa.gep54.i, %bb.ai ]
  %.sink87.i.i = phi i32 [ 587202560, %.thread96.i.i.i ], [ 603979776, %bb.ai ]
  %.sink86.i.sroa.phi.i = phi ptr [ %.sink86.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink86.i.sroa.gep55.i, %bb.ai ]
  %.sink83.i.sroa.phi.i = phi ptr [ %.sink118.i.sroa.gep44.i, %.thread96.i.i.i ], [ %.sink83.i.sroa.gep56.i, %bb.ai ]
  %.sink81.i.i = phi i32 [ 33554432, %.thread96.i.i.i ], [ 1572864, %bb.ai ]
  %.sink80.i.sroa.phi.i = phi ptr [ %.sink115.i.sroa.gep45.i, %.thread96.i.i.i ], [ %.sink80.i.sroa.gep57.i, %bb.ai ]
  %.sink78.i.i = phi i32 [ %i.tp, %.thread96.i.i.i ], [ 50331648, %bb.ai ]
  %.sink77.i.sroa.phi.i = phi ptr [ %.sink112.i.sroa.gep46.i, %.thread96.i.i.i ], [ %.sink77.i.sroa.gep58.i, %bb.ai ]
  %.sink75.i.i = phi i32 [ 603979776, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.sink74.i.sroa.phi.i = phi ptr [ %.sink109.i.sroa.gep47.i, %.thread96.i.i.i ], [ %.sink74.i.sroa.gep59.i, %bb.ai ]
  %.sink72.i.i = phi i32 [ 1572864, %.thread96.i.i.i ], [ 553648128, %bb.ai ]
  %.sink71.i.sroa.phi.i = phi ptr [ %.sink106.i.sroa.gep48.i, %.thread96.i.i.i ], [ %.sink71.i.sroa.gep60.i, %bb.ai ]
  %.sink69.i.i = phi i32 [ 50331648, %.thread96.i.i.i ], [ 67108864, %bb.ai ]
  %.sink68.i.sroa.phi.i = phi ptr [ %.sink103.i.sroa.gep49.i, %.thread96.i.i.i ], [ %.sink68.i.sroa.gep61.i, %bb.ai ]
  %.sink66.i.i = phi i32 [ %i.tp, %.thread96.i.i.i ], [ 1572864, %bb.ai ]
  %.sink65.i.sroa.phi.i = phi ptr [ %.sink101.i.sroa.gep50.i, %.thread96.i.i.i ], [ %.sink65.i.sroa.gep62.i, %bb.ai ]
  %.sink63.i.i = phi i32 [ 553648128, %.thread96.i.i.i ], [ 67108864, %bb.ai ]
  %.sink62.i.sroa.phi.i = phi ptr [ %.sink98.i.sroa.gep51.i, %.thread96.i.i.i ], [ %.sink62.i.sroa.gep63.i, %bb.ai ]
  %.sink60.i.i = phi i32 [ 1572864, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.sink59.i.sroa.phi.i = phi ptr [ %.sink59.i.sroa.gep.i, %.thread96.i.i.i ], [ %.sink59.i.sroa.gep64.i, %bb.ai ]
  %.sink57.i.i = phi i32 [ 67108864, %.thread96.i.i.i ], [ 570425344, %bb.ai ]
  %.sink56.i.sroa.phi.i = phi ptr [ %.sink92.i.sroa.gep53.i, %.thread96.i.i.i ], [ %.sink56.i.sroa.gep65.i, %bb.ai ]
  %.sink.i12.i = phi i32 [ 570425344, %.thread96.i.i.i ], [ %i.tp, %bb.ai ]
  %.036565962656871747780838689929598.i.i.i = phi i32 [ 384, %.thread96.i.i.i ], [ 448, %bb.ai ]
  store i32 %.sink, ptr %i.tv, align 4
  store i32 %.sink75.i, ptr %i.tw, align 4
  store i32 %.sink.i, ptr %i.tx, align 16
  store i32 %.sink187.i.i, ptr %.sink189.i.sroa.phi.i, align 4
  store i32 %.sink184.i.i, ptr %.sink186.i.sroa.phi.i, align 4
  store i32 %.sink181.i.i, ptr %.sink183.i.sroa.phi.i, align 4
  store i32 %.sink.i, ptr %.sink180.i.sroa.phi.i, align 4
  store i32 %.sink175.i.i, ptr %.sink177.i.sroa.phi.i, align 4
  store i32 %.sink172.i.i, ptr %.sink174.i.sroa.phi.i, align 4
  store i32 %.sink169.i.i, ptr %.sink171.i.sroa.phi.i, align 4
  store i32 %.sink166.i.i, ptr %.sink168.i.sroa.phi.i, align 4
  store i32 %.sink163.i.i, ptr %.sink165.i.sroa.phi.i, align 4
  store i32 %i.tp, ptr %.sink162.i.sroa.phi.i, align 4
  store i32 %.sink158.i.i, ptr %.sink160.i.sroa.phi.i, align 4
  store i32 %.sink.i, ptr %.sink157.i.sroa.phi.i, align 4
  store i32 %.sink152.i.i, ptr %.sink154.i.sroa.phi.i, align 4
  store i32 %.sink149.i11.i, ptr %.sink151.i.sroa.phi.i, align 4
  store i32 %.sink146.i.i, ptr %.sink148.i.sroa.phi.i, align 4
  store i32 %.sink143.i.i, ptr %.sink145.i.sroa.phi.i, align 4
  store i32 %.sink140.i.i, ptr %.sink142.i.sroa.phi.i, align 4
  store i32 %.sink137.i.i, ptr %.sink139.i.sroa.phi.i, align 4
  store i32 %.sink75.i, ptr %.sink136.i.sroa.phi.i, align 4
  store i32 %.sink131.i.i, ptr %.sink133.i.sroa.phi.i, align 4
  store i32 %.sink128.i.i, ptr %.sink130.i.sroa.phi.i, align 4
  store i32 %.sink184.i.i, ptr %.sink127.i.sroa.phi.i, align 4
  store i32 %.sink122.i.i, ptr %.sink124.i.sroa.phi.i, align 4
  store i32 %.sink119.i.i, ptr %.sink121.i.sroa.phi.i, align 4
  store i32 %.sink116.i.i, ptr %.sink118.i.sroa.phi.i, align 4
  store i32 %.sink113.i.i, ptr %.sink115.i.sroa.phi.i, align 4
  store i32 %.sink110.i.i, ptr %.sink112.i.sroa.phi.i, align 4
  store i32 %.sink107.i.i, ptr %.sink109.i.sroa.phi.i, align 4
  store i32 %.sink104.i.i, ptr %.sink106.i.sroa.phi.i, align 4
  store i32 %i.tp, ptr %.sink103.i.sroa.phi.i, align 4
  store i32 %.sink99.i.i, ptr %.sink101.i.sroa.phi.i, align 4
  store i32 %.sink96.i.i, ptr %.sink98.i.sroa.phi.i, align 4
  store i32 %.sink93.i.i, ptr %.sink95.i.sroa.phi.i, align 4
  store i32 %.sink149.i11.i, ptr %.sink92.i.sroa.phi.i, align 4
  store i32 %.sink87.i.i, ptr %.sink89.i.sroa.phi.i, align 4
  store i32 %.sink96.i.i, ptr %.sink86.i.sroa.phi.i, align 4
  store i32 %.sink81.i.i, ptr %.sink83.i.sroa.phi.i, align 4
  store i32 %.sink78.i.i, ptr %.sink80.i.sroa.phi.i, align 4
  store i32 %.sink75.i.i, ptr %.sink77.i.sroa.phi.i, align 4
  store i32 %.sink72.i.i, ptr %.sink74.i.sroa.phi.i, align 4
  store i32 %.sink69.i.i, ptr %.sink71.i.sroa.phi.i, align 4
  store i32 %.sink66.i.i, ptr %.sink68.i.sroa.phi.i, align 4
  store i32 %.sink63.i.i, ptr %.sink65.i.sroa.phi.i, align 4
  store i32 %.sink60.i.i, ptr %.sink62.i.sroa.phi.i, align 4
  store i32 %.sink57.i.i, ptr %.sink59.i.sroa.phi.i, align 4
  store i32 %.sink184.i.i, ptr %.sink56.i.sroa.phi.i, align 4
  %i.up = getelementptr inbounds nuw i8, ptr %i.j, i64 380
  store i32 %.sink.i12.i, ptr %i.up, align 4
  %i.uq = call i32 @qemu_fdt_setprop(ptr noundef %i.to, ptr noundef %i.qj, ptr noundef nonnull @.str.148, ptr noundef nonnull %i.j, i32 noundef %.036565962656871747780838689929598.i.i.i) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #13
  store <4 x i32> <i32 1572864, i32 0, i32 0, i32 117440512>, ptr %i.k, align 16
  %i.ur = call i32 @qemu_fdt_setprop(ptr noundef %i.to, ptr noundef %i.qj, ptr noundef nonnull @.str.149, ptr noundef nonnull %i.k, i32 noundef 16) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  call void @g_free(ptr noundef %i.qj) #13
  %i.us = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #13
  %i.ut = load i32, ptr %i.y, align 4             ; 2 uses
  %i.uu = add i32 %i.ut, 1
  store i32 %i.uu, ptr %i.y, align 4
  %i.uv = load ptr, ptr %i.ac, align 8
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 32
  %i.ux = load i64, ptr %i.uw, align 8
  %i.uy = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.150, i64 noundef %i.ux) #13 ; 6 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.us, i64 40 ; 15 uses
  %i.va = load ptr, ptr %i.uz, align 8
  %i.vb = call i32 @qemu_fdt_add_subnode(ptr noundef %i.va, ptr noundef %i.uy) #13 ; 0 uses
  %i.vc = load ptr, ptr %i.uz, align 8
  %i.vd = call i32 @qemu_fdt_setprop_string_array(ptr noundef %i.vc, ptr noundef %i.uy, ptr noundef nonnull @.str.98, ptr noundef nonnull @create_fdt_reset.compat, i32 noundef 3) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  store i64 2, ptr %i.i, align 16
  %i.ve = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.vf = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.vg = getelementptr inbounds nuw i8, ptr %i.vf, i64 32
  %i.vh = load i64, ptr %i.vg, align 8
  store i64 %i.vh, ptr %i.ve, align 8
  %i.vi = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 2, ptr %i.vi, align 16
  %i.vj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vf, i64 40
  %i.vl = load i64, ptr %i.vk, align 8
  store i64 %i.vl, ptr %i.vj, align 8
  %i.vm = load ptr, ptr %i.uz, align 8
  %i.vn = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %i.vm, ptr noundef %i.uy, ptr noundef nonnull @.str.100, i32 noundef 2, ptr noundef nonnull %i.i) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  %i.vo = load ptr, ptr %i.uz, align 8
  %i.vp = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.vo, ptr noundef %i.uy, ptr noundef nonnull @.str.126, i32 noundef %i.ut) #13 ; 0 uses
  %i.vq = load ptr, ptr %i.uz, align 8
  %i.vr = call i32 @qemu_fdt_get_phandle(ptr noundef %i.vq, ptr noundef %i.uy) #13 ; 2 uses
  call void @g_free(ptr noundef %i.uy) #13
  %i.vs = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.154) #13 ; 6 uses
  %i.vt = load ptr, ptr %i.uz, align 8
  %i.vu = call i32 @qemu_fdt_add_subnode(ptr noundef %i.vt, ptr noundef %i.vs) #13 ; 0 uses
  %i.vv = load ptr, ptr %i.uz, align 8
  %i.vw = call i32 @qemu_fdt_setprop_string(ptr noundef %i.vv, ptr noundef %i.vs, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.155) #13 ; 0 uses
  %i.vx = load ptr, ptr %i.uz, align 8
  %i.vy = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.vx, ptr noundef %i.vs, ptr noundef nonnull @.str.156, i32 noundef %i.vr) #13 ; 0 uses
  %i.vz = load ptr, ptr %i.uz, align 8
  %i.wa = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.vz, ptr noundef %i.vs, ptr noundef nonnull @.str.157, i32 noundef 0) #13 ; 0 uses
  %i.wb = load ptr, ptr %i.uz, align 8
  %i.wc = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.wb, ptr noundef %i.vs, ptr noundef nonnull @.str.158, i32 noundef 30583) #13 ; 0 uses
  call void @g_free(ptr noundef %i.vs) #13
  %i.wd = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.159) #13 ; 6 uses
  %i.we = load ptr, ptr %i.uz, align 8
  %i.wf = call i32 @qemu_fdt_add_subnode(ptr noundef %i.we, ptr noundef %i.wd) #13 ; 0 uses
  %i.wg = load ptr, ptr %i.uz, align 8
  %i.wh = call i32 @qemu_fdt_setprop_string(ptr noundef %i.wg, ptr noundef %i.wd, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.160) #13 ; 0 uses
  %i.wi = load ptr, ptr %i.uz, align 8
  %i.wj = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.wi, ptr noundef %i.wd, ptr noundef nonnull @.str.156, i32 noundef %i.vr) #13 ; 0 uses
  %i.wk = load ptr, ptr %i.uz, align 8
  %i.wl = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.wk, ptr noundef %i.wd, ptr noundef nonnull @.str.157, i32 noundef 0) #13 ; 0 uses
  %i.wm = load ptr, ptr %i.uz, align 8
  %i.wn = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.wm, ptr noundef %i.wd, ptr noundef nonnull @.str.158, i32 noundef 21845) #13 ; 0 uses
  call void @g_free(ptr noundef %i.wd) #13
  %i.wo = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #13
  %i.wp = load ptr, ptr %i.ac, align 8
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 144
  %i.wr = load i64, ptr %i.wq, align 8
  %i.ws = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.161, i64 noundef %i.wr) #13 ; 10 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wo, i64 40 ; 9 uses
  %i.wu = load ptr, ptr %i.wt, align 8
  %i.wv = call i32 @qemu_fdt_add_subnode(ptr noundef %i.wu, ptr noundef %i.ws) #13 ; 0 uses
  %i.ww = load ptr, ptr %i.wt, align 8
  %i.wx = call i32 @qemu_fdt_setprop_string(ptr noundef %i.ww, ptr noundef %i.ws, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.162) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i64 2, ptr %i.g, align 16
  %i.wy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.wz = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 144
  %i.xb = load i64, ptr %i.xa, align 8
  store i64 %i.xb, ptr %i.wy, align 8
  %i.xc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 2, ptr %i.xc, align 16
  %i.xd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.xe = getelementptr inbounds nuw i8, ptr %i.wz, i64 152
  %i.xf = load i64, ptr %i.xe, align 8
  store i64 %i.xf, ptr %i.xd, align 8
  %i.xg = load ptr, ptr %i.wt, align 8
  %i.xh = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %i.xg, ptr noundef %i.ws, ptr noundef nonnull @.str.100, i32 noundef 2, ptr noundef nonnull %i.g) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  %i.xi = load ptr, ptr %i.wt, align 8
  %i.xj = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.xi, ptr noundef %i.ws, ptr noundef nonnull @.str.163, i32 noundef 3686400) #13 ; 0 uses
  %i.xk = load ptr, ptr %i.wt, align 8
  %i.xl = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.xk, ptr noundef %i.ws, ptr noundef nonnull @.str.136, i32 noundef %.4.i) #13 ; 0 uses
  %i.xm = load i32, ptr %i.hs, align 8
  %i.xn = icmp eq i32 %i.xm, 0
  br i1 %i.xn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %create_fdt_pcie.exit.i
  %i.xo = load ptr, ptr %i.wt, align 8
  %i.xp = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.xo, ptr noundef %i.ws, ptr noundef nonnull @.str.137, i32 noundef 10) #13 ; 0 uses
  br label %create_fdt_uart.exit.i

bb.ak:                                            ; preds = %create_fdt_pcie.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store i64 288230376319483904, ptr %i.h, align 8
  %i.xq = load ptr, ptr %i.wt, align 8
  %i.xr = call i32 @qemu_fdt_setprop(ptr noundef %i.xq, ptr noundef %i.ws, ptr noundef nonnull @.str.137, ptr noundef nonnull %i.h, i32 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %create_fdt_uart.exit.i

create_fdt_uart.exit.i:                           ; preds = %bb.ak, %bb.aj
  %i.xs = load ptr, ptr %i.wt, align 8
  %i.xt = call i32 @qemu_fdt_setprop_string(ptr noundef %i.xs, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.164, ptr noundef %i.ws) #13 ; 0 uses
  %i.xu = load ptr, ptr %i.wt, align 8
  %i.xv = call i32 @qemu_fdt_setprop_string(ptr noundef %i.xu, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.165, ptr noundef %i.ws) #13 ; 0 uses
  call void @g_free(ptr noundef %i.ws) #13
  %i.xw = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.aa, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.46, i32 noundef 25, ptr noundef nonnull @__func__.MACHINE) #13
  %i.xx = load ptr, ptr %i.ac, align 8
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 48
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.166, i64 noundef %i.xz) #13 ; 7 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xw, i64 40 ; 6 uses
  %i.yc = load ptr, ptr %i.yb, align 8
  %i.yd = call i32 @qemu_fdt_add_subnode(ptr noundef %i.yc, ptr noundef %i.ya) #13 ; 0 uses
  %i.ye = load ptr, ptr %i.yb, align 8
  %i.yf = call i32 @qemu_fdt_setprop_string(ptr noundef %i.ye, ptr noundef %i.ya, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.167) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i64 2, ptr %i.e, align 16
  %i.yg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.yh = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 48
  %i.yj = load i64, ptr %i.yi, align 8
  store i64 %i.yj, ptr %i.yg, align 8
  %i.yk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 2, ptr %i.yk, align 16
  %i.yl = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yh, i64 56
  %i.yn = load i64, ptr %i.ym, align 8
  store i64 %i.yn, ptr %i.yl, align 8
  %i.yo = load ptr, ptr %i.yb, align 8
  %i.yp = call i32 @qemu_fdt_setprop_sized_cells_from_array(ptr noundef %i.yo, ptr noundef %i.ya, ptr noundef nonnull @.str.100, i32 noundef 2, ptr noundef nonnull %i.e) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.yq = load ptr, ptr %i.yb, align 8
  %i.yr = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.yq, ptr noundef %i.ya, ptr noundef nonnull @.str.136, i32 noundef %.4.i) #13 ; 0 uses
  %i.ys = load i32, ptr %i.hs, align 8
  %i.yt = icmp eq i32 %i.ys, 0
  br i1 %i.yt, label %bb.al, label %bb.am

bb.al:                                            ; preds = %create_fdt_uart.exit.i
  %i.yu = load ptr, ptr %i.yb, align 8
  %i.yv = call i32 @qemu_fdt_setprop_cell(ptr noundef %i.yu, ptr noundef %i.ya, ptr noundef nonnull @.str.137, i32 noundef 11) #13 ; 0 uses
  br label %finalize_fdt.exit

bb.am:                                            ; preds = %create_fdt_uart.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i64 288230376336261120, ptr %i.f, align 8
  %i.yw = load ptr, ptr %i.yb, align 8
  %i.yx = call i32 @qemu_fdt_setprop(ptr noundef %i.yw, ptr noundef %i.ya, ptr noundef nonnull @.str.137, ptr noundef nonnull %i.f, i32 noundef 8) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  br label %finalize_fdt.exit

finalize_fdt.exit:                                ; preds = %bb.al, %bb.am
  call void @g_free(ptr noundef %i.ya) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #13
  br label %bb.an

bb.an:                                            ; preds = %finalize_fdt.exit, %bb.a
  call void @riscv_boot_info_init(ptr noundef nonnull %3, ptr noundef nonnull %i.ag) #13
  %i.yy = call i64 @riscv_find_and_load_firmware(ptr noundef %i.ab, ptr noundef nonnull %3, ptr noundef %i.ah, ptr noundef nonnull %i.z, ptr noundef null) #13
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 3552
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = call ptr @pflash_cfi01_get_blk(ptr noundef %i.za) #13
  %.not = icmp eq ptr %i.zb, null
  br i1 %.not, label %bb.as, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.zc = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  %i.zd = load ptr, ptr %i.zc, align 8            ; 2 uses
  %.not38 = icmp eq ptr %i.zd, null
  br i1 %.not38, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ze = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.zd, ptr noundef nonnull dereferenceable(5) @.str.107) #17
  %.not39 = icmp eq i32 %i.ze, 0
  br i1 %.not39, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.zf = load ptr, ptr %i.ac, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 224
end_hunk_0
