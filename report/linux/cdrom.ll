Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/cdrom?download=true
inline.NumInlined: 230
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cdrom_sysctl_info:bb.a
  %i.mk = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.mj
  %i.ml = sub i32 1000, %.36
  %i.mm = sext i32 %i.ml to i64
  %i.mn = load ptr, ptr %.0367.us38.i260, align 8
  %i.mo = getelementptr i8, ptr %i.mn, i64 104
  %i.mp = load i32, ptr %i.mo, align 8
  %i.mq = getelementptr i8, ptr %.pn6.us39.i258, i64 32
  %i.mr = load i32, ptr %i.mq, align 8
  %i.ms = xor i32 %i.mr, -1
  %i.mt = and i32 %i.mp, 1048576
  %i.mu = and i32 %i.mt, %i.ms
  %.lobit433 = lshr exact i32 %i.mu, 20
  %i.mv = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.mk, i64 noundef %i.mm, ptr noundef nonnull @.str.55, i32 noundef %.lobit433) #19 ; 2 uses
  %.not40.us42.i261 = icmp eq i32 %i.mv, 0
  br i1 %.not40.us42.i261, label %cdrom_print_info.exit, label %bb.ap

bb.ap:                                            ; preds = %.lr.ph.split.us37.i257
  %i.mw = add i32 %i.mv, %.36                     ; 2 uses
  %.pn.us43.i262 = load ptr, ptr %.pn6.us39.i258, align 8 ; 2 uses
  %.not1.us45.i263 = icmp eq ptr %.pn.us43.i262, @cdrom_list
  br i1 %.not1.us45.i263, label %.loopexit436, label %.lr.ph.split.us37.i257, !llvm.loop !136

.loopexit436:                                     ; preds = %bb.ap, %bb.ao
  %.37.ph = phi i32 [ %i.mi, %bb.ao ], [ %i.mw, %bb.ap ] ; 3 uses
  %i.mx = sext i32 %.37.ph to i64
  %i.my = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.mx
  %i.mz = sub i32 1000, %.37.ph
  %i.na = sext i32 %i.mz to i64
  %i.nb = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.my, i64 noundef %i.na, ptr noundef nonnull @.str.51) #19 ; 2 uses
  %.not.i266 = icmp eq i32 %i.nb, 0
  br i1 %.not.i266, label %cdrom_print_info.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit436
  %i.nc = add i32 %i.nb, %.37.ph                  ; 2 uses
  %.pn2.i267 = load ptr, ptr @cdrom_list, align 8 ; 2 uses
  %.not14.i268 = icmp eq ptr %.pn2.i267, @cdrom_list
  br i1 %.not14.i268, label %.loopexit, label %.lr.ph.split.us37.i270

.lr.ph.split.us37.i270:                           ; preds = %bb.aq, %bb.ar
  %.38 = phi i32 [ %i.nq, %bb.ar ], [ %i.nc, %bb.aq ] ; 3 uses
  %.pn6.us39.i271 = phi ptr [ %.pn.us43.i275, %bb.ar ], [ %.pn2.i267, %bb.aq ] ; 3 uses
  %.0367.us38.i273 = getelementptr i8, ptr %.pn6.us39.i271, i64 -8
  %i.nd = sext i32 %.38 to i64
  %i.ne = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.nd
  %i.nf = sub i32 1000, %.38
  %i.ng = sext i32 %i.nf to i64
  %i.nh = load ptr, ptr %.0367.us38.i273, align 8
  %i.ni = getelementptr i8, ptr %i.nh, i64 104
  %i.nj = load i32, ptr %i.ni, align 8
  %i.nk = getelementptr i8, ptr %.pn6.us39.i271, i64 32
  %i.nl = load i32, ptr %i.nk, align 8
  %i.nm = xor i32 %i.nl, -1
  %i.nn = and i32 %i.nj, 2097152
  %i.no = and i32 %i.nn, %i.nm
  %.lobit434 = lshr exact i32 %i.no, 21
  %i.np = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ne, i64 noundef %i.ng, ptr noundef nonnull @.str.55, i32 noundef %.lobit434) #19 ; 2 uses
  %.not40.us42.i274 = icmp eq i32 %i.np, 0
  br i1 %.not40.us42.i274, label %cdrom_print_info.exit, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.split.us37.i270
  %i.nq = add i32 %i.np, %.38                     ; 2 uses
  %.pn.us43.i275 = load ptr, ptr %.pn6.us39.i271, align 8 ; 2 uses
  %.not1.us45.i276 = icmp eq ptr %.pn.us43.i275, @cdrom_list
  br i1 %.not1.us45.i276, label %.loopexit, label %.lr.ph.split.us37.i270, !llvm.loop !136

.loopexit:                                        ; preds = %bb.ar, %bb.aq
  %.39.ph = phi i32 [ %i.nc, %bb.aq ], [ %i.nq, %bb.ar ] ; 2 uses
  %i.nr = sext i32 %.39.ph to i64
  %i.ns = getelementptr i8, ptr @cdrom_sysctl_settings, i64 %i.nr
  %i.nt = sub i32 1000, %.39.ph
  %i.nu = sext i32 %i.nt to i64
  %i.nv = tail call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %i.ns, i64 noundef %i.nu, ptr noundef nonnull @.str.52) #19
  %.not52 = icmp eq i32 %i.nv, 0
  br i1 %.not52, label %cdrom_print_info.exit, label %bb.as

bb.as:                                            ; preds = %.loopexit, %cdrom_print_info.exit
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #19
  %i.nw = tail call i32 @proc_dostring(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  br label %bb.at

cdrom_print_info.exit:                            ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us11.i, %.lr.ph.split.us24.i, %.lr.ph.split.us37.i, %.lr.ph.split.us37.i75, %.lr.ph.split.us37.i88, %.lr.ph.split.us37.i101, %.lr.ph.split.us37.i114, %.lr.ph.split.us37.i127, %.lr.ph.split.us37.i140, %.lr.ph.split.us37.i153, %.lr.ph.split.us37.i166, %.lr.ph.split.us37.i179, %.lr.ph.split.us37.i192, %.lr.ph.split.us37.i205, %.lr.ph.split.us37.i218, %.lr.ph.split.us37.i231, %.lr.ph.split.us37.i244, %.lr.ph.split.us37.i257, %.lr.ph.split.us37.i270, %.loopexit436, %.loopexit438, %.loopexit440, %.loopexit442, %.loopexit444, %.loopexit446, %.loopexit448, %.loopexit450, %.loopexit452, %.loopexit454, %.loopexit456, %.loopexit458, %.loopexit460, %.loopexit462, %.loopexit464, %.loopexit466, %.loopexit468, %.loopexit470, %.loopexit472, %bb.d, %.loopexit
  %i.nx = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #17 ; 0 uses
  br label %bb.as

bb.at:                                            ; preds = %bb.as, %bb.c
  %.0 = phi i32 [ %i.nw, %bb.as ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cdrom_sysctl_handler(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #1 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @proc_dointvec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #19
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1000), align 4
  %i.c = icmp ne i32 %i.b, 0
  %i.d = zext i1 %i.c to i8
  store i8 %i.d, ptr @autoclose, align 1
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1004), align 4
  %i.f = icmp ne i32 %i.e, 0
  %i.g = zext i1 %i.f to i8
  store i8 %i.g, ptr @autoeject, align 1
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1008), align 4
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i8
  store i8 %i.j, ptr @debug, align 1
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1012), align 4
  %i.l = icmp ne i32 %i.k, 0
  %i.m = zext i1 %i.l to i8
  store i8 %i.m, ptr @lockdoor, align 1
  %i.n = load i32, ptr getelementptr inbounds nuw (i8, ptr @cdrom_sysctl_settings, i64 1016), align 4
  %i.o = icmp ne i32 %i.n, 0
  %i.p = zext i1 %i.o to i8
  store i8 %i.p, ptr @check_media_type, align 1
  tail call void @mutex_lock(ptr noundef nonnull @cdrom_mutex) #19
  %.pn25.i = load ptr, ptr @cdrom_list, align 8   ; 8 uses
  %.026.i = getelementptr i8, ptr %.pn25.i, i64 -8 ; 4 uses
  %.not27.i = icmp eq ptr %.pn25.i, @cdrom_list
  br i1 %.not27.i, label %cdrom_update_settings.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.q = load i8, ptr @autoclose, align 1, !range !17, !noundef !18
  %i.r = trunc nuw i8 %i.q to i1
  %i.s = load i8, ptr @autoeject, align 1, !range !17, !noundef !18
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %i.u = load i8, ptr @lockdoor, align 1, !range !17, !noundef !18
  %i.v = trunc nuw i8 %i.u to i1                  ; 3 uses
  %i.w = load i8, ptr @check_media_type, align 1, !range !17, !noundef !18
  %i.x = trunc nuw i8 %i.w to i1                  ; 4 uses
  br i1 %i.r, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  %masksel64.i = select i1 %i.x, i32 16, i32 0
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %.thread24.us.i
  %.029.us.i = phi ptr [ %.0.us.i, %.thread24.us.i ], [ %.026.i, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %.pn28.us.i = phi ptr [ %.pn.us.i, %.thread24.us.i ], [ %.pn25.i, %.lr.ph.split.us.i.preheader ] ; 8 uses
  %i.y = load ptr, ptr %.029.us.i, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 104
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %.pn28.us.i, i64 32
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = xor i32 %i.ac, -1                       ; 3 uses
  %i.ae = and i32 %i.aa, 1
  %i.af = and i32 %i.ae, %i.ad
  %.not20.us.i = icmp eq i32 %i.af, 0
  br i1 %.not20.us.i, label %.thread.us.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.i
  %i.ag = getelementptr i8, ptr %.pn28.us.i, i64 44 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = or i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4
  br label %.thread.us.i

.thread.us.i:                                     ; preds = %bb.c, %.lr.ph.split.us.i
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.thread.us.i
  %i.aj = getelementptr i8, ptr %.pn28.us.i, i64 44 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = and i32 %i.ak, -3
  store i32 %i.al, ptr %i.aj, align 4
  br label %.thread23.us.i

bb.e:                                             ; preds = %.thread.us.i
  %i.am = load ptr, ptr %.029.us.i, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 104
  %i.ao = load i32, ptr %i.an, align 8
  %i.ap = and i32 %i.ad, 2
  %i.aq = and i32 %i.ap, %i.ao
  %.not21.us.i = icmp eq i32 %i.aq, 0
  br i1 %.not21.us.i, label %.thread23.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr i8, ptr %.pn28.us.i, i64 44 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = or i32 %i.as, 2
  store i32 %i.at, ptr %i.ar, align 4
  br label %.thread23.us.i

.thread23.us.i:                                   ; preds = %bb.f, %bb.e, %bb.d
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread23.us.i
  %i.au = getelementptr i8, ptr %.pn28.us.i, i64 44
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, -9
  br label %.thread24.us.i

bb.h:                                             ; preds = %.thread23.us.i
  %i.ax = load ptr, ptr %.029.us.i, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 104
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.ad, 4
  %i.bb = and i32 %i.ba, %i.az
  %.not22.us.i = icmp eq i32 %i.bb, 0
  %.phi.trans.insert = getelementptr i8, ptr %.pn28.us.i, i64 44
  %.pre = load i32, ptr %.phi.trans.insert, align 4 ; 2 uses
  %5 = or i32 %.pre, 8
  %spec.select = select i1 %.not22.us.i, i32 %.pre, i32 %5
  br label %.thread24.us.i

.thread24.us.i:                                   ; preds = %bb.h, %bb.g
  %i.bc = phi i32 [ %i.aw, %bb.g ], [ %spec.select, %bb.h ]
  %i.bd = getelementptr i8, ptr %.pn28.us.i, i64 44
  %i.be = and i32 %i.bc, -17
  %.sink.i = or disjoint i32 %i.be, %masksel64.i
  store i32 %.sink.i, ptr %i.bd, align 4
  %.pn.us.i = load ptr, ptr %.pn28.us.i, align 8  ; 3 uses
  %.0.us.i = getelementptr i8, ptr %.pn.us.i, i64 -8
  %.not.us.i = icmp eq ptr %.pn.us.i, @cdrom_list
  br i1 %.not.us.i, label %cdrom_update_settings.exit, label %.lr.ph.split.us.i, !llvm.loop !137

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  br i1 %i.t, label %.thread.us30.i.preheader, label %.lr.ph.split.split.i

.thread.us30.i.preheader:                         ; preds = %.lr.ph.split.i
  %masksel.i = select i1 %i.x, i32 16, i32 0
  br label %.thread.us30.i

.thread.us30.i:                                   ; preds = %.thread.us30.i.preheader, %.thread24.us36.i
  %.029.us31.i = phi ptr [ %.0.us38.i, %.thread24.us36.i ], [ %.026.i, %.thread.us30.i.preheader ] ; 2 uses
  %.pn28.us32.i = phi ptr [ %.pn.us37.i, %.thread24.us36.i ], [ %.pn25.i, %.thread.us30.i.preheader ] ; 3 uses
  %i.bf = getelementptr i8, ptr %.pn28.us32.i, i64 44 ; 4 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, -2                       ; 3 uses
  store i32 %i.bh, ptr %i.bf, align 4
  %i.bi = load ptr, ptr %.029.us31.i, align 8
  %i.bj = getelementptr i8, ptr %i.bi, i64 104
  %i.bk = load i32, ptr %i.bj, align 8
  %i.bl = getelementptr i8, ptr %.pn28.us32.i, i64 32
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = xor i32 %i.bm, -1                       ; 2 uses
  %i.bo = and i32 %i.bk, 2
  %i.bp = and i32 %i.bo, %i.bn
  %.not21.us33.i = icmp eq i32 %i.bp, 0
  br i1 %.not21.us33.i, label %.thread23.us34.i, label %bb.i

bb.i:                                             ; preds = %.thread.us30.i
  %i.bq = or i32 %i.bh, 2                         ; 2 uses
  store i32 %i.bq, ptr %i.bf, align 4
  br label %.thread23.us34.i

.thread23.us34.i:                                 ; preds = %bb.i, %.thread.us30.i
  %i.br = phi i32 [ %i.bq, %bb.i ], [ %i.bh, %.thread.us30.i ] ; 3 uses
  br i1 %i.v, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread23.us34.i
  %i.bs = and i32 %i.br, -9
  br label %.thread24.us36.i

bb.k:                                             ; preds = %.thread23.us34.i
  %i.bt = load ptr, ptr %.029.us31.i, align 8
  %i.bu = getelementptr i8, ptr %i.bt, i64 104
  %i.bv = load i32, ptr %i.bu, align 8
  %i.bw = and i32 %i.bn, 4
  %i.bx = and i32 %i.bw, %i.bv
  %.not22.us35.i = icmp eq i32 %i.bx, 0
  %i.by = or i32 %i.br, 8
  %spec.select.i = select i1 %.not22.us35.i, i32 %i.br, i32 %i.by
  br label %.thread24.us36.i

.thread24.us36.i:                                 ; preds = %bb.k, %bb.j
  %i.bz = phi i32 [ %i.bs, %bb.j ], [ %spec.select.i, %bb.k ]
  %i.ca = and i32 %i.bz, -17
  %storemerge.i = or disjoint i32 %i.ca, %masksel.i
  store i32 %storemerge.i, ptr %i.bf, align 4
  %.pn.us37.i = load ptr, ptr %.pn28.us32.i, align 8 ; 3 uses
  %.0.us38.i = getelementptr i8, ptr %.pn.us37.i, i64 -8
  %.not.us39.i = icmp eq ptr %.pn.us37.i, @cdrom_list
  br i1 %.not.us39.i, label %cdrom_update_settings.exit, label %.thread.us30.i, !llvm.loop !137

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  br i1 %i.v, label %.lr.ph.split.split.split.us.i, label %.lr.ph.split.split.split.i

.lr.ph.split.split.split.us.i:                    ; preds = %.lr.ph.split.split.i
  br i1 %i.x, label %.thread.us40.us.i, label %.thread.us40.i

.thread.us40.us.i:                                ; preds = %.lr.ph.split.split.split.us.i, %.thread.us40.us.i
  %.029.us41.us.i = phi ptr [ %.0.us46.us.i, %.thread.us40.us.i ], [ %.026.i, %.lr.ph.split.split.split.us.i ]
  %.pn28.us42.us.i = phi ptr [ %.pn.us45.us.i, %.thread.us40.us.i ], [ %.pn25.i, %.lr.ph.split.split.split.us.i ] ; 3 uses
  %i.cb = getelementptr i8, ptr %.pn28.us42.us.i, i64 44 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = and i32 %i.cc, -4                       ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4
  %i.ce = load ptr, ptr %.029.us41.us.i, align 8
  %i.cf = getelementptr i8, ptr %i.ce, i64 104
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = getelementptr i8, ptr %.pn28.us42.us.i, i64 32
  %i.ci = load i32, ptr %i.ch, align 8
  %i.cj = xor i32 %i.ci, -1
  %i.ck = and i32 %i.cg, 4
  %i.cl = and i32 %i.ck, %i.cj
  %.not22.us43.us.i = icmp eq i32 %i.cl, 0
  %6 = select i1 %.not22.us43.us.i, i32 16, i32 24
  %i.cm = or i32 %6, %i.cd
  store i32 %i.cm, ptr %i.cb, align 4
  %.pn.us45.us.i = load ptr, ptr %.pn28.us42.us.i, align 8 ; 3 uses
  %.0.us46.us.i = getelementptr i8, ptr %.pn.us45.us.i, i64 -8
  %.not.us47.us.i = icmp eq ptr %.pn.us45.us.i, @cdrom_list
  br i1 %.not.us47.us.i, label %cdrom_update_settings.exit, label %.thread.us40.us.i, !llvm.loop !137

.thread.us40.i:                                   ; preds = %.lr.ph.split.split.split.us.i, %.thread.us40.i
  %.029.us41.i = phi ptr [ %.0.us46.i, %.thread.us40.i ], [ %.026.i, %.lr.ph.split.split.split.us.i ]
  %.pn28.us42.i = phi ptr [ %.pn.us45.i, %.thread.us40.i ], [ %.pn25.i, %.lr.ph.split.split.split.us.i ] ; 3 uses
  %i.cn = getelementptr i8, ptr %.pn28.us42.i, i64 44 ; 3 uses
  %i.co = load i32, ptr %i.cn, align 4            ; 3 uses
  %i.cp = and i32 %i.co, -4
  store i32 %i.cp, ptr %i.cn, align 4
  %i.cq = load ptr, ptr %.029.us41.i, align 8
  %i.cr = getelementptr i8, ptr %i.cq, i64 104
  %i.cs = load i32, ptr %i.cr, align 8
  %i.ct = getelementptr i8, ptr %.pn28.us42.i, i64 32
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = xor i32 %i.cu, -1
  %i.cw = and i32 %i.cs, 4
  %i.cx = and i32 %i.cw, %i.cv
  %.not22.us43.i = icmp eq i32 %i.cx, 0
  %7 = or i32 %i.co, 8
  %spec.select63.i = select i1 %.not22.us43.i, i32 %i.co, i32 %7
  %8 = and i32 %spec.select63.i, -20
  store i32 %8, ptr %i.cn, align 4
  %.pn.us45.i = load ptr, ptr %.pn28.us42.i, align 8 ; 3 uses
  %.0.us46.i = getelementptr i8, ptr %.pn.us45.i, i64 -8
  %.not.us47.i = icmp eq ptr %.pn.us45.i, @cdrom_list
  br i1 %.not.us47.i, label %cdrom_update_settings.exit, label %.thread.us40.i, !llvm.loop !137

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i
  br i1 %i.x, label %.thread.us48.i, label %.thread.i

.thread.us48.i:                                   ; preds = %.lr.ph.split.split.split.i, %.thread.us48.i
  %.pn28.us49.i = phi ptr [ %.pn.us50.i, %.thread.us48.i ], [ %.pn25.i, %.lr.ph.split.split.split.i ] ; 2 uses
  %i.cy = getelementptr i8, ptr %.pn28.us49.i, i64 44 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = and i32 %i.cz, -28
  %i.db = or disjoint i32 %i.da, 16
  store i32 %i.db, ptr %i.cy, align 4
  %.pn.us50.i = load ptr, ptr %.pn28.us49.i, align 8 ; 2 uses
  %.not.us51.i = icmp eq ptr %.pn.us50.i, @cdrom_list
  br i1 %.not.us51.i, label %cdrom_update_settings.exit, label %.thread.us48.i, !llvm.loop !137

.thread.i:                                        ; preds = %.lr.ph.split.split.split.i, %.thread.i
  %.pn28.i = phi ptr [ %.pn.i, %.thread.i ], [ %.pn25.i, %.lr.ph.split.split.split.i ] ; 2 uses
  %i.dc = getelementptr i8, ptr %.pn28.i, i64 44  ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = and i32 %i.dd, -28
  store i32 %i.de, ptr %i.dc, align 4
  %.pn.i = load ptr, ptr %.pn28.i, align 8        ; 2 uses
  %.not.i = icmp eq ptr %.pn.i, @cdrom_list
  br i1 %.not.i, label %cdrom_update_settings.exit, label %.thread.i, !llvm.loop !137

cdrom_update_settings.exit:                       ; preds = %.thread.i, %.thread.us48.i, %.thread.us40.i, %.thread.us40.us.i, %.thread24.us36.i, %.thread24.us.i, %bb.b
  tail call void @mutex_unlock(ptr noundef nonnull @cdrom_mutex) #19
  br label %bb.l

bb.l:                                             ; preds = %cdrom_update_settings.exit, %bb.a
  ret i32 %i.a
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dostring(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @unregister_sysctl_table(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #1 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #9 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-builtin-wcslen" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" "warn-stack-size"="2048" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(1) "no-builtin-wcslen" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-aes,-amx-avx512,-avx,-avx10.1,-avx10.2,-avx2,-avx512bf16,-avx512bitalg,-avx512bmm,-avx512bw,-avx512cd,-avx512dq,-avx512f,-avx512fp16,-avx512ifma,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #15 = { nocallback nounwind }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { cold noredzone nounwind "no-builtin-wcslen" }
attributes #18 = { nounwind }
attributes #19 = { noredzone nounwind "no-builtin-wcslen" }
attributes #20 = { noredzone "no-builtin-wcslen" }
attributes #21 = { noredzone nounwind allocsize(2) "no-builtin-wcslen" }
attributes #22 = { noredzone nounwind allocsize(0) "no-builtin-wcslen" }
attributes #23 = { nounwind memory(none) }
attributes #24 = { noredzone nounwind allocsize(1) "no-builtin-wcslen" }

!llvm.named.register.rsp = !{!2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !20}
!1 = distinct !{null}
!2 = !{!"rsp"}
!3 = !{i32 1, !"wchar_size", i32 2}
!4 = !{i32 8, !"cf-protection-branch", i32 1}
!5 = !{i32 4, !"function_return_thunk_extern", i32 1}
!6 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!7 = !{i32 1, !"Code Model", i32 2}
!8 = !{i32 1, !"stack-protector-guard-reg", !"gs"}
!9 = !{i32 1, !"stack-protector-guard-symbol", !"__ref_stack_chk_guard"}
!10 = !{i32 1, !"override-stack-alignment", i32 8}
!11 = !{i32 4, !"SkipRaxSetup", i32 1}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!13 = !{!"branch_weights", i32 1, i32 127}
!14 = !{i64 2148111127, i64 2148111166, i64 2148111187, i64 2148111224, i64 2148111247, i64 2148111256}
!15 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!16 = !{!"branch_weights", i32 127, i32 255873}
!17 = !{i8 0, i8 2}
!18 = !{}
!19 = !{!"auto-init"}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{i64 2149012092}
!22 = !{i64 2156682062, i64 2156681937}
!23 = !{i64 2156682585, i64 2156683650, i64 2156683683, i64 2156683718, i64 2156683734, i64 2156684661, i64 2156684719, i64 2156684768, i64 2156684578, i64 2156683793, i64 2156683825, i64 2156683908}
!24 = !{i64 2156685069, i64 2156684945}
!25 = !{i64 2156686509, i64 2156686384}
!26 = !{i64 2156687032, i64 2156688125, i64 2156688158, i64 2156688193, i64 2156688209, i64 2156689136, i64 2156689194, i64 2156689243, i64 2156689053, i64 2156688268, i64 2156688300, i64 2156688383}
!27 = !{i64 2156689544, i64 2156689420}
!28 = !{i64 2156691068, i64 2156690943}
!29 = !{i64 2156691591, i64 2156692660, i64 2156692693, i64 2156692728, i64 2156692744, i64 2156693671, i64 2156693729, i64 2156693778, i64 2156693588, i64 2156692803, i64 2156692835, i64 2156692918}
!30 = !{i64 2156694079, i64 2156693955}
!31 = !{i64 2156695575, i64 2156695450}
!32 = !{i64 2156696098, i64 2156697161, i64 2156697194, i64 2156697229, i64 2156697245, i64 2156698172, i64 2156698230, i64 2156698279, i64 2156698089, i64 2156697304, i64 2156697336, i64 2156697419}
!33 = !{i64 2156698580, i64 2156698456}
!34 = !{i64 2156700079, i64 2156699954}
!35 = !{i64 2156700602, i64 2156701665, i64 2156701698, i64 2156701733, i64 2156701749, i64 2156702676, i64 2156702734, i64 2156702783, i64 2156702593, i64 2156701808, i64 2156701840, i64 2156701923}
!36 = !{i64 2156703084, i64 2156702960}
!37 = !{i64 2156704592, i64 2156704467}
!38 = !{i64 2156705115, i64 2156706179, i64 2156706212, i64 2156706247, i64 2156706263, i64 2156707190, i64 2156707248, i64 2156707297, i64 2156707107, i64 2156706322, i64 2156706354, i64 2156706437}
!39 = !{i64 2156707598, i64 2156707474}
!40 = !{i64 2156709097, i64 2156708972}
!41 = !{i64 2156709620, i64 2156710684, i64 2156710717, i64 2156710752, i64 2156710768, i64 2156711695, i64 2156711753, i64 2156711802, i64 2156711612, i64 2156710827, i64 2156710859, i64 2156710942}
!42 = !{i64 2156712103, i64 2156711979}
!43 = !{i64 2156717666, i64 2156717541}
!44 = !{i64 2156718189, i64 2156719254, i64 2156719287, i64 2156719322, i64 2156719338, i64 2156720265, i64 2156720323, i64 2156720372, i64 2156720182, i64 2156719397, i64 2156719429, i64 2156719512}
!45 = !{i64 2156720673, i64 2156720549}
!46 = !{i64 2156722189, i64 2156722064}
!47 = !{i64 2156722712, i64 2156723778, i64 2156723811, i64 2156723846, i64 2156723862, i64 2156724789, i64 2156724847, i64 2156724896, i64 2156724706, i64 2156723921, i64 2156723953, i64 2156724036}
!48 = !{i64 2156725197, i64 2156725073}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{i64 2156726616, i64 2156726491}
!51 = !{i64 2156727139, i64 2156728197, i64 2156728230, i64 2156728265, i64 2156728281, i64 2156729208, i64 2156729266, i64 2156729315, i64 2156729125, i64 2156728340, i64 2156728372, i64 2156728455}
!52 = !{i64 2156729616, i64 2156729492}
!53 = distinct !{null}
!54 = distinct !{null, null, ptr @cdrom_mode_sense}
!55 = distinct !{null, null}
!56 = distinct !{null}
!57 = distinct !{null, null}
!58 = distinct !{null}
!59 = distinct !{null, null, null, null}
!60 = distinct !{null, null, null}
!61 = distinct !{null, null, null}
!62 = distinct !{null, null, ptr @cdrom_mode_sense}
!63 = !{i64 28016}
!64 = distinct !{null}
!65 = distinct !{null, null}
!66 = distinct !{null, null}
!67 = distinct !{null, null}
!68 = distinct !{null}
!69 = distinct !{null}
!70 = distinct !{null}
!71 = distinct !{null, ptr @cdrom_multisession}
!72 = distinct !{null}
!73 = distinct !{null}
!74 = distinct !{null, null, null}
!75 = distinct !{null, null}
!76 = distinct !{null, null, null, null}
!77 = distinct !{null}
!78 = distinct !{null, null}
!79 = distinct !{null, null, ptr @cdrom_load_unload}
!80 = distinct !{null, null, null}
!81 = distinct !{null}
!82 = distinct !{null}
!83 = distinct !{null}
!84 = distinct !{null}
!85 = distinct !{null, null, null}
!86 = distinct !{null, null}
!87 = !{i64 2156829306}
!88 = !{i64 42179}
!89 = !{i64 89672}
!90 = !{i64 89755}
!91 = !{i64 89826}
!92 = !{i64 89897}
!93 = !{i64 89972}
!94 = !{i64 90067}
!95 = !{i64 90160}
!96 = !{i64 90250}
!97 = !{i64 90328}
!98 = !{i64 90400}
!99 = !{i64 90470}
!100 = !{i64 90550}
!101 = !{i64 92708}
!102 = !{i64 92776}
!103 = !{i64 92846}
!104 = !{i64 92913}
!105 = !{i64 92978}
!106 = !{i64 93043}
!107 = !{i64 93104}
!108 = !{i64 93217}
!109 = !{ptr @cdrom_read_tocentry}
!110 = !{i64 73732}
!111 = !{i64 74821}
end_hunk_0
