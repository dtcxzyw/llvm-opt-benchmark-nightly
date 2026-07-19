inline.NumInlined: 98
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@hnsw_insert_serialized:bb.a
  store ptr %i.fx, ptr %i.fy, align 8, !tbaa !26
  %i.fz = getelementptr inbounds nuw i8, ptr %.0122, i64 296
  store ptr null, ptr %i.fz, align 8, !tbaa !26
  %i.ga = load ptr, ptr %i.fw, align 8, !tbaa !139 ; 2 uses
  %.not.i169 = icmp eq ptr %i.ga, null
  br i1 %.not.i169, label %hnsw_add_node.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 296
  store ptr %.0122, ptr %i.gb, align 8, !tbaa !26
  br label %hnsw_add_node.exit

hnsw_add_node.exit:                               ; preds = %bb.r, %bb.s
  store ptr %.0122, ptr %i.fw, align 8, !tbaa !139
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !92
  %i.ge = add i64 %i.gd, 1
  store i64 %i.ge, ptr %i.gc, align 8, !tbaa !92
  %i.gf = load ptr, ptr %0, align 8, !tbaa !90
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %hnsw_add_node.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !91
  %i.gj = icmp ugt i32 %i.f, %i.gi
  br i1 %i.gj, label %bb.u, label %hnsw_node_free.exit.thread177

bb.u:                                             ; preds = %bb.t, %hnsw_add_node.exit
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.f, ptr %i.gk, align 4, !tbaa !91
  store ptr %.0122, ptr %0, align 8, !tbaa !90
  br label %hnsw_node_free.exit.thread177

hnsw_node_free.exit.thread177:                    ; preds = %hnsw_node_free.exit, %bb.k, %.thread, %hnsw_node_free.exit158, %hnsw_node_free.exit.thread, %bb.b, %hnsw_node_free.exit168, %bb.u, %bb.t, %bb.h, %bb.a
  %.10 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.h ], [ null, %hnsw_node_free.exit168 ], [ null, %hnsw_node_free.exit ], [ %.0122, %bb.u ], [ %.0122, %bb.t ], [ null, %hnsw_node_free.exit.thread ], [ null, %hnsw_node_free.exit158 ], [ null, %.thread ], [ null, %bb.k ]
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
  %i.b = load i64, ptr %i.a, align 8, !tbaa !92
  %i.c = shl i64 %i.b, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0107 = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ]  ; 9 uses
  %i.d = icmp ult i64 %.0107, %i.c
  %i.e = shl i64 %.0107, 1
  br i1 %i.d, label %bb.b, label %bb.c, !llvm.loop !221

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.g = shl i64 %.0107, 3                        ; 2 uses
  %i.h = tail call ptr %i.f(i64 noundef %i.g) #34 ; 6 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.h, i8 0, i64 %i.g, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %.0110178 = load ptr, ptr %i.j, align 8, !tbaa !26 ; 3 uses
  %.not179 = icmp eq ptr %.0110178, null
  br i1 %.not179, label %.sink.split, label %.lr.ph181

.lr.ph181:                                        ; preds = %bb.d
  %i.k = add i64 %.0107, -1
  %.not203 = icmp eq i64 %.0107, 0
  br i1 %.not203, label %.lr.ph199, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph181, %..loopexit157_crit_edge.us
  %.0110180.us = phi ptr [ %.0110.us, %..loopexit157_crit_edge.us ], [ %.0110178, %.lr.ph181 ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0110180.us, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13   ; 2 uses
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
  %.0108176.us = phi i64 [ 0, %.lr.ph.us ], [ %i.z, %bb.f ]
  %.0109177.us = and i64 %.pn, %i.k               ; 3 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0109177.us
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !26
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add i64 %.0109177.us, 1
  %i.z = add nuw i64 %.0108176.us, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %.0107
  br i1 %exitcond.not, label %..loopexit157_crit_edge.us, label %bb.e, !llvm.loop !222

bb.g:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0109177.us
  store ptr %.0110180.us, ptr %i.aa, align 8, !tbaa !26
  br label %..loopexit157_crit_edge.us

..loopexit157_crit_edge.us:                       ; preds = %bb.f, %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.0110180.us, i64 304
  %.0110.us = load ptr, ptr %i.ab, align 8, !tbaa !26 ; 2 uses
  %.not.us = icmp eq ptr %.0110.us, null
  br i1 %.not.us, label %.preheader, label %.lr.ph.us, !llvm.loop !223

.preheader:                                       ; preds = %..loopexit157_crit_edge.us
  %.1111194.pre = load ptr, ptr %i.j, align 8, !tbaa !26 ; 2 uses
  %.not120195 = icmp eq ptr %.1111194.pre, null
  br i1 %.not120195, label %.sink.split, label %.lr.ph199

.lr.ph199:                                        ; preds = %.lr.ph181, %.preheader
  %.1111194237 = phi ptr [ %.1111194.pre, %.preheader ], [ %.0110178, %.lr.ph181 ]
  %i.ac = add i64 %.0107, -1
  %.not204 = icmp eq i64 %.0107, 0
  %invariant.op284 = xor i64 %1, -2401053088876216593
  %invariant.op = xor i64 %2, -3819410105351357762
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph199, %bb.t
  %.1111198 = phi ptr [ %.1111194237, %.lr.ph199 ], [ %.1111, %bb.t ] ; 5 uses
  %.sroa.6.0197 = phi i64 [ 0, %.lr.ph199 ], [ %.sroa.6.2.lcssa, %bb.t ]
  %.sroa.0.0196 = phi i64 [ 0, %.lr.ph199 ], [ %.sroa.0.2.lcssa, %bb.t ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.1111198, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !13 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.1111198, i64 312
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.s
  %.0106193 = phi i32 [ 0, %bb.h ], [ %i.ef, %bb.s ] ; 4 uses
  %.sroa.6.1192 = phi i64 [ %.sroa.6.0197, %bb.h ], [ %.sroa.6.2.lcssa, %bb.s ] ; 3 uses
  %.sroa.0.1191 = phi i64 [ %.sroa.0.0196, %bb.h ], [ %.sroa.0.2.lcssa, %bb.s ] ; 3 uses
  %i.ag = zext i32 %.0106193 to i64               ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.af, i64 %i.ag ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !132 ; 2 uses
  %.not122 = icmp eq i32 %i.aj, 0
  br i1 %.not122, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !135
  %i.al = zext i32 %i.aj to i64
  tail call void @qsort(ptr noundef %i.ak, i64 noundef %i.al, i64 noundef 8, ptr noundef nonnull @qsort_compare_pointers) #34
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !132 ; 3 uses
  %i.an = add i32 %i.am, -1                       ; 2 uses
  %wide.trip.count = zext i32 %i.an to i64
  %exitcond218.not263 = icmp eq i32 %i.an, 0
  br i1 %exitcond218.not263, label %.loopexit, label %.lr.ph266.preheader

.lr.ph266.preheader:                              ; preds = %bb.j
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !135 ; 2 uses
  br label %.lr.ph266

bb.k:                                             ; preds = %.lr.ph266
  %exitcond218.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond218.not, label %.loopexit, label %.lr.ph266, !llvm.loop !224

.lr.ph266:                                        ; preds = %.lr.ph266.preheader, %bb.k
  %indvars.iv264 = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph266.preheader ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv264
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv264, 1 ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.next
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.at = icmp eq ptr %i.aq, %i.as
  br i1 %i.at, label %.thread150, label %bb.k, !llvm.loop !224

.loopexit:                                        ; preds = %bb.k, %bb.j
  %.not205 = icmp eq i32 %i.am, 0
  br i1 %.not205, label %._crit_edge, label %.lr.ph189

.lr.ph189:                                        ; preds = %.loopexit
  %i.au = load ptr, ptr %i.ah, align 8, !tbaa !135
  %i.av = mul i64 %i.ag, -7723592293110705685     ; 2 uses
  %i.aw = lshr i64 %i.av, 32
  %i.ax = xor i64 %i.aw, %i.av                    ; 2 uses
  %i.ay = mul i64 %i.ax, 3133965575612453543      ; 2 uses
  %i.az = mul i64 %i.ax, 1465756011083071488
  %i.ba = lshr i64 %i.ay, 33
  %i.bb = or disjoint i64 %i.ba, %i.az
  %wide.trip.count224 = zext i32 %i.am to i64
  %invariant.op281.reass = xor i64 %i.ay, %invariant.op284
  %invariant.op283.reass = xor i64 %i.bb, %invariant.op
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph189, %bb.q
  %.sroa.6.2187.a = phi i64 [ 0, %.lr.ph189 ], [ %indvars.iv.next222, %bb.q ] ; 2 uses
  %.sroa.0.2186.a = phi i64 [ %.sroa.6.1192, %.lr.ph189 ], [ %i.dk, %bb.q ]
  %.sroa.0.2186 = phi i64 [ %.sroa.0.1191, %.lr.ph189 ], [ %i.di, %bb.q ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.sroa.6.2187.a ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !26
  %i.be = ptrtoint ptr %i.bd to i64               ; 6 uses
  %i.bf = icmp eq i64 %i.ae, %i.be
  br i1 %i.bf, label %.thread150, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 %i.be)
  %i.bh = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.be)
  %.reass250.reass = xor i64 %i.bg, %invariant.op281.reass ; 2 uses
  %i.bi = mul i64 %.reass250.reass, -49064778989728563
  %i.bj = mul i64 %.reass250.reass, -1443778861425754112
  %i.bk = lshr i64 %i.bi, 41
  %i.bl = or disjoint i64 %i.bk, %i.bj
  %i.bm = mul i64 %i.bl, -4265267296055464877
  %.reass253.reass = xor i64 %i.bh, %invariant.op283.reass ; 2 uses
  %i.bn = mul i64 %.reass253.reass, -7046029254386353131
  %i.bo = mul i64 %.reass253.reass, 3452378011804893184
  %i.bp = lshr i64 %i.bn, 35
  %i.bq = or disjoint i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, -4658895280553007687
  %i.bs = add i64 %i.bm, %i.br                    ; 6 uses
  %i.bt = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 31)
  %i.bu = xor i64 %i.bt, %i.bs
  %i.bv = mul i64 %i.bu, -49064778989728563
  %i.bw = xor i64 %i.bv, %1
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 37)
  %i.by = xor i64 %i.bx, %i.bs
  %i.bz = mul i64 %i.by, -4265267296055464877
  %i.ca = xor i64 %i.bz, %2
  %i.cb = add i64 %i.bw, %i.ca                    ; 6 uses
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 31)
  %i.cd = xor i64 %i.cc, %i.cb
  %i.ce = mul i64 %i.cd, -49064778989728563
  %i.cf = xor i64 %i.ce, %1
  %i.cg = tail call i64 @llvm.fshl.i64(i64 %i.cb, i64 %i.cb, i64 37)
  %i.ch = xor i64 %i.cg, %i.cb
  %i.ci = mul i64 %i.ch, -4265267296055464877
  %i.cj = xor i64 %i.ci, %2
  %i.ck = add i64 %i.cf, %i.cj                    ; 6 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 31)
  %i.cm = xor i64 %i.cl, %i.ck
  %i.cn = mul i64 %i.cm, -49064778989728563
  %i.co = xor i64 %i.cn, %1                       ; 2 uses
  %i.cp = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 37)
  %i.cq = xor i64 %i.cp, %i.ck
  %i.cr = mul i64 %i.cq, -4265267296055464877
  %i.cs = xor i64 %i.cr, %2                       ; 2 uses
  %i.ct = lshr i64 %i.co, 33
  %i.cu = xor i64 %i.ct, %i.co
  %i.cv = mul i64 %i.cu, -7046029254386353131     ; 2 uses
  %i.cw = lshr i64 %i.cv, 29
  %i.cx = xor i64 %i.cw, %i.cv
  %i.cy = mul i64 %i.cx, -4658895280553007687     ; 2 uses
  %i.cz = lshr i64 %i.cy, 32
  %i.da = lshr i64 %i.cs, 33
  %i.db = xor i64 %i.da, %i.cs
  %i.dc = mul i64 %i.db, -7723592293110705685     ; 2 uses
  %i.dd = lshr i64 %i.dc, 29
  %i.de = xor i64 %i.dd, %i.dc
  %i.df = mul i64 %i.de, 3133965575612453543      ; 2 uses
  %i.dg = lshr i64 %i.df, 32
  %i.dh = xor i64 %.sroa.0.2186, %i.cz
  %i.di = xor i64 %i.dh, %i.cy                    ; 2 uses
  %i.dj = xor i64 %.sroa.0.2186.a, %i.dg
  %i.dk = xor i64 %i.dj, %i.df                    ; 2 uses
  br i1 %.not204, label %.thread150, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %i.dl = lshr i64 %i.be, 33
  %i.dm = xor i64 %i.dl, %i.be
  %i.dn = mul i64 %i.dm, -49064778989728563       ; 2 uses
  %i.do = lshr i64 %i.dn, 33
  %i.dp = xor i64 %i.do, %i.dn
  %i.dq = mul i64 %i.dp, -4265267296055464877     ; 2 uses
  %i.dr = lshr i64 %i.dq, 33
  %i.ds = xor i64 %i.dr, %i.dq
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.pn206 = phi i64 [ %i.dy, %bb.o ], [ %i.ds, %.lr.ph.preheader ]
  %.0183 = phi i64 [ %i.dz, %bb.o ], [ 0, %.lr.ph.preheader ]
  %.0102184 = and i64 %.pn206, %i.ac              ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.0102184
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !26 ; 4 uses
  %.not124 = icmp eq ptr %i.du, null
  br i1 %.not124, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !13
  %i.dx = icmp eq i64 %i.dw, %i.be
  br i1 %i.dx, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %i.dy = add i64 %.0102184, 1
  %i.dz = add nuw i64 %.0183, 1                   ; 2 uses
  %exitcond220.not = icmp eq i64 %i.dz, %.0107
  br i1 %exitcond220.not, label %.thread150, label %.lr.ph, !llvm.loop !225

bb.p:                                             ; preds = %bb.n
  %i.ea = load i32, ptr %i.du, align 8, !tbaa !9
  %i.eb = icmp ult i32 %i.ea, %.0106193
  br i1 %i.eb, label %.thread150, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.du, ptr %i.bc, align 8, !tbaa !26
  %indvars.iv.next222 = add nuw nsw i64 %.sroa.6.2187.a, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count224
  br i1 %exitcond221.not, label %._crit_edge, label %bb.l, !llvm.loop !226

._crit_edge:                                      ; preds = %bb.q, %bb.i, %.loopexit
  %.sroa.0.2.lcssa = phi i64 [ %.sroa.0.1191, %.loopexit ], [ %.sroa.0.1191, %bb.i ], [ %i.di, %bb.q ] ; 3 uses
  %.sroa.6.2.lcssa = phi i64 [ %.sroa.6.1192, %.loopexit ], [ %.sroa.6.1192, %bb.i ], [ %i.dk, %bb.q ] ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ah, i64 20
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !134
  %i.ee = icmp eq i32 %i.ed, -1
  br i1 %i.ee, label %bb.r, label %bb.s

bb.r:                                             ; preds = %._crit_edge
  tail call void @hnsw_update_worst_neighbor(ptr noundef %0, ptr noundef nonnull %.1111198, i32 noundef %.0106193)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %i.ef = add i32 %.0106193, 1                    ; 2 uses
  %i.eg = load i32, ptr %.1111198, align 8, !tbaa !9
  %.not121 = icmp ugt i32 %i.ef, %i.eg
  br i1 %.not121, label %bb.t, label %bb.i, !llvm.loop !227

bb.t:                                             ; preds = %bb.s
  %i.eh = getelementptr inbounds nuw i8, ptr %.1111198, i64 304
  %.1111 = load ptr, ptr %i.eh, align 8, !tbaa !26 ; 2 uses
  %.not120 = icmp eq ptr %.1111, null
  br i1 %.not120, label %._crit_edge200, label %bb.h

._crit_edge200:                                   ; preds = %bb.t
  %i.ei = icmp ne i64 %.sroa.0.2.lcssa, 0
  %i.ej = icmp ne i64 %.sroa.6.2.lcssa, 0
  %i.ek = select i1 %i.ei, i1 true, i1 %i.ej
  br i1 %i.ek, label %.thread150, label %.sink.split

.thread150:                                       ; preds = %.lr.ph266, %bb.l, %bb.p, %bb.m, %bb.o, %._crit_edge200
  br label %.sink.split

.sink.split:                                      ; preds = %._crit_edge200, %.preheader, %bb.d, %.thread150
  %.1.ph = phi i32 [ 0, %.thread150 ], [ 1, %bb.d ], [ 1, %.preheader ], [ 1, %._crit_edge200 ]
  %i.el = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.el(ptr noundef nonnull %i.h) #34
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %.1.ph, %.sink.split ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @qsort_compare_pointers(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #22 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !13
  %i.b = load i64, ptr %1, align 8, !tbaa !13
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @hnsw_cursor_init(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull %i.a) #34
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @hmalloc, align 8, !tbaa !15
  %i.d = tail call ptr %i.c(i64 noundef 24) #34   ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.d, align 8, !tbaa !228
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1664 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !94
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !229
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.j, ptr %i.k, align 8, !tbaa !185
  store ptr %i.d, ptr %i.f, align 8, !tbaa !94
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.1.ph = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %i.l = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.a) #34 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %.1.ph, %.sink.split ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_cursor_free(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %i.c = tail call i32 @pthread_rwlock_wrlock(ptr noundef nonnull %i.b) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1664 ; 2 uses
  %.01520 = load ptr, ptr %i.d, align 8, !tbaa !188 ; 3 uses
  %.not1721 = icmp eq ptr %.01520, null
  br i1 %.not1721, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.e = icmp eq ptr %.01520, %0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph28

.lr.ph28:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %.0152327 = phi ptr [ %.015, %.lr.ph ], [ %.01520, %.lr.ph.preheader ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0152327, i64 16
  %.015 = load ptr, ptr %i.f, align 8, !tbaa !188 ; 3 uses
  %.not17 = icmp eq ptr %.015, null
  br i1 %.not17, label %.loopexit, label %.lr.ph, !llvm.loop !230

.lr.ph:                                           ; preds = %.lr.ph28
  %i.g = icmp eq ptr %.015, %0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph28, !llvm.loop !230

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.022.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.0152327, %.lr.ph ] ; 2 uses
  %.not18 = icmp eq ptr %.022.lcssa, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !229  ; 2 uses
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph._crit_edge
  %i.j = getelementptr inbounds nuw i8, ptr %.022.lcssa, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !229
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge
  store ptr %i.i, ptr %i.d, align 8, !tbaa !94
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = load ptr, ptr @hfree, align 8, !tbaa !15
  tail call void %i.k(ptr noundef nonnull %0) #34
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph28, %bb.b, %bb.e
  %i.l = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.b) #34 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %.loopexit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @hnsw_cursor_acquire_lock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = tail call i32 @pthread_rwlock_rdlock(ptr noundef nonnull %i.b) #34
  %i.d = icmp eq i32 %i.c, 0
  %i.e = zext i1 %i.d to i32
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local void @hnsw_cursor_release_lock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !228
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.c = tail call i32 @pthread_rwlock_unlock(ptr noundef nonnull %i.b) #34 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @hnsw_cursor_next(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !185  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 304
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !26
  store ptr %i.d, ptr %i.a, align 8, !tbaa !185
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.b
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @hnsw_print_stats(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #24 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 2 uses
  %.not36 = icmp eq ptr %i.b, null
  br i1 %.not36, label %bb.c, label %.preheader
end_hunk_0
