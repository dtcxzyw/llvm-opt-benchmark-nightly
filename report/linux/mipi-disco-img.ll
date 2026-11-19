Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/mipi-disco-img?download=true
inline.NumInlined: 62
inline.NumDeleted: 37
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@acpi_mipi_init_crs_csi2_swnodes:bb.a
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  store ptr %i.i, ptr %.sroa.3.0..sroa_idx.i, align 8
  %i.ar = getelementptr i8, ptr %i.i, i64 216     ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8
  %.not117.i = icmp eq i32 %i.as, 0
  br i1 %.not117.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r
  %i.at = getelementptr i8, ptr %i.i, i64 208     ; 2 uses
  %i.au = getelementptr i8, ptr %i.l, i64 8       ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %fwnode_handle_put.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %fwnode_handle_put.exit.i ] ; 4 uses
  %i.av = load ptr, ptr %i.at, align 8
  %i.aw = getelementptr [624 x i8], ptr %i.av, i64 %indvars.iv.i ; 18 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 144    ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !annotation !12
  %i.az = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.c, i64 noundef 17, ptr noundef @.str.29, ptr noundef @.str.30, i32 noundef %i.ay) #11
  %i.ba = icmp ugt i32 %i.az, 16
  br i1 %i.ba, label %get_mipi_port_handle.exit.thread.i, label %get_mipi_port_handle.exit.i

get_mipi_port_handle.exit.thread.i:               ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  br label %bb.t

get_mipi_port_handle.exit.i:                      ; preds = %bb.s
  %i.bb = call ptr @fwnode_get_named_child_node(ptr noundef %i.m, ptr noundef nonnull %i.c) #11 ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  %.not109.i = icmp eq ptr %i.bb, null
  br i1 %.not109.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %get_mipi_port_handle.exit.i, %get_mipi_port_handle.exit.thread.i
  %i.bc = load i32, ptr %i.ax, align 8
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %i.k, ptr noundef @.str.27, i32 noundef %i.bc) #11
  br label %fwnode_handle_put.exit.i

bb.u:                                             ; preds = %get_mipi_port_handle.exit.i
  %.val.i.i = load ptr, ptr %i.au, align 8        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bd = load i32, ptr %i.ax, align 8
  %i.be = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %i.aw, i64 noundef 9, ptr noundef @.str.14, i32 noundef %i.bd) #11
  %i.bf = icmp ugt i32 %i.be, 8
  br i1 %i.bf, label %init_csi2_port.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 0, ptr %i.a, align 8, !annotation !12
  %i.bg = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.bh = trunc nuw i64 %indvars.iv.i to i32
  %i.bi = shl i32 %i.bh, 1                        ; 2 uses
  %i.bj = or disjoint i32 %i.bi, 1
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = getelementptr [24 x i8], ptr %i.bg, i64 %i.bk ; 3 uses
  %i.bm = getelementptr i8, ptr %i.aw, i64 152
  store ptr %i.aw, ptr %i.bl, align 8
  %.sroa.241.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  store ptr %i.bg, ptr %.sroa.241.0..sroa_idx.i.i, align 8
  %.sroa.342.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store ptr %i.bm, ptr %.sroa.342.0..sroa_idx.i.i, align 8
  %i.bn = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.31, ptr noundef nonnull %i.a, i64 noundef 1) #11
  %.not.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr i8, ptr %i.aw, i64 312
  %.sroa.4134.0..sroa_idx.i.i = getelementptr i8, ptr %i.aw, i64 329
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4134.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  %i.bp = load i8, ptr %i.a, align 8
  %i.bq = zext i8 %i.bp to i32
  store ptr @.str.32, ptr %i.bo, align 8
  %.sroa.2.0..sroa_idx132.i.i = getelementptr i8, ptr %i.aw, i64 320
  store i64 4, ptr %.sroa.2.0..sroa_idx132.i.i, align 8
  %.sroa.3.0..sroa_idx133.i.i = getelementptr i8, ptr %i.aw, i64 328
  store i8 1, ptr %.sroa.3.0..sroa_idx133.i.i, align 8
  %.sroa.5.0..sroa_idx135.i.i = getelementptr i8, ptr %i.aw, i64 332
  store i32 2, ptr %.sroa.5.0..sroa_idx135.i.i, align 4
  %.sroa.6.0..sroa_idx136.i.i = getelementptr i8, ptr %i.aw, i64 336
  store i32 %i.bq, ptr %.sroa.6.0..sroa_idx136.i.i, align 8
  %.sroa.7.0..sroa_idx.i.i = getelementptr i8, ptr %i.aw, i64 340
  store i32 0, ptr %.sroa.7.0..sroa_idx.i.i, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.1.i.i = phi i32 [ 3, %bb.v ], [ 4, %bb.w ]    ; 4 uses
  %i.br = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.33, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.bt = icmp samesign ugt i32 %i.br, 8
  br i1 %i.bt, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val.i.i, ptr noundef @.str.34, i32 noundef %i.br) #11
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.099.i.i = phi i32 [ 8, %bb.z ], [ %i.br, %bb.y ] ; 4 uses
  %i.bu = zext nneg i32 %.099.i.i to i64          ; 4 uses
  %i.bv = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.33, ptr noundef nonnull %i.a, i64 noundef %i.bu) #11
  %.not111.i.i = icmp eq i32 %i.bv, 0
  br i1 %.not111.i.i, label %.preheader114.i.i, label %bb.ad

.preheader114.i.i:                                ; preds = %bb.aa
  %i.bw = getelementptr i8, ptr %i.aw, i64 12     ; 6 uses
  %xtraiter = and i64 %i.bu, 3                    ; 3 uses
  %i.bx = icmp samesign ult i32 %.099.i.i, 4
  br i1 %i.bx, label %.epil.preheader, label %.preheader114.i.i.new

.preheader114.i.i.new:                            ; preds = %.preheader114.i.i
  %unroll_iter = and i64 %i.bu, 12
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.preheader114.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.preheader114.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.ab ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader114.i.i.new ], [ %niter.next.3, %bb.ab ]
  %i.by = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i
  %i.bz = load i8, ptr %i.by, align 4
  %i.ca = zext i8 %i.bz to i32
  %i.cb = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.i.i
  store i32 %i.ca, ptr %i.cb, align 4
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.cc = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = zext i8 %i.cd to i32
  %i.cf = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i
  store i32 %i.ce, ptr %i.cf, align 4
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.1
  %i.ch = load i8, ptr %i.cg, align 2
  %i.ci = zext i8 %i.ch to i32
  %i.cj = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i.1
  store i32 %i.ci, ptr %i.cj, align 4
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ck = getelementptr i8, ptr %i.a, i64 %indvars.iv.next.i.i.2
  %i.cl = load i8, ptr %i.ck, align 1
  %i.cm = zext i8 %i.cl to i32
  %i.cn = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.next.i.i.2
  store i32 %i.cm, ptr %i.cn, align 4
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ab, !llvm.loop !30

.unr-lcssa:                                       ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader114.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader114.i.i ], [ %indvars.iv.next.i.i.3, %.unr-lcssa ]
  %lcmp.mod29 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod29)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.ac ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ac ]
  %i.co = getelementptr i8, ptr %i.a, i64 %indvars.iv.i.i.epil
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i32
  %i.cr = getelementptr [4 x i8], ptr %i.bw, i64 %indvars.iv.i.i.epil
  store i32 %i.cq, ptr %i.cr, align 4
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ac, !llvm.loop !31

.epilog-lcssa:                                    ; preds = %bb.ac, %.unr-lcssa
  %i.cs = getelementptr i8, ptr %i.aw, i64 216
  %i.ct = add nuw nsw i32 %.1.i.i, 1
  %i.cu = zext nneg i32 %.1.i.i to i64
  %i.cv = getelementptr [32 x i8], ptr %i.cs, i64 %i.cu ; 6 uses
  %i.cw = shl nuw nsw i64 %i.bu, 2
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.425.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.35, ptr %i.cv, align 8
  %.sroa.223.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store i64 %i.cw, ptr %.sroa.223.0..sroa_idx.i.i, align 8
  %.sroa.324.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store i8 0, ptr %.sroa.324.0..sroa_idx.i.i, align 8
  %.sroa.526.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 20
  store i32 2, ptr %.sroa.526.0..sroa_idx.i.i, align 4
  %.sroa.627.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.bw, ptr %.sroa.627.0..sroa_idx.i.i, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %.epilog-lcssa, %bb.aa, %bb.x
  %.1100.i.i = phi i32 [ %.099.i.i, %bb.aa ], [ %.099.i.i, %.epilog-lcssa ], [ 0, %bb.x ]
  %.3.i.i = phi i32 [ %.1.i.i, %bb.aa ], [ %i.ct, %.epilog-lcssa ], [ %.1.i.i, %bb.x ] ; 4 uses
  %i.cx = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.36, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cz = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.da = shl nuw nsw i64 %i.cz, 3                ; 2 uses
  %i.db = add nuw nsw i32 %.1100.i.i, 1           ; 2 uses
  %i.dc = zext nneg i32 %i.db to i64              ; 3 uses
  %i.dd = icmp samesign ult i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val.i.i, ptr noundef @.str.37, i64 noundef %i.da, i32 noundef %i.db) #11
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.de = icmp samesign ugt i32 %i.cx, 8
  br i1 %i.de, label %.thread.i.i, label %.lr.ph.preheader.i.i

.thread.i.i:                                      ; preds = %bb.ag
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val.i.i, ptr noundef @.str.38, i32 noundef %i.cx) #11
  br label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.thread.i.i, %bb.ag
  %.sink.i = phi i64 [ 8, %.thread.i.i ], [ %i.cz, %bb.ag ] ; 4 uses
  %i.df = call i32 @fwnode_property_read_u8_array(ptr noundef nonnull %i.bb, ptr noundef @.str.36, ptr noundef nonnull %i.a, i64 noundef %.sink.i) #11 ; 0 uses
  %i.dg = add nsw i64 %.sink.i, -1
  %xtraiter30 = and i64 %.sink.i, 3               ; 3 uses
  %i.dh = icmp ult i64 %i.dg, 3
  br i1 %i.dh, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter35 = and i64 %.sink.i, 2147483644
  br label %.lr.ph.i.i

.preheader.i.loopexit.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %lcmp.mod32.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod32.not, label %.preheader.i.loopexit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv122.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next123.i.i.3, %.preheader.i.loopexit.i.unr-lcssa ]
  %.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.eo, %.preheader.i.loopexit.i.unr-lcssa ]
  %lcmp.mod34 = icmp ne i64 %xtraiter30, 0
  call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv122.i.i.epil = phi i64 [ %indvars.iv122.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next123.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %i.di = phi i64 [ %.epil.init, %.lr.ph.i.i.epil.preheader ], [ %i.do, %.lr.ph.i.i.epil ]
  %epil.iter31 = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter31.next, %.lr.ph.i.i.epil ]
  %i.dj = getelementptr i8, ptr %i.a, i64 %indvars.iv122.i.i.epil
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = zext i8 %i.dk to i64
  %i.dm = shl nuw nsw i64 %indvars.iv122.i.i.epil, 3
  %i.dn = shl i64 %i.dl, %i.dm
  %i.do = or i64 %i.dn, %i.di                     ; 2 uses
  %indvars.iv.next123.i.i.epil = add nuw nsw i64 %indvars.iv122.i.i.epil, 1
  %epil.iter31.next = add i64 %epil.iter31, 1     ; 2 uses
  %epil.iter31.cmp.not = icmp eq i64 %epil.iter31.next, %xtraiter30
  br i1 %epil.iter31.cmp.not, label %.preheader.i.loopexit.i, label %.lr.ph.i.i.epil, !llvm.loop !32

.preheader.i.loopexit.i:                          ; preds = %.lr.ph.i.i.epil, %.preheader.i.loopexit.i.unr-lcssa
  %.lcssa = phi i64 [ %i.eo, %.preheader.i.loopexit.i.unr-lcssa ], [ %i.do, %.lr.ph.i.i.epil ]
  store i64 %.lcssa, ptr %i.b, align 8
  %i.dp = getelementptr i8, ptr %i.aw, i64 44     ; 2 uses
  br label %arch_test_bit.exit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv122.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next123.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %i.dq = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %i.eo, %.lr.ph.i.i ]
  %niter36 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter36.next.3, %.lr.ph.i.i ]
  %i.dr = getelementptr i8, ptr %i.a, i64 %indvars.iv122.i.i
  %i.ds = load i8, ptr %i.dr, align 4
  %i.dt = zext i8 %i.ds to i64
  %i.du = shl nuw nsw i64 %indvars.iv122.i.i, 3
  %i.dv = shl i64 %i.dt, %i.du
  %i.dw = or i64 %i.dv, %i.dq
  %indvars.iv.next123.i.i = or disjoint i64 %indvars.iv122.i.i, 1 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.a, i64 %indvars.iv.next123.i.i
  %i.dy = load i8, ptr %i.dx, align 1
  %i.dz = zext i8 %i.dy to i64
  %i.ea = shl nuw nsw i64 %indvars.iv.next123.i.i, 3
  %i.eb = shl i64 %i.dz, %i.ea
  %i.ec = or i64 %i.eb, %i.dw
  %indvars.iv.next123.i.i.1 = or disjoint i64 %indvars.iv122.i.i, 2 ; 2 uses
  %i.ed = getelementptr i8, ptr %i.a, i64 %indvars.iv.next123.i.i.1
  %i.ee = load i8, ptr %i.ed, align 2
  %i.ef = zext i8 %i.ee to i64
  %i.eg = shl nuw nsw i64 %indvars.iv.next123.i.i.1, 3
  %i.eh = shl i64 %i.ef, %i.eg
  %i.ei = or i64 %i.eh, %i.ec
  %indvars.iv.next123.i.i.2 = or disjoint i64 %indvars.iv122.i.i, 3 ; 2 uses
  %i.ej = getelementptr i8, ptr %i.a, i64 %indvars.iv.next123.i.i.2
  %i.ek = load i8, ptr %i.ej, align 1
  %i.el = zext i8 %i.ek to i64
  %i.em = shl nuw nsw i64 %indvars.iv.next123.i.i.2, 3
  %i.en = shl i64 %i.el, %i.em
  %i.eo = or i64 %i.en, %i.ei                     ; 3 uses
  %indvars.iv.next123.i.i.3 = add nuw nsw i64 %indvars.iv122.i.i, 4 ; 2 uses
  %niter36.next.3 = add i64 %niter36, 4           ; 2 uses
  %niter36.ncmp.3 = icmp eq i64 %niter36.next.3, %unroll_iter35
  br i1 %niter36.ncmp.3, label %.preheader.i.loopexit.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !33

arch_test_bit.exit.i.i:                           ; preds = %arch_test_bit.exit.i.i, %.preheader.i.loopexit.i
  %indvars.iv127.i.i = phi i64 [ 0, %.preheader.i.loopexit.i ], [ %indvars.iv.next128.i.i, %arch_test_bit.exit.i.i ] ; 3 uses
  %i.ep = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) %i.b, i64 range(i64 0, 9) %indvars.iv127.i.i) #10, !srcloc !38 ; 2 uses
  %i.eq = icmp ult i8 %i.ep, 2
  call void @llvm.assume(i1 %i.eq)
  %i.er = zext nneg i8 %i.ep to i32
  %i.es = getelementptr [4 x i8], ptr %i.dp, i64 %indvars.iv127.i.i
  store i32 %i.er, ptr %i.es, align 4
  %indvars.iv.next128.i.i = add nuw nsw i64 %indvars.iv127.i.i, 1 ; 2 uses
  %exitcond131.not.i.i = icmp eq i64 %indvars.iv.next128.i.i, %i.dc
  br i1 %exitcond131.not.i.i, label %bb.ah, label %arch_test_bit.exit.i.i, !llvm.loop !34

bb.ah:                                            ; preds = %arch_test_bit.exit.i.i
  %i.et = getelementptr i8, ptr %i.aw, i64 216
  %i.eu = add nuw nsw i32 %.3.i.i, 1
  %i.ev = zext nneg i32 %.3.i.i to i64
  %i.ew = getelementptr [32 x i8], ptr %i.et, i64 %i.ev ; 6 uses
  %i.ex = shl nuw nsw i64 %i.dc, 2
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.39, ptr %i.ew, align 8
  %.sroa.23.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store i64 %i.ex, ptr %.sroa.23.0..sroa_idx.i.i, align 8
  %.sroa.34.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store i8 0, ptr %.sroa.34.0..sroa_idx.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 20
  store i32 2, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store ptr %i.dp, ptr %.sroa.6.0..sroa_idx.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af, %bb.ad
  %.5.i.i = phi i32 [ %i.eu, %bb.ah ], [ %.3.i.i, %bb.af ], [ %.3.i.i, %bb.ad ]
  %i.ey = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.ez = add i32 %i.bi, 2
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr [24 x i8], ptr %i.ey, i64 %i.fa ; 3 uses
  %i.fc = getelementptr [24 x i8], ptr %i.ey, i64 %i.bk
  %i.fd = load ptr, ptr %i.at, align 8
  %i.fe = getelementptr [624 x i8], ptr %i.fd, i64 %indvars.iv.i
  %i.ff = getelementptr i8, ptr %i.fe, i64 216
  store ptr @.str.40, ptr %i.fb, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  store ptr %i.fc, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  store ptr %i.ff, ptr %.sroa.3.0..sroa_idx.i.i, align 8
  %i.fg = getelementptr i8, ptr %i.aw, i64 148
  %i.fh = load i8, ptr %i.fg, align 4, !range !39, !noundef !40
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %bb.aj, label %init_csi2_port.exit.i

bb.aj:                                            ; preds = %bb.ai
  %.val113.i.i = load ptr, ptr %i.au, align 8     ; 2 uses
  %i.fj = call i32 @fwnode_property_read_u64_array(ptr noundef nonnull %i.bb, ptr noundef @.str.41, ptr noundef null, i64 noundef 0) #11 ; 4 uses
  %i.fk = icmp slt i32 %i.fj, 1
  br i1 %i.fk, label %init_csi2_port.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fl = icmp samesign ugt i32 %i.fj, 8
  br i1 %i.fl, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val113.i.i, ptr noundef @.str.42, i32 noundef %i.fj) #11
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i.i.i = phi i32 [ 8, %bb.al ], [ %i.fj, %bb.ak ]
  %i.fm = getelementptr i8, ptr %i.aw, i64 80     ; 2 uses
  %i.fn = zext nneg i32 %.0.i.i.i to i64          ; 2 uses
  %i.fo = call i32 @fwnode_property_read_u64_array(ptr noundef nonnull %i.bb, ptr noundef @.str.41, ptr noundef %i.fm, i64 noundef %i.fn) #11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i.i, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %.val113.i.i, ptr noundef @.str.43, i32 noundef %i.fo) #11
  br label %init_csi2_port.exit.i

bb.ao:                                            ; preds = %bb.am
  %i.fp = getelementptr i8, ptr %i.aw, i64 216
  %i.fq = zext nneg i32 %.5.i.i to i64
  %i.fr = getelementptr [32 x i8], ptr %i.fp, i64 %i.fq ; 6 uses
  %i.fs = shl nuw nsw i64 %i.fn, 3
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx.i.i.i, i8 0, i64 3, i1 false)
  store ptr @.str.44, ptr %i.fr, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store i64 %i.fs, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store i8 0, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 20
  store i32 3, ptr %.sroa.5.0..sroa_idx.i.i.i, align 4
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store ptr %i.fm, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8
  br label %init_csi2_port.exit.i

init_csi2_port.exit.i:                            ; preds = %bb.ao, %bb.an, %bb.aj, %bb.ai, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.ft = icmp ugt ptr %i.bb, inttoptr (i64 -4096 to ptr)
  br i1 %i.ft, label %fwnode_handle_put.exit.i, label %bb.ap

bb.ap:                                            ; preds = %init_csi2_port.exit.i
  %i.fu = getelementptr i8, ptr %i.bb, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8            ; 2 uses
  %.not.i110.i = icmp eq ptr %i.fv, null
  br i1 %.not.i110.i, label %fwnode_handle_put.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fw = getelementptr i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8            ; 2 uses
  %.not6.i.i = icmp eq ptr %i.fx, null
  br i1 %.not6.i.i, label %fwnode_handle_put.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void %i.fx(ptr noundef nonnull %i.bb) #11, !inline_history !35
  br label %fwnode_handle_put.exit.i

fwnode_handle_put.exit.i:                         ; preds = %bb.ar, %bb.aq, %bb.ap, %init_csi2_port.exit.i, %bb.t
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.fy = load i32, ptr %i.ar, align 8
  %i.fz = zext i32 %i.fy to i64
  %i.ga = icmp samesign ult i64 %indvars.iv.next.i, %i.fz
  br i1 %i.ga, label %bb.s, label %._crit_edge.i, !llvm.loop !36

._crit_edge.i:                                    ; preds = %fwnode_handle_put.exit.i, %bb.r
  %i.gb = getelementptr i8, ptr %i.i, i64 200
  %i.gc = load ptr, ptr %i.gb, align 8
  %i.gd = call i32 @software_node_register_node_group(ptr noundef %i.gc) #11 ; 2 uses
  %i.ge = icmp slt i32 %i.gd, 0
  br i1 %i.ge, label %bb.as, label %bb.at

bb.as:                                            ; preds = %._crit_edge.i
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.7, ptr noundef %i.k, ptr noundef @.str.28, i32 noundef %i.gd) #11
  br label %init_crs_csi2_swnodes.exit

bb.at:                                            ; preds = %._crit_edge.i
  %i.gf = getelementptr i8, ptr %i.l, i64 584
  store ptr %i.i, ptr %i.gf, align 8
  %i.gg = load ptr, ptr %i.ao, align 8
  %i.gh = call ptr @software_node_fwnode(ptr noundef %i.gg) #11
  store ptr %i.gh, ptr %i.m, align 8
  store ptr null, ptr %i.h, align 8
  br label %init_crs_csi2_swnodes.exit

init_crs_csi2_swnodes.exit:                       ; preds = %bb.b, %bb.c, %bb.q, %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  %.not = icmp eq ptr %.01115, @acpi_mipi_crs_csi2_list
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !37

._crit_edge:                                      ; preds = %init_crs_csi2_swnodes.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @acpi_mipi_crs_csi2_cleanup() local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr @acpi_mipi_crs_csi2_list, align 8 ; 2 uses
  %.not13 = icmp eq ptr %i.a, @acpi_mipi_crs_csi2_list
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %acpi_mipi_del_crs_csi2.exit
  %.014 = phi ptr [ %.01115, %acpi_mipi_del_crs_csi2.exit ], [ %i.a, %bb.a ] ; 7 uses
  %.01115 = load ptr, ptr %.014, align 8          ; 4 uses
  %i.b = getelementptr i8, ptr %.014, i64 8       ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr i8, ptr %.01115, i64 8
  store ptr %i.c, ptr %i.d, align 8
  store volatile ptr %.01115, ptr %i.c, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.014, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.b, align 8
  %i.e = getelementptr i8, ptr %.014, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 @acpi_detach_data(ptr noundef %i.f, ptr noundef @acpi_mipi_data_tag) #11 ; 0 uses
  %i.h = getelementptr i8, ptr %.014, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  tail call void @kfree(ptr noundef %i.i) #11
  %i.j = getelementptr i8, ptr %.014, i64 32      ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not15.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not15.i.i, label %acpi_mipi_del_crs_csi2.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %.lr.ph.i.i
  %.016.i.i = phi ptr [ %.014.i.i, %.lr.ph.i.i ], [ %i.k, %.lr.ph ] ; 4 uses
  %.014.i.i = load ptr, ptr %.016.i.i, align 8    ; 4 uses
  %i.l = getelementptr i8, ptr %.016.i.i, i64 8   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr i8, ptr %.014.i.i, i64 8
  store ptr %i.m, ptr %i.n, align 8
  store volatile ptr %.014.i.i, ptr %i.m, align 8
  store ptr inttoptr (i64 -2401263026318606080 to ptr), ptr %.016.i.i, align 8
  store ptr inttoptr (i64 -2401263026318606046 to ptr), ptr %i.l, align 8
  tail call void @kfree(ptr noundef %.016.i.i) #11
  %.not.i.i = icmp eq ptr %.014.i.i, %i.j
  br i1 %.not.i.i, label %acpi_mipi_del_crs_csi2.exit, label %.lr.ph.i.i, !llvm.loop !0

acpi_mipi_del_crs_csi2.exit:                      ; preds = %.lr.ph.i.i, %.lr.ph
  tail call void @kfree(ptr noundef %.014) #11
  %.not = icmp eq ptr %.01115, @acpi_mipi_crs_csi2_list
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %acpi_mipi_del_crs_csi2.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local noundef zeroext i1 @acpi_graph_ignore_port(ptr noundef %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %.b = load i1, ptr @acpi_graph_ignore_port.dmi_tested, align 1
  br i1 %.b, label %bb.f, label %bb.b
end_hunk_0
