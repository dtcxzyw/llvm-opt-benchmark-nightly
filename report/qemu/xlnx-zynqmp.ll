Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx-zynqmp?download=true
inline.NumInlined: 146
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@xlnx_zynqmp_realize:bb.a
bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.br = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bq, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.bs = tail call zeroext i1 @qdev_realize(ptr noundef %i.br, ptr noundef null, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  br i1 %.not533, label %._crit_edge513, label %.lr.ph512

.lr.ph512:                                        ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 7447000
  %i.bv = zext nneg i32 %i.i to i64
  %i.bw = trunc nuw nsw i32 %i.i to i8
  br label %bb.n

bb.m:                                             ; preds = %bb.q
  %i.bx = add nuw nsw i8 %.3510, 1                ; 2 uses
  %i.by = icmp samesign ult i8 %i.bx, %i.bw
  br i1 %i.by, label %bb.n, label %._crit_edge513, !llvm.loop !9

bb.n:                                             ; preds = %.lr.ph512, %bb.m
  %.3510 = phi i8 [ 0, %.lr.ph512 ], [ %i.bx, %bb.m ] ; 2 uses
  %i.bz = zext nneg i8 %.3510 to i64
  %i.ca = getelementptr inbounds nuw [96928 x i8], ptr %i.bt, i64 %i.bz ; 8 uses
  %i.cb = tail call ptr @object_get_canonical_path_component(ptr noundef nonnull %i.ca) #7
  %i.cc = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cb, ptr noundef nonnull dereferenceable(1) %spec.select) #9
  %.not483 = icmp eq i32 %i.cc, 0
  br i1 %.not483, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = tail call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.68, i1 noundef zeroext true, ptr noundef nonnull @error_abort) #7 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  store ptr %i.ca, ptr %i.bu, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = load i8, ptr %i.be, align 16, !range !20, !noundef !21
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = tail call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.69, i1 noundef zeroext %i.cf, ptr noundef null) #7 ; 0 uses
  %i.ch = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = tail call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.70, i1 noundef zeroext %i.ci, ptr noundef null) #7 ; 0 uses
  %i.ck = tail call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.71, i64 noundef 4177526784, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.cl = tail call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.72, i64 noundef %i.bv, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.cm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ca, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.cn = tail call zeroext i1 @qdev_realize(ptr noundef %i.cm, ptr noundef null, ptr noundef %1) #7
  br i1 %i.cn, label %bb.m, label %.critedge

._crit_edge513:                                   ; preds = %bb.m, %bb.l
  %i.co = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.cp = tail call zeroext i1 @sysbus_realize(ptr noundef %i.co, ptr noundef %1) #7
  br i1 %i.cp, label %.preheader504, label %.critedge

.preheader504:                                    ; preds = %._crit_edge513
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 600992
  br label %bb.r

.preheader503:                                    ; preds = %.loopexit
  br i1 %.not533, label %._crit_edge519, label %.lr.ph518

.lr.ph518:                                        ; preds = %.preheader503
  %i.cr = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %i.cs = shl nuw nsw i32 %i.i, 1
  %i.ct = mul nuw nsw i32 %i.i, 3
  %i.cu = shl nuw nsw i32 %i.i, 2
  %wide.trip.count564 = zext nneg i32 %i.i to i64
  br label %bb.t

bb.r:                                             ; preds = %.preheader504, %.loopexit
  %indvars.iv558 = phi i64 [ 0, %.preheader504 ], [ %indvars.iv.next559, %.loopexit ] ; 3 uses
  %i.cv = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @xlnx_zynqmp_gic_regions, i64 %indvars.iv558 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 16 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  %i.da = load i8, ptr %i.cz, align 4, !range !20, !noundef !21
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.s, label %.loopexit.loopexit

bb.s:                                             ; preds = %bb.r
  %i.dc = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.s, %bb.r
  %i.de = load i32, ptr %i.cw, align 16
  %i.df = tail call ptr @sysbus_mmio_get_region(ptr noundef %i.cv, i32 noundef %i.de) #7 ; 16 uses
  %i.dg = getelementptr inbounds nuw [4352 x i8], ptr %i.cq, i64 %indvars.iv558 ; 17 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = zext i32 %i.di to i64                   ; 16 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dg, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.dk = zext i32 %i.cy to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dk, ptr noundef nonnull %i.dg) #7
  %i.dl = add i32 %i.cy, 4096
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 272 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dm, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.dn = zext i32 %i.dl to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dn, ptr noundef nonnull %i.dm) #7
  %i.do = add i32 %i.cy, 8192
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 544 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.dq = zext i32 %i.do to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dq, ptr noundef nonnull %i.dp) #7
  %i.dr = add i32 %i.cy, 12288
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 816 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.dt = zext i32 %i.dr to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dt, ptr noundef nonnull %i.ds) #7
  %i.du = add i32 %i.cy, 16384
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 1088 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.dw = zext i32 %i.du to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dw, ptr noundef nonnull %i.dv) #7
  %i.dx = add i32 %i.cy, 20480
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dg, i64 1360 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.dz = zext i32 %i.dx to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dz, ptr noundef nonnull %i.dy) #7
  %i.ea = add i32 %i.cy, 24576
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dg, i64 1632 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.ec = zext i32 %i.ea to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ec, ptr noundef nonnull %i.eb) #7
  %i.ed = add i32 %i.cy, 28672
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 1904 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.ef = zext i32 %i.ed to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ef, ptr noundef nonnull %i.ee) #7
  %i.eg = add i32 %i.cy, 32768
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dg, i64 2176 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.ei = zext i32 %i.eg to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ei, ptr noundef nonnull %i.eh) #7
  %i.ej = add i32 %i.cy, 36864
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dg, i64 2448 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ek, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.el = zext i32 %i.ej to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.el, ptr noundef nonnull %i.ek) #7
  %i.em = add i32 %i.cy, 40960
  %i.en = getelementptr inbounds nuw i8, ptr %i.dg, i64 2720 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.en, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.eo = zext i32 %i.em to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.eo, ptr noundef nonnull %i.en) #7
  %i.ep = add i32 %i.cy, 45056
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dg, i64 2992 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.eq, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.er = zext i32 %i.ep to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.er, ptr noundef nonnull %i.eq) #7
  %i.es = add i32 %i.cy, 49152
  %i.et = getelementptr inbounds nuw i8, ptr %i.dg, i64 3264 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.et, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.eu = zext i32 %i.es to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.eu, ptr noundef nonnull %i.et) #7
  %i.ev = add i32 %i.cy, 53248
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dg, i64 3536 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.ex = zext i32 %i.ev to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ex, ptr noundef nonnull %i.ew) #7
  %i.ey = add i32 %i.cy, 57344
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dg, i64 3808 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.fa = zext i32 %i.ey to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.fa, ptr noundef nonnull %i.ez) #7
  %i.fb = add i32 %i.cy, 61440
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dg, i64 4080 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.fc, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.df, i64 noundef %i.dj, i64 noundef 4096) #7
  %i.fd = zext i32 %i.fb to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.fd, ptr noundef nonnull %i.fc) #7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next559, 6
  br i1 %exitcond561.not, label %.preheader503, label %bb.r, !llvm.loop !10

bb.t:                                             ; preds = %.lr.ph518, %bb.v
  %indvars.iv562 = phi i64 [ 0, %.lr.ph518 ], [ %indvars.iv.next563, %bb.v ] ; 2 uses
  %i.fe = phi i32 [ 0, %.lr.ph518 ], [ %i.gp, %bb.v ] ; 6 uses
  %i.ff = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fg = getelementptr inbounds nuw [96928 x i8], ptr %i.cr, i64 %indvars.iv562 ; 8 uses
  %i.fh = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fi = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fh, i32 noundef 0) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.ff, i32 noundef %i.fe, ptr noundef %i.fi) #7
  %i.fj = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fk = add nuw nsw i32 %i.fe, %i.i
  %i.fl = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fm = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fl, i32 noundef 1) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fj, i32 noundef %i.fk, ptr noundef %i.fm) #7
  %i.fn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fo = add nuw nsw i32 %i.fe, %i.cs
  %i.fp = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fq = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fp, i32 noundef 2) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fn, i32 noundef %i.fo, ptr noundef %i.fq) #7
  %i.fr = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fs = add nuw nsw i32 %i.fe, %i.ct
  %i.ft = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fu = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ft, i32 noundef 3) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fr, i32 noundef %i.fs, ptr noundef %i.fu) #7
  %i.fv = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fw = shl nuw nsw i32 %i.fe, 5
  %i.fx = add nuw nsw i32 %i.fw, 160              ; 5 uses
  %2 = or disjoint i32 %i.fx, 30
  %i.fy = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fv, i32 noundef %2) #7
  %i.fz = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.fz, i32 noundef 0, ptr noundef %i.fy) #7
  %i.ga = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %3 = or disjoint i32 %i.fx, 27
  %i.gb = tail call ptr @qdev_get_gpio_in(ptr noundef %i.ga, i32 noundef %3) #7
  %i.gc = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.gc, i32 noundef 1, ptr noundef %i.gb) #7
  %i.gd = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %4 = or disjoint i32 %i.fx, 26
  %i.ge = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gd, i32 noundef %4) #7
  %i.gf = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.gf, i32 noundef 2, ptr noundef %i.ge) #7
  %i.gg = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %5 = or disjoint i32 %i.fx, 29
  %i.gh = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gg, i32 noundef %5) #7
  %i.gi = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.gi, i32 noundef 3, ptr noundef %i.gh) #7
  %i.gj = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gl = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %6 = or disjoint i32 %i.fx, 25
  %i.gm = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gl, i32 noundef %6) #7
  %i.gn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.go = add nuw nsw i32 %i.fe, %i.cu
  tail call void @sysbus_connect_irq(ptr noundef %i.gn, i32 noundef %i.go, ptr noundef %i.gm) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 3 uses
  %i.gp = trunc nuw nsw i64 %indvars.iv.next563 to i32
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, %wide.trip.count564
  br i1 %exitcond565.not, label %._crit_edge519, label %bb.t, !llvm.loop !11

._crit_edge519:                                   ; preds = %bb.v, %.preheader503
  %.val489 = load i32, ptr %i.g, align 8
  %i.gq = add i32 %.val489, -4                    ; 2 uses
  %.not.i = icmp slt i32 %i.gq, 1
  br i1 %.not.i, label %xlnx_zynqmp_create_rpu.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge519
  %i.gr = tail call i32 @llvm.umin.i32(i32 %i.gq, i32 2)
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.gs, i64 noundef 160, ptr noundef nonnull @.str.4) #7
  %i.gt = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.gt, ptr noundef nonnull @.str.5, i32 noundef 1) #7
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 388192
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 7447000
  %wide.trip.count.i = zext nneg i32 %i.gr to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.aa
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !12

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.gw = getelementptr inbounds nuw [96928 x i8], ptr %i.gu, i64 %indvars.iv.i ; 6 uses
  call void @object_initialize_child_internal(ptr noundef nonnull %i.gs, ptr noundef nonnull @.str.102, ptr noundef nonnull %i.gw, i64 noundef 96928, ptr noundef nonnull @.str.103) #7
  %i.gx = call ptr @object_get_canonical_path_component(ptr noundef nonnull %i.gw) #7
  %i.gy = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gx, ptr noundef nonnull readonly dereferenceable(1) %spec.select) #9
  %.not28.i = icmp eq i32 %i.gy, 0
  br i1 %.not28.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gz = call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.gw, ptr noundef nonnull @.str.68, i1 noundef zeroext true, ptr noundef nonnull @error_abort) #7 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store ptr %i.gw, ptr %i.gv, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ha = call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.gw, ptr noundef nonnull @.str.104, i1 noundef zeroext true, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.hb = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gw, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.hc = call zeroext i1 @qdev_realize(ptr noundef %i.hb, ptr noundef null, ptr noundef nonnull %i.b) #7
  br i1 %i.hc, label %bb.w, label %xlnx_zynqmp_create_rpu.exit

._crit_edge.i:                                    ; preds = %bb.w
  %i.hd = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.he = call zeroext i1 @qdev_realize(ptr noundef %i.hd, ptr noundef null, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  br label %xlnx_zynqmp_create_rpu.exit

xlnx_zynqmp_create_rpu.exit:                      ; preds = %bb.aa, %._crit_edge519, %._crit_edge.i
  %i.hf = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not480 = icmp eq ptr %i.hf, null
  br i1 %.not480, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %xlnx_zynqmp_create_rpu.exit
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %i.hf) #7
  br label %.critedge

bb.ac:                                            ; preds = %xlnx_zynqmp_create_rpu.exit
  br i1 %.not478610, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 627104 ; 11 uses
  %i.hh = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.hi = call zeroext i1 @sysbus_realize(ptr noundef %i.hh, ptr noundef %1) #7
  br i1 %i.hi, label %.lr.ph521, label %.critedge

.lr.ph521:                                        ; preds = %bb.ad
  %i.hj = getelementptr inbounds nuw i8, ptr %i.e, i64 388192
  %i.hk = shl nuw nsw i32 %i.l, 1
  %i.hl = mul nuw nsw i32 %i.l, 3
  %i.hm = zext nneg i32 %i.l to i64
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph521, %bb.ae
  %indvars.iv566 = phi i64 [ 0, %.lr.ph521 ], [ %indvars.iv.next567, %bb.ae ] ; 8 uses
  %i.hn = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %indvars.iv.next567 = add nuw nsw i64 %indvars.iv566, 1 ; 3 uses
  %i.ho = shl nuw nsw i64 %indvars.iv566, 12
  %i.hp = or disjoint i64 %i.ho, 4177526784
  %i.hq = trunc nuw nsw i64 %indvars.iv.next567 to i32
  call void @sysbus_mmio_map(ptr noundef %i.hn, i32 noundef %i.hq, i64 noundef %i.hp) #7
  %i.hr = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.hs = getelementptr inbounds nuw [96928 x i8], ptr %i.hj, i64 %indvars.iv566 ; 8 uses
  %i.ht = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.hu = call ptr @qdev_get_gpio_in(ptr noundef %i.ht, i32 noundef 0) #7
  %i.hv = trunc nuw nsw i64 %indvars.iv566 to i32
  call void @sysbus_connect_irq(ptr noundef %i.hr, i32 noundef %i.hv, ptr noundef %i.hu) #7
  %i.hw = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.hx = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.hy = call ptr @qdev_get_gpio_in(ptr noundef %i.hx, i32 noundef 1) #7
  %i.hz = trunc i64 %indvars.iv566 to i32
  %i.ia = add i32 %i.l, %i.hz
  call void @sysbus_connect_irq(ptr noundef %i.hw, i32 noundef %i.ia, ptr noundef %i.hy) #7
  %i.ib = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.ic = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.id = call ptr @qdev_get_gpio_in(ptr noundef %i.ic, i32 noundef 2) #7
  %i.ie = trunc i64 %indvars.iv566 to i32
  %i.if = add i32 %i.hk, %i.ie
  call void @sysbus_connect_irq(ptr noundef %i.ib, i32 noundef %i.if, ptr noundef %i.id) #7
  %i.ig = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.ih = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ii = call ptr @qdev_get_gpio_in(ptr noundef %i.ih, i32 noundef 3) #7
  %i.ij = trunc i64 %indvars.iv566 to i32
  %i.ik = add i32 %i.hl, %i.ij
  call void @sysbus_connect_irq(ptr noundef %i.ig, i32 noundef %i.ik, ptr noundef %i.ii) #7
  %i.il = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.im = shl nuw nsw i64 %indvars.iv566, 5
  %7 = add nuw nsw i64 %i.im, 160                 ; 4 uses
  %i.in = trunc i64 %7 to i32
  %8 = or disjoint i32 %i.in, 30
  %i.io = call ptr @qdev_get_gpio_in(ptr noundef %i.il, i32 noundef %8) #7
  %i.ip = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  call void @qdev_connect_gpio_out(ptr noundef %i.ip, i32 noundef 0, ptr noundef %i.io) #7
  %i.iq = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ir = trunc i64 %7 to i32
  %9 = or disjoint i32 %i.ir, 27
  %i.is = call ptr @qdev_get_gpio_in(ptr noundef %i.iq, i32 noundef %9) #7
  %i.it = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  call void @qdev_connect_gpio_out(ptr noundef %i.it, i32 noundef 1, ptr noundef %i.is) #7
  %i.iu = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.iv = trunc i64 %7 to i32
  %10 = or disjoint i32 %i.iv, 26
  %i.iw = call ptr @qdev_get_gpio_in(ptr noundef %i.iu, i32 noundef %10) #7
  %i.ix = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  call void @qdev_connect_gpio_out(ptr noundef %i.ix, i32 noundef 2, ptr noundef %i.iw) #7
  %i.iy = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.iz = trunc i64 %7 to i32
  %11 = or disjoint i32 %i.iz, 29
  %i.ja = call ptr @qdev_get_gpio_in(ptr noundef %i.iy, i32 noundef %11) #7
  %i.jb = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hs, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  call void @qdev_connect_gpio_out(ptr noundef %i.jb, i32 noundef 3, ptr noundef %i.ja) #7
  %exitcond569.not = icmp eq i64 %indvars.iv.next567, %i.hm
  br i1 %exitcond569.not, label %.thread, label %bb.ae, !llvm.loop !13

bb.af:                                            ; preds = %bb.ac
  %i.jc = getelementptr inbounds nuw i8, ptr %i.e, i64 7447000
  %i.jd = load ptr, ptr %i.jc, align 8
  %.not481 = icmp eq ptr %i.jd, null
  br i1 %.not481, label %bb.ag, label %.preheader501.split.us

.thread:                                          ; preds = %bb.ae
  %i.je = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.hg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  call void @sysbus_mmio_map(ptr noundef %i.je, i32 noundef 0, i64 noundef 4177526784) #7
  %i.jf = getelementptr inbounds nuw i8, ptr %i.e, i64 7447000
  %i.jg = load ptr, ptr %i.jf, align 8
  %.not481611 = icmp eq ptr %i.jg, null
  br i1 %.not481611, label %bb.ag, label %.preheader501.split.preheader

.preheader501.split.preheader:                    ; preds = %.thread
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 646048
  %i.ji = getelementptr inbounds nuw i8, ptr %i.e, i64 627104
  br label %.preheader501.split

.preheader501.split.us:                           ; preds = %bb.af, %.preheader501.split.us
  %indvars.iv573 = phi i64 [ %indvars.iv.next574, %.preheader501.split.us ], [ 0, %bb.af ] ; 2 uses
  %i.jj = phi i32 [ %i.jn, %.preheader501.split.us ], [ 0, %bb.af ]
  %i.jk = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.jl = call ptr @qdev_get_gpio_in(ptr noundef %i.jk, i32 noundef %i.jj) #7
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv573
  store ptr %i.jl, ptr %i.jm, align 8
  %indvars.iv.next574 = add nuw nsw i64 %indvars.iv573, 1 ; 3 uses
  %i.jn = trunc nuw i64 %indvars.iv.next574 to i32
  %exitcond575.not = icmp eq i64 %indvars.iv.next574, 160
  br i1 %exitcond575.not, label %.preheader499, label %.preheader501.split.us, !llvm.loop !14

bb.ag:                                            ; preds = %.thread, %bb.af
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.57, i32 noundef 678, ptr noundef nonnull @__func__.xlnx_zynqmp_realize, ptr noundef nonnull @.str.74, ptr noundef nonnull %spec.select) #7
  br label %.critedge

.preheader499:                                    ; preds = %.preheader501.split, %.preheader501.split.us
  %i.jo = getelementptr inbounds nuw i8, ptr %i.e, i64 735808
  %i.jp = getelementptr inbounds nuw i8, ptr %i.e, i64 947456
  br label %bb.ah

.preheader501.split:                              ; preds = %.preheader501.split.preheader, %.preheader501.split
  %indvars.iv570 = phi i64 [ 0, %.preheader501.split.preheader ], [ %indvars.iv.next571, %.preheader501.split ] ; 3 uses
  %i.jq = phi i32 [ 0, %.preheader501.split.preheader ], [ %i.ka, %.preheader501.split ] ; 2 uses
  %i.jr = getelementptr inbounds nuw [288 x i8], ptr %i.jh, i64 %indvars.iv570
  %i.js = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.jr, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7 ; 5 uses
  call void @qdev_prop_set_uint16(ptr noundef %i.js, ptr noundef nonnull @.str.75, i16 noundef zeroext 2) #7
  %i.jt = call zeroext i1 @qdev_realize(ptr noundef %i.js, ptr noundef null, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.ju = call ptr @qdev_get_gpio_in(ptr noundef %i.js, i32 noundef 0) #7
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv570
  store ptr %i.ju, ptr %i.jv, align 8
  %i.jw = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.jx = call ptr @qdev_get_gpio_in(ptr noundef %i.jw, i32 noundef %i.jq) #7
  call void @qdev_connect_gpio_out(ptr noundef %i.js, i32 noundef 0, ptr noundef %i.jx) #7
  %i.jy = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ji, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.jz = call ptr @qdev_get_gpio_in(ptr noundef %i.jy, i32 noundef %i.jq) #7
  call void @qdev_connect_gpio_out(ptr noundef %i.js, i32 noundef 1, ptr noundef %i.jz) #7
  %indvars.iv.next571 = add nuw nsw i64 %indvars.iv570, 1 ; 3 uses
  %i.ka = trunc nuw i64 %indvars.iv.next571 to i32
  %exitcond572.not = icmp eq i64 %indvars.iv.next571, 160
  br i1 %exitcond572.not, label %.preheader499, label %.preheader501.split, !llvm.loop !14

.preheader497:                                    ; preds = %bb.ai
  %i.kb = getelementptr inbounds nuw i8, ptr %i.e, i64 948320 ; 4 uses
  %i.kc = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kb, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.kd = call ptr @serial_hd(i32 noundef 0) #7
  call void @qdev_prop_set_chr(ptr noundef %i.kc, ptr noundef nonnull @.str.78, ptr noundef %i.kd) #7
  %i.ke = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kb, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.kf = call zeroext i1 @sysbus_realize(ptr noundef %i.ke, ptr noundef %1) #7
  br i1 %i.kf, label %bb.aj, label %.critedge

bb.ah:                                            ; preds = %.preheader499, %bb.ai
  %indvars.iv576 = phi i64 [ 0, %.preheader499 ], [ %indvars.iv.next577, %bb.ai ] ; 5 uses
  %i.kg = getelementptr inbounds nuw [52912 x i8], ptr %i.jo, i64 %indvars.iv576 ; 8 uses
  %i.kh = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ki = call zeroext i1 @qemu_configure_nic_device(ptr noundef %i.kh, i1 noundef zeroext true, ptr noundef null) #7 ; 0 uses
  %i.kj = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.63, i64 noundef 1074200838, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.kk = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.76, i64 noundef 23, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.kl = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.77, i64 noundef 2, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.km = getelementptr inbounds nuw [216 x i8], ptr %i.jp, i64 %indvars.iv576 ; 5 uses
  %i.kn = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.km, ptr noundef nonnull @.str.75, i64 noundef 2, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.ko = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.km, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.kp = call zeroext i1 @qdev_realize(ptr noundef %i.ko, ptr noundef null, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.kq = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.km, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr @gem_intr, i64 %indvars.iv576
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.kt
  %i.kv = load ptr, ptr %i.ku, align 8
  call void @qdev_connect_gpio_out(ptr noundef %i.kq, i32 noundef 0, ptr noundef %i.kv) #7
  %i.kw = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.kx = call zeroext i1 @sysbus_realize(ptr noundef %i.kw, ptr noundef %1) #7
  br i1 %i.kx, label %bb.ai, label %.critedge

bb.ai:                                            ; preds = %bb.ah
  %i.ky = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr @gem_addr, i64 %indvars.iv576
  %i.la = load i64, ptr %i.kz, align 8
  call void @sysbus_mmio_map(ptr noundef %i.ky, i32 noundef 0, i64 noundef %i.la) #7
  %i.lb = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.lc = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.km, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ld = call ptr @qdev_get_gpio_in(ptr noundef %i.lc, i32 noundef 0) #7
  call void @sysbus_connect_irq(ptr noundef %i.lb, i32 noundef 0, ptr noundef %i.ld) #7
  %i.le = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.lf = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.km, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.lg = call ptr @qdev_get_gpio_in(ptr noundef %i.lf, i32 noundef 1) #7
  call void @sysbus_connect_irq(ptr noundef %i.le, i32 noundef 1, ptr noundef %i.lg) #7
  %indvars.iv.next577 = add nuw nsw i64 %indvars.iv576, 1 ; 2 uses
  %exitcond579.not = icmp eq i64 %indvars.iv.next577, 4
  br i1 %exitcond579.not, label %.preheader497, label %bb.ah, !llvm.loop !15

bb.aj:                                            ; preds = %.preheader497
  %i.lh = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kb, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  call void @sysbus_mmio_map(ptr noundef %i.lh, i32 noundef 0, i64 noundef 4278190080) #7
  %i.li = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.kb, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.lj = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.lk = load ptr, ptr %i.lj, align 8
  call void @sysbus_connect_irq(ptr noundef %i.li, i32 noundef 0, ptr noundef %i.lk) #7
  %i.ll = getelementptr inbounds nuw i8, ptr %i.e, i64 949616 ; 4 uses
  %i.lm = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ll, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ln = call ptr @serial_hd(i32 noundef 1) #7
  call void @qdev_prop_set_chr(ptr noundef %i.lm, ptr noundef nonnull @.str.78, ptr noundef %i.ln) #7
  %i.lo = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ll, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.lp = call zeroext i1 @sysbus_realize(ptr noundef %i.lo, ptr noundef %1) #7
  br i1 %i.lp, label %.preheader496, label %.critedge

.preheader496:                                    ; preds = %bb.aj
  %i.lq = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ll, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  call void @sysbus_mmio_map(ptr noundef %i.lq, i32 noundef 0, i64 noundef 4278255616) #7
  %i.lr = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ll, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.ls = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.lt = load ptr, ptr %i.ls, align 16
  call void @sysbus_connect_irq(ptr noundef %i.lr, i32 noundef 0, ptr noundef %i.lt) #7
  %i.lu = getelementptr inbounds nuw i8, ptr %i.e, i64 950912 ; 5 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.e, i64 7447016
  %i.lw = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.79, i64 noundef 24000000, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.lx = load ptr, ptr %i.lv, align 8
  %i.ly = call zeroext i1 @object_property_set_link(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.80, ptr noundef %i.lx, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.lz = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.ma = call zeroext i1 @sysbus_realize(ptr noundef %i.lz, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.mb = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not482 = icmp eq ptr %i.mb, null
  br i1 %.not482, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.preheader496
  %.lcssa = phi ptr [ %i.mb, %.preheader496 ], [ %i.mn, %bb.al ]
  call void @error_propagate(ptr noundef %1, ptr noundef nonnull %.lcssa) #7
  br label %.critedge

bb.al:                                            ; preds = %.preheader496
  %i.mc = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  call void @sysbus_mmio_map(ptr noundef %i.mc, i32 noundef 0, i64 noundef 4278583296) #7
  %i.md = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.lu, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.me = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.mf = load ptr, ptr %i.me, align 8
  call void @sysbus_connect_irq(ptr noundef %i.md, i32 noundef 0, ptr noundef %i.mf) #7
  %i.mg = getelementptr inbounds nuw i8, ptr %i.e, i64 953376 ; 5 uses
  %i.mh = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.mg, ptr noundef nonnull @.str.79, i64 noundef 24000000, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.e, i64 7447024
  %i.mj = load ptr, ptr %i.mi, align 16
  %i.mk = call zeroext i1 @object_property_set_link(ptr noundef nonnull %i.mg, ptr noundef nonnull @.str.80, ptr noundef %i.mj, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.ml = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.mg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.mm = call zeroext i1 @sysbus_realize(ptr noundef %i.ml, ptr noundef nonnull %i.b) #7 ; 0 uses
  %i.mn = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not482.1 = icmp eq ptr %i.mn, null
  br i1 %.not482.1, label %bb.am, label %bb.ak

bb.am:                                            ; preds = %bb.al
  %i.mo = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.mg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  call void @sysbus_mmio_map(ptr noundef %i.mo, i32 noundef 0, i64 noundef 4278648832) #7
  %i.mp = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.mg, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.mq = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.mr = load ptr, ptr %i.mq, align 16
  call void @sysbus_connect_irq(ptr noundef %i.mp, i32 noundef 0, ptr noundef %i.mr) #7
  %i.ms = getelementptr inbounds nuw i8, ptr %i.e, i64 955840 ; 4 uses
  %i.mt = call zeroext i1 @object_property_set_int(ptr noundef nonnull %i.ms, ptr noundef nonnull @.str.81, i64 noundef 2, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.mu = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ms, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.mv = call zeroext i1 @sysbus_realize(ptr noundef %i.mu, ptr noundef %1) #7
  br i1 %i.mv, label %bb.an, label %.critedge

bb.an:                                            ; preds = %bb.am
  %i.mw = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ms, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  call void @sysbus_mmio_map(ptr noundef %i.mw, i32 noundef 0, i64 noundef 4245422080) #7
  %i.mx = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.ms, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 1064
  %i.mz = load ptr, ptr %i.my, align 8
  call void @sysbus_connect_irq(ptr noundef %i.mx, i32 noundef 0, ptr noundef %i.mz) #7
  %i.na = getelementptr inbounds nuw i8, ptr %i.e, i64 957264 ; 6 uses
  %i.nb = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.na, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7 ; 2 uses
  %i.nc = call zeroext i1 @object_property_set_uint(ptr noundef nonnull %i.na, ptr noundef nonnull @.str.82, i64 noundef 3, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.nd = call zeroext i1 @object_property_set_uint(ptr noundef nonnull %i.na, ptr noundef nonnull @.str.83, i64 noundef 44011468121217, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.ne = call zeroext i1 @object_property_set_uint(ptr noundef nonnull %i.na, ptr noundef nonnull @.str.84, i64 noundef 1, ptr noundef nonnull @error_abort) #7 ; 0 uses
  %i.nf = call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.na, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.ng = call zeroext i1 @sysbus_realize(ptr noundef %i.nf, ptr noundef %1) #7
  br i1 %i.ng, label %bb.ao, label %.critedge

end_hunk_0
