inline.NumInlined: 59
inline.NumDeleted: 16
begin_hunk_0_@mspace_malloc_lockless:bb.a
  %.0158 = phi ptr [ %i.ci, %bb.t ], [ %i.cn, %bb.u ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store ptr %i.cd, ptr %i.cq, align 8, !tbaa !20
  %i.cr = getelementptr inbounds nuw i8, ptr %.0158, i64 24
  store ptr %i.cd, ptr %i.cr, align 8, !tbaa !24
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  store ptr %.0158, ptr %i.cs, align 8, !tbaa !20
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  store ptr %i.ci, ptr %i.ct, align 8, !tbaa !24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.r
  store i64 %i.bp, ptr %i.am, align 8, !tbaa !27
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.by, ptr %i.cu, align 8, !tbaa !29
  br label %.thread

bb.y:                                             ; preds = %bb.j
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !30
  %.not179 = icmp eq i32 %i.cw, 0
  br i1 %.not179, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = tail call fastcc ptr @tmalloc_small(ptr noundef nonnull %0, i64 noundef %i.e)
  br label %.thread

bb.aa:                                            ; preds = %bb.a
  %i.cy = icmp ugt i64 %1, -129
  br i1 %i.cy, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cz = add nuw i64 %1, 23
  %i.da = and i64 %i.cz, -16                      ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !30
  %.not = icmp eq i32 %i.dc, 0
  br i1 %.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dd = tail call fastcc ptr @tmalloc_large(ptr noundef nonnull %0, i64 noundef %i.da) ; 2 uses
  %.not176 = icmp eq ptr %i.dd, null
  br i1 %.not176, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.i, %bb.y, %bb.aa, %bb.ac, %bb.ab
  %.0156 = phi i64 [ -1, %bb.aa ], [ %i.da, %bb.ab ], [ %i.da, %bb.ac ], [ %i.e, %bb.y ], [ %i.e, %bb.i ] ; 9 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !27 ; 5 uses
  %.not186 = icmp ugt i64 %.0156, %i.df
  br i1 %.not186, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = sub nuw i64 %i.df, %.0156               ; 4 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !29 ; 6 uses
  %i.dj = icmp ugt i64 %i.dg, 31
  br i1 %i.dj, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %.0156 ; 2 uses
  %i.dl = or i64 %i.dg, 1
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !26
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  store i64 %i.dg, ptr %i.dn, align 8, !tbaa !28
  %i.do = or i64 %.0156, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.do, ptr %i.dp, align 8, !tbaa !26
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.dq = or i64 %i.df, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store i64 %i.dq, ptr %i.dr, align 8, !tbaa !26
  %i.ds = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.df
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !26
  %i.dv = or i64 %i.du, 1
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !26
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink192 = phi ptr [ %i.dk, %bb.af ], [ null, %bb.ag ]
  %.sink = phi i64 [ %i.dg, %bb.af ], [ 0, %bb.ag ]
  store ptr %.sink192, ptr %i.dh, align 8, !tbaa !29
  store i64 %.sink, ptr %i.de, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  br label %.thread

bb.ai:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !31 ; 2 uses
  %i.dz = icmp ult i64 %.0156, %i.dy
  br i1 %i.dz, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ea = sub nuw i64 %i.dy, %.0156               ; 2 uses
  store i64 %i.ea, ptr %i.dx, align 8, !tbaa !31
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !32 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 %.0156 ; 2 uses
  store ptr %i.ed, ptr %i.eb, align 8, !tbaa !32
  %i.ee = or i64 %i.ea, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !26
  %i.eg = or i64 %.0156, 3
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !26
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.ej = tail call fastcc ptr @sys_alloc(ptr noundef nonnull %0, i64 noundef %.0156)
  br label %.thread

.thread:                                          ; preds = %bb.x, %bb.q, %bb.z, %bb.h, %bb.ak, %bb.ac, %bb.ah, %bb.aj
  %.2 = phi ptr [ %i.dw, %bb.ah ], [ %i.ei, %bb.aj ], [ %i.ej, %bb.ak ], [ %i.dd, %bb.ac ], [ %i.bb, %bb.x ], [ %i.bb, %bb.q ], [ %i.cx, %bb.z ], [ %i.t, %bb.h ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @boost_cont_multialloc_arrays(i64 noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.c = and i32 %i.b, 2
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %spin_acquire_lock.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not12 = icmp eq i32 %i.d, 0
  br i1 %.not12, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %.preheader.backedge
  %.0.i = phi i32 [ %i.g, %.preheader.backedge ], [ 0, %bb.d ]
  %i.e = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.e, label %.critedge.i

bb.e:                                             ; preds = %.preheader
  %i.f = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.e, %.preheader
  %i.g = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.h = and i32 %i.g, 63
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.preheader.backedge

bb.f:                                             ; preds = %.critedge.i
  %i.j = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.f, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.e, %bb.c, %bb.d
  %.not.i14 = icmp eq i64 %2, 0
  br i1 %.not.i14, label %internal_multialloc_arrays.exit, label %bb.g

bb.g:                                             ; preds = %spin_acquire_lock.exit
  %i.k = udiv i64 -128, %2                        ; 2 uses
  switch i64 %3, label %bb.i [
    i64 0, label %bb.k
    i64 -1, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.l = icmp ult i64 %i.k, %3
  br i1 %i.l, label %internal_multialloc_arrays.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = mul i64 %3, %2
  %i.n = add i64 %i.m, -8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.g
  %.0101.i = phi i64 [ %i.n, %bb.j ], [ -128, %bb.h ], [ 4088, %bb.g ]
  %i.o = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10 ; 2 uses
  %i.p = and i32 %i.o, 1                          ; 2 uses
  %i.q = and i32 %i.o, -2
  store i32 %i.q, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %.not13147.i = icmp eq i64 %0, 0
  br i1 %.not13147.i, label %._crit_edge50.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.not139.i = icmp eq i32 %i.p, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.backedge.i, %.preheader.lr.ph.i
  %.010648.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %.0106.be.i, %.backedge.i ] ; 10 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.preheader.i
  %.111033.i = phi i64 [ %.010648.i, %.preheader.i ], [ %i.ae, %bb.n ] ; 3 uses
  %.011632.i = phi i64 [ 0, %.preheader.i ], [ %i.ad, %bb.n ] ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.111033.i
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39   ; 2 uses
  %i.u = icmp ult i64 %i.k, %i.t
  br i1 %i.u, label %.thread18.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = mul i64 %i.t, %2                         ; 2 uses
  %i.w = icmp ult i64 %i.v, 23
  %i.x = add i64 %i.v, 23
  %i.y = and i64 %i.x, -16
  %i.z = select i1 %i.w, i64 32, i64 %i.y         ; 3 uses
  %i.aa = sub i64 %.0101.i, %.011632.i
  %i.ab = icmp ult i64 %i.aa, %i.z
  br i1 %i.ab, label %.thread13.i, label %bb.n

.thread13.i:                                      ; preds = %bb.m
  %.not134.i = icmp eq i64 %.011632.i, 0          ; 2 uses
  %spec.select.i = select i1 %.not134.i, i64 %i.z, i64 %.011632.i
  %i.ac = zext i1 %.not134.i to i64
  %spec.select141.i = add i64 %.111033.i, %i.ac
  br label %.thread5.i

bb.n:                                             ; preds = %bb.m
  %i.ad = add i64 %i.z, %.011632.i                ; 2 uses
  %i.ae = add i64 %.111033.i, 1                   ; 2 uses
  %.not133.i = icmp eq i64 %i.ae, %0
  br i1 %.not133.i, label %.thread5.i, label %bb.l, !llvm.loop !93

.thread5.i:                                       ; preds = %bb.n, %.thread13.i
  %.512.i = phi i64 [ %spec.select141.i, %.thread13.i ], [ %0, %bb.n ] ; 7 uses
  %.412010.i = phi i64 [ %spec.select.i, %.thread13.i ], [ %i.ad, %bb.n ]
  %i.af = add i64 %.412010.i, -8
  %i.ag = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %i.af) ; 8 uses
  %.not140.i = icmp eq ptr %i.ag, null
  br i1 %.not140.i, label %.thread18.i, label %bb.o

.thread18.i:                                      ; preds = %.thread5.i, %bb.l
  %.not13842.i = icmp eq i64 %.010648.i, 0
  br i1 %.not13842.i, label %._crit_edge46.i, label %.lr.ph45.preheader.i

.lr.ph45.preheader.i:                             ; preds = %.thread18.i
  %i.ah = load ptr, ptr %5, align 8, !tbaa !94
  br label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %.lr.ph45.i, %.lr.ph45.preheader.i
  %.110744.i = phi i64 [ %i.ai, %.lr.ph45.i ], [ %.010648.i, %.lr.ph45.preheader.i ]
  %.sroa.018.043.i = phi ptr [ %i.aj, %.lr.ph45.i ], [ %i.ah, %.lr.ph45.preheader.i ] ; 3 uses
  %i.ai = add i64 %.110744.i, -1                  ; 2 uses
  %i.aj = load ptr, ptr %.sroa.018.043.i, align 8, !tbaa !98
  %i.ak = getelementptr inbounds i8, ptr %.sroa.018.043.i, i64 -8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !26
  %i.am = and i64 %i.al, -8
  %i.an = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.ao = sub i64 %i.an, %i.am
  store i64 %i.ao, ptr @s_allocated_memory, align 8, !tbaa !39
  tail call fastcc void @mspace_free_lockless(ptr noundef nonnull %.sroa.018.043.i)
  %.not138.i = icmp eq i64 %i.ai, 0
  br i1 %.not138.i, label %._crit_edge46.i, label %.lr.ph45.i, !llvm.loop !99

._crit_edge46.i:                                  ; preds = %.lr.ph45.i, %.thread18.i
  br i1 %.not139.i, label %internal_multialloc_arrays.exit, label %.loopexit.sink.split.i, !llvm.loop !100

bb.o:                                             ; preds = %.thread5.i
  %i.ap = getelementptr inbounds i8, ptr %i.ag, i64 -16 ; 3 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 -8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !26
  %i.as = and i64 %i.ar, -8                       ; 4 uses
  %i.at = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.au = add i64 %i.at, %i.as
  store i64 %i.au, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !101 ; 3 uses
  %i.aw = sub i64 %.512.i, %.010648.i
  %.210834.i = add i64 %.010648.i, 1              ; 3 uses
  %.not13635.i = icmp eq i64 %.210834.i, %.512.i
  br i1 %.not13635.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.o
  %i.ax = add i64 %.512.i, -2
  %i.ay = sub i64 %.010648.i, %.512.i
  %i.az = and i64 %i.ay, 1
  %lcmp.mod.not.not = icmp eq i64 %i.az, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.210834.i
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !39
  %i.bc = mul i64 %i.bb, %2                       ; 2 uses
  %i.bd = icmp ult i64 %i.bc, 23
  %i.be = add i64 %i.bc, 23
  %i.bf = and i64 %i.be, -16
  %i.bg = select i1 %i.bd, i64 32, i64 %i.bf      ; 3 uses
  %i.bh = sub i64 %i.as, %i.bg                    ; 2 uses
  %i.bi = or disjoint i64 %i.bg, 3
  %i.bj = getelementptr inbounds i8, ptr %i.ag, i64 -8
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !26
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bg ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  store ptr %i.bl, ptr %i.ag, align 8, !tbaa !76
  %.2108.i.prol = add i64 %.010648.i, 2
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa82.unr.a = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %.lcssa81.unr.a = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bk, %.lr.ph.i.prol ]
  %.lcssa80.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %i.bl, %.lr.ph.i.prol ]
  %.210839.i.unr = phi i64 [ %.210834.i, %.lr.ph.i.preheader ], [ %.2108.i.prol, %.lr.ph.i.prol ]
  %.09838.i.unr = phi ptr [ %i.ag, %.lr.ph.i.preheader ], [ %i.bl, %.lr.ph.i.prol ]
  %.09937.i.unr = phi ptr [ %i.ap, %.lr.ph.i.preheader ], [ %i.bk, %.lr.ph.i.prol ]
  %.010036.i.unr = phi i64 [ %i.as, %.lr.ph.i.preheader ], [ %i.bh, %.lr.ph.i.prol ]
  %i.bm = icmp eq i64 %i.ax, %.010648.i
  br i1 %i.bm, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.210839.i = phi i64 [ %.2108.i.1, %.lr.ph.i ], [ %.210839.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.09838.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %.09838.i.unr, %.lr.ph.i.prol.loopexit ]
  %.09937.i = phi ptr [ %i.ck, %.lr.ph.i ], [ %.09937.i.unr, %.lr.ph.i.prol.loopexit ] ; 2 uses
  %.010036.i = phi i64 [ %i.ch, %.lr.ph.i ], [ %.010036.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.210839.i
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !39
  %i.bp = mul i64 %i.bo, %2                       ; 2 uses
  %i.bq = icmp ult i64 %i.bp, 23
  %i.br = add i64 %i.bp, 23
  %i.bs = and i64 %i.br, -16
  %i.bt = select i1 %i.bq, i64 32, i64 %i.bs      ; 3 uses
  %i.bu = or disjoint i64 %i.bt, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %.09937.i, i64 8
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !26
  %i.bw = getelementptr inbounds nuw i8, ptr %.09937.i, i64 %i.bt ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  store ptr %i.bx, ptr %.09838.i, align 8, !tbaa !76
  %i.by = getelementptr [8 x i8], ptr %1, i64 %.210839.i
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !39
  %i.cb = mul i64 %i.ca, %2                       ; 2 uses
  %i.cc = icmp ult i64 %i.cb, 23
  %i.cd = add i64 %i.cb, 23
  %i.ce = and i64 %i.cd, -16
  %i.cf = select i1 %i.cc, i64 32, i64 %i.ce      ; 3 uses
  %i.cg = add i64 %i.bt, %i.cf
  %i.ch = sub i64 %.010036.i, %i.cg               ; 2 uses
  %i.ci = or disjoint i64 %i.cf, 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !26
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.cf ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  store ptr %i.cl, ptr %i.bx, align 8, !tbaa !76
  %.2108.i.1 = add i64 %.210839.i, 2              ; 2 uses
  %.not136.i.1 = icmp eq i64 %.2108.i.1, %.512.i
  br i1 %.not136.i.1, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !102

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.o
  %.0100.lcssa.i = phi i64 [ %i.as, %bb.o ], [ %.lcssa82.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.ch, %.lr.ph.i ]
  %.099.lcssa.i = phi ptr [ %i.ap, %bb.o ], [ %.lcssa81.unr.a, %.lr.ph.i.prol.loopexit ], [ %i.ck, %.lr.ph.i ]
  %.098.lcssa.i = phi ptr [ %i.ag, %bb.o ], [ %.lcssa80.unr, %.lr.ph.i.prol.loopexit ], [ %i.cl, %.lr.ph.i ] ; 2 uses
  %i.cm = or disjoint i64 %.0100.lcssa.i, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %.099.lcssa.i, i64 8
  store i64 %i.cm, ptr %i.cn, align 8, !tbaa !26
  %i.co = load ptr, ptr %i.av, align 8, !tbaa !98
  %.not137.i = icmp eq i64 %.512.i, %.010648.i
  br i1 %.not137.i, label %.backedge.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge.i
  %i.cp = load ptr, ptr %i.r, align 8, !tbaa !101
  %i.cq = icmp eq ptr %i.av, %i.cp
  br i1 %i.cq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %.098.lcssa.i, ptr %i.r, align 8, !tbaa !101
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.ag, ptr %i.av, align 8, !tbaa !98
  store ptr %i.co, ptr %.098.lcssa.i, align 8, !tbaa !98
  %i.cr = load i64, ptr %4, align 8, !tbaa !103
  %i.cs = add i64 %i.aw, %i.cr
  store i64 %i.cs, ptr %4, align 8, !tbaa !103
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.r, %._crit_edge.i
  %.0106.be.i = phi i64 [ %.512.i, %bb.r ], [ %.010648.i, %._crit_edge.i ] ; 2 uses
  %.not131.i = icmp eq i64 %.0106.be.i, %0
  br i1 %.not131.i, label %._crit_edge50.i, label %.preheader.i, !llvm.loop !100

._crit_edge50.i:                                  ; preds = %.backedge.i, %bb.k
  %.not132.i = icmp eq i32 %i.p, 0
  br i1 %.not132.i, label %internal_multialloc_arrays.exit, label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %._crit_edge50.i, %._crit_edge46.i
  %.3.ph.i = phi i32 [ 0, %._crit_edge46.i ], [ 1, %._crit_edge50.i ]
  %i.ct = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.cu = or i32 %i.ct, 1
  store i32 %i.cu, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  br label %internal_multialloc_arrays.exit

internal_multialloc_arrays.exit:                  ; preds = %spin_acquire_lock.exit, %bb.i, %._crit_edge46.i, %._crit_edge50.i, %.loopexit.sink.split.i
  %.3.i = phi i32 [ 0, %spin_acquire_lock.exit ], [ 0, %bb.i ], [ 1, %._crit_edge50.i ], [ 0, %._crit_edge46.i ], [ %.3.ph.i, %.loopexit.sink.split.i ]
  %i.cv = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.cw = and i32 %i.cv, 2
  %.not13 = icmp eq i32 %i.cw, 0
  br i1 %.not13, label %bb.t, label %bb.s

bb.s:                                             ; preds = %internal_multialloc_arrays.exit
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.t

bb.t:                                             ; preds = %internal_multialloc_arrays.exit, %bb.s
  ret i32 %.3.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @boost_cont_size(ptr noundef readonly captures(none) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %i.c = and i64 %i.b, -8
  %i.d = and i64 %i.b, 3
  %i.e = icmp eq i64 %i.d, 0
  %.neg = select i1 %i.e, i64 -16, i64 -8
  %i.f = add i64 %.neg, %i.c
  ret i64 %i.f
}

; Function Attrs: nounwind uwtable
define ptr @boost_cont_malloc(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = call { ptr, i32 } @boost_cont_allocation_command(i32 noundef 1, i64 noundef 1, i64 noundef %0, i64 noundef %0, ptr noundef nonnull %i.a, ptr noundef null)
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define { ptr, i32 } @boost_cont_allocation_command(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @mparams, align 8, !tbaa !7
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @init_mparams()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = and i32 %0, 72
  %.not60 = icmp eq i32 %i.b, 0
  br i1 %.not60, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = and i32 %0, 8
  %i.d = tail call i32 @boost_cont_shrink(ptr noundef %5, i64 noundef %3, i64 noundef %2, ptr noundef %4, i32 noundef %i.c)
  %.not72 = icmp eq i32 %i.d, 0
  %i.e = select i1 %.not72, ptr null, ptr %5
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %4, align 8, !tbaa !39
  %i.f = icmp ugt i64 %2, %3
  br i1 %i.f, label %bb.q, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.h = and i32 %i.g, 2
  %.not61 = icmp eq i32 %i.h, 0
  br i1 %.not61, label %spin_acquire_lock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not62 = icmp eq i32 %i.i, 0
  br i1 %.not62, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.g, %.preheader.backedge
  %.0.i = phi i32 [ %i.l, %.preheader.backedge ], [ 0, %bb.g ]
  %i.j = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.h, label %.critedge.i

bb.h:                                             ; preds = %.preheader
  %i.k = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %spin_acquire_lock.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.h, %.preheader
  %i.l = add nuw nsw i32 %.0.i, 1                 ; 2 uses
  %i.m = and i32 %i.l, 63
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %.preheader.backedge

bb.i:                                             ; preds = %.critedge.i
  %i.o = tail call i32 @sched_yield() #17         ; 0 uses
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.i, %.critedge.i
  br label %.preheader, !llvm.loop !17

spin_acquire_lock.exit:                           ; preds = %bb.h, %bb.f, %bb.g
  %.not63 = icmp eq ptr %5, null
  %i.p = and i32 %0, 6
  %.not64 = icmp eq i32 %i.p, 0
  %or.cond = or i1 %.not64, %.not63               ; 2 uses
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %spin_acquire_lock.exit
  %i.q = tail call fastcc ptr @internal_grow_both_sides(i32 noundef %0, ptr noundef %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %1, i32 noundef 1) ; 2 uses
  %.not65 = icmp eq ptr %i.q, null
  br i1 %.not65, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j, %spin_acquire_lock.exit
  %i.r = and i32 %0, 1
  %.not66 = icmp eq i32 %i.r, 0
  br i1 %.not66, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %3) ; 2 uses
  %.not67 = icmp eq ptr %i.s, null
  br i1 %.not67, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.t = tail call ptr @mspace_malloc_lockless(ptr noundef nonnull @_gm_, i64 noundef %2) ; 2 uses
  %.not68 = icmp eq ptr %i.t, null
  br i1 %.not68, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.l, %bb.m
  %.079 = phi ptr [ %i.t, %bb.m ], [ %i.s, %bb.l ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.079, i64 -8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26   ; 2 uses
  %i.w = and i64 %i.v, -8                         ; 2 uses
  %i.x = load i64, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.y = add i64 %i.x, %i.w
  store i64 %i.y, ptr @s_allocated_memory, align 8, !tbaa !39
  %i.z = and i64 %i.v, 3
  %i.aa = icmp eq i64 %i.z, 0
  %.neg = select i1 %i.aa, i64 -16, i64 -8
  %i.ab = add i64 %.neg, %i.w
  store i64 %i.ab, ptr %4, align 8, !tbaa !39
  br label %bb.o

.critedge:                                        ; preds = %bb.m, %bb.k
  br i1 %or.cond, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge
  %i.ac = tail call fastcc ptr @internal_grow_both_sides(i32 noundef %0, ptr noundef %5, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %4, i64 noundef %1, i32 noundef 0) ; 2 uses
  %.not70 = icmp ne ptr %i.ac, null
  %.sroa.6.2. = zext i1 %.not70 to i32
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.j, %bb.n, %.critedge
  %.sroa.6.4 = phi i32 [ %.sroa.6.2., %bb.n ], [ 1, %bb.j ], [ 0, %.critedge ], [ 0, %.thread ] ; 2 uses
  %.sroa.0.4 = phi ptr [ %i.ac, %bb.n ], [ %i.q, %bb.j ], [ null, %.critedge ], [ %.079, %.thread ] ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.ae = and i32 %i.ad, 2
  %.not71 = icmp eq i32 %i.ae, 0
  br i1 %.not71, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store atomic i32 0, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884) release, align 4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.e, %bb.d
  %.sroa.6.6 = phi i32 [ 0, %bb.d ], [ 0, %bb.e ], [ %.sroa.6.4, %bb.o ], [ %.sroa.6.4, %bb.p ]
  %.sroa.0.6 = phi ptr [ %i.e, %bb.d ], [ null, %bb.e ], [ %.sroa.0.4, %bb.o ], [ %.sroa.0.4, %bb.p ]
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0.6, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6.6, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define void @boost_cont_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 880), align 8, !tbaa !10
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %spin_acquire_lock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = atomicrmw xchg ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), i32 1 seq_cst, align 4
  %.not11 = icmp eq i32 %i.c, 0
  br i1 %.not11, label %spin_acquire_lock.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %.preheader.backedge
  %.0.i = phi i32 [ %i.f, %.preheader.backedge ], [ 0, %bb.b ]
  %i.d = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @_gm_, i64 884), align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %.preheader
end_hunk_0
begin_hunk_1_@dispose_chunk:bb.a

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !46
  %i.bd = icmp eq ptr %i.bc, %i.r
  br i1 %i.bd, label %bb.r, label %.critedge443, !prof !25

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !47
  %i.bg = icmp eq ptr %i.bf, %i.r
  br i1 %i.bg, label %bb.s, label %.critedge443, !prof !25

bb.s:                                             ; preds = %bb.r
  store ptr %i.ay, ptr %i.bb, align 8, !tbaa !46
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !47
  br label %bb.z

.critedge443:                                     ; preds = %bb.q, %bb.p, %bb.r
  tail call void @abort() #18
  unreachable

bb.t:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !40 ; 2 uses
  %.not389 = icmp eq ptr %i.bi, null
  br i1 %.not389, label %bb.u, label %.critedge.preheader

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !40 ; 2 uses
  %.not390 = icmp eq ptr %i.bk, null
  br i1 %.not390, label %bb.z, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.u, %bb.t
  %.1342.ph = phi ptr [ %i.bh, %bb.t ], [ %i.bj, %bb.u ]
  %.1338.ph = phi ptr [ %i.bi, %bb.t ], [ %i.bk, %bb.u ]
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %.critedge.preheader
  %.1342 = phi ptr [ %.1342.ph, %.critedge.preheader ], [ %.1342.be, %.critedge.backedge ] ; 2 uses
  %.1338 = phi ptr [ %.1338.ph, %.critedge.preheader ], [ %.1338.be, %.critedge.backedge ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.1338, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !40 ; 2 uses
  %.not391 = icmp eq ptr %i.bm, null
  br i1 %.not391, label %bb.v, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge, %bb.v
  %.1342.be = phi ptr [ %i.bl, %.critedge ], [ %i.bn, %bb.v ]
  %.1338.be = phi ptr [ %i.bm, %.critedge ], [ %i.bo, %bb.v ]
  br label %.critedge, !llvm.loop !127

bb.v:                                             ; preds = %.critedge
  %i.bn = getelementptr inbounds nuw i8, ptr %.1338, i64 32 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !40 ; 2 uses
  %.not392 = icmp eq ptr %i.bo, null
  br i1 %.not392, label %bb.w, label %.critedge.backedge

bb.w:                                             ; preds = %bb.v
  %.not393 = icmp ult ptr %.1342, %i.u
  br i1 %.not393, label %bb.y, label %bb.x, !prof !23

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %.1342, align 8, !tbaa !40
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  tail call void @abort() #18
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.x, %bb.s
  %.3 = phi ptr [ %i.ay, %bb.s ], [ %.1338, %bb.x ], [ null, %bb.u ] ; 11 uses
  %.not395 = icmp eq ptr %i.aw, null
  br i1 %.not395, label %.thread.a, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bq = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !40
  %i.bv = icmp eq ptr %i.r, %i.bu
  br i1 %i.bv, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %.3, ptr %i.bt, align 8, !tbaa !40
  %cond457 = icmp eq ptr %.3, null
  br i1 %cond457, label %.thread505, label %bb.ai

.thread505:                                       ; preds = %bb.ab
  %i.bw = shl nuw i32 1, %i.br
  %i.bx = xor i32 %i.bw, -1
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30
  %i.ca = and i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.by, align 4, !tbaa !30
  br label %.thread.a

bb.ac:                                            ; preds = %bb.aa
  %.not396 = icmp ult ptr %i.aw, %i.u
  br i1 %.not396, label %bb.ag, label %bb.ad, !prof !23

bb.ad:                                            ; preds = %bb.ac
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !40
  %i.cd = icmp eq ptr %i.cc, %i.r
  br i1 %i.cd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr %.3, ptr %i.cb, align 8, !tbaa !40
  br label %bb.ah

bb.af:                                            ; preds = %bb.ad
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  store ptr %.3, ptr %i.ce, align 8, !tbaa !40
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ac
  tail call void @abort() #18
  unreachable

bb.ah:                                            ; preds = %bb.af, %bb.ae
  %.not397 = icmp eq ptr %.3, null
  br i1 %.not397, label %.thread.a, label %bb.ai

bb.ai:                                            ; preds = %bb.ab, %bb.ah
  %.not398 = icmp ult ptr %.3, %i.u
  br i1 %.not398, label %bb.ar, label %bb.aj, !prof !23

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store ptr %i.aw, ptr %i.cf, align 8, !tbaa !45
  %i.cg = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !40 ; 4 uses
  %.not399 = icmp eq ptr %i.ch, null
  br i1 %.not399, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not400 = icmp ult ptr %i.ch, %i.u
  br i1 %.not400, label %bb.am, label %bb.al, !prof !23

bb.al:                                            ; preds = %bb.ak
  %i.ci = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store ptr %.3, ptr %i.cj, align 8, !tbaa !45
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  tail call void @abort() #18
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.aj
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !40 ; 4 uses
  %.not401 = icmp eq ptr %i.cl, null
  br i1 %.not401, label %.thread.a, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not402 = icmp ult ptr %i.cl, %i.u
  br i1 %.not402, label %bb.aq, label %bb.ap, !prof !23

bb.ap:                                            ; preds = %bb.ao
  %i.cm = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %.3, ptr %i.cn, align 8, !tbaa !45
  br label %.thread.a

bb.aq:                                            ; preds = %bb.ao
  tail call void @abort() #18
  unreachable

bb.ar:                                            ; preds = %bb.ai
  tail call void @abort() #18
  unreachable

bb.as:                                            ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !26 ; 2 uses
  %i.cq = and i64 %i.cp, 3
  %i.cr = icmp eq i64 %i.cq, 3
  br i1 %i.cr, label %bb.at, label %.thread.a

bb.at:                                            ; preds = %bb.as
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.cs, align 8, !tbaa !27
  %i.ct = and i64 %i.cp, -2
  store i64 %i.ct, ptr %i.co, align 8, !tbaa !26
  %i.cu = or i64 %i.s, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !26
  store i64 %i.s, ptr %i.a, align 8, !tbaa !28
  br label %bb.dj

bb.au:                                            ; preds = %bb.e
  tail call void @abort() #18
  unreachable

.thread.a:                                        ; preds = %.thread505, %..thread_crit_edge, %bb.as, %bb.k, %.critedge439, %bb.ah, %bb.ap, %bb.an, %bb.z
  %i.cw = phi ptr [ %.pre, %..thread_crit_edge ], [ %i.u, %bb.z ], [ %i.u, %bb.an ], [ %i.u, %bb.ap ], [ %i.u, %bb.ah ], [ %i.u, %.critedge439 ], [ %i.u, %bb.k ], [ %i.u, %bb.as ], [ %i.u, %.thread505 ] ; 13 uses
  %.1330 = phi i64 [ %2, %..thread_crit_edge ], [ %i.s, %bb.z ], [ %i.s, %bb.an ], [ %i.s, %bb.ap ], [ %i.s, %bb.ah ], [ %i.s, %.critedge439 ], [ %i.s, %bb.k ], [ %i.s, %bb.as ], [ %i.s, %.thread505 ] ; 7 uses
  %.1 = phi ptr [ %1, %..thread_crit_edge ], [ %i.r, %bb.z ], [ %i.r, %bb.an ], [ %i.r, %bb.ap ], [ %i.r, %bb.ah ], [ %i.r, %.critedge439 ], [ %i.r, %bb.k ], [ %i.r, %bb.as ], [ %i.r, %.thread505 ] ; 34 uses
  %.not405 = icmp ult ptr %i.a, %i.cw
  br i1 %.not405, label %bb.di, label %bb.av, !prof !23

bb.av:                                            ; preds = %.thread.a
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !26 ; 5 uses
  %i.cz = and i64 %i.cy, 2
  %.not406 = icmp eq i64 %i.cz, 0
  br i1 %.not406, label %bb.aw, label %bb.cp

bb.aw:                                            ; preds = %bb.av
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32
  %i.dc = icmp eq ptr %i.a, %i.db
  br i1 %i.dc, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = add i64 %i.de, %.1330                   ; 2 uses
  store i64 %i.df, ptr %i.dd, align 8, !tbaa !31
  store ptr %.1, ptr %i.da, align 8, !tbaa !32
  %i.dg = or i64 %i.df, 1
  %i.dh = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !26
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !29
  %i.dk = icmp eq ptr %.1, %i.dj
  br i1 %i.dk, label %bb.ay, label %bb.dj

bb.ay:                                            ; preds = %bb.ax
  store ptr null, ptr %i.di, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.dl, align 8, !tbaa !27
  br label %bb.dj

bb.az:                                            ; preds = %bb.aw
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !29 ; 2 uses
  %i.do = icmp eq ptr %i.a, %i.dn
  br i1 %i.do, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !27
  %i.dr = add i64 %i.dq, %.1330                   ; 4 uses
  store i64 %i.dr, ptr %i.dp, align 8, !tbaa !27
  store ptr %.1, ptr %i.dm, align 8, !tbaa !29
  %i.ds = or i64 %i.dr, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dr
  store i64 %i.dr, ptr %i.du, align 8, !tbaa !28
  br label %bb.dj

bb.bb:                                            ; preds = %bb.az
  %i.dv = and i64 %i.cy, -8
  %i.dw = add i64 %i.dv, %.1330                   ; 5 uses
  %i.dx = icmp ult i64 %i.cy, 256
  br i1 %i.dx, label %bb.bc, label %bb.bj

bb.bc:                                            ; preds = %bb.bb
  %i.dy = lshr i64 %i.cy, 3                       ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !20 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !24 ; 6 uses
  %i.ed = trunc nuw nsw i64 %i.dy to i32
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx422 = shl nuw nsw i64 %i.dy, 4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx422 ; 2 uses
  %i.eg = icmp eq ptr %i.ea, %i.ef
  br i1 %i.eg, label %.critedge445.a, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not423 = icmp ult ptr %i.ea, %i.cw
  br i1 %.not423, label %.critedge447, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !24
  %i.ej = icmp eq ptr %i.ei, %i.a
  br i1 %i.ej, label %.critedge445.a, label %.critedge447, !prof !25

.critedge445.a:                                   ; preds = %bb.bc, %bb.be
  %i.ek = icmp eq ptr %i.ec, %i.ea
  br i1 %i.ek, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %.critedge445.a
  %i.el = shl nuw i32 1, %i.ed
  %i.em = xor i32 %i.el, -1
  %i.en = load i32, ptr %0, align 8, !tbaa !19
  %i.eo = and i32 %i.en, %i.em
  store i32 %i.eo, ptr %0, align 8, !tbaa !19
  br label %bb.cn

bb.bg:                                            ; preds = %.critedge445.a
  %i.ep = icmp eq ptr %i.ec, %i.ef
  br i1 %i.ep, label %.critedge449.a, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not424 = icmp ult ptr %i.ec, %i.cw
  br i1 %.not424, label %.critedge451, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !20
  %i.es = icmp eq ptr %i.er, %i.a
  br i1 %i.es, label %.critedge449.a, label %.critedge451, !prof !25

.critedge449.a:                                   ; preds = %bb.bg, %bb.bi
  %i.et = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.ec, ptr %i.et, align 8, !tbaa !24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.ea, ptr %i.eu, align 8, !tbaa !20
  br label %bb.cn

.critedge451:                                     ; preds = %bb.bh, %bb.bi
  tail call void @abort() #18
  unreachable

.critedge447:                                     ; preds = %bb.bd, %bb.be
  tail call void @abort() #18
  unreachable

bb.bj:                                            ; preds = %bb.bb
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !45 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !46 ; 4 uses
  %.not407 = icmp eq ptr %i.ey, %i.a
  br i1 %.not407, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !47 ; 3 uses
  %.not413 = icmp ult ptr %i.fa, %i.cw
  br i1 %.not413, label %.critedge453, label %bb.bl, !prof !23

bb.bl:                                            ; preds = %bb.bk
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !46
  %i.fd = icmp eq ptr %i.fc, %i.a
  br i1 %i.fd, label %bb.bm, label %.critedge453, !prof !25

bb.bm:                                            ; preds = %bb.bl
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 16 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !47
  %i.fg = icmp eq ptr %i.ff, %i.a
  br i1 %i.fg, label %bb.bn, label %.critedge453, !prof !25

bb.bn:                                            ; preds = %bb.bm
  store ptr %i.ey, ptr %i.fb, align 8, !tbaa !46
  store ptr %i.fa, ptr %i.fe, align 8, !tbaa !47
  br label %bb.bu

.critedge453:                                     ; preds = %bb.bl, %bb.bk, %bb.bm
  tail call void @abort() #18
  unreachable

bb.bo:                                            ; preds = %bb.bj
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !40 ; 2 uses
  %.not408 = icmp eq ptr %i.fi, null
  br i1 %.not408, label %bb.bp, label %.critedge3.preheader

bb.bp:                                            ; preds = %bb.bo
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !40 ; 2 uses
  %.not409 = icmp eq ptr %i.fk, null
  br i1 %.not409, label %bb.bu, label %.critedge3.preheader

.critedge3.preheader:                             ; preds = %bb.bp, %bb.bo
  %.1350.ph = phi ptr [ %i.fh, %bb.bo ], [ %i.fj, %bb.bp ]
  %.1346.ph = phi ptr [ %i.fi, %bb.bo ], [ %i.fk, %bb.bp ]
  br label %.critedge3

.critedge3:                                       ; preds = %.critedge3.backedge, %.critedge3.preheader
  %.1350 = phi ptr [ %.1350.ph, %.critedge3.preheader ], [ %.1350.be, %.critedge3.backedge ] ; 2 uses
  %.1346 = phi ptr [ %.1346.ph, %.critedge3.preheader ], [ %.1346.be, %.critedge3.backedge ] ; 3 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.1346, i64 40 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !40 ; 2 uses
  %.not410 = icmp eq ptr %i.fm, null
  br i1 %.not410, label %bb.bq, label %.critedge3.backedge

.critedge3.backedge:                              ; preds = %.critedge3, %bb.bq
  %.1350.be = phi ptr [ %i.fl, %.critedge3 ], [ %i.fn, %bb.bq ]
  %.1346.be = phi ptr [ %i.fm, %.critedge3 ], [ %i.fo, %bb.bq ]
  br label %.critedge3, !llvm.loop !128

bb.bq:                                            ; preds = %.critedge3
  %i.fn = getelementptr inbounds nuw i8, ptr %.1346, i64 32 ; 2 uses
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !40 ; 2 uses
  %.not411 = icmp eq ptr %i.fo, null
  br i1 %.not411, label %bb.br, label %.critedge3.backedge

bb.br:                                            ; preds = %bb.bq
  %.not412 = icmp ult ptr %.1350, %i.cw
  br i1 %.not412, label %bb.bt, label %bb.bs, !prof !23

end_hunk_1
begin_hunk_2_@dispose_chunk:bb.a
  unreachable

bb.cm:                                            ; preds = %bb.cd
  tail call void @abort() #18
  unreachable

bb.cn:                                            ; preds = %.thread507, %bb.bu, %bb.ci, %bb.ck, %bb.cc, %.critedge449.a, %bb.bf
  %i.go = or i64 %i.dw, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !26
  %i.gq = getelementptr inbounds nuw i8, ptr %.1, i64 %i.dw
  store i64 %i.dw, ptr %i.gq, align 8, !tbaa !28
  %.not425 = icmp eq ptr %.1, %i.dn
  br i1 %.not425, label %bb.co, label %.critedge456

bb.co:                                            ; preds = %bb.cn
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.dw, ptr %i.gr, align 8, !tbaa !27
  br label %bb.dj

bb.cp:                                            ; preds = %bb.av
  %i.gs = and i64 %i.cy, -2
  store i64 %i.gs, ptr %i.cx, align 8, !tbaa !26
  %i.gt = or i64 %.1330, 1
  %i.gu = getelementptr inbounds nuw i8, ptr %.1, i64 8
  store i64 %i.gt, ptr %i.gu, align 8, !tbaa !26
  %i.gv = getelementptr inbounds nuw i8, ptr %.1, i64 %.1330
  store i64 %.1330, ptr %i.gv, align 8, !tbaa !28
  br label %.critedge456

.critedge456:                                     ; preds = %bb.cn, %bb.cp
  %.2 = phi i64 [ %.1330, %bb.cp ], [ %i.dw, %bb.cn ] ; 6 uses
  %i.gw = icmp ult i64 %.2, 256
  br i1 %i.gw, label %bb.cq, label %bb.cv

bb.cq:                                            ; preds = %.critedge456
  %i.gx = lshr i64 %.2, 3                         ; 2 uses
  %i.gy = trunc nuw nsw i64 %i.gx to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.idx431 = shl nuw nsw i64 %i.gx, 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.idx431 ; 4 uses
  %i.hb = load i32, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.hc = shl nuw i32 1, %i.gy                    ; 2 uses
  %i.hd = and i32 %i.hb, %i.hc
  %.not432 = icmp eq i32 %i.hd, 0
  br i1 %.not432, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.he = or i32 %i.hb, %i.hc
  store i32 %i.he, ptr %0, align 8, !tbaa !19
  br label %bb.cu

bb.cs:                                            ; preds = %bb.cq
  %i.hf = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !20 ; 2 uses
  %.not433 = icmp ult ptr %i.hg, %i.cw
  br i1 %.not433, label %bb.ct, label %bb.cu, !prof !23

bb.ct:                                            ; preds = %bb.cs
  tail call void @abort() #18
  unreachable

bb.cu:                                            ; preds = %bb.cs, %bb.cr
  %.0344 = phi ptr [ %i.ha, %bb.cr ], [ %i.hg, %bb.cs ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %.1, ptr %i.hh, align 8, !tbaa !20
  %i.hi = getelementptr inbounds nuw i8, ptr %.0344, i64 24
  store ptr %.1, ptr %i.hi, align 8, !tbaa !24
  %i.hj = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %.0344, ptr %i.hj, align 8, !tbaa !20
  %i.hk = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %i.ha, ptr %i.hk, align 8, !tbaa !24
  br label %bb.dj

bb.cv:                                            ; preds = %.critedge456
  %i.hl = lshr i64 %.2, 8
  %i.hm = trunc i64 %i.hl to i32                  ; 3 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.cy, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ho = icmp ugt i32 %i.hm, 65535
  br i1 %i.ho, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.hp = tail call range(i32 16, 33) i32 @llvm.ctlz.i32(i32 %i.hm, i1 true) ; 2 uses
  %i.hq = shl nuw nsw i32 %i.hp, 1
  %i.hr = sub nuw nsw i32 38, %i.hp
  %i.hs = zext nneg i32 %i.hr to i64
  %i.ht = lshr i64 %.2, %i.hs
  %i.hu = trunc i64 %i.ht to i32
  %i.hv = and i32 %i.hu, 1
  %i.hw = or disjoint i32 %i.hv, %i.hq
  %i.hx = xor i32 %i.hw, 62
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cw, %bb.cv, %bb.cx
  %.0340 = phi i32 [ %i.hx, %bb.cx ], [ 0, %bb.cv ], [ 31, %bb.cw ] ; 5 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.hz = zext nneg i32 %.0340 to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hy, i64 %i.hz ; 3 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.1, i64 56
  store i32 %.0340, ptr %i.ib, align 8, !tbaa !49
  %i.ic = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i8 0, i64 16, i1 false)
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !30 ; 2 uses
  %i.if = shl nuw i32 1, %.0340                   ; 2 uses
  %i.ig = and i32 %i.ie, %i.if
  %.not426 = icmp eq i32 %i.ig, 0
  br i1 %.not426, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.ih = or i32 %i.ie, %i.if
  store i32 %i.ih, ptr %i.id, align 4, !tbaa !30
  store ptr %.1, ptr %i.ia, align 8, !tbaa !40
  %i.ii = getelementptr inbounds nuw i8, ptr %.1, i64 48
  store ptr %i.ia, ptr %i.ii, align 8, !tbaa !45
  %i.ij = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %.1, ptr %i.ij, align 8, !tbaa !46
  %i.ik = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %.1, ptr %i.ik, align 8, !tbaa !47
  br label %bb.dj

bb.da:                                            ; preds = %bb.cy
  %i.il = load ptr, ptr %i.ia, align 8, !tbaa !40
  %i.im = icmp eq i32 %.0340, 31
  %i.in = lshr i32 %.0340, 1
  %i.io = add nuw nsw i32 %i.in, 6
  %i.ip = zext nneg i32 %i.io to i64
  %i.iq = sub nuw nsw i64 63, %i.ip
  %i.ir = select i1 %i.im, i64 0, i64 %i.iq
  %i.is = shl i64 %.2, %i.ir
  br label %bb.db

bb.db:                                            ; preds = %bb.dc, %bb.da
  %.0332 = phi ptr [ %i.il, %bb.da ], [ %i.ja, %bb.dc ] ; 6 uses
  %.0331 = phi i64 [ %i.is, %bb.da ], [ %i.iz, %bb.dc ] ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0332, i64 8
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !42
  %i.iv = and i64 %i.iu, -8
  %.not427 = icmp eq i64 %i.iv, %.2
  br i1 %.not427, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.iw = getelementptr inbounds nuw i8, ptr %.0332, i64 32 ; 2 uses
  %i.ix = lshr i64 %.0331, 63                     ; 2 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = shl i64 %.0331, 1
  %i.ja = load ptr, ptr %i.iy, align 8, !tbaa !40 ; 2 uses
  %.not429 = icmp eq ptr %i.ja, null
  br i1 %.not429, label %bb.dd, label %bb.db

bb.dd:                                            ; preds = %bb.dc
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix ; 2 uses
  %.not430 = icmp ult ptr %i.jb, %i.cw
  br i1 %.not430, label %bb.de, label %.thread462, !prof !23

.thread462:                                       ; preds = %bb.dd
  store ptr %.1, ptr %i.jb, align 8, !tbaa !40
  %i.jc = getelementptr inbounds nuw i8, ptr %.1, i64 48
  store ptr %.0332, ptr %i.jc, align 8, !tbaa !45
  %i.jd = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %.1, ptr %i.jd, align 8, !tbaa !46
  %i.je = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %.1, ptr %i.je, align 8, !tbaa !47
  br label %bb.dj

bb.de:                                            ; preds = %bb.dd
  tail call void @abort() #18
  unreachable

bb.df:                                            ; preds = %bb.db
  %i.jf = getelementptr inbounds nuw i8, ptr %.0332, i64 16 ; 2 uses
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !47 ; 3 uses
  %.not428 = icmp uge ptr %.0332, %i.cw
  %i.jh = icmp uge ptr %i.jg, %i.cw
  %spec.select = select i1 %.not428, i1 %i.jh, i1 false, !prof !25
  br i1 %spec.select, label %bb.dg, label %bb.dh, !prof !25

bb.dg:                                            ; preds = %bb.df
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  store ptr %.1, ptr %i.ji, align 8, !tbaa !46
  store ptr %.1, ptr %i.jf, align 8, !tbaa !47
  %i.jj = getelementptr inbounds nuw i8, ptr %.1, i64 16
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !47
  %i.jk = getelementptr inbounds nuw i8, ptr %.1, i64 24
  store ptr %.0332, ptr %i.jk, align 8, !tbaa !46
  %i.jl = getelementptr inbounds nuw i8, ptr %.1, i64 48
  store ptr null, ptr %i.jl, align 8, !tbaa !45
  br label %bb.dj

bb.dh:                                            ; preds = %bb.df
  tail call void @abort() #18
  unreachable

bb.di:                                            ; preds = %.thread.a
  tail call void @abort() #18
  unreachable

bb.dj:                                            ; preds = %.thread462, %bb.at, %bb.d, %bb.c, %bb.co, %bb.cu, %bb.dg, %bb.cz, %bb.ax, %bb.ay, %bb.ba
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"malloc_params", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !4, i64 40}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !4, i64 880}
!11 = !{!"malloc_state", !4, i64 0, !4, i64 4, !9, i64 8, !9, i64 16, !12, i64 24, !14, i64 32, !14, i64 40, !9, i64 48, !9, i64 56, !9, i64 64, !5, i64 72, !5, i64 600, !9, i64 856, !9, i64 864, !9, i64 872, !4, i64 880, !4, i64 884, !15, i64 888, !13, i64 920, !9, i64 928}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTS12malloc_chunk", !13, i64 0}
!15 = !{!"malloc_segment", !12, i64 0, !9, i64 8, !16, i64 16, !4, i64 24}
!16 = !{!"p1 _ZTS14malloc_segment", !13, i64 0}
!17 = distinct !{!17, !18}
!18 = !{!"llvm.loop.mustprogress"}
!19 = !{!11, !4, i64 0}
!20 = !{!21, !14, i64 16}
!21 = !{!"malloc_chunk", !9, i64 0, !9, i64 8, !14, i64 16, !14, i64 24}
!22 = !{!11, !12, i64 24}
!23 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!24 = !{!21, !14, i64 24}
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!26 = !{!21, !9, i64 8}
!27 = !{!11, !9, i64 8}
!28 = !{!21, !9, i64 0}
!29 = !{!11, !14, i64 32}
!30 = !{!11, !4, i64 4}
!31 = !{!11, !9, i64 16}
!32 = !{!11, !14, i64 40}
!33 = !{!8, !9, i64 16}
!34 = !{!8, !9, i64 8}
!35 = !{!8, !9, i64 24}
!36 = !{!8, !9, i64 32}
!37 = !{!8, !4, i64 40}
!38 = !{!11, !4, i64 884}
!39 = !{!9, !9, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTS17malloc_tree_chunk", !13, i64 0}
!42 = !{!43, !9, i64 8}
!43 = !{!"malloc_tree_chunk", !9, i64 0, !9, i64 8, !41, i64 16, !41, i64 24, !5, i64 32, !41, i64 48, !4, i64 56}
!44 = distinct !{!44, !18}
!45 = !{!43, !41, i64 48}
!46 = !{!43, !41, i64 24}
!47 = !{!43, !41, i64 16}
!48 = distinct !{!48, !18}
!49 = !{!43, !4, i64 56}
!50 = distinct !{!50, !18}
!51 = distinct !{!51, !18}
!52 = !{!11, !9, i64 872}
!53 = !{!11, !9, i64 856}
!54 = !{!11, !9, i64 864}
!55 = !{!11, !12, i64 888}
!56 = !{!11, !9, i64 896}
!57 = !{!11, !4, i64 912}
!58 = !{!11, !9, i64 64}
!59 = !{!11, !9, i64 56}
!60 = !{!11, !9, i64 48}
!61 = !{!15, !12, i64 0}
!62 = !{!15, !9, i64 8}
!63 = !{!15, !16, i64 16}
!64 = distinct !{!64, !18}
!65 = !{!15, !4, i64 24}
!66 = distinct !{!66, !18}
!67 = !{}
!68 = !{i64 0, i64 8, !69, i64 8, i64 8, !39, i64 16, i64 8, !70, i64 24, i64 4, !3}
!69 = !{!12, !12, i64 0}
!70 = !{!16, !16, i64 0}
!71 = !{!11, !16, i64 904}
!72 = distinct !{!72, !73, !74}
!73 = !{!"llvm.loop.isvectorized", i32 1}
!74 = !{!"llvm.loop.unroll.runtime.disable"}
!75 = distinct !{!75, !74, !73}
!76 = !{!13, !13, i64 0}
!77 = distinct !{!77, !18}
!78 = distinct !{!78, !18}
!79 = distinct !{!79, !18}
!80 = distinct !{!80, !18}
!81 = !{!"branch_weights", i32 6003000, i32 -294967296}
!82 = distinct !{!82, !18}
!83 = distinct !{!83, !18}
!84 = distinct !{!84, !18}
!85 = distinct !{!85, !18}
!86 = distinct !{!86, !18, !73, !74}
!87 = distinct !{!87, !18, !74, !73}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = !{!"branch_weights", i32 4000000, i32 4001}
!91 = distinct !{!91, !18}
!92 = distinct !{!92, !18}
!93 = distinct !{!93, !18}
!94 = !{!95, !97, i64 8}
!95 = !{!"boost_cont_memchain_impl", !9, i64 0, !96, i64 8, !97, i64 16}
!96 = !{!"multialloc_node_impl", !97, i64 0}
!97 = !{!"p1 _ZTS20multialloc_node_impl", !13, i64 0}
!98 = !{!96, !97, i64 0}
!99 = distinct !{!99, !18}
!100 = distinct !{!100, !18}
!101 = !{!95, !97, i64 16}
!102 = distinct !{!102, !18}
!103 = !{!95, !9, i64 0}
!104 = distinct !{!104, !18}
!105 = distinct !{!105, !18}
!106 = distinct !{!106, !18}
!107 = distinct !{!107, !89}
!108 = distinct !{!108, !18}
!109 = distinct !{!109, !18}
!110 = distinct !{!110, !18}
!111 = distinct !{!111, !18}
!112 = !{!113}
!113 = distinct !{!113, !114, !"get_malloc_stats: argument 0"}
!114 = distinct !{!114, !"get_malloc_stats"}
!115 = distinct !{!115, !18}
!116 = distinct !{!116, !18}
!117 = !{!118, !9, i64 0}
!118 = !{!"boost_cont_malloc_stats_impl", !9, i64 0, !9, i64 8, !9, i64 16}
!119 = !{!118, !9, i64 8}
!120 = !{!118, !9, i64 16}
!121 = distinct !{!121, !18}
!122 = distinct !{!122, !18}
!123 = distinct !{!123, !18}
!124 = distinct !{!124, !18}
!125 = distinct !{!125, !18}
!126 = distinct !{!126, !18}
!127 = distinct !{!127, !18}
!128 = distinct !{!128, !18}
end_hunk_2
