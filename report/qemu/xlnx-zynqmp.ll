Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/xlnx-zynqmp?download=true
inline.NumInlined: 146
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@xlnx_zynqmp_realize:bb.a
  %.not533 = icmp eq i32 %i.h, 0                  ; 3 uses
  br i1 %.not533, label %.loopexit506, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  %wide.trip.count = zext nneg i32 %i.i to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [96928 x i8], ptr %i.s, i64 %indvars.iv
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.51, ptr noundef nonnull %i.t, i64 noundef 96928, ptr noundef nonnull @.str.52) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.b
  %.not478 = icmp slt i32 %i.j, 1
  br i1 %.not478, label %.loopexit506, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 627104
  %i.v = tail call ptr @gic_class_name() #7
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.u, i64 noundef 18944, ptr noundef %i.v) #7
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 646048
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.d
  %indvars.iv546 = phi i64 [ 0, %bb.c ], [ %indvars.iv.next547, %bb.d ] ; 3 uses
  %i.x = trunc nuw i64 %indvars.iv546 to i32
  %i.y = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.54, i32 noundef %i.x) #7 ; 2 uses
  %i.z = getelementptr inbounds nuw [288 x i8], ptr %i.w, i64 %indvars.iv546
  tail call void @object_initialize_child_internal(ptr noundef %0, ptr noundef %i.y, ptr noundef nonnull %i.z, i64 noundef 288, ptr noundef nonnull @.str.55) #7
  tail call void @g_free(ptr noundef %i.y) #7
  %indvars.iv.next547 = add nuw nsw i64 %indvars.iv546, 1 ; 2 uses
  %exitcond549.not = icmp eq i64 %indvars.iv.next547, 160
  br i1 %exitcond549.not, label %.loopexit506, label %bb.d, !llvm.loop !8

.loopexit506:                                     ; preds = %bb.d, %bb.a, %._crit_edge
  %.not478610 = phi i1 [ true, %bb.a ], [ true, %._crit_edge ], [ false, %bb.d ] ; 2 uses
  %i.aa = icmp ugt i64 %i.q, 2147483648
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.loopexit506
  %i.ab = icmp ult i64 %i.q, 36507222017
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef 489, ptr noundef nonnull @__PRETTY_FUNCTION__.xlnx_zynqmp_realize) #8
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ac = add nsw i64 %i.q, -2147483648
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 693504 ; 2 uses
  %i.ae = load ptr, ptr %i.o, align 16
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ad, ptr noundef %0, ptr noundef nonnull @.str.58, ptr noundef %i.ae, i64 noundef 2147483648, i64 noundef %i.ac) #7
  %i.af = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.af, i64 noundef 34359738368, ptr noundef nonnull %i.ad) #7
  br label %bb.j

bb.h:                                             ; preds = %.loopexit506
  %.not479 = icmp eq i64 %i.q, 0
  br i1 %.not479, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.59, ptr noundef nonnull @.str.57, i32 noundef 501, ptr noundef nonnull @__PRETTY_FUNCTION__.xlnx_zynqmp_realize) #8
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.0460 = phi i64 [ 2147483648, %bb.g ], [ %i.q, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 693232 ; 2 uses
  %i.ah = load ptr, ptr %i.o, align 16
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ag, ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %i.ah, i64 noundef 0, i64 noundef %.0460) #7
  %i.ai = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.ai, i64 noundef 0, ptr noundef nonnull %i.ag) #7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 692128 ; 2 uses
  %i.ak = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 0) #7 ; 2 uses
  %i.al = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.aj, ptr noundef null, ptr noundef %i.ak, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.am = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.am, i64 noundef 4294705152, ptr noundef nonnull %i.aj) #7
  tail call void @g_free(ptr noundef %i.ak) #7
  %i.an = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 1) #7 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 692400 ; 2 uses
  %i.ap = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.ao, ptr noundef null, ptr noundef %i.an, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.aq = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.aq, i64 noundef 4294770688, ptr noundef nonnull %i.ao) #7
  tail call void @g_free(ptr noundef %i.an) #7
  %i.ar = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 2) #7 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 692672 ; 2 uses
  %i.at = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.as, ptr noundef null, ptr noundef %i.ar, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.au = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.au, i64 noundef 4294836224, ptr noundef nonnull %i.as) #7
  tail call void @g_free(ptr noundef %i.ar) #7
  %i.av = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.61, i32 noundef 3) #7 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 692944 ; 2 uses
  %i.ax = tail call zeroext i1 @memory_region_init_ram(ptr noundef nonnull %i.aw, ptr noundef null, ptr noundef %i.av, i64 noundef 65536, ptr noundef nonnull @error_fatal) #7 ; 0 uses
  %i.ay = tail call ptr @get_system_memory() #7
  tail call void @memory_region_add_subregion(ptr noundef %i.ay, i64 noundef 4294901760, ptr noundef nonnull %i.aw) #7
  tail call void @g_free(ptr noundef %i.av) #7
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 582048 ; 19 uses
  %i.ba = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.ba, ptr noundef nonnull @.str.62, i32 noundef 192) #7
  %i.bb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bb, ptr noundef nonnull @.str.63, i32 noundef 2) #7
  %i.bc = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bc, ptr noundef nonnull @.str.64, i32 noundef %i.i) #7
  %i.bd = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 7447008 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 16, !range !20, !noundef !21
  %i.bg = trunc nuw i8 %i.bf to i1
  tail call void @qdev_prop_set_bit(ptr noundef %i.bd, ptr noundef nonnull @.str.65, i1 noundef zeroext %i.bg) #7
  %i.bh = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.e, i64 7447009 ; 4 uses
  %i.bj = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.bk = trunc nuw i8 %i.bj to i1
  tail call void @qdev_prop_set_bit(ptr noundef %i.bh, ptr noundef nonnull @.str.66, i1 noundef zeroext %i.bk) #7
  br i1 %.not478610, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 627104 ; 4 uses
  %i.bm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bm, ptr noundef nonnull @.str.62, i32 noundef 192) #7
  %i.bn = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bn, ptr noundef nonnull @.str.63, i32 noundef 1) #7
  %i.bo = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bo, ptr noundef nonnull @.str.64, i32 noundef %i.l) #7
  %i.bp = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.bl, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.bp, ptr noundef nonnull @.str.67, i32 noundef 4) #7
  br label %bb.l

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
  %indvars.iv558 = phi i64 [ 0, %.preheader504 ], [ %indvars.iv.next559, %.loopexit ] ; 4 uses
  %i.cv = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @xlnx_zynqmp_gic_regions, i64 %indvars.iv558 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4            ; 16 uses
  %2 = trunc i64 %indvars.iv558 to i8
  %3 = add i8 %2, -3
  %4 = icmp ult i8 %3, 3
  br i1 %4, label %bb.s, label %.loopexit.loopexit

bb.s:                                             ; preds = %bb.r
  %i.cz = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.s, %bb.r
  %i.db = load i32, ptr %i.cw, align 16
  %i.dc = tail call ptr @sysbus_mmio_get_region(ptr noundef %i.cv, i32 noundef %i.db) #7 ; 16 uses
  %i.dd = getelementptr inbounds nuw [4352 x i8], ptr %i.cq, i64 %indvars.iv558 ; 17 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.df = load i32, ptr %i.de, align 8
  %i.dg = zext i32 %i.df to i64                   ; 16 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dd, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.dh = zext i32 %i.cy to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dh, ptr noundef nonnull %i.dd) #7
  %i.di = add i32 %i.cy, 4096
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 272 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dj, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.dk = zext i32 %i.di to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dk, ptr noundef nonnull %i.dj) #7
  %i.dl = add i32 %i.cy, 8192
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dd, i64 544 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dm, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.dn = zext i32 %i.dl to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dn, ptr noundef nonnull %i.dm) #7
  %i.do = add i32 %i.cy, 12288
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dd, i64 816 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dp, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.dq = zext i32 %i.do to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dq, ptr noundef nonnull %i.dp) #7
  %i.dr = add i32 %i.cy, 16384
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dd, i64 1088 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ds, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.dt = zext i32 %i.dr to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dt, ptr noundef nonnull %i.ds) #7
  %i.du = add i32 %i.cy, 20480
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 1360 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dv, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.dw = zext i32 %i.du to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dw, ptr noundef nonnull %i.dv) #7
  %i.dx = add i32 %i.cy, 24576
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dd, i64 1632 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.dy, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.dz = zext i32 %i.dx to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.dz, ptr noundef nonnull %i.dy) #7
  %i.ea = add i32 %i.cy, 28672
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dd, i64 1904 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.eb, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.ec = zext i32 %i.ea to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ec, ptr noundef nonnull %i.eb) #7
  %i.ed = add i32 %i.cy, 32768
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dd, i64 2176 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ee, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.ef = zext i32 %i.ed to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ef, ptr noundef nonnull %i.ee) #7
  %i.eg = add i32 %i.cy, 36864
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dd, i64 2448 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.eh, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.ei = zext i32 %i.eg to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ei, ptr noundef nonnull %i.eh) #7
  %i.ej = add i32 %i.cy, 40960
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dd, i64 2720 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ek, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.el = zext i32 %i.ej to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.el, ptr noundef nonnull %i.ek) #7
  %i.em = add i32 %i.cy, 45056
  %i.en = getelementptr inbounds nuw i8, ptr %i.dd, i64 2992 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.en, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.eo = zext i32 %i.em to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.eo, ptr noundef nonnull %i.en) #7
  %i.ep = add i32 %i.cy, 49152
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dd, i64 3264 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.eq, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.er = zext i32 %i.ep to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.er, ptr noundef nonnull %i.eq) #7
  %i.es = add i32 %i.cy, 53248
  %i.et = getelementptr inbounds nuw i8, ptr %i.dd, i64 3536 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.et, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.eu = zext i32 %i.es to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.eu, ptr noundef nonnull %i.et) #7
  %i.ev = add i32 %i.cy, 57344
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dd, i64 3808 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ew, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.ex = zext i32 %i.ev to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.ex, ptr noundef nonnull %i.ew) #7
  %i.ey = add i32 %i.cy, 61440
  %i.ez = getelementptr inbounds nuw i8, ptr %i.dd, i64 4080 ; 2 uses
  tail call void @memory_region_init_alias(ptr noundef nonnull %i.ez, ptr noundef nonnull %i.e, ptr noundef nonnull @.str.73, ptr noundef %i.dc, i64 noundef %i.dg, i64 noundef 4096) #7
  %i.fa = zext i32 %i.ey to i64
  tail call void @memory_region_add_subregion(ptr noundef %i.f, i64 noundef %i.fa, ptr noundef nonnull %i.ez) #7
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.s
  %indvars.iv.next559 = add nuw nsw i64 %indvars.iv558, 1 ; 2 uses
  %exitcond561.not = icmp eq i64 %indvars.iv.next559, 6
  br i1 %exitcond561.not, label %.preheader503, label %bb.r, !llvm.loop !10

bb.t:                                             ; preds = %.lr.ph518, %bb.v
  %indvars.iv562 = phi i64 [ 0, %.lr.ph518 ], [ %indvars.iv.next563, %bb.v ] ; 2 uses
  %i.fb = phi i32 [ 0, %.lr.ph518 ], [ %i.gr, %bb.v ] ; 6 uses
  %i.fc = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fd = getelementptr inbounds nuw [96928 x i8], ptr %i.cr, i64 %indvars.iv562 ; 8 uses
  %i.fe = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ff = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fe, i32 noundef 0) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fc, i32 noundef %i.fb, ptr noundef %i.ff) #7
  %i.fg = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fh = add nuw nsw i32 %i.fb, %i.i
  %i.fi = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fj = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fi, i32 noundef 1) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fg, i32 noundef %i.fh, ptr noundef %i.fj) #7
  %i.fk = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fl = add nuw nsw i32 %i.fb, %i.cs
  %i.fm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fn = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fm, i32 noundef 2) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fk, i32 noundef %i.fl, ptr noundef %i.fn) #7
  %i.fo = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.fp = add nuw nsw i32 %i.fb, %i.ct
  %i.fq = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fr = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fq, i32 noundef 3) #7
  tail call void @sysbus_connect_irq(ptr noundef %i.fo, i32 noundef %i.fp, ptr noundef %i.fr) #7
  %i.fs = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.ft = shl nuw nsw i32 %i.fb, 5
  %i.fu = add nuw nsw i32 %i.ft, 160              ; 5 uses
  %i.fv = or disjoint i32 %i.fu, 30
  %i.fw = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fs, i32 noundef %i.fv) #7
  %i.fx = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.fx, i32 noundef 0, ptr noundef %i.fw) #7
  %i.fy = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.fz = or disjoint i32 %i.fu, 27
  %i.ga = tail call ptr @qdev_get_gpio_in(ptr noundef %i.fy, i32 noundef %i.fz) #7
  %i.gb = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.gb, i32 noundef 1, ptr noundef %i.ga) #7
  %i.gc = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.gd = or disjoint i32 %i.fu, 26
  %i.ge = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gc, i32 noundef %i.gd) #7
  %i.gf = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.gf, i32 noundef 2, ptr noundef %i.ge) #7
  %i.gg = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.gh = or disjoint i32 %i.fu, 29
  %i.gi = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gg, i32 noundef %i.gh) #7
  %i.gj = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.fd, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_connect_gpio_out(ptr noundef %i.gj, i32 noundef 3, ptr noundef %i.gi) #7
  %i.gk = load i8, ptr %i.bi, align 1, !range !20, !noundef !21
  %i.gl = trunc nuw i8 %i.gk to i1
  br i1 %i.gl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.gm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  %i.gn = or disjoint i32 %i.fu, 25
  %i.go = tail call ptr @qdev_get_gpio_in(ptr noundef %i.gm, i32 noundef %i.gn) #7
  %i.gp = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.az, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.99, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #7
  %i.gq = add nuw nsw i32 %i.fb, %i.cu
  tail call void @sysbus_connect_irq(ptr noundef %i.gp, i32 noundef %i.gq, ptr noundef %i.go) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.next563 = add nuw nsw i64 %indvars.iv562, 1 ; 3 uses
  %i.gr = trunc nuw nsw i64 %indvars.iv.next563 to i32
  %exitcond565.not = icmp eq i64 %indvars.iv.next563, %wide.trip.count564
  br i1 %exitcond565.not, label %._crit_edge519, label %bb.t, !llvm.loop !11

._crit_edge519:                                   ; preds = %bb.v, %.preheader503
  %.val489 = load i32, ptr %i.g, align 8
  %i.gs = add i32 %.val489, -4                    ; 2 uses
  %.not.i = icmp slt i32 %i.gs, 1
  br i1 %.not.i, label %xlnx_zynqmp_create_rpu.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge519
  %i.gt = tail call i32 @llvm.umin.i32(i32 %i.gs, i32 2)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.e, i64 312 ; 4 uses
  tail call void @object_initialize_child_internal(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.gu, i64 noundef 160, ptr noundef nonnull @.str.4) #7
  %i.gv = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.gu, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.40, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #7
  tail call void @qdev_prop_set_uint32(ptr noundef %i.gv, ptr noundef nonnull @.str.5, i32 noundef 1) #7
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 388192
  %i.gx = getelementptr inbounds nuw i8, ptr %i.e, i64 7447000
  %wide.trip.count.i = zext nneg i32 %i.gt to i64
  br label %bb.x

bb.w:                                             ; preds = %bb.aa
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.x, !llvm.loop !12

bb.x:                                             ; preds = %bb.w, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.w ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [96928 x i8], ptr %i.gw, i64 %indvars.iv.i ; 6 uses
  call void @object_initialize_child_internal(ptr noundef nonnull %i.gu, ptr noundef nonnull @.str.102, ptr noundef nonnull %i.gy, i64 noundef 96928, ptr noundef nonnull @.str.103) #7
  %i.gz = call ptr @object_get_canonical_path_component(ptr noundef nonnull %i.gy) #7
  %i.ha = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.gz, ptr noundef nonnull readonly dereferenceable(1) %spec.select) #9
  %.not28.i = icmp eq i32 %i.ha, 0
  br i1 %.not28.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hb = call zeroext i1 @object_property_set_bool(ptr noundef nonnull %i.gy, ptr noundef nonnull @.str.68, i1 noundef zeroext true, ptr noundef nonnull @error_abort) #7 ; 0 uses
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  store ptr %i.gy, ptr %i.gx, align 8
end_hunk_0
