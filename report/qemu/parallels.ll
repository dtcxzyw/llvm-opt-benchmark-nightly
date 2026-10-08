Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/parallels?download=true
inline.NumInlined: 89
inline.NumDeleted: 37
begin_hunk_0_@parallels_open:bb.a
  %i.bm = call i64 @bdrv_opt_mem_align(ptr noundef %i.bl) #13
  %i.bn = zext nneg i32 %i.bi to i64
  %i.bo = add nuw nsw i64 %i.bn, 4294967359
  %i.bp = add i64 %i.bo, %i.bm
  %i.bq = load ptr, ptr %i.p, align 8
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call i64 @bdrv_opt_mem_align(ptr noundef %i.br) #13
  %i.bt = sub i64 0, %i.bs
  %i.bu = and i64 %i.bp, %i.bt                    ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 5 uses
  store i32 %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.p, align 8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = and i64 %i.bu, 4294967295
  %i.ca = call ptr @qemu_try_blockalign(ptr noundef %i.by, i64 noundef %i.bz) #13 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 5 uses
  store ptr %i.ca, ptr %i.cb, align 8
  %i.cc = icmp eq ptr %i.ca, null
  br i1 %i.cc, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %.preheader

.preheader:                                       ; preds = %bb.w
  %i.cd = load i32, ptr %i.bw, align 8            ; 2 uses
  %.not186.a = icmp eq i32 %i.cd, 0
  br i1 %.not186.a, label %._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %.lr.ph
  %i.ce = add i32 %.0141180, 67108864             ; 2 uses
  %i.cf = load i32, ptr %i.bw, align 8            ; 3 uses
  %i.cg = icmp ult i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !11

.lr.ph:                                           ; preds = %.preheader, %bb.x
  %i.ch = phi i32 [ %i.cf, %bb.x ], [ %i.cd, %.preheader ]
  %.0141180 = phi i32 [ %i.ce, %bb.x ], [ 0, %.preheader ] ; 3 uses
  %i.ci = sub nuw i32 %i.ch, %.0141180
  %i.cj = call i32 @llvm.umin.i32(i32 %i.ci, i32 67108864)
  %i.ck = load ptr, ptr %i.p, align 8
  %i.cl = zext i32 %.0141180 to i64               ; 2 uses
  %i.cm = zext nneg i32 %i.cj to i64
  %i.cn = load ptr, ptr %i.cb, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cl
  %i.cp = call i32 @bdrv_pread(ptr noundef %i.ck, i64 noundef %i.cl, i64 noundef %i.cm, ptr noundef %i.co, i32 noundef 0) #13 ; 2 uses
  %i.cq = icmp slt i32 %i.cp, 0
  br i1 %i.cq, label %.loopexit, label %bb.x

._crit_edge.loopexit:                             ; preds = %bb.x
  %.pre189 = load ptr, ptr %i.cb, align 8
  %i.cr = lshr i32 %i.cf, 9
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.cs = phi i32 [ %i.cr, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.ct = phi ptr [ %.pre189, %._crit_edge.loopexit ], [ %i.ca, %.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 2 uses
  store ptr %i.cu, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.cx = load i32, ptr %i.cw, align 1
  %i.cy = icmp eq i32 %i.cx, 1953459801           ; 2 uses
  br i1 %i.cy, label %bb.y, label %bb.z

bb.y:                                             ; preds = %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i8 1, ptr %i.cz, align 4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge
  store i32 0, ptr %i.b, align 4, !annotation !7
  %i.da = call fastcc zeroext i1 @parallels_test_data_off(ptr noundef nonnull %i.d, i64 noundef %i.s, ptr noundef %i.b)
  %i.db = xor i1 %i.da, true
  %i.dc = or i1 %i.cy, %i.db                      ; 2 uses
  %i.dd = load i32, ptr %i.b, align 4             ; 2 uses
  %i.de = zext i32 %i.dd to i64                   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i64 %i.de, ptr %i.df, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 3 uses
  store i64 %i.de, ptr %i.dg, align 8
  %i.dh = icmp ult i32 %i.dd, %i.cs
  br i1 %i.dh, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 %i.bj, ptr %i.bw, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.di = load i64, ptr %i.bb, align 1            ; 2 uses
  %.not164 = icmp eq i64 %i.di, 0
  br i1 %.not164, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dj = and i32 %2, 2
  %.not165 = icmp eq i32 %i.dj, 0
  br i1 %.not165, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @warn_report(ptr noundef nonnull @.str.18) #13
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.dk = shl i64 %i.di, 9
  %i.dl = call i32 @parallels_read_format_extension(ptr noundef nonnull %0, i64 noundef %i.dk, ptr noundef %3) #13 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 0
  br i1 %i.dm, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae, %bb.ab
  %i.dn = and i32 %2, 2050
  %or.cond.not.not = icmp eq i32 %i.dn, 2
  br i1 %or.cond.not.not, label %bb.ag, label %bitmap_new.exit

bb.ag:                                            ; preds = %bb.af
  %i.do = load ptr, ptr %i.cb, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 44
  store i32 1953459801, ptr %i.dp, align 1
  %i.dq = call fastcc i32 @parallels_update_header(ptr noundef nonnull %0) ; 2 uses
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %.loopexit, label %bitmap_new.exit

bitmap_new.exit:                                  ; preds = %bb.ag, %bb.af
  %i.ds = tail call i32 @getpagesize() #14
  %i.dt = shl i32 %i.ds, 2                        ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.dt, ptr %i.du, align 8
  %i.dv = add i32 %i.dt, -1
  %i.dw = load i32, ptr %i.bw, align 8
  %i.dx = add i32 %i.dv, %i.dw
  %i.dy = udiv i32 %i.dx, %i.dt
  %narrow = add nuw nsw i32 %i.dy, 63
  %i.dz = lshr i32 %narrow, 6
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = call noalias ptr @g_malloc0_n(i64 noundef %i.ea, i64 noundef 8) #15
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.eb, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.d, i64 152 ; 3 uses
  %i.ee = call ptr @bdrv_get_device_or_node_name(ptr noundef nonnull %0) #13
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %i.ed, ptr noundef nonnull @.str.12, i32 noundef 1409, ptr noundef nonnull @__func__.parallels_open, ptr noundef nonnull @.str.19, ptr noundef %i.ee) #13
  %i.ef = call i32 @migrate_add_blocker_normal(ptr noundef nonnull %i.ed, ptr noundef %3) #13 ; 2 uses
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bitmap_new.exit
  call void @qemu_co_mutex_init(ptr noundef nonnull %i.d) #13
  %i.eh = load i32, ptr %i.az, align 8            ; 2 uses
  %.not187 = icmp eq i32 %i.eh, 0
  br i1 %.not187, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.ah
  %i.ei = getelementptr i8, ptr %i.d, i64 148
  %.val.pre = load ptr, ptr %i.cv, align 8
  %.val170.pre = load i32, ptr %i.ei, align 4
  %i.ej = zext i32 %.val170.pre to i64
  %i.ek = zext i32 %i.eh to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph184, %bb.an
  %indvars.iv = phi i64 [ 0, %.lr.ph184 ], [ %indvars.iv.next, %bb.an ] ; 2 uses
  %.1145181 = phi i1 [ %i.dc, %.lr.ph184 ], [ %.2, %bb.an ] ; 3 uses
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.val.pre, i64 %indvars.iv
  %i.em = load i32, ptr %i.el, align 4
  %i.en = zext i32 %i.em to i64
  %i.eo = mul nuw i64 %i.en, %i.ej                ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 0
  br i1 %i.ep, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.eq = icmp slt i64 %i.eo, %i.de
  br i1 %i.eq, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.er = load i32, ptr %i.ap, align 4
  %i.es = zext i32 %i.er to i64
  %i.et = add nuw i64 %i.eo, %i.es                ; 3 uses
  %i.eu = icmp sgt i64 %i.et, %i.s
  br i1 %i.eu, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ev = load i64, ptr %i.dg, align 8
  %i.ew = icmp sgt i64 %i.et, %i.ev
  br i1 %i.ew, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i64 %i.et, ptr %i.dg, align 8
  br label %bb.an

bb.an:                                            ; preds = %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ai
  %.2 = phi i1 [ %.1145181, %bb.ai ], [ %.1145181, %bb.al ], [ %.1145181, %bb.am ], [ true, %bb.ak ], [ true, %bb.aj ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ex = icmp samesign ult i64 %indvars.iv.next, %i.ek
  br i1 %i.ex, label %bb.ai, label %._crit_edge185, !llvm.loop !12

._crit_edge185:                                   ; preds = %bb.an, %bb.ah
  %.1145.lcssa = phi i1 [ %i.dc, %bb.ah ], [ %.2, %bb.an ]
  br i1 %.1145.lcssa, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge185
  %i.ey = call fastcc i32 @parallels_fill_used_bitmap(ptr noundef nonnull %0) ; 2 uses
  %i.ez = icmp eq i32 %i.ey, -12
  br i1 %i.ez, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %6 = icmp sgt i32 %i.ey, -1
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge185
  %.3 = phi i1 [ false, %._crit_edge185 ], [ %6, %bb.ap ]
  %i.fa = and i32 %2, 6146
  %brmerge = icmp ne i32 %i.fa, 2
  %brmerge169 = or i1 %brmerge, %.3
  br i1 %brmerge169, label %glib_autoptr_cleanup_GraphLockableMainloop.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false), !annotation !7
  %i.fb = call i32 @bdrv_check(ptr noundef nonnull %0, ptr noundef nonnull %5, i32 noundef 3) #13 ; 3 uses
  %i.fc = icmp slt i32 %i.fb, 0
  br i1 %i.fc, label %bb.as, label %.thread

.thread:                                          ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.as:                                            ; preds = %bb.ar
  %i.fd = sub i32 0, %i.fb
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef 1453, ptr noundef nonnull @__func__.parallels_open, i32 noundef %i.fd, ptr noundef nonnull @.str.20) #13
  call void @migrate_del_blocker(ptr noundef nonnull %i.ed) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %.loopexit

bb.at:                                            ; preds = %bb.k, %bb.h
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %3, ptr noundef nonnull @.str.12, i32 noundef 1461, ptr noundef nonnull @__func__.parallels_open, ptr noundef nonnull @.str.21) #13
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

.loopexit:                                        ; preds = %.lr.ph, %bb.as, %bb.ao, %bitmap_new.exit, %bb.ag, %bb.ae
  %.0139 = phi i32 [ %i.dl, %bb.ae ], [ %i.ef, %bitmap_new.exit ], [ %i.fb, %bb.as ], [ -12, %bb.ao ], [ %i.dq, %bb.ag ], [ %i.cp, %.lr.ph ]
  %.val171 = load ptr, ptr %i.c, align 8          ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.val171, i64 88
  store i64 0, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %.val171, i64 80
  %i.fg = load ptr, ptr %i.ff, align 8
  call void @g_free(ptr noundef %i.fg) #13
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.fi = load ptr, ptr %i.fh, align 8
  call void @g_free(ptr noundef %i.fi) #13
  %i.fj = load ptr, ptr %i.cb, align 8
  call void @qemu_vfree(ptr noundef %i.fj) #13
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %.thread, %bb.aq, %bb.w, %bb.g, %bb.f, %.loopexit, %bb.at, %bb.v, %bb.t, %bb.r, %bb.p, %bb.n
  %.0 = phi i32 [ 0, %bb.aq ], [ -22, %bb.f ], [ -22, %bb.at ], [ -22, %bb.n ], [ -27, %bb.p ], [ -27, %bb.r ], [ -27, %bb.t ], [ -22, %bb.v ], [ %i.v, %bb.g ], [ 0, %.thread ], [ %.0139, %.loopexit ], [ -12, %bb.w ]
  call void @bdrv_graph_rdunlock_main_loop() #13
  br label %bb.au

bb.au:                                            ; preds = %parallels_opts_prealloc.exit.thread176, %parallels_opts_prealloc.exit.thread, %bb.e, %glib_autoptr_cleanup_GraphLockableMainloop.exit
  %.1 = phi i32 [ %.0, %glib_autoptr_cleanup_GraphLockableMainloop.exit ], [ -22, %parallels_opts_prealloc.exit.thread176 ], [ %i.n, %bb.e ], [ -12, %parallels_opts_prealloc.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @parallels_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  tail call void @bdrv_graph_rdlock_main_loop() #13
  %i.c = load i32, ptr %0, align 8
  %i.d = and i32 %i.c, 2050
  %or.cond = icmp eq i32 %i.d, 2
  br i1 %or.cond, label %bb.b, label %glib_autoptr_cleanup_GraphLockableMainloop.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 0, ptr %i.g, align 1
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16832 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i64 @bdrv_opt_mem_align(ptr noundef %i.k) #13
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.l, i64 64)
  %i.n = trunc i64 %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.p = load i32, ptr %i.o, align 8
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.p, i32 %i.n)
  %i.q = load ptr, ptr %i.i, align 8
  %i.r = zext i32 %spec.select.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @bdrv_pwrite_sync(ptr noundef %i.q, i64 noundef 0, i64 noundef %i.r, ptr noundef %i.t, i32 noundef 0) #13 ; 0 uses
  %i.v = load ptr, ptr %i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.x = load i64, ptr %i.w, align 8
  %i.y = shl i64 %i.x, 9
  %i.z = tail call i32 @bdrv_truncate(ptr noundef %i.v, i64 noundef %i.y, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0, ptr noundef null) #13 ; 0 uses
  br label %glib_autoptr_cleanup_GraphLockableMainloop.exit

glib_autoptr_cleanup_GraphLockableMainloop.exit:  ; preds = %bb.b, %bb.a
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 88
  store i64 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void @g_free(ptr noundef %i.ac) #13
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @g_free(ptr noundef %i.ae) #13
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void @qemu_vfree(ptr noundef %i.ag) #13
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  tail call void @migrate_del_blocker(ptr noundef nonnull %i.ah) #13
  tail call void @bdrv_graph_rdunlock_main_loop() #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @parallels_co_create(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = load i32, ptr %0, align 8
  %i.c = icmp eq i32 %i.b, 25
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.12, i32 noundef 1021, ptr noundef nonnull @__PRETTY_FUNCTION__.parallels_co_create) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp ugt i64 %i.k, 2147483646
  br i1 %i.l, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 1035, ptr noundef nonnull @__func__.parallels_co_create, ptr noundef nonnull @.str.32) #13
  br label %bb.s

.thread:                                          ; preds = %bb.c, %bb.d
  %.05060 = phi i64 [ %i.k, %bb.d ], [ 1048576, %bb.c ] ; 8 uses
  %i.m = icmp ne i64 %.05060, 0
  %i.n = shl nuw nsw i64 %.05060, 32
  %.not = icmp ult i64 %i.f, %i.n
  %or.cond = select i1 %i.m, i1 %.not, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 1039, ptr noundef nonnull @__func__.parallels_co_create, ptr noundef nonnull @.str.33) #13
  br label %bb.s

bb.g:                                             ; preds = %.thread
  %i.o = add nsw i64 %i.f, -1
  %i.p = add nsw i64 %i.o, %.05060
  %i.q = udiv i64 %i.p, %.05060                   ; 3 uses
  %i.r = icmp samesign ugt i64 %i.q, 536870911
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 1045, ptr noundef nonnull @__func__.parallels_co_create, ptr noundef nonnull @.str.15) #13
  br label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.s = and i64 %i.f, 511
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 1050, ptr noundef nonnull @__func__.parallels_co_create, ptr noundef nonnull @.str.34) #13
  br label %bb.s

bb.k:                                             ; preds = %bb.i
  %i.u = and i64 %.05060, 511
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef 1055, ptr noundef nonnull @__func__.parallels_co_create, ptr noundef nonnull @.str.35) #13
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.w = load ptr, ptr %i.d, align 8
  %i.x = tail call ptr @bdrv_co_open_blockdev_ref(ptr noundef %i.w, ptr noundef %1) #13 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false), !annotation !7
  %i.z = tail call ptr @blk_co_new_with_bs(ptr noundef nonnull %i.x, i64 noundef 10, i64 noundef 15, ptr noundef %1) #13 ; 5 uses
  %.not58 = icmp eq ptr %i.z, null
  br i1 %.not58, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @blk_set_allow_write_beyond_eof(ptr noundef nonnull %i.z, i1 noundef zeroext true) #13
  %i.aa = trunc nuw nsw i64 %i.q to i32
  %i.ab = shl nuw nsw i64 %i.q, 2
  %i.ac = or disjoint i64 %.05060, 63
  %i.ad = add nuw nsw i64 %i.ac, %i.ab
  %.fr = freeze i64 %i.ad                         ; 2 uses
  %i.ae = urem i64 %.fr, %.05060
end_hunk_0
