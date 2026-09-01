Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/fib_semantics?download=true
inline.NumInlined: 277
inline.NumDeleted: 135
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@fib_create_info:bb.a
  %.not250 = icmp eq i32 %i.q, 0
  br i1 %.not250, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.4) #16
  %.not286 = icmp eq ptr %1, null
  br i1 %.not286, label %.critedge.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr @fib_create_info.__msg.4, ptr %1, align 8
  br label %.critedge.thread

bb.j:                                             ; preds = %bb.g
  %i.r = getelementptr i8, ptr %0, i64 48
  %i.s = load i32, ptr %i.r, align 8              ; 4 uses
  %.not251 = icmp eq i32 %i.s, 0
  br i1 %.not251, label %bb.y, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr i8, ptr %0, i64 56
  %i.u = load ptr, ptr %i.t, align 8
  %.not252 = icmp eq ptr %i.u, null
  br i1 %.not252, label %bb.l, label %fib_find_info_nh.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr i8, ptr %0, i64 2
  %i.w = load i8, ptr %i.v, align 2               ; 2 uses
  %i.x = getelementptr i8, ptr %0, i64 44
  %i.y = load i32, ptr %i.x, align 4              ; 2 uses
  %i.z = getelementptr i8, ptr %0, i64 40
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = zext i8 %i.w to i32
  %i.ac = shl nuw nsw i32 %i.ab, 8
  %i.ad = zext i8 %i.m to i32
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = getelementptr i8, ptr %i.b, i64 648
  %.val.i = load i32, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %i.b, i64 1368
  %.val50.i = load i32, ptr %i.ag, align 8
  %i.ah = xor i32 %.val.i, %i.ae
  %i.ai = xor i32 %i.ah, %i.s
  %i.aj = xor i32 %i.ai, %i.y
  %i.ak = xor i32 %i.aj, %i.aa
  %i.al = mul i32 %i.ak, 1640531527
  %i.am = sub i32 32, %.val50.i
  %i.an = lshr i32 %i.al, %i.am
  %i.ao = getelementptr i8, ptr %i.b, i64 1360
  %i.ap = load ptr, ptr %i.ao, align 16
  %i.aq = zext i32 %i.an to i64
  %i.ar = getelementptr [8 x i8], ptr %i.ap, i64 %i.aq
  %.04051.i = load ptr, ptr %i.ar, align 8        ; 2 uses
  %.not4452.i = icmp eq ptr %.04051.i, null
  br i1 %.not4452.i, label %fib_find_info_nh.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.as = getelementptr i8, ptr %0, i64 8
  br label %bb.m

bb.m:                                             ; preds = %bb.v, %.lr.ph.i
  %.04053.i = phi ptr [ %.04051.i, %.lr.ph.i ], [ %.040.i, %bb.v ] ; 11 uses
  %i.at = getelementptr i8, ptr %.04053.i, i64 104
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not45.i = icmp eq ptr %i.au, null
  br i1 %.not45.i, label %bb.v, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr i8, ptr %i.au, i64 96
  %i.aw = load i32, ptr %i.av, align 8
  %.not46.i = icmp eq i32 %i.aw, %i.s
  br i1 %.not46.i, label %bb.o, label %bb.v

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr i8, ptr %.04053.i, i64 69
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.w, %i.ay
  br i1 %i.az, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr i8, ptr %.04053.i, i64 70
  %i.bb = load i8, ptr %i.ba, align 2
  %i.bc = icmp eq i8 %i.m, %i.bb
  br i1 %i.bc, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr i8, ptr %.04053.i, i64 72
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = icmp eq i32 %i.y, %i.be
  br i1 %i.bf, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr i8, ptr %.04053.i, i64 80
  %i.bh = load i32, ptr %i.bg, align 8
  %i.bi = icmp eq i32 %i.aa, %i.bh
  br i1 %i.bi, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr i8, ptr %.04053.i, i64 71
  %i.bk = load i8, ptr %i.bj, align 1
  %i.bl = icmp eq i8 %i.f, %i.bk
  br i1 %i.bl, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.bm = load i32, ptr %i.as, align 8
  %i.bn = getelementptr i8, ptr %.04053.i, i64 76
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bm, %i.bo
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bq = getelementptr i8, ptr %.04053.i, i64 64
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = xor i32 %i.br, %i.p
  %i.bt = and i32 %i.bs, -90
  %.not47.i = icmp eq i32 %i.bt, 0
  br i1 %.not47.i, label %fib_find_info_nh.exit, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.040.i = load ptr, ptr %.04053.i, align 8      ; 2 uses
  %.not44.i = icmp eq ptr %.040.i, null
  br i1 %.not44.i, label %fib_find_info_nh.exit.thread, label %bb.m, !llvm.loop !43

fib_find_info_nh.exit:                            ; preds = %bb.u
  %i.bu = getelementptr i8, ptr %.04053.i, i64 56
  tail call fastcc void @refcount_inc(ptr noundef %i.bu) #17, !srcloc !44
  br label %.loopexit

fib_find_info_nh.exit.thread:                     ; preds = %bb.v, %bb.l, %bb.k
  %i.bv = tail call ptr @nexthop_find_by_id(ptr noundef %i.b, i32 noundef %i.s) #16 ; 2 uses
  %.not254 = icmp eq ptr %i.bv, null
  br i1 %.not254, label %bb.w, label %bb.y

bb.w:                                             ; preds = %fib_find_info_nh.exit.thread
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.5) #16
  %.not255 = icmp eq ptr %1, null
  br i1 %.not255, label %.critedge.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr @fib_create_info.__msg.5, ptr %1, align 8
  br label %.critedge.thread

bb.y:                                             ; preds = %fib_find_info_nh.exit.thread, %bb.j
  %.0224 = phi i32 [ 1, %bb.j ], [ 0, %fib_find_info_nh.exit.thread ]
  %.0222 = phi ptr [ null, %bb.j ], [ %i.bv, %fib_find_info_nh.exit.thread ] ; 4 uses
  %i.bw = getelementptr i8, ptr %0, i64 64        ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not256 = icmp eq ptr %i.bx, null
  br i1 %.not256, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.by = getelementptr i8, ptr %0, i64 76
  %i.bz = load i32, ptr %i.by, align 4            ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 7
  br i1 %i.ca, label %.lr.ph.i291, label %._crit_edge.i.thread

.lr.ph.i291:                                      ; preds = %bb.z, %bb.aa
  %.019.i = phi i32 [ %i.ce, %bb.aa ], [ 0, %bb.z ]
  %.0618.i = phi ptr [ %i.cj, %bb.aa ], [ %i.bx, %bb.z ] ; 2 uses
  %.01117.i = phi i32 [ %i.ch, %bb.aa ], [ %i.bz, %bb.z ] ; 2 uses
  %i.cb = load i16, ptr %.0618.i, align 4         ; 2 uses
  %i.cc = icmp ult i16 %i.cb, 8
  %i.cd = zext i16 %i.cb to i32                   ; 2 uses
  %.not14.i = icmp samesign ult i32 %.01117.i, %i.cd
  %or.cond.i = select i1 %i.cc, i1 true, i1 %.not14.i
  br i1 %or.cond.i, label %.thread13.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i291
  %i.ce = add i32 %.019.i, 1                      ; 3 uses
  %i.cf = add nuw nsw i32 %i.cd, 3
  %i.cg = and i32 %i.cf, 131068                   ; 2 uses
  %i.ch = sub nsw i32 %.01117.i, %i.cg            ; 3 uses
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = getelementptr i8, ptr %.0618.i, i64 %i.ci
  %i.ck = icmp sgt i32 %i.ch, 7
  br i1 %i.ck, label %.lr.ph.i291, label %._crit_edge.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %bb.aa
  %i.cl = icmp sgt i32 %i.ch, 0
  br i1 %i.cl, label %.thread13.i, label %fib_count_nexthops.exit

._crit_edge.i.thread:                             ; preds = %bb.z
  %i.cm = icmp sgt i32 %i.bz, 0
  br i1 %i.cm, label %.thread13.i, label %.critedge.thread

.thread13.i:                                      ; preds = %.lr.ph.i291, %._crit_edge.i.thread, %._crit_edge.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_count_nexthops.__msg) #16
  %.not8.i = icmp eq ptr %1, null
  br i1 %.not8.i, label %.critedge.thread, label %bb.ab

bb.ab:                                            ; preds = %.thread13.i
  store ptr @fib_count_nexthops.__msg, ptr %1, align 8
  br label %.critedge.thread

fib_count_nexthops.exit:                          ; preds = %._crit_edge.i
  %i.cn = icmp eq i32 %i.ce, 0
  br i1 %i.cn, label %.critedge.thread, label %bb.ac

bb.ac:                                            ; preds = %fib_count_nexthops.exit, %bb.y
  %.1225 = phi i32 [ %i.ce, %fib_count_nexthops.exit ], [ %.0224, %bb.y ] ; 4 uses
  %i.co = getelementptr i8, ptr %i.b, i64 1368    ; 4 uses
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  %i.cq = shl nuw i32 1, %i.cp                    ; 2 uses
  %i.cr = getelementptr i8, ptr %i.b, i64 1372    ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 4
  %i.ct = icmp ult i32 %i.cs, %i.cq
  br i1 %i.ct, label %fib_info_hash_grow.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cu = add i32 %i.cp, 1
  %i.cv = shl i32 2, %i.cu                        ; 2 uses
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = icmp slt i32 %i.cv, 0
  %i.cy = shl nuw nsw i64 %i.cw, 3
  %.0.i.i.i = select i1 %i.cx, i64 -1, i64 %i.cy
  %i.cz = tail call noalias ptr @__kvmalloc_node_noprof(i64 noundef %.0.i.i.i, i64 noundef 1, i32 noundef 3520, i32 noundef -1) #19 ; 2 uses
  %.not.i = icmp eq ptr %i.cz, null
  br i1 %.not.i, label %fib_info_hash_grow.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.da = getelementptr i8, ptr %i.b, i64 1360    ; 2 uses
  %i.db = load ptr, ptr %i.da, align 16           ; 3 uses
  store ptr %i.cz, ptr %i.da, align 16
  %i.dc = load i32, ptr %i.co, align 8
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr %i.co, align 8
  %wide.trip.count.i = zext i32 %i.cq to i64      ; 3 uses
  br label %bb.af

bb.af:                                            ; preds = %.critedge.i, %bb.ae
  %indvars.iv.i = phi i64 [ 0, %bb.ae ], [ %indvars.iv.next.i, %.critedge.i ] ; 2 uses
  %i.de = getelementptr [8 x i8], ptr %i.db, i64 %indvars.iv.i
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not6978.i = icmp eq ptr %i.df, null
  br i1 %.not6978.i, label %.critedge.i, label %.lr.ph.i292

.lr.ph.i292:                                      ; preds = %bb.af, %hlist_add_head.exit.i
  %.05879.i = phi ptr [ %i.dg, %hlist_add_head.exit.i ], [ %i.df, %bb.af ] ; 13 uses
  %i.dg = load ptr, ptr %.05879.i, align 8        ; 2 uses
  %i.dh = getelementptr i8, ptr %.05879.i, i64 48
  %i.di = load ptr, ptr %i.dh, align 8            ; 3 uses
  %i.dj = getelementptr i8, ptr %.05879.i, i64 96
  %i.dk = load i32, ptr %i.dj, align 8            ; 5 uses
  %i.dl = getelementptr i8, ptr %.05879.i, i64 69
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = getelementptr i8, ptr %.05879.i, i64 70
  %i.do = load i8, ptr %i.dn, align 2
  %i.dp = getelementptr i8, ptr %.05879.i, i64 72
  %i.dq = load i32, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %.05879.i, i64 80
  %i.ds = load i32, ptr %i.dr, align 8
  %i.dt = zext i8 %i.dm to i32
  %i.du = shl nuw nsw i32 %i.dt, 8
  %i.dv = zext i8 %i.do to i32
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = xor i32 %i.dq, %i.dw
  %i.dy = xor i32 %i.dx, %i.ds
  %i.dz = xor i32 %i.dy, %i.dk                    ; 4 uses
  %i.ea = getelementptr i8, ptr %.05879.i, i64 104
  %i.eb = load ptr, ptr %i.ea, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i292
  %i.ec = getelementptr i8, ptr %i.eb, i64 96
  %i.ed = load i32, ptr %i.ec, align 8
  %i.ee = xor i32 %i.ed, %i.dz
  br label %fib_info_hash_bucket.exit.i

bb.ah:                                            ; preds = %.lr.ph.i292
  %.not25.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not25.i.i, label %fib_info_hash_bucket.exit.i, label %fib_info_num_path.exit.preheader.i.i

fib_info_num_path.exit.preheader.i.i:             ; preds = %bb.ah
  %i.ef = getelementptr i8, ptr %.05879.i, i64 128 ; 2 uses
  %xtraiter = and i32 %i.dk, 7                    ; 3 uses
  %i.eg = icmp ult i32 %i.dk, 8
  br i1 %i.eg, label %fib_info_num_path.exit.i.i.epil.preheader, label %fib_info_num_path.exit.preheader.i.i.new

fib_info_num_path.exit.preheader.i.i.new:         ; preds = %fib_info_num_path.exit.preheader.i.i
  %unroll_iter = and i32 %i.dk, -8
  br label %fib_info_num_path.exit.i.i

fib_info_num_path.exit.i.i:                       ; preds = %fib_info_num_path.exit.i.i, %fib_info_num_path.exit.preheader.i.i.new
  %.024.i.i = phi ptr [ %i.ef, %fib_info_num_path.exit.preheader.i.i.new ], [ %i.ff, %fib_info_num_path.exit.i.i ] ; 9 uses
  %.01922.i.i = phi i32 [ %i.dz, %fib_info_num_path.exit.preheader.i.i.new ], [ %i.fe, %fib_info_num_path.exit.i.i ]
  %niter = phi i32 [ 0, %fib_info_num_path.exit.preheader.i.i.new ], [ %niter.next.7, %fib_info_num_path.exit.i.i ]
  %i.eh = getelementptr i8, ptr %.024.i.i, i64 8
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = xor i32 %i.ei, %.01922.i.i
  %i.ek = getelementptr i8, ptr %.024.i.i, i64 112
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = xor i32 %i.el, %i.ej
  %i.en = getelementptr i8, ptr %.024.i.i, i64 216
  %i.eo = load i32, ptr %i.en, align 8
  %i.ep = xor i32 %i.eo, %i.em
  %i.eq = getelementptr i8, ptr %.024.i.i, i64 320
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = xor i32 %i.er, %i.ep
  %i.et = getelementptr i8, ptr %.024.i.i, i64 424
  %i.eu = load i32, ptr %i.et, align 8
  %i.ev = xor i32 %i.eu, %i.es
  %i.ew = getelementptr i8, ptr %.024.i.i, i64 528
  %i.ex = load i32, ptr %i.ew, align 8
  %i.ey = xor i32 %i.ex, %i.ev
  %i.ez = getelementptr i8, ptr %.024.i.i, i64 632
  %i.fa = load i32, ptr %i.ez, align 8
  %i.fb = xor i32 %i.fa, %i.ey
  %i.fc = getelementptr i8, ptr %.024.i.i, i64 736
  %i.fd = load i32, ptr %i.fc, align 8
  %i.fe = xor i32 %i.fd, %i.fb                    ; 3 uses
  %i.ff = getelementptr i8, ptr %.024.i.i, i64 832 ; 2 uses
  %niter.next.7 = add nuw i32 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %fib_info_hash_bucket.exit.i.loopexit.unr-lcssa, label %fib_info_num_path.exit.i.i, !llvm.loop !46

fib_info_hash_bucket.exit.i.loopexit.unr-lcssa:   ; preds = %fib_info_num_path.exit.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fib_info_hash_bucket.exit.i, label %fib_info_num_path.exit.i.i.epil.preheader

fib_info_num_path.exit.i.i.epil.preheader:        ; preds = %fib_info_hash_bucket.exit.i.loopexit.unr-lcssa, %fib_info_num_path.exit.preheader.i.i
  %.024.i.i.epil.init = phi ptr [ %i.ef, %fib_info_num_path.exit.preheader.i.i ], [ %i.ff, %fib_info_hash_bucket.exit.i.loopexit.unr-lcssa ]
  %.01922.i.i.epil.init = phi i32 [ %i.dz, %fib_info_num_path.exit.preheader.i.i ], [ %i.fe, %fib_info_hash_bucket.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod415 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod415)
  br label %fib_info_num_path.exit.i.i.epil

fib_info_num_path.exit.i.i.epil:                  ; preds = %fib_info_num_path.exit.i.i.epil, %fib_info_num_path.exit.i.i.epil.preheader
  %.024.i.i.epil = phi ptr [ %i.fj, %fib_info_num_path.exit.i.i.epil ], [ %.024.i.i.epil.init, %fib_info_num_path.exit.i.i.epil.preheader ] ; 2 uses
  %.01922.i.i.epil = phi i32 [ %i.fi, %fib_info_num_path.exit.i.i.epil ], [ %.01922.i.i.epil.init, %fib_info_num_path.exit.i.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %fib_info_num_path.exit.i.i.epil ], [ 0, %fib_info_num_path.exit.i.i.epil.preheader ]
  %i.fg = getelementptr i8, ptr %.024.i.i.epil, i64 8
  %i.fh = load i32, ptr %i.fg, align 8
  %i.fi = xor i32 %i.fh, %.01922.i.i.epil         ; 2 uses
  %i.fj = getelementptr i8, ptr %.024.i.i.epil, i64 104
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %fib_info_hash_bucket.exit.i, label %fib_info_num_path.exit.i.i.epil, !llvm.loop !47

fib_info_hash_bucket.exit.i:                      ; preds = %fib_info_hash_bucket.exit.i.loopexit.unr-lcssa, %fib_info_num_path.exit.i.i.epil, %bb.ah, %bb.ag
  %.1.i.i = phi i32 [ %i.ee, %bb.ag ], [ %i.dz, %bb.ah ], [ %i.fe, %fib_info_hash_bucket.exit.i.loopexit.unr-lcssa ], [ %i.fi, %fib_info_num_path.exit.i.i.epil ]
  %i.fk = getelementptr i8, ptr %i.di, i64 1360
  %i.fl = load ptr, ptr %i.fk, align 16
  %i.fm = getelementptr i8, ptr %i.di, i64 648
  %.val.i.i = load i32, ptr %i.fm, align 8
  %i.fn = getelementptr i8, ptr %i.di, i64 1368
  %.val21.i.i = load i32, ptr %i.fn, align 8
  %i.fo = xor i32 %.val.i.i, %.1.i.i
  %i.fp = mul i32 %i.fo, 1640531527
  %i.fq = sub i32 32, %.val21.i.i
  %i.fr = lshr i32 %i.fp, %i.fq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr [8 x i8], ptr %i.fl, i64 %i.fs ; 3 uses
  %i.fu = load ptr, ptr %i.ft, align 8            ; 3 uses
  store volatile ptr %i.fu, ptr %.05879.i, align 8
  %.not.i72.i = icmp eq ptr %i.fu, null
  br i1 %.not.i72.i, label %hlist_add_head.exit.i, label %bb.ai

bb.ai:                                            ; preds = %fib_info_hash_bucket.exit.i
  %i.fv = getelementptr i8, ptr %i.fu, i64 8
  store volatile ptr %.05879.i, ptr %i.fv, align 8
  br label %hlist_add_head.exit.i

hlist_add_head.exit.i:                            ; preds = %bb.ai, %fib_info_hash_bucket.exit.i
  store volatile ptr %.05879.i, ptr %i.ft, align 8
  %i.fw = getelementptr i8, ptr %.05879.i, i64 8
  store volatile ptr %i.ft, ptr %i.fw, align 8
  %.not69.i = icmp eq ptr %i.dg, null
  br i1 %.not69.i, label %.critedge.i, label %.lr.ph.i292, !llvm.loop !49

.critedge.i:                                      ; preds = %hlist_add_head.exit.i, %bb.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.preheader.preheader.i, label %bb.af, !llvm.loop !50

.preheader.preheader.i:                           ; preds = %.critedge.i
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.db, i64 %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge2.i, %.preheader.preheader.i
  %indvars.iv86.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next87.i, %.critedge2.i ] ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv86.i
  %i.fy = load ptr, ptr %i.fx, align 8            ; 2 uses
  %.not65.i = icmp eq ptr %i.fy, null
  %i.fz = getelementptr i8, ptr %i.fy, i64 -16    ; 2 uses
  %.not668198.i = icmp eq ptr %i.fz, null
  %.not6681.i = or i1 %.not65.i, %.not668198.i
  br i1 %.not6681.i, label %.critedge2.i, label %.lr.ph83.i

.lr.ph83.i:                                       ; preds = %.preheader.i, %hlist_add_head.exit75.i
  %.05782.i = phi ptr [ %i.gw, %hlist_add_head.exit75.i ], [ %i.fz, %.preheader.i ] ; 4 uses
  %i.ga = getelementptr i8, ptr %.05782.i, i64 16 ; 4 uses
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  %i.gc = getelementptr i8, ptr %.05782.i, i64 48
  %i.gd = load ptr, ptr %i.gc, align 8            ; 3 uses
  %i.ge = getelementptr i8, ptr %.05782.i, i64 72
  %i.gf = load i32, ptr %i.ge, align 8
  %i.gg = getelementptr i8, ptr %i.gd, i64 1368
  %i.gh = load i32, ptr %i.gg, align 8            ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gd, i64 648
  %.val.i73.i = load i32, ptr %i.gi, align 8
  %i.gj = xor i32 %.val.i73.i, %i.gf
  %i.gk = mul i32 %i.gj, 1640531527
  %i.gl = sub i32 32, %i.gh
  %i.gm = lshr i32 %i.gk, %i.gl
  %i.gn = getelementptr i8, ptr %i.gd, i64 1360
  %i.go = load ptr, ptr %i.gn, align 16
  %i.gp = shl nuw i32 1, %i.gh
  %i.gq = or disjoint i32 %i.gm, %i.gp
  %i.gr = zext i32 %i.gq to i64
  %i.gs = getelementptr [8 x i8], ptr %i.go, i64 %i.gr ; 3 uses
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  store volatile ptr %i.gt, ptr %i.ga, align 8
  %.not.i74.i = icmp eq ptr %i.gt, null
  br i1 %.not.i74.i, label %hlist_add_head.exit75.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph83.i
  %i.gu = getelementptr i8, ptr %i.gt, i64 8
  store volatile ptr %i.ga, ptr %i.gu, align 8
  br label %hlist_add_head.exit75.i

hlist_add_head.exit75.i:                          ; preds = %bb.aj, %.lr.ph83.i
  store volatile ptr %i.ga, ptr %i.gs, align 8
  %i.gv = getelementptr i8, ptr %.05782.i, i64 24
  store volatile ptr %i.gs, ptr %i.gv, align 8
  %.not67.i = icmp eq ptr %i.gb, null
  %i.gw = getelementptr i8, ptr %i.gb, i64 -16    ; 2 uses
  %.not6699.i = icmp eq ptr %i.gw, null
  %.not66.i = or i1 %.not67.i, %.not6699.i
  br i1 %.not66.i, label %.critedge2.i, label %.lr.ph83.i

.critedge2.i:                                     ; preds = %hlist_add_head.exit75.i, %.preheader.i
  %indvars.iv.next87.i = add nuw nsw i64 %indvars.iv86.i, 1 ; 2 uses
  %exitcond90.not.i = icmp eq i64 %indvars.iv.next87.i, %wide.trip.count.i
  br i1 %exitcond90.not.i, label %bb.ak, label %.preheader.i, !llvm.loop !51

bb.ak:                                            ; preds = %.critedge2.i
  tail call void @kvfree(ptr noundef %i.db) #16
  br label %fib_info_hash_grow.exit

fib_info_hash_grow.exit:                          ; preds = %bb.ak, %bb.ad, %bb.ac
  %i.gx = sext i32 %.1225 to i64
  %i.gy = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 range(i64 -2147483648, 2147483648) %i.gx, i64 104) ; 2 uses
  %i.gz = extractvalue { i64, i1 } %i.gy, 1       ; 2 uses
  %i.ha = extractvalue { i64, i1 } %i.gy, 0
  %i.hb = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 range(i64 -4611686016279904256, 4611686018427387905) %i.ha, i64 128) ; 2 uses
  %i.hc = extractvalue { i64, i1 } %i.hb, 1
  %i.hd = select i1 %i.gz, i1 true, i1 %i.hc
  %i.he = extractvalue { i64, i1 } %i.hb, 0
  %i.hf = select i1 %i.gz, i64 127, i64 %i.he
  %.0.i = select i1 %i.hd, i64 -1, i64 %i.hf
  %i.hg = tail call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 -4611686016279904128, 4611686018427388033) %.0.i, i32 noundef 3520) #19 ; 45 uses
  %.not257 = icmp eq ptr %i.hg, null
  br i1 %.not257, label %.critedge.thread, label %bb.al

bb.al:                                            ; preds = %fib_info_hash_grow.exit
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 96 ; 7 uses
  store i32 %.1225, ptr %i.hh, align 8
  %i.hi = getelementptr i8, ptr %0, i64 56
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = getelementptr i8, ptr %0, i64 72
  %i.hl = load i32, ptr %i.hk, align 8
  %i.hm = tail call ptr @ip_fib_metrics_init(ptr noundef %i.hj, i32 noundef %i.hl, ptr noundef %1) #16 ; 3 uses
  %i.hn = getelementptr i8, ptr %i.hg, i64 88
  store ptr %i.hm, ptr %i.hn, align 8
  %i.ho = icmp ugt ptr %i.hm, inttoptr (i64 -4096 to ptr)
  br i1 %i.ho, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.hp = ptrtoint ptr %i.hm to i64
  tail call void @kfree(ptr noundef nonnull %i.hg) #16
  %sext = shl i64 %i.hp, 32
  %i.hq = ashr exact i64 %sext, 32
  %i.hr = inttoptr i64 %i.hq to ptr
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  %i.hs = getelementptr i8, ptr %i.hg, i64 48
  store ptr %i.b, ptr %i.hs, align 8
  %i.ht = getelementptr i8, ptr %0, i64 2
  %i.hu = load i8, ptr %i.ht, align 2
  %i.hv = getelementptr i8, ptr %i.hg, i64 69
  store i8 %i.hu, ptr %i.hv, align 1
  %i.hw = load i8, ptr %i.l, align 1
  %i.hx = getelementptr i8, ptr %i.hg, i64 70     ; 2 uses
  store i8 %i.hw, ptr %i.hx, align 2
  %i.hy = load i32, ptr %i.o, align 4
  %i.hz = getelementptr i8, ptr %i.hg, i64 64     ; 3 uses
  store i32 %i.hy, ptr %i.hz, align 8
  %i.ia = getelementptr i8, ptr %0, i64 40
  %i.ib = load i32, ptr %i.ia, align 8
  %i.ic = getelementptr i8, ptr %i.hg, i64 80
  store i32 %i.ib, ptr %i.ic, align 8
  %i.id = getelementptr i8, ptr %0, i64 44
  %i.ie = load i32, ptr %i.id, align 4
  %i.if = getelementptr i8, ptr %i.hg, i64 72     ; 3 uses
  store i32 %i.ie, ptr %i.if, align 8
  %i.ig = load i8, ptr %i.e, align 4
  %i.ih = getelementptr i8, ptr %i.hg, i64 71
  store i8 %i.ig, ptr %i.ih, align 1
  %i.ii = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8
  %i.ik = getelementptr i8, ptr %i.hg, i64 76
  store i32 %i.ij, ptr %i.ik, align 4
  store i32 %.1225, ptr %i.hh, align 8
  %.not258 = icmp eq ptr %.0222, null
  br i1 %.not258, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.il = tail call fastcc zeroext i1 @nexthop_get(ptr noundef %.0222) #17, !srcloc !52
  br i1 %i.il, label %.thread315, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib_create_info.__msg.6) #16
  %.not260 = icmp eq ptr %1, null
  br i1 %.not260, label %free_fib_info.exit, label %free_fib_info.exit.sink.split

.thread315:                                       ; preds = %bb.ao
  %i.im = getelementptr i8, ptr %i.hg, i64 104
  store ptr %.0222, ptr %i.im, align 8
  br label %bb.bb

bb.aq:                                            ; preds = %bb.an
  %i.in = getelementptr i8, ptr %i.hg, i64 128    ; 2 uses
  %i.io = getelementptr i8, ptr %i.hg, i64 104
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aw, %bb.aq
  %.0215 = phi i32 [ 0, %bb.aq ], [ %i.jf, %bb.aw ] ; 2 uses
  %.0214 = phi ptr [ %i.in, %bb.aq ], [ %i.je, %bb.aw ] ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8            ; 3 uses
  %.not.i294 = icmp eq ptr %i.ip, null
  br i1 %.not.i294, label %bb.av, label %bb.as, !prof !20

bb.as:                                            ; preds = %bb.ar
  %i.iq = getelementptr i8, ptr %i.ip, i64 102
  %i.ir = load i8, ptr %i.iq, align 2, !range !21, !noundef !22
  %i.is = trunc nuw i8 %i.ir to i1
  br i1 %i.is, label %bb.at, label %fib_info_num_path.exit

bb.at:                                            ; preds = %bb.as
  %i.it = getelementptr i8, ptr %i.ip, i64 128
  %i.iu = load volatile ptr, ptr %i.it, align 8   ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 10
  %i.iw = load i8, ptr %i.iv, align 2, !range !21, !noundef !22
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %bb.au, label %fib_info_num_path.exit

bb.au:                                            ; preds = %bb.at
  %i.iy = getelementptr i8, ptr %i.iu, i64 8
  %i.iz = load i16, ptr %i.iy, align 8
  %i.ja = zext i16 %i.iz to i32
  br label %fib_info_num_path.exit

bb.av:                                            ; preds = %bb.ar
  %i.jb = load i32, ptr %i.hh, align 8
  br label %fib_info_num_path.exit

fib_info_num_path.exit:                           ; preds = %bb.as, %bb.at, %bb.au, %bb.av
  %.0.i295 = phi i32 [ %i.jb, %bb.av ], [ 1, %bb.as ], [ %i.ja, %bb.au ], [ 1, %bb.at ]
  %i.jc = icmp ult i32 %.0215, %.0.i295
  br i1 %i.jc, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %fib_info_num_path.exit
  %i.jd = getelementptr i8, ptr %.0214, i64 88
  store ptr %i.hg, ptr %i.jd, align 8
  %i.je = getelementptr i8, ptr %.0214, i64 104
  %i.jf = add nuw i32 %.0215, 1
  br label %bb.ar, !llvm.loop !53

bb.ax:                                            ; preds = %fib_info_num_path.exit
  %i.jg = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not259 = icmp eq ptr %i.jg, null
  br i1 %.not259, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jh = getelementptr i8, ptr %0, i64 76
  %i.ji = load i32, ptr %i.jh, align 4
  %i.jj = tail call fastcc i32 @fib_get_nhs(ptr noundef %i.hg, ptr noundef %i.jg, i32 noundef %i.ji, ptr noundef %0, ptr noundef %1) #17, !srcloc !54
  br label %bb.ba

bb.az:                                            ; preds = %bb.ax
end_hunk_0
