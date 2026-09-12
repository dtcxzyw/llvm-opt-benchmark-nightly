Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hnsw?download=true
inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_serialize_node:bb.a
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !51
  br label %hnsw_quants_bytes.exit

bb.h:                                             ; preds = %bb.e
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !51
  %i.bt = add i32 %i.bs, 63
  %i.bu = lshr i32 %i.bt, 3
  %i.bv = and i32 %i.bu, 536870904
  br label %hnsw_quants_bytes.exit

bb.i:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 882, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_quants_bytes) #35
  unreachable

hnsw_quants_bytes.exit:                           ; preds = %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ %i.bo, %bb.f ], [ %i.bq, %bb.g ], [ %i.bv, %bb.h ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %.0.i, ptr %i.bw, align 8, !tbaa !218
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !27
  store i64 %i.by, ptr %i.bd, align 8, !tbaa !27
  %i.bz = load i32, ptr %1, align 8, !tbaa !25    ; 2 uses
  %i.ca = and i32 %i.bz, 255
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.cc = or disjoint i32 %i.ca, 16777216
  %i.cd = zext nneg i32 %i.cc to i64
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !27
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.cf = add i32 %i.bz, 1
  %umax95 = tail call i32 @llvm.umax.i32(i32 %i.cf, i32 1)
  %wide.trip.count96 = zext i32 %umax95 to i64
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %.0.copyload1 = load i32, ptr %i.cg, align 4
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.0.copyload = load i32, ptr %i.ch, align 8
  %i.ci = zext i32 %.0.copyload to i64
  %i.cj = shl nuw i64 %i.ci, 32
  %i.ck = zext i32 %.0.copyload1 to i64
  %i.cl = or disjoint i64 %i.cj, %i.ck
  %i.cm = zext i32 %i.ds to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cm
  store i64 %i.cl, ptr %i.cn, align 8, !tbaa !27
  %i.co = icmp eq i32 %i.ds, %i.az
  br i1 %i.co, label %bb.o, label %bb.n

bb.k:                                             ; preds = %hnsw_quants_bytes.exit, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %hnsw_quants_bytes.exit ], [ %indvars.iv.next93, %._crit_edge ] ; 2 uses
  %.07381 = phi i32 [ 2, %hnsw_quants_bytes.exit ], [ %i.ds, %._crit_edge ] ; 3 uses
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %indvars.iv92 ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !63 ; 3 uses
  %i.cs = zext i32 %i.cr to i64                   ; 3 uses
  %i.ct = add i32 %.07381, 1
  %i.cu = zext i32 %.07381 to i64
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cu
  store i64 %i.cs, ptr %i.cv, align 8, !tbaa !27
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !62
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add i32 %.07381, 2                      ; 3 uses
  %i.da = zext i32 %i.ct to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.da
  store i64 %i.cy, ptr %i.db, align 8, !tbaa !27
  %.not83 = icmp eq i32 %i.cr, 0
  br i1 %.not83, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.dc = load ptr, ptr %i.cp, align 8, !tbaa !66 ; 5 uses
  %xtraiter = and i64 %i.cs, 3                    ; 3 uses
  %i.dd = icmp ult i32 %i.cr, 4
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.cs, 4294967292
  br label %bb.m

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv87.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next88.3, %._crit_edge.loopexit.unr-lcssa ]
  %.179.epil.init = phi i32 [ %i.cz, %.lr.ph ], [ %i.ex, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod110 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod110)
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.epil.preheader
  %indvars.iv87.epil = phi i64 [ %indvars.iv87.epil.init, %.epil.preheader ], [ %indvars.iv.next88.epil, %bb.l ] ; 2 uses
  %.179.epil = phi i32 [ %.179.epil.init, %.epil.preheader ], [ %i.di, %bb.l ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.l ]
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv87.epil
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !38
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !27
  %i.di = add i32 %.179.epil, 1                   ; 2 uses
  %i.dj = zext i32 %.179.epil to i64
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dj
  store i64 %i.dh, ptr %i.dk, align 8, !tbaa !27
  %indvars.iv.next88.epil = add nuw nsw i64 %indvars.iv87.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.l, !llvm.loop !213

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.l, %bb.k
  %.1.lcssa = phi i32 [ %i.cz, %bb.k ], [ %i.ex, %._crit_edge.loopexit.unr-lcssa ], [ %i.di, %bb.l ] ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.0.copyload5 = load i32, ptr %i.dl, align 8
  %i.dm = zext i32 %.0.copyload5 to i64
  %i.dn = shl nuw i64 %i.dm, 32
  %i.do = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !65
  %i.dq = zext i32 %i.dp to i64
  %i.dr = or disjoint i64 %i.dn, %i.dq
  %i.ds = add i32 %.1.lcssa, 1                    ; 3 uses
  %i.dt = zext i32 %.1.lcssa to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dt
  store i64 %i.dr, ptr %i.du, align 8, !tbaa !27
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond97 = icmp eq i64 %indvars.iv.next93, %wide.trip.count96
  br i1 %exitcond97, label %bb.j, label %bb.k, !llvm.loop !214

bb.m:                                             ; preds = %bb.m, %.lr.ph.new
  %indvars.iv87 = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next88.3, %bb.m ] ; 5 uses
  %.179 = phi i32 [ %i.cz, %.lr.ph.new ], [ %i.ex, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.m ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv87
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !38
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !27
  %i.dz = add i32 %.179, 1
  %i.ea = zext i32 %.179 to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ea
  store i64 %i.dy, ptr %i.eb, align 8, !tbaa !27
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv87
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !38
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !27
  %i.eh = add i32 %.179, 2
  %i.ei = zext i32 %i.dz to i64
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ei
  store i64 %i.eg, ptr %i.ej, align 8, !tbaa !27
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv87
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !27
  %i.ep = add i32 %.179, 3
  %i.eq = zext i32 %i.eh to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.eq
  store i64 %i.eo, ptr %i.er, align 8, !tbaa !27
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv87
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !38
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !27
  %i.ex = add i32 %.179, 4                        ; 3 uses
  %i.ey = zext i32 %i.ep to i64
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ey
  store i64 %i.ew, ptr %i.ez, align 8, !tbaa !27
  %indvars.iv.next88.3 = add nuw nsw i64 %indvars.iv87, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.m, !llvm.loop !215

bb.n:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 2568, ptr noundef nonnull @__PRETTY_FUNCTION__.hnsw_serialize_node) #35
  unreachable

bb.o:                                             ; preds = %bb.j, %bb.b, %bb.d
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.at, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_free_serialized_node(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !80
  tail call void %i.a(ptr noundef %i.c) #34
  %i.d = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.d(ptr noundef %0) #34
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hnsw_insert_serialized(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %3, 2
  br i1 %i.a, label %hnsw_node_free.exit.thread177, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %2, align 8, !tbaa !27     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %5 = trunc i64 %i.d to i32
  %6 = and i32 %5, 255                            ; 5 uses
  %7 = lshr i64 %i.d, 24
  %i.e = trunc i64 %7 to i32
  %i.f = and i32 %i.e, 255                        ; 2 uses
  %i.g = icmp samesign ugt i32 %i.f, 1
  br i1 %i.g, label %hnsw_node_free.exit.thread177, label %bb.c

bb.c:                                             ; preds = %bb.b
  %8 = icmp eq i32 %i.f, 1                        ; 2 uses
  %i.h = zext i1 %8 to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load atomic i64, ptr %i.i seq_cst, align 8, !tbaa !56
  %.not = icmp ult i64 %i.b, %i.j
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i64 %i.b, ptr %i.i seq_cst, align 8, !tbaa !56
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1656
  %i.l = load i32, ptr %i.k, align 8, !tbaa !50
  %.not137 = icmp eq i32 %i.l, 0
  br i1 %.not137, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call ptr @hnsw_node_new(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef null, ptr noundef %1, float noundef 0.000000e+00, i32 noundef %6, i32 noundef 0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr @hnsw_node_new(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef %1, ptr noundef null, float noundef 0.000000e+00, i32 noundef %6, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0120 = phi ptr [ %i.m, %bb.f ], [ %i.n, %bb.g ] ; 30 uses
  %.not138 = icmp eq ptr %.0120, null
  br i1 %.not138, label %hnsw_node_free.exit.thread177, label %.preheader180

.preheader180:                                    ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %.0120, i64 312 ; 7 uses
  %i.p = add nuw nsw i32 %6, 1
  %wide.trip.count197 = zext nneg i32 %i.p to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader180, %hnsw_node_free.exit148
  %indvars.iv194 = phi i64 [ 0, %.preheader180 ], [ %indvars.iv.next195, %hnsw_node_free.exit148 ] ; 2 uses
  %.0119190 = phi i32 [ 2, %.preheader180 ], [ %.3, %hnsw_node_free.exit148 ] ; 4 uses
  %i.q = add i32 %.0119190, 2                     ; 6 uses
  %i.r = add i32 %i.q, %i.h                       ; 2 uses
  %i.s = icmp ugt i32 %i.r, %3
  br i1 %i.s, label %.preheader.i, label %bb.j

.preheader.i:                                     ; preds = %bb.i, %.preheader.i
  %.09.i = phi i32 [ %i.x, %.preheader.i ], [ 0, %bb.i ] ; 2 uses
  %i.t = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.u = zext i32 %.09.i to i64
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  tail call void %i.t(ptr noundef %i.w) #34, !inline_history !68
  %i.x = add i32 %.09.i, 1                        ; 2 uses
  %i.y = load i32, ptr %.0120, align 8, !tbaa !25
  %.not8.i = icmp ugt i32 %i.x, %i.y
  br i1 %.not8.i, label %hnsw_node_free.exit.thread, label %.preheader.i, !llvm.loop !10

bb.j:                                             ; preds = %bb.i
  %i.z = add i32 %.0119190, 1
  %i.aa = zext i32 %.0119190 to i64
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !27 ; 4 uses
  %i.ad = trunc i64 %i.ac to i32                  ; 5 uses
  %i.ae = zext i32 %i.z to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  %i.ah = trunc i64 %i.ag to i32                  ; 4 uses
  %i.ai = icmp ugt i32 %i.ad, %i.ah
  %i.aj = icmp ugt i32 %i.ah, 16384
  %or.cond = or i1 %i.ai, %i.aj
  br i1 %or.cond, label %.preheader.i145, label %bb.l

bb.k:                                             ; preds = %.preheader.i145
  %i.ak = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !29
  tail call void %i.ak(ptr noundef %i.am) #34, !inline_history !68
  %i.an = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.an(ptr noundef nonnull %.0120) #34, !inline_history !68
  br label %hnsw_node_free.exit.thread177

.preheader.i145:                                  ; preds = %bb.j, %.preheader.i145
  %.09.i146 = phi i32 [ %i.as, %.preheader.i145 ], [ 0, %bb.j ] ; 2 uses
  %i.ao = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.ap = zext i32 %.09.i146 to i64
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.ap
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66
  tail call void %i.ao(ptr noundef %i.ar) #34, !inline_history !68
  %i.as = add i32 %.09.i146, 1                    ; 2 uses
  %i.at = load i32, ptr %.0120, align 8, !tbaa !25
  %.not8.i147 = icmp ugt i32 %i.as, %i.at
  br i1 %.not8.i147, label %bb.k, label %.preheader.i145, !llvm.loop !10

bb.l:                                             ; preds = %bb.j
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %indvars.iv194 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 12 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !62
  %i.ax = icmp ult i32 %i.aw, %i.ah
  br i1 %i.ax, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ay = load ptr, ptr @hrealloc, align 8, !tbaa !29
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !66
  %i.ba = shl i64 %i.ag, 3
  %i.bb = and i64 %i.ba, 262136
  %i.bc = tail call ptr %i.ay(ptr noundef %i.az, i64 noundef %i.bb) #34 ; 2 uses
  %.not140.not = icmp eq ptr %i.bc, null
  br i1 %.not140.not, label %.preheader.i150, label %bb.n

.preheader.i150:                                  ; preds = %bb.m, %.preheader.i150
  %.09.i151 = phi i32 [ %i.bh, %.preheader.i150 ], [ 0, %bb.m ] ; 2 uses
  %i.bd = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.be = zext i32 %.09.i151 to i64
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66
  tail call void %i.bd(ptr noundef %i.bg) #34, !inline_history !68
  %i.bh = add i32 %.09.i151, 1                    ; 2 uses
  %i.bi = load i32, ptr %.0120, align 8, !tbaa !25
  %.not8.i152 = icmp ugt i32 %i.bh, %i.bi
  br i1 %.not8.i152, label %.thread, label %.preheader.i150, !llvm.loop !10

.thread:                                          ; preds = %.preheader.i150
  %i.bj = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.bk = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !29
  tail call void %i.bj(ptr noundef %i.bl) #34, !inline_history !68
  %i.bm = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.bm(ptr noundef nonnull %.0120) #34, !inline_history !68
  br label %hnsw_node_free.exit.thread177

bb.n:                                             ; preds = %bb.m
  store ptr %i.bc, ptr %i.au, align 8, !tbaa !66
  store i32 %i.ah, ptr %i.av, align 4, !tbaa !62
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.ad, ptr %i.bn, align 8, !tbaa !63
  %i.bo = add i32 %i.r, %i.ad
  %i.bp = icmp ugt i32 %i.bo, %3
  br i1 %i.bp, label %.preheader.i155, label %.preheader

.preheader:                                       ; preds = %bb.o
  %.not192 = icmp eq i32 %i.ad, 0
  br i1 %.not192, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !66 ; 6 uses
  %wide.trip.count = and i64 %i.ac, 4294967295    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.br = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  %i.bt = sub i32 -3, %.0119190
  %i.bu = icmp ult i32 %i.bt, %i.bs
  %i.bv = icmp ugt i64 %i.br, 4294967295
  %i.bw = or i1 %i.bu, %i.bv
  br i1 %i.bw, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ac, 4294967292              ; 4 uses
  %i.bx = trunc nuw i64 %n.vec to i32
  %i.by = add i32 %i.q, %i.bx                     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bz = trunc i64 %index to i32
  %i.ca = add i32 %i.q, %i.bz
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.cb ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %wide.load = load <2 x i64>, ptr %i.cc, align 8, !tbaa !27
  %wide.load206 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !27
  %i.ce = inttoptr <2 x i64> %wide.load to <2 x ptr>
  %i.cf = inttoptr <2 x i64> %wide.load206 to <2 x ptr>
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x ptr> %i.ce, ptr %i.cg, align 8, !tbaa !38
  store <2 x ptr> %i.cf, ptr %i.ch, align 8, !tbaa !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !219

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %.1188.ph = phi i32 [ %i.q, %vector.scevcheck ], [ %i.q, %.lr.ph ], [ %i.by, %middle.block ] ; 2 uses
  %xtraiter = and i64 %i.ac, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.1188.prol = phi i32 [ %i.cj, %scalar.ph.prol ], [ %.1188.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cj = add i32 %.1188.prol, 1                  ; 3 uses
  %i.ck = zext i32 %.1188.prol to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ck
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !27
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.prol
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !38
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !220

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i32 [ poison, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %.1188.unr = phi i32 [ %.1188.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.cp = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %._crit_edge, label %scalar.ph

.preheader.i155:                                  ; preds = %bb.o, %.preheader.i155
  %.09.i156 = phi i32 [ %i.cv, %.preheader.i155 ], [ 0, %bb.o ] ; 2 uses
  %i.cr = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.cs = zext i32 %.09.i156 to i64
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !66
  tail call void %i.cr(ptr noundef %i.cu) #34, !inline_history !68
  %i.cv = add i32 %.09.i156, 1                    ; 2 uses
  %i.cw = load i32, ptr %.0120, align 8, !tbaa !25
  %.not8.i157 = icmp ugt i32 %i.cv, %i.cw
  br i1 %.not8.i157, label %hnsw_node_free.exit158, label %.preheader.i155, !llvm.loop !10

hnsw_node_free.exit158:                           ; preds = %.preheader.i155
  %i.cx = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.cy = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !29
  tail call void %i.cx(ptr noundef %i.cz) #34, !inline_history !68
  %i.da = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.da(ptr noundef nonnull %.0120) #34, !inline_history !68
  br label %hnsw_node_free.exit.thread177

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %.1.lcssa = phi i32 [ %i.q, %.preheader ], [ %i.by, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.dv, %scalar.ph ] ; 3 uses
  br i1 %8, label %bb.p, label %bb.q

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.1188 = phi i32 [ %i.dv, %scalar.ph ], [ %.1188.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.db = add i32 %.1188, 1
  %i.dc = zext i32 %.1188 to i64
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dc
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !27
  %i.df = inttoptr i64 %i.de to ptr
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !38
  %i.dh = add i32 %.1188, 2
  %i.di = zext i32 %i.db to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !27
  %i.dl = inttoptr i64 %i.dk to ptr
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  store ptr %i.dl, ptr %i.dn, align 8, !tbaa !38
  %i.do = add i32 %.1188, 3
  %i.dp = zext i32 %i.dh to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dp
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !27
  %i.ds = inttoptr i64 %i.dr to ptr
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.ds, ptr %i.du, align 8, !tbaa !38
  %i.dv = add i32 %.1188, 4                       ; 2 uses
  %i.dw = zext i32 %i.do to i64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !27
  %i.dz = inttoptr i64 %i.dy to ptr
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !38
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !221

bb.p:                                             ; preds = %._crit_edge
  %i.ec = add i32 %.1.lcssa, 1
  %i.ed = zext i32 %.1.lcssa to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ed
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !27
  %.fr = freeze i64 %i.ef                         ; 2 uses
  %i.eg = trunc i64 %.fr to i32                   ; 2 uses
  %i.eh = lshr i64 %.fr, 32
  %i.ei = trunc nuw i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 %i.eg, ptr %i.ej, align 4, !tbaa !65
  %i.ek = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i32 %i.ei, ptr %i.ek, align 8, !tbaa !64
  %i.el = add nsw i32 %i.ad, -1
  %or.cond179.not = icmp ult i32 %i.el, %i.eg
  br i1 %or.cond179.not, label %.preheader.i160, label %hnsw_node_free.exit148

.preheader.i160:                                  ; preds = %bb.p, %.preheader.i160
  %.09.i161 = phi i32 [ %i.eq, %.preheader.i160 ], [ 0, %bb.p ] ; 2 uses
  %i.em = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.en = zext i32 %.09.i161 to i64
  %i.eo = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.en
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !66
  tail call void %i.em(ptr noundef %i.ep) #34, !inline_history !68
  %i.eq = add i32 %.09.i161, 1                    ; 2 uses
  %i.er = load i32, ptr %.0120, align 8, !tbaa !25
  %.not8.i162 = icmp ugt i32 %i.eq, %i.er
  br i1 %.not8.i162, label %hnsw_node_free.exit, label %.preheader.i160, !llvm.loop !10

bb.q:                                             ; preds = %._crit_edge
  %i.es = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  store i32 -1, ptr %i.es, align 4, !tbaa !65
  %i.et = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store float 0.000000e+00, ptr %i.et, align 8, !tbaa !64
  br label %hnsw_node_free.exit148

hnsw_node_free.exit148:                           ; preds = %bb.p, %bb.q
  %.3 = phi i32 [ %.1.lcssa, %bb.q ], [ %i.ec, %bb.p ] ; 3 uses
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %exitcond198.not = icmp eq i64 %indvars.iv.next195, %wide.trip.count197
  br i1 %exitcond198.not, label %hnsw_node_free.exit.thread173, label %bb.i, !llvm.loop !222

hnsw_node_free.exit.thread:                       ; preds = %.preheader.i
  %i.eu = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.ev = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !29
  tail call void %i.eu(ptr noundef %i.ew) #34, !inline_history !68
  %i.ex = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.ex(ptr noundef nonnull %.0120) #34, !inline_history !68
  br label %hnsw_node_free.exit.thread177

hnsw_node_free.exit:                              ; preds = %.preheader.i160
  %i.ey = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.ez = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !29
  tail call void %i.ey(ptr noundef %i.fa) #34, !inline_history !68
  %i.fb = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.fb(ptr noundef nonnull %.0120) #34, !inline_history !68
  br label %hnsw_node_free.exit.thread177

hnsw_node_free.exit.thread173:                    ; preds = %hnsw_node_free.exit148
  %.not143 = icmp ult i32 %.3, %3
  br i1 %.not143, label %bb.r, label %.preheader.i165

.preheader.i165:                                  ; preds = %hnsw_node_free.exit.thread173, %.preheader.i165
  %.09.i166 = phi i32 [ %i.fg, %.preheader.i165 ], [ 0, %hnsw_node_free.exit.thread173 ] ; 2 uses
  %i.fc = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.fd = zext i32 %.09.i166 to i64
  %i.fe = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.fd
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !66
  tail call void %i.fc(ptr noundef %i.ff) #34, !inline_history !68
  %i.fg = add i32 %.09.i166, 1                    ; 2 uses
  %i.fh = load i32, ptr %.0120, align 8, !tbaa !25
  %.not8.i167 = icmp ugt i32 %i.fg, %i.fh
  br i1 %.not8.i167, label %hnsw_node_free.exit168, label %.preheader.i165, !llvm.loop !10

hnsw_node_free.exit168:                           ; preds = %.preheader.i165
  %i.fi = load ptr, ptr @hfree, align 8, !tbaa !29
  %i.fj = getelementptr inbounds nuw i8, ptr %.0120, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !29
  tail call void %i.fi(ptr noundef %i.fk) #34, !inline_history !68
  %i.fl = load ptr, ptr @hfree, align 8, !tbaa !29
  tail call void %i.fl(ptr noundef nonnull %.0120) #34, !inline_history !68
  br label %hnsw_node_free.exit.thread177

bb.r:                                             ; preds = %hnsw_node_free.exit.thread173
  %i.fm = zext i32 %.3 to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !27 ; 2 uses
  %i.fp = trunc i64 %i.fo to i32
  %i.fq = lshr i64 %i.fo, 32
  %i.fr = trunc nuw i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw i8, ptr %.0120, i64 28
  store i32 %i.fp, ptr %i.fs, align 4
  %i.ft = getelementptr inbounds nuw i8, ptr %.0120, i64 24
  store i32 %i.fr, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %.0120, i64 288
  store ptr %4, ptr %i.fu, align 8, !tbaa !29
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !67
  %i.fx = getelementptr inbounds nuw i8, ptr %.0120, i64 304
  store ptr %i.fw, ptr %i.fx, align 8, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %.0120, i64 296
  store ptr null, ptr %i.fy, align 8, !tbaa !38
  %i.fz = load ptr, ptr %i.fv, align 8, !tbaa !67 ; 2 uses
  %.not.i169 = icmp eq ptr %i.fz, null
  br i1 %.not.i169, label %hnsw_add_node.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 296
  store ptr %.0120, ptr %i.ga, align 8, !tbaa !38
  br label %hnsw_add_node.exit

hnsw_add_node.exit:                               ; preds = %bb.r, %bb.s
  store ptr %.0120, ptr %i.fv, align 8, !tbaa !67
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !55
  %i.gd = add i64 %i.gc, 1
  store i64 %i.gd, ptr %i.gb, align 8, !tbaa !55
  %i.ge = load ptr, ptr %0, align 8, !tbaa !53
  %i.gf = icmp eq ptr %i.ge, null
  br i1 %i.gf, label %bb.u, label %bb.t

bb.t:                                             ; preds = %hnsw_add_node.exit
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !54
  %i.gi = icmp ugt i32 %6, %i.gh
  br i1 %i.gi, label %bb.u, label %hnsw_node_free.exit.thread177

bb.u:                                             ; preds = %bb.t, %hnsw_add_node.exit
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %6, ptr %i.gj, align 4, !tbaa !54
  store ptr %.0120, ptr %0, align 8, !tbaa !53
  br label %hnsw_node_free.exit.thread177

hnsw_node_free.exit.thread177:                    ; preds = %hnsw_node_free.exit, %bb.k, %.thread, %hnsw_node_free.exit158, %hnsw_node_free.exit.thread, %bb.b, %hnsw_node_free.exit168, %bb.u, %bb.t, %bb.h, %bb.a
  %.10 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.h ], [ null, %hnsw_node_free.exit168 ], [ null, %hnsw_node_free.exit ], [ %.0120, %bb.u ], [ %.0120, %bb.t ], [ null, %hnsw_node_free.exit.thread ], [ null, %hnsw_node_free.exit158 ], [ null, %.thread ], [ null, %bb.k ]
  ret ptr %.10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local i64 @hnsw_hash_node_id(i64 noundef %0) local_unnamed_addr #23 {
bb.a:
  %i.a = lshr i64 %0, 33
  %i.b = xor i64 %i.a, %0
  %i.c = mul i64 %i.b, -49064778989728563         ; 2 uses
  %i.d = lshr i64 %i.c, 33
  %i.e = xor i64 %i.d, %i.c
  %i.f = mul i64 %i.e, -4265267296055464877       ; 2 uses
  %i.g = lshr i64 %i.f, 33
  %i.h = xor i64 %i.g, %i.f
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hnsw_deserialize_index(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !55
  %i.c = shl i64 %i.b, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0112 = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ]  ; 9 uses
  %i.d = icmp ult i64 %.0112, %i.c
  %i.e = shl i64 %.0112, 1
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !223

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @hmalloc, align 8, !tbaa !29
  %i.g = shl i64 %.0112, 3                        ; 2 uses
  %i.h = tail call ptr %i.f(i64 noundef %i.g) #34 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.g, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.0108178 = load ptr, ptr %i.j, align 8, !tbaa !38 ; 3 uses
  %.not179 = icmp eq ptr %.0108178, null
  br i1 %.not179, label %.sink.split, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.d
  %i.k = add i64 %.0112, -1
  %.not203 = icmp eq i64 %.0112, 0
  br i1 %.not203, label %.lr.ph199, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph181, %..loopexit157_crit_edge.us
  %.0108180.us = phi ptr [ %.0108.us, %..loopexit157_crit_edge.us ], [ %.0108178, %.lr.ph181 ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0108180.us, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !27   ; 2 uses
  %i.n = lshr i64 %i.m, 33
  %i.o = xor i64 %i.n, %i.m
  %i.p = mul i64 %i.o, -49064778989728563         ; 2 uses
  %i.q = lshr i64 %i.p, 33
  %i.r = xor i64 %i.q, %i.p
  %i.s = mul i64 %i.r, -4265267296055464877       ; 2 uses
  %i.t = lshr i64 %i.s, 33
  %i.u = xor i64 %i.t, %i.s
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph.us, %bb.f
  %.pn = phi i64 [ %i.u, %.lr.ph.us ], [ %i.y, %bb.f ]
  %.0106176.us = phi i64 [ 0, %.lr.ph.us ], [ %i.z, %bb.f ]
  %.0107177.us = and i64 %.pn, %i.k               ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0107177.us
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %.0107177.us, 1
  %i.z = add nuw i64 %.0106176.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %.0112
  br i1 %exitcond.not, label %..loopexit157_crit_edge.us, label %bb.e, !llvm.loop !224

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0107177.us
  store ptr %.0108180.us, ptr %i.aa, align 8, !tbaa !38
  br label %..loopexit157_crit_edge.us

..loopexit157_crit_edge.us:                       ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0108180.us, i64 304
  %.0108.us = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %.not.us = icmp eq ptr %.0108.us, null
  br i1 %.not.us, label %.preheader, label %.lr.ph.us, !llvm.loop !225

.preheader:                                       ; preds = %..loopexit157_crit_edge.us
  %.1194.pre = load ptr, ptr %i.j, align 8, !tbaa !38 ; 2 uses
  %.not120195 = icmp eq ptr %.1194.pre, null
  br i1 %.not120195, label %.sink.split, label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph181, %.preheader
  %.1194240 = phi ptr [ %.1194.pre, %.preheader ], [ %.0108178, %.lr.ph181 ]
  %i.ac = add i64 %.0112, -1
  %.not204 = icmp eq i64 %.0112, 0
  %invariant.op287 = xor i64 %1, -2401053088876216593
  %invariant.op = xor i64 %2, -3819410105351357762
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph199, %bb.t
  %.1198 = phi ptr [ %.1194240, %.lr.ph199 ], [ %.1, %bb.t ] ; 5 uses
  %.sroa.6.0197 = phi i64 [ 0, %.lr.ph199 ], [ %.sroa.6.2.lcssa, %bb.t ]
  %.sroa.0.0196 = phi i64 [ 0, %.lr.ph199 ], [ %.sroa.0.2.lcssa, %bb.t ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1198, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !27 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1198, i64 312
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.s
  %.0105193 = phi i32 [ 0, %bb.h ], [ %i.ef, %bb.s ] ; 4 uses
  %.sroa.6.1192 = phi i64 [ %.sroa.6.0197, %bb.h ], [ %.sroa.6.2.lcssa, %bb.s ] ; 3 uses
  %.sroa.0.1191 = phi i64 [ %.sroa.0.0196, %bb.h ], [ %.sroa.0.2.lcssa, %bb.s ] ; 3 uses
  %i.ag = zext i32 %.0105193 to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !63 ; 2 uses
  %.not122 = icmp eq i32 %i.aj, 0
  br i1 %.not122, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.al = zext i32 %i.aj to i64
  tail call void @qsort(ptr noundef %i.ak, i64 noundef %i.al, i64 noundef 8, ptr noundef nonnull @qsort_compare_pointers) #34
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !63 ; 3 uses
  %i.an = add i32 %i.am, -1                       ; 2 uses
  %wide.trip.count = zext i32 %i.an to i64
  %exitcond218.not266 = icmp eq i32 %i.an, 0
  br i1 %exitcond218.not266, label %.loopexit, label %.lr.ph269.preheader

.lr.ph269.preheader:                              ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 2 uses
  br label %.lr.ph269

bb.k:                                             ; preds = %.lr.ph269
  %exitcond218.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond218.not, label %.loopexit, label %.lr.ph269, !llvm.loop !226

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %bb.k
  %indvars.iv267 = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph269.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv267
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %indvars.iv.next = add nuw nsw i64 %indvars.iv267, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !38
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %.thread150, label %bb.k, !llvm.loop !226

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.not205 = icmp eq i32 %i.am, 0
  br i1 %.not205, label %._crit_edge, label %.lr.ph189

.lr.ph189:                                        ; preds = %.loopexit
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !66
  %i.av = mul i64 %i.ag, -7723592293110705685     ; 2 uses
  %i.aw = lshr i64 %i.av, 32
  %i.ax = xor i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = mul i64 %i.ax, 3133965575612453543      ; 2 uses
  %i.az = mul i64 %i.ax, 1465756011083071488
  %i.ba = lshr i64 %i.ay, 33
  %i.bb = or disjoint i64 %i.ba, %i.az
  %wide.trip.count224 = zext i32 %i.am to i64
  %invariant.op284.reass = xor i64 %i.ay, %invariant.op287
  %invariant.op286.reass = xor i64 %i.bb, %invariant.op
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph189, %bb.q
  %indvars.iv221 = phi i64 [ 0, %.lr.ph189 ], [ %indvars.iv.next222, %bb.q ] ; 2 uses
  %.sroa.6.2187 = phi i64 [ %.sroa.6.1192, %.lr.ph189 ], [ %i.dk, %bb.q ]
  %.sroa.0.2186 = phi i64 [ %.sroa.0.1191, %.lr.ph189 ], [ %i.di, %bb.q ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv221 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = ptrtoint ptr %i.bd to i64               ; 6 uses
  %i.bf = icmp eq i64 %i.ae, %i.be
  br i1 %i.bf, label %.thread150, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.be)
  %i.bh = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.be)
  %.reass253.reass = xor i64 %i.bg, %invariant.op284.reass ; 2 uses
  %i.bi = mul i64 %.reass253.reass, -49064778989728563
  %i.bj = mul i64 %.reass253.reass, -1443778861425754112
  %i.bk = lshr i64 %i.bi, 41
  %i.bl = or disjoint i64 %i.bk, %i.bj
  %i.bm = mul i64 %i.bl, -4265267296055464877
  %.reass256.reass = xor i64 %i.bh, %invariant.op286.reass ; 2 uses
  %i.bn = mul i64 %.reass256.reass, -7046029254386353131
  %i.bo = mul i64 %.reass256.reass, 3452378011804893184
  %i.bp = lshr i64 %i.bn, 35
  %i.bq = or disjoint i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -4658895280553007687
  %i.bs = add i64 %i.br, %i.bm                    ; 6 uses
end_hunk_0
