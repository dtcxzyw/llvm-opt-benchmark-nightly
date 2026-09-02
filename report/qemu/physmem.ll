Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/physmem?download=true
inline.NumInlined: 425
inline.NumDeleted: 151
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@register_subpage:bb.a
  %i.u = phi i32 [ %i.ag, %bb.c ], [ %i.q, %.lr.ph.preheader.i ]
  %.sroa.0.029.i = phi i32 [ %.sroa.0.0.i, %bb.c ], [ %.sroa.0.026.i, %.lr.ph.preheader.i ] ; 2 uses
  %.028.i = phi i32 [ %i.v, %bb.c ], [ %i.t, %.lr.ph.preheader.i ]
  %i.v = sub nsw i32 %.028.i, %i.u                ; 3 uses
  %i.w = icmp sgt i32 %i.v, -1
  br i1 %i.w, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.x = lshr i32 %.sroa.0.029.i, 6               ; 2 uses
  %i.y = icmp eq i32 %i.x, 67108863
  br i1 %i.y, label %phys_page_find.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = zext nneg i32 %i.x to i64
  %i.aa = getelementptr inbounds nuw [2048 x i8], ptr %i.k, i64 %i.z
  %i.ab = mul nuw nsw i32 %i.v, 9
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %i.p, %i.ac
  %i.ae = and i64 %i.ad, 511
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ae
  %.sroa.0.0.i = load i32, ptr %i.af, align 4     ; 3 uses
  %i.ag = and i32 %.sroa.0.0.i, 63                ; 2 uses
  %.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i, label %.critedge.i, label %.lr.ph.i, !llvm.loop !0

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.0.026.i, %bb.a ], [ %.sroa.0.029.i, %.lr.ph.i ], [ %.sroa.0.0.i, %bb.c ]
  %i.ah = lshr i32 %.sroa.0.0.lcssa.i, 6
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [64 x i8], ptr %i.m, i64 %i.ai ; 3 uses
  %i.ak = load i128, ptr %i.aj, align 16          ; 2 uses
  %.not.i.i = icmp ult i128 %i.ak, 18446744073709551616
  br i1 %.not.i.i, label %section_covers_addr.exit.i, label %section_covers_addr.exit.thread.i

section_covers_addr.exit.i:                       ; preds = %.critedge.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = trunc nuw i128 %i.ak to i64
  %.not.i.i.i = icmp ule i64 %i.am, %i.h
  %i.ao = add i64 %i.an, -1
  %i.ap = add i64 %i.ao, %i.am
  %i.aq = icmp ule i64 %i.h, %i.ap
  %narrow.i.i.i = and i1 %.not.i.i.i, %i.aq
  %cond.fr.i = freeze i1 %narrow.i.i.i
  br i1 %cond.fr.i, label %section_covers_addr.exit.thread.i, label %phys_page_find.exit

section_covers_addr.exit.thread.i:                ; preds = %section_covers_addr.exit.i, %.critedge.i
  br label %phys_page_find.exit

phys_page_find.exit:                              ; preds = %bb.b, %section_covers_addr.exit.i, %section_covers_addr.exit.thread.i
  %.020.i = phi ptr [ %i.m, %section_covers_addr.exit.i ], [ %i.aj, %section_covers_addr.exit.thread.i ], [ %i.m, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %.neg = mul i64 %i.f, -4294967296               ; 2 uses
  %i.ar = ashr exact i64 %.neg, 32                ; 3 uses
  %i.as = zext i64 %i.ar to i128
  %i.at = getelementptr inbounds nuw i8, ptr %.020.i, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.15, i8 0, i64 13, i1 false)
  %i.au = load ptr, ptr %i.at, align 16           ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 42
  %i.aw = load i8, ptr %i.av, align 2, !range !18, !noundef !19
  %i.ax = trunc nuw i8 %i.aw to i1                ; 2 uses
  %i.ay = icmp eq ptr %i.au, @io_mem_unassigned
  %or.cond = or i1 %i.ay, %i.ax
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %phys_page_find.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.1, i32 noundef 1368, ptr noundef nonnull @__PRETTY_FUNCTION__.register_subpage) #26
  unreachable

bb.e:                                             ; preds = %phys_page_find.exit
  br i1 %i.ax, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = ashr exact i64 %.neg, 31
  %i.ba = add nsw i64 %i.az, 288
  %i.bb = tail call noalias ptr @g_malloc0(i64 noundef %i.ba) #28 ; 9 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 272
  store ptr %0, ptr %i.bc, align 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 280
  store i64 %i.h, ptr %i.bd, align 8
  tail call void @memory_region_init_io(ptr noundef %i.bb, ptr noundef null, ptr noundef nonnull @subpage_ops, ptr noundef %i.bb, ptr noundef null, i64 noundef %i.ar) #27
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 42
  store i8 1, ptr %i.be, align 2
  %i.bf = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i27 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i27, label %subpage_init.exit, label %bb.g, !prof !27

bb.g:                                             ; preds = %bb.f
  %i.bg = load i16, ptr @_TRACE_SUBPAGE_INIT_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.bg, 0
  br i1 %.not2.i.i, label %subpage_init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = load i32, ptr @qemu_loglevel, align 4
  %i.bi = and i32 %i.bh, 32768
  %.not3.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not3.i.i, label %subpage_init.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.bb, i64 noundef %i.h, i64 noundef range(i64 -2147483648, 2147483648) %i.ar) #27
  br label %subpage_init.exit

subpage_init.exit:                                ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 4 uses
  %i.bl = load i32, ptr %i.bk, align 8            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val, i64 36 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = icmp eq i32 %i.bl, %i.bn
  br i1 %i.bo, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %subpage_init.exit
  %.pre.i = load ptr, ptr %i.l, align 8
  br label %phys_section_add.exit

bb.j:                                             ; preds = %subpage_init.exit
  %i.bp = shl i32 %i.bl, 1
  %i.bq = tail call i32 @llvm.umax.i32(i32 %i.bp, i32 16) ; 2 uses
  store i32 %i.bq, ptr %i.bm, align 4
  %i.br = load ptr, ptr %i.l, align 8
  %i.bs = zext i32 %i.bq to i64
  %i.bt = tail call ptr @g_realloc_n(ptr noundef %i.br, i64 noundef %i.bs, i64 noundef 64) #27 ; 2 uses
  store ptr %i.bt, ptr %i.l, align 8
  %.pre32.i = load i32, ptr %i.bk, align 8
  br label %phys_section_add.exit

phys_section_add.exit:                            ; preds = %._crit_edge.i, %bb.j
  %i.bu = phi i32 [ %i.bl, %._crit_edge.i ], [ %.pre32.i, %bb.j ]
  %i.bv = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.bt, %bb.j ]
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [64 x i8], ptr %i.bv, i64 %i.bw ; 9 uses
  store i128 %i.as, ptr %i.bx, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store ptr %i.bb, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store ptr %0, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store i64 %i.h, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store i8 0, ptr %.sroa.12.0..sroa_idx, align 16
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 49
  store i8 0, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 50
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 2
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bx, i64 51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %.sroa.15.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(13) %.sroa.15, i64 13, i1 false)
  tail call void @memory_region_ref(ptr noundef nonnull %i.bb) #27
  %i.by = load i32, ptr %i.bk, align 8            ; 2 uses
  %i.bz = add i32 %i.by, 1
  store i32 %i.bz, ptr %i.bk, align 8
  %i.ca = trunc i32 %i.by to i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.p, ptr %i.a, align 8
  store i64 1, ptr %i.b, align 8
  %i.cb = sub i32 63, %i.n
  %i.cc = sdiv i32 %i.cb, 9                       ; 2 uses
  %i.cd = mul nsw i32 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = add nsw i32 %i.cd, 3
  %i.ch = add i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.val, i64 44 ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %i.ck = icmp ugt i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.k, label %phys_page_set.exit

bb.k:                                             ; preds = %phys_section_add.exit
  %i.cl = load i32, ptr @phys_map_node_reserve.alloc_hint, align 4
  %i.cm = tail call i32 @llvm.umax.i32(i32 %i.cl, i32 %i.ch) ; 2 uses
  store i32 %i.cm, ptr %i.ci, align 4
  %i.cn = load ptr, ptr %i.j, align 8
  %i.co = zext i32 %i.cm to i64
  %i.cp = tail call ptr @g_realloc_n(ptr noundef %i.cn, i64 noundef %i.co, i64 noundef 2048) #27
  store ptr %i.cp, ptr %i.j, align 8
  %i.cq = load i32, ptr %i.ci, align 4
  store i32 %i.cq, ptr @phys_map_node_reserve.alloc_hint, align 4
  br label %phys_page_set.exit

phys_page_set.exit:                               ; preds = %phys_section_add.exit, %bb.k
  call fastcc void @phys_page_set_level(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.i, ptr noundef %i.a, ptr noundef %i.b, i16 noundef zeroext %i.ca, i32 noundef %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %phys_page_set.exit
  %.0 = phi ptr [ %i.bb, %phys_page_set.exit ], [ %i.au, %bb.e ] ; 2 uses
  %i.cr = load i128, ptr %1, align 16             ; 2 uses
  %i.cs = icmp ult i128 %i.cr, 18446744073709551616
  br i1 %i.cs, label %int128_get64.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.104, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #26
  unreachable

int128_get64.exit:                                ; preds = %bb.l
  %i.ct = load i64, ptr %i.d, align 8
  %i.cu = xor i64 %i.f, -1
  %i.cv = and i64 %i.ct, %i.cu
  %2 = trunc i128 %i.cr to i32
  %i.cw = trunc i64 %i.cv to i32                  ; 4 uses
  %3 = add i32 %2, -1
  %i.cx = add i32 %3, %i.cw                       ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val, i64 32 ; 4 uses
  %i.cz = load i32, ptr %i.cy, align 8            ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.val, i64 36 ; 2 uses
  %i.db = load i32, ptr %i.da, align 4
  %i.dc = icmp eq i32 %i.cz, %i.db
  br i1 %i.dc, label %bb.n, label %._crit_edge.i28

._crit_edge.i28:                                  ; preds = %int128_get64.exit
  %.pre.i30 = load ptr, ptr %i.l, align 8
  br label %phys_section_add.exit33

bb.n:                                             ; preds = %int128_get64.exit
  %i.dd = shl i32 %i.cz, 1
  %i.de = tail call i32 @llvm.umax.i32(i32 %i.dd, i32 16) ; 2 uses
  store i32 %i.de, ptr %i.da, align 4
  %i.df = load ptr, ptr %i.l, align 8
  %i.dg = zext i32 %i.de to i64
  %i.dh = tail call ptr @g_realloc_n(ptr noundef %i.df, i64 noundef %i.dg, i64 noundef 64) #27 ; 2 uses
  store ptr %i.dh, ptr %i.l, align 8
  %.pre32.i32 = load i32, ptr %i.cy, align 8
  br label %phys_section_add.exit33

phys_section_add.exit33:                          ; preds = %._crit_edge.i28, %bb.n
  %i.di = phi i32 [ %i.cz, %._crit_edge.i28 ], [ %.pre32.i32, %bb.n ]
  %i.dj = phi ptr [ %.pre.i30, %._crit_edge.i28 ], [ %i.dh, %bb.n ]
  %i.dk = zext i32 %i.di to i64
  %i.dl = getelementptr inbounds nuw [64 x i8], ptr %i.dj, i64 %i.dk
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.dl, ptr noundef nonnull readonly align 16 dereferenceable(64) %1, i64 64, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load ptr, ptr %i.dm, align 16
  tail call void @memory_region_ref(ptr noundef %i.dn) #27
  %i.do = load i32, ptr %i.cy, align 8            ; 3 uses
  %i.dp = add i32 %i.do, 1
  store i32 %i.dp, ptr %i.cy, align 8
  %i.dq = trunc i32 %i.do to i16                  ; 3 uses
  %i.dr = trunc i64 %i.f to i32                   ; 2 uses
  %i.ds = sub i32 0, %i.dr                        ; 2 uses
  %.not.i34 = icmp ult i32 %i.cw, %i.ds
  %.not20.i = icmp ult i32 %i.cx, %i.ds
  %or.cond.i = and i1 %.not.i34, %.not20.i
  br i1 %or.cond.i, label %bb.o, label %subpage_register.exit

bb.o:                                             ; preds = %phys_section_add.exit33
  %i.dt = xor i32 %i.dr, -1                       ; 2 uses
  %i.du = and i32 %i.cw, %i.dt                    ; 12 uses
  %i.dv = and i32 %i.cx, %i.dt                    ; 5 uses
  %i.dw = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i35 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i35, label %trace_subpage_register.exit.i, label %bb.p, !prof !27

bb.p:                                             ; preds = %bb.o
  %i.dx = load i16, ptr @_TRACE_SUBPAGE_REGISTER_DSTATE, align 2
  %.not5.i.i = icmp eq i16 %i.dx, 0
  br i1 %.not5.i.i, label %trace_subpage_register.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dy = load i32, ptr @qemu_loglevel, align 4
  %i.dz = and i32 %i.dy, 32768
  %.not6.i.i = icmp eq i32 %i.dz, 0
  br i1 %.not6.i.i, label %trace_subpage_register.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ea = and i32 %i.do, 65535
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.102, ptr noundef nonnull %.0, i32 noundef %i.cw, i32 noundef %i.cx, i32 noundef %i.du, i32 noundef %i.dv, i32 noundef %i.ea) #27
  br label %trace_subpage_register.exit.i

trace_subpage_register.exit.i:                    ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %.not2122.i = icmp sgt i32 %i.du, %i.dv
  br i1 %.not2122.i, label %subpage_register.exit, label %iter.check

iter.check:                                       ; preds = %trace_subpage_register.exit.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.0, i64 288 ; 3 uses
  %i.ec = add i32 %i.du, 1
  %i.ed = add i32 %i.dv, 1
  %smax51 = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 %i.ed)
  %i.ee = sub i32 %smax51, %i.du                  ; 7 uses
  %min.iters.check = icmp ult i32 %i.ee, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ef = add i32 %i.du, 1
  %i.eg = add i32 %i.dv, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ef, i32 %i.eg)
  %i.eh = add i32 %smax, -1
  %i.ei = icmp slt i32 %i.eh, %i.du
  br i1 %i.ei, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check52 = icmp ult i32 %i.ee, 16
  br i1 %min.iters.check52, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ej = and i32 %i.ee, 12
  %n.vec = and i32 %i.ee, -16                     ; 4 uses
  %i.ek = add i32 %i.du, %n.vec
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.dq, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.el = add i32 %i.du, %index
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <8 x i16> %broadcast.splat, ptr %i.en, align 2
  store <8 x i16> %broadcast.splat, ptr %i.eo, align 2
  %index.next = add nuw i32 %index, 16            ; 2 uses
  %i.ep = icmp eq i32 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !59

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.ee, %n.vec
  br i1 %cmp.n, label %subpage_register.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i32 %i.ej, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i32 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i32 %i.ee, -4                    ; 3 uses
  %i.eq = add i32 %i.du, %n.vec53
  %broadcast.splatinsert54 = insertelement <4 x i16> poison, i16 %i.dq, i64 0
  %broadcast.splat55 = shufflevector <4 x i16> %broadcast.splatinsert54, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i32 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.er = add i32 %i.du, %index56
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.es
  store <4 x i16> %broadcast.splat55, ptr %i.et, align 2
  %index.next57 = add nuw i32 %index56, 4         ; 2 uses
  %i.eu = icmp eq i32 %index.next57, %n.vec53
  br i1 %i.eu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !60

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i32 %i.ee, %n.vec53
  br i1 %cmp.n58, label %subpage_register.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.ph = phi i32 [ %i.du, %iter.check ], [ %i.du, %vector.scevcheck ], [ %i.ek, %vec.epilog.iter.check ], [ %i.eq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.023.i = phi i32 [ %i.ex, %vec.epilog.scalar.ph ], [ %.023.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.ev = sext i32 %.023.i to i64
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.eb, i64 %i.ev
  store i16 %i.dq, ptr %i.ew, align 2
  %i.ex = add i32 %.023.i, 1                      ; 2 uses
  %.not21.i = icmp sgt i32 %i.ex, %i.dv
  br i1 %.not21.i, label %subpage_register.exit, label %vec.epilog.scalar.ph, !llvm.loop !61

subpage_register.exit:                            ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %phys_section_add.exit33, %trace_subpage_register.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_flush_coalesced_mmio_buffer() local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @kvm_allowed, align 1, !range !18, !noundef !19
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @kvm_flush_coalesced_mmio_buffer() #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare void @kvm_flush_coalesced_mmio_buffer() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_mutex_lock_ramlist() local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.a(ptr noundef nonnull @ram_list, ptr noundef nonnull @.str.1, i32 noundef 1452) #27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_mutex_unlock_ramlist() local_unnamed_addr #0 {
bb.a:
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull @ram_list, ptr noundef nonnull @.str.1, i32 noundef 1457) #27
  ret void
}

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @ram_block_format() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_string_new(ptr noundef nonnull @.str.17) #27 ; 3 uses
  %i.b = tail call ptr @get_ptr_rcu_reader() #27  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
end_hunk_0
