inline.NumInlined: 678
inline.NumDeleted: 90
begin_hunk_0_@vorbis_synthesis_trackonly:bb.a
  %i.cd = getelementptr inbounds i8, ptr %i.aa, i64 %i.cc ; 3 uses
  store ptr %i.cd, ptr %i.ad, align 8
  store i64 %i.cc, ptr %i.i, align 8
  %i.ce = and i32 %i.ar, 7                        ; 4 uses
  store i32 %i.ce, ptr %i.ah, align 8
  %i.cf = trunc i64 %.1.i40 to i32                ; 2 uses
  %i.cg = icmp eq i32 %i.cf, -1
  br i1 %i.cg, label %bb.s, label %bb.k

bb.k:                                             ; preds = %oggpack_read.exit45
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 %i.cf, ptr %i.ch, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %sext = shl i64 %.1.i40, 32
  %i.cj = ashr exact i64 %sext, 29
  %i.ck = getelementptr inbounds i8, ptr %i.ci, i64 %i.cj
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load i32, ptr %i.cl, align 4            ; 2 uses
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.cn, ptr %i.co, align 8
  %.not35 = icmp eq i32 %i.cm, 0
  br i1 %.not35, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cp = add nuw nsw i32 %i.ce, 1                ; 2 uses
  %i.cq = add nsw i64 %i.cc, 4
  %.not.i46 = icmp slt i64 %i.cq, %i.af
  br i1 %.not.i46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = shl nsw i64 %i.cc, 3
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = add nsw i64 %i.cr, %i.cs
  %i.cu = lshr exact i64 %sext65, 29
  %i.cv = icmp sgt i64 %i.ct, %i.cu
  br i1 %i.cv, label %oggpack_read.exit54, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cw = load i8, ptr %i.cd, align 1
  %i.cx = zext i8 %i.cw to i32
  %i.cy = lshr i32 %i.cx, %i.ce
  %i.cz = and i32 %i.cy, 1
  %i.da = zext nneg i32 %i.cz to i64
  br label %oggpack_read.exit54

oggpack_read.exit54:                              ; preds = %bb.m, %bb.n
  %.1.i48 = phi i64 [ %i.da, %bb.n ], [ -1, %bb.m ]
  %.cmp = icmp eq i32 %i.ce, 7
  %i.db = zext i1 %.cmp to i64                    ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.db ; 3 uses
  store ptr %i.dc, ptr %i.ad, align 8
  %i.dd = add nsw i64 %i.cc, %i.db                ; 4 uses
  store i64 %i.dd, ptr %i.i, align 8
  %i.de = and i32 %i.cp, 7                        ; 4 uses
  store i32 %i.de, ptr %i.ah, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.1.i48, ptr %i.df, align 8
  %i.dg = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dh = add nsw i64 %i.dd, 4
  %.not.i55 = icmp slt i64 %i.dh, %i.af
  br i1 %.not.i55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %oggpack_read.exit54
  %i.di = shl nsw i64 %i.dd, 3
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = add nsw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %sext65, 29
  %i.dm = icmp sgt i64 %i.dk, %i.dl
  br i1 %i.dm, label %oggpack_read.exit63, label %bb.p

bb.p:                                             ; preds = %oggpack_read.exit54, %bb.o
  %i.dn = load i8, ptr %i.dc, align 1
  %i.do = zext i8 %i.dn to i32
  %i.dp = lshr i32 %i.do, %i.de
  %i.dq = and i32 %i.dp, 1
  %i.dr = zext nneg i32 %i.dq to i64
  br label %oggpack_read.exit63

oggpack_read.exit63:                              ; preds = %bb.o, %bb.p
  %.1.i57 = phi i64 [ %i.dr, %bb.p ], [ -1, %bb.o ] ; 2 uses
  %.cmp64 = icmp eq i32 %i.de, 7
  %i.ds = zext i1 %.cmp64 to i64                  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ds
  store ptr %i.dt, ptr %i.ad, align 8
  %i.du = add nsw i64 %i.dd, %i.ds
  store i64 %i.du, ptr %i.i, align 8
  %i.dv = and i32 %i.dg, 7
  store i32 %i.dv, ptr %i.ah, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.1.i57, ptr %i.dw, align 8
  %i.dx = icmp eq i64 %.1.i57, -1
  br i1 %i.dx, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.dy, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %i.dz, align 8
  br label %bb.r

bb.r:                                             ; preds = %oggpack_read.exit63, %bb.q
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %i.eb, ptr %i.ec, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ee = load i64, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %i.ee, ptr %i.ef, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = trunc i64 %i.eh to i32
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.ei, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.ek, align 8
  store ptr null, ptr %0, align 8
  br label %bb.s

.critedge:                                        ; preds = %_vorbis_block_ripcord.exit
  store i64 0, ptr %i.i, align 8
  store i32 1, ptr %i.ah, align 8
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %oggpack_read.exit63, %oggpack_read.exit45, %oggpack_read.exit, %bb.r
  %.0 = phi i32 [ 0, %bb.r ], [ -135, %oggpack_read.exit ], [ -136, %oggpack_read.exit45 ], [ -136, %oggpack_read.exit63 ], [ -135, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -131, 1) i32 @vorbis_synthesis_blockin(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8              ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load ptr, ptr %i.e, align 8              ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 5808
  %i.h = load i32, ptr %i.g, align 8              ; 7 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 7 uses
  %i.j = load i32, ptr %i.i, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.l = load i32, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp sle i32 %i.j, %i.l
  %.not238 = icmp eq i32 %i.l, -1
  %or.cond = or i1 %i.m, %.not238
  br i1 %or.cond, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 7 uses
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load i64, ptr %i.q, align 8
  store i64 %i.r, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 -1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load i64, ptr %i.x, align 8
  %.not239 = icmp eq i64 %i.w, %i.y
  br i1 %.not239, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 -1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  store i64 -1, ptr %i.aa, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi i64 [ %.pre, %bb.e ], [ %i.w, %bb.d ]
  store i64 %i.ab, ptr %i.t, align 8
  %i.ac = load ptr, ptr %1, align 8
  %.not240 = icmp eq ptr %i.ac, null
  br i1 %.not240, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = load i64, ptr %i.n, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = add nsw i32 %i.h, 1
  %i.ah = zext i32 %i.ag to i64                   ; 3 uses
  %i.ai = load i64, ptr %i.d, align 8
  %i.aj = ashr i64 %i.ai, %i.ah                   ; 11 uses
  %i.ak = trunc i64 %i.aj to i32                  ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.am = load i64, ptr %i.al, align 8
  %i.an = ashr i64 %i.am, %i.ah                   ; 6 uses
  %i.ao = trunc i64 %i.an to i32                  ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = add nsw i64 %i.as, %i.aq
  store i64 %i.at, ptr %i.ar, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = add nsw i64 %i.ax, %i.av
  store i64 %i.ay, ptr %i.aw, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = add nsw i64 %i.bc, %i.ba
  store i64 %i.bd, ptr %i.bb, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = add nsw i64 %i.bh, %i.bf
  store i64 %i.bi, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bk = load i64, ptr %i.bj, align 8            ; 2 uses
  %.not241 = icmp eq i64 %i.bk, 0                 ; 2 uses
  %. = select i1 %.not241, i32 %i.ao, i32 0       ; 3 uses
  %.256 = select i1 %.not241, i32 0, i32 %i.ao    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %bb.g
  %i.bo = ashr i64 %i.af, %i.ah                   ; 5 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bs = sext i32 %. to i64                      ; 7 uses
  %i.bt = icmp sgt i32 %i.ao, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bv = sdiv i32 %i.ao, 2                       ; 2 uses
  %i.bw = sext i32 %i.bv to i64                   ; 5 uses
  %.neg = sdiv i32 %i.ak, -2
  %i.bx = sext i32 %.neg to i64                   ; 2 uses
  %i.by = icmp sgt i32 %i.ak, 0                   ; 3 uses
  %i.bz = sdiv i32 %i.ak, 2                       ; 4 uses
  %narrow = sub nsw i32 0, %i.bz
  %i.ca = sext i32 %narrow to i64
  %i.cb = add nsw i32 %i.bv, %i.bz                ; 2 uses
  %i.cc = sext i32 %.256 to i64                   ; 2 uses
  %sext255 = shl i64 %i.bo, 32
  %i.cd = ashr exact i64 %sext255, 30             ; 2 uses
  %i.ce = icmp sgt i32 %i.bp, 0
  %sext328 = shl i64 %i.aj, 32                    ; 4 uses
  %i.cf = ashr exact i64 %sext328, 32             ; 3 uses
  %wide.trip.count = and i64 %i.an, 2147483647    ; 4 uses
  %i.cg = shl i64 %i.an, 2
  %i.ch = and i64 %i.cg, 8589934588               ; 3 uses
  %wide.trip.count283 = and i64 %i.aj, 2147483647 ; 17 uses
  %wide.trip.count288 = and i64 %i.aj, 2147483647
  %wide.trip.count297 = zext i32 %i.cb to i64     ; 4 uses
  %wide.trip.count302 = and i64 %i.aj, 2147483647
  %wide.trip.count307 = and i64 %i.bo, 2147483647 ; 4 uses
  %i.ci = shl nsw i64 %i.cc, 2
  %i.cj = shl nuw nsw i64 %wide.trip.count283, 2  ; 3 uses
  %i.ck = add nsw i64 %wide.trip.count283, %i.bs
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = ashr exact i64 %sext328, 30
  %i.cn = sub nsw i64 %i.cm, %i.cj
  %i.co = sext i32 %i.bz to i64
  %i.cp = add nsw i64 %i.bs, %i.co
  %i.cq = sub nsw i64 %i.cp, %i.bw
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = shl nuw nsw i64 %wide.trip.count283, 2  ; 2 uses
  %i.ct = add nsw i64 %wide.trip.count283, %i.bs
  %i.cu = shl nsw i64 %i.ct, 2
  %i.cv = ashr exact i64 %sext328, 30
  %i.cw = sub nsw i64 %i.cv, %i.cs
  %i.cx = add nsw i64 %wide.trip.count283, %i.bw
  %i.cy = sext i32 %i.bz to i64
  %i.cz = sub nsw i64 %i.cx, %i.cy
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = add nsw i64 %i.bx, %i.bw
  %i.dc = shl nsw i64 %i.bs, 2
  %i.dd = add nsw i64 %i.db, %i.bs
  %i.de = shl nuw nsw i64 %wide.trip.count283, 2  ; 3 uses
  %i.df = add nsw i64 %i.dd, %wide.trip.count283
  %i.dg = shl nsw i64 %i.df, 2
  %i.dh = ashr exact i64 %sext328, 30
  %i.di = sub nsw i64 %i.dh, %i.de
  %min.iters.check467 = icmp samesign ult i64 %wide.trip.count, 8
  %n.vec470 = and i64 %i.an, 2147483640           ; 3 uses
  %cmp.n485 = icmp eq i64 %wide.trip.count, %n.vec470
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check436 = icmp samesign ult i64 %wide.trip.count283, 8
  %n.vec439 = and i64 %i.aj, 2147483640           ; 3 uses
  %cmp.n454 = icmp eq i64 %wide.trip.count283, %n.vec439
  %xtraiter496 = and i64 %i.aj, 1
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  %min.iters.check399 = icmp samesign ult i64 %wide.trip.count283, 8
  %n.vec402 = and i64 %i.aj, 2147483640           ; 3 uses
  %cmp.n417 = icmp eq i64 %wide.trip.count283, %n.vec402
  %xtraiter498 = and i64 %i.aj, 1
  %cmp.n380.a = icmp eq i64 %xtraiter498, 0
  %min.iters.check348 = icmp samesign ult i64 %wide.trip.count283, 8
  %n.vec351 = and i64 %i.aj, 2147483640           ; 3 uses
  %cmp.n365 = icmp eq i64 %wide.trip.count283, %n.vec351
  %xtraiter502 = and i64 %i.aj, 1
  %lcmp.mod503.not = icmp eq i64 %xtraiter502, 0
  %min.iters.check = icmp samesign ult i64 %wide.trip.count307, 8
  %n.vec = and i64 %i.bo, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count307, %n.vec
  %xtraiter505 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod506.not = icmp eq i64 %xtraiter505, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph274, %._crit_edge
  %indvars.iv309 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next310, %._crit_edge ] ; 8 uses
  %i.dj = load i64, ptr %i.p, align 8
  %.not251 = icmp eq i64 %i.dj, 0
  %i.dk = load i64, ptr %i.n, align 8
  %.not252 = icmp eq i64 %i.dk, 0                 ; 2 uses
  br i1 %.not251, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dl = load ptr, ptr %i.br, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %indvars.iv309
  %i.dn = load ptr, ptr %i.dm, align 8            ; 3 uses
  %i.do = getelementptr [4 x i8], ptr %i.dn, i64 %i.bs ; 7 uses
  br i1 %.not252, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dp = load i32, ptr %i.bq, align 4
  %i.dq = sub nsw i32 %i.dp, %i.h
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.dr
  %i.dt = load ptr, ptr %i.ds, align 8            ; 6 uses
  %i.du = load ptr, ptr %1, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv309
  %i.dw = load ptr, ptr %i.dv, align 8            ; 6 uses
  br i1 %i.bt, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.dx = getelementptr i8, ptr %i.dt, i64 %i.ch  ; 5 uses
  br i1 %min.iters.check467, label %.lr.ph.preheader494, label %vector.memcheck456

vector.memcheck456:                               ; preds = %.lr.ph.preheader
  %i.dy = getelementptr i8, ptr %i.dn, i64 %i.dc
  %scevgep457 = getelementptr i8, ptr %i.dy, i64 %i.ch ; 2 uses
  %scevgep458 = getelementptr i8, ptr %i.dw, i64 %i.ch
  %bound0459 = icmp ult ptr %i.do, %i.dx
  %bound1460 = icmp ult ptr %i.dt, %scevgep457
  %found.conflict461 = and i1 %bound0459, %bound1460
  %bound0462 = icmp ult ptr %i.do, %scevgep458
  %bound1463 = icmp ult ptr %i.dw, %scevgep457
  %found.conflict464 = and i1 %bound0462, %bound1463
  %conflict.rdx465 = or i1 %found.conflict461, %found.conflict464
  br i1 %conflict.rdx465, label %.lr.ph.preheader494, label %vector.body471

vector.body471:                                   ; preds = %vector.memcheck456, %vector.body471
  %index472 = phi i64 [ %index.next483, %vector.body471 ], [ 0, %vector.memcheck456 ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index472 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load473 = load <4 x float>, ptr %i.dz, align 4, !alias.scope !233, !noalias !236
  %wide.load474 = load <4 x float>, ptr %i.ea, align 4, !alias.scope !233, !noalias !236
  %i.eb = xor i64 %index472, -1
  %i.ec = getelementptr [4 x i8], ptr %i.dx, i64 %i.eb ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -12
  %i.ee = getelementptr i8, ptr %i.ec, i64 -28
  %wide.load475 = load <4 x float>, ptr %i.ed, align 4, !alias.scope !239
  %wide.load476 = load <4 x float>, ptr %i.ee, align 4, !alias.scope !239
  %reverse477 = shufflevector <4 x float> %wide.load475, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse478 = shufflevector <4 x float> %wide.load476, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ef = fmul <4 x float> %wide.load473, %reverse477
  %i.eg = fmul <4 x float> %wide.load474, %reverse478
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index472 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load479 = load <4 x float>, ptr %i.eh, align 4, !alias.scope !240
  %wide.load480 = load <4 x float>, ptr %i.ei, align 4, !alias.scope !240
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index472 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load481 = load <4 x float>, ptr %i.ej, align 4, !alias.scope !239
  %wide.load482 = load <4 x float>, ptr %i.ek, align 4, !alias.scope !239
  %i.el = fmul <4 x float> %wide.load479, %wide.load481
  %i.em = fmul <4 x float> %wide.load480, %wide.load482
  %i.en = fadd <4 x float> %i.ef, %i.el
  %i.eo = fadd <4 x float> %i.eg, %i.em
  store <4 x float> %i.en, ptr %i.dz, align 4, !alias.scope !233, !noalias !236
  store <4 x float> %i.eo, ptr %i.ea, align 4, !alias.scope !233, !noalias !236
  %index.next483 = add nuw i64 %index472, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next483, %n.vec470
  br i1 %i.ep, label %middle.block484, label %vector.body471, !llvm.loop !241

middle.block484:                                  ; preds = %vector.body471
  br i1 %cmp.n485, label %.loopexit, label %.lr.ph.preheader494

.lr.ph.preheader494:                              ; preds = %vector.memcheck456, %.lr.ph.preheader, %middle.block484
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck456 ], [ 0, %.lr.ph.preheader ], [ %n.vec470, %middle.block484 ] ; 7 uses
  %.neg508 = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader494
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.ph ; 2 uses
  %i.er = load float, ptr %i.eq, align 4
  %i.es = xor i64 %indvars.iv.ph, -1
  %i.et = getelementptr [4 x i8], ptr %i.dx, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4
  %i.ev = fmul float %i.er, %i.eu
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.ph
  %i.ex = load float, ptr %i.ew, align 4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.ph
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = fmul float %i.ex, %i.ez
  %i.fb = fadd float %i.ev, %i.fa
  store float %i.fb, ptr %i.eq, align 4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader494
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader494 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.fc = icmp eq i64 %wide.trip.count, %.neg508
  br i1 %i.fc, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4
  %i.ff = xor i64 %indvars.iv, -1
  %i.fg = getelementptr [4 x i8], ptr %i.dx, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4
  %i.fi = fmul float %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv
  %i.fk = load float, ptr %i.fj, align 4
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = fmul float %i.fk, %i.fm
  %i.fo = fadd float %i.fi, %i.fn
  store float %i.fo, ptr %i.fd, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.next ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4
  %i.fr = sub i64 -2, %indvars.iv
  %i.fs = getelementptr [4 x i8], ptr %i.dx, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4
  %i.fu = fmul float %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv.next
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.next
  %i.fy = load float, ptr %i.fx, align 4
  %i.fz = fmul float %i.fw, %i.fy
  %i.ga = fadd float %i.fu, %i.fz
  store float %i.ga, ptr %i.fp, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !242

bb.k:                                             ; preds = %bb.i
  %i.gb = load i32, ptr %i.bu, align 8
  %i.gc = sub nsw i32 %i.gb, %i.h
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8            ; 8 uses
  %i.gg = getelementptr [4 x i8], ptr %i.do, i64 %i.bw
  %i.gh = getelementptr [4 x i8], ptr %i.gg, i64 %i.bx ; 7 uses
  %i.gi = load ptr, ptr %1, align 8
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv309
  %i.gk = load ptr, ptr %i.gj, align 8            ; 6 uses
  br i1 %i.by, label %.lr.ph263.preheader, label %.loopexit

.lr.ph263.preheader:                              ; preds = %bb.k
  %i.gl = getelementptr [4 x i8], ptr %i.gf, i64 %i.cf ; 5 uses
  br i1 %min.iters.check436, label %.lr.ph263.preheader492, label %vector.memcheck419

vector.memcheck419:                               ; preds = %.lr.ph263.preheader
  %scevgep420 = getelementptr i8, ptr %i.dn, i64 %i.dg ; 3 uses
  %scevgep421 = getelementptr i8, ptr %i.gf, i64 %i.de
  %scevgep422 = getelementptr i8, ptr %i.gf, i64 %i.di
  %scevgep423 = getelementptr i8, ptr %i.gk, i64 %i.de
  %bound0424 = icmp ult ptr %i.gh, %scevgep421
  %bound1425 = icmp ult ptr %i.gf, %scevgep420
  %found.conflict426 = and i1 %bound0424, %bound1425
  %bound0427 = icmp ult ptr %i.gh, %i.gl
  %bound1428 = icmp ult ptr %scevgep422, %scevgep420
  %found.conflict429 = and i1 %bound0427, %bound1428
  %conflict.rdx430 = or i1 %found.conflict426, %found.conflict429
  %bound0431 = icmp ult ptr %i.gh, %scevgep423
  %bound1432 = icmp ult ptr %i.gk, %scevgep420
  %found.conflict433 = and i1 %bound0431, %bound1432
  %conflict.rdx434 = or i1 %conflict.rdx430, %found.conflict433
  br i1 %conflict.rdx434, label %.lr.ph263.preheader492, label %vector.body440

vector.body440:                                   ; preds = %vector.memcheck419, %vector.body440
  %index441 = phi i64 [ %index.next452, %vector.body440 ], [ 0, %vector.memcheck419 ] ; 5 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index441 ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %wide.load442 = load <4 x float>, ptr %i.gm, align 4, !alias.scope !243, !noalias !246
  %wide.load443 = load <4 x float>, ptr %i.gn, align 4, !alias.scope !243, !noalias !246
  %i.go = xor i64 %index441, -1
  %i.gp = getelementptr [4 x i8], ptr %i.gl, i64 %i.go ; 2 uses
  %i.gq = getelementptr i8, ptr %i.gp, i64 -12
  %i.gr = getelementptr i8, ptr %i.gp, i64 -28
  %wide.load444 = load <4 x float>, ptr %i.gq, align 4, !alias.scope !250
  %wide.load445 = load <4 x float>, ptr %i.gr, align 4, !alias.scope !250
  %reverse446 = shufflevector <4 x float> %wide.load444, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse447 = shufflevector <4 x float> %wide.load445, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.gs = fmul <4 x float> %wide.load442, %reverse446
  %i.gt = fmul <4 x float> %wide.load443, %reverse447
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index441 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %wide.load448 = load <4 x float>, ptr %i.gu, align 4, !alias.scope !251
  %wide.load449 = load <4 x float>, ptr %i.gv, align 4, !alias.scope !251
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index441 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load450 = load <4 x float>, ptr %i.gw, align 4, !alias.scope !252
  %wide.load451 = load <4 x float>, ptr %i.gx, align 4, !alias.scope !252
  %i.gy = fmul <4 x float> %wide.load448, %wide.load450
  %i.gz = fmul <4 x float> %wide.load449, %wide.load451
  %i.ha = fadd <4 x float> %i.gs, %i.gy
  %i.hb = fadd <4 x float> %i.gt, %i.gz
  store <4 x float> %i.ha, ptr %i.gm, align 4, !alias.scope !243, !noalias !246
  store <4 x float> %i.hb, ptr %i.gn, align 4, !alias.scope !243, !noalias !246
  %index.next452 = add nuw i64 %index441, 8       ; 2 uses
  %i.hc = icmp eq i64 %index.next452, %n.vec439
  br i1 %i.hc, label %middle.block453, label %vector.body440, !llvm.loop !253

middle.block453:                                  ; preds = %vector.body440
  br i1 %cmp.n454, label %.loopexit, label %.lr.ph263.preheader492

.lr.ph263.preheader492:                           ; preds = %vector.memcheck419, %.lr.ph263.preheader, %middle.block453
  %indvars.iv280.ph = phi i64 [ 0, %vector.memcheck419 ], [ 0, %.lr.ph263.preheader ], [ %n.vec439, %middle.block453 ] ; 7 uses
  %.neg509 = or disjoint i64 %indvars.iv280.ph, 1
  br i1 %lcmp.mod497.not, label %.lr.ph263.prol.loopexit, label %.lr.ph263.prol

.lr.ph263.prol:                                   ; preds = %.lr.ph263.preheader492
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280.ph ; 2 uses
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = xor i64 %indvars.iv280.ph, -1
  %i.hg = getelementptr [4 x i8], ptr %i.gl, i64 %i.hf
  %i.hh = load float, ptr %i.hg, align 4
  %i.hi = fmul float %i.he, %i.hh
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280.ph
  %i.hk = load float, ptr %i.hj, align 4
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280.ph
  %i.hm = load float, ptr %i.hl, align 4
  %i.hn = fmul float %i.hk, %i.hm
  %i.ho = fadd float %i.hi, %i.hn
  store float %i.ho, ptr %i.hd, align 4
  %indvars.iv.next281.prol = or disjoint i64 %indvars.iv280.ph, 1
  br label %.lr.ph263.prol.loopexit

.lr.ph263.prol.loopexit:                          ; preds = %.lr.ph263.prol, %.lr.ph263.preheader492
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %.lr.ph263.preheader492 ], [ %indvars.iv.next281.prol, %.lr.ph263.prol ]
  %i.hp = icmp eq i64 %wide.trip.count283, %.neg509
  br i1 %i.hp, label %.loopexit, label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.prol.loopexit, %.lr.ph263
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.1, %.lr.ph263 ], [ %indvars.iv280.unr, %.lr.ph263.prol.loopexit ] ; 7 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280 ; 2 uses
  %i.hr = load float, ptr %i.hq, align 4
  %i.hs = xor i64 %indvars.iv280, -1
  %i.ht = getelementptr [4 x i8], ptr %i.gl, i64 %i.hs
  %i.hu = load float, ptr %i.ht, align 4
  %i.hv = fmul float %i.hr, %i.hu
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280
  %i.hx = load float, ptr %i.hw, align 4
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280
  %i.hz = load float, ptr %i.hy, align 4
  %i.ia = fmul float %i.hx, %i.hz
  %i.ib = fadd float %i.hv, %i.ia
  store float %i.ib, ptr %i.hq, align 4
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next281 ; 2 uses
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = sub i64 -2, %indvars.iv280
  %i.if = getelementptr [4 x i8], ptr %i.gl, i64 %i.ie
  %i.ig = load float, ptr %i.if, align 4
  %i.ih = fmul float %i.id, %i.ig
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next281
  %i.ij = load float, ptr %i.ii, align 4
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.next281
  %i.il = load float, ptr %i.ik, align 4
  %i.im = fmul float %i.ij, %i.il
  %i.in = fadd float %i.ih, %i.im
  store float %i.in, ptr %i.ic, align 4
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %exitcond284.not.1 = icmp eq i64 %indvars.iv.next281.1, %wide.trip.count283
  br i1 %exitcond284.not.1, label %.loopexit, label %.lr.ph263, !llvm.loop !254

bb.l:                                             ; preds = %bb.h
  %i.io = load i32, ptr %i.bu, align 8
  %i.ip = sub nsw i32 %i.io, %i.h
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.iq
  %i.is = load ptr, ptr %i.ir, align 8            ; 16 uses
  %i.it = load ptr, ptr %i.br, align 8
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %indvars.iv309
  %i.iv = load ptr, ptr %i.iu, align 8            ; 4 uses
  %i.iw = ptrtoaddr ptr %i.iv to i64
  %i.ix = getelementptr [4 x i8], ptr %i.iv, i64 %i.bs ; 20 uses
  %i.iy = load ptr, ptr %1, align 8
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.iy, i64 %indvars.iv309
  %i.ja = load ptr, ptr %i.iz, align 8            ; 9 uses
  %i.jb = ptrtoaddr ptr %i.ja to i64
  br i1 %.not252, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jc = getelementptr [4 x i8], ptr %i.ja, i64 %i.bw
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %i.ca ; 11 uses
  br i1 %i.by, label %.lr.ph265.preheader, label %.preheader

.lr.ph265.preheader:                              ; preds = %bb.m
  %i.je = getelementptr [4 x i8], ptr %i.is, i64 %i.cf ; 5 uses
  br i1 %min.iters.check399, label %.lr.ph265.preheader491, label %vector.memcheck382

vector.memcheck382:                               ; preds = %.lr.ph265.preheader
  %scevgep383 = getelementptr i8, ptr %i.iv, i64 %i.cu ; 3 uses
  %scevgep384 = getelementptr i8, ptr %i.is, i64 %i.cs
  %scevgep385 = getelementptr i8, ptr %i.is, i64 %i.cw
  %scevgep386 = getelementptr i8, ptr %i.ja, i64 %i.da
  %bound0387 = icmp ult ptr %i.ix, %scevgep384
  %bound1388 = icmp ult ptr %i.is, %scevgep383
  %found.conflict389 = and i1 %bound0387, %bound1388
  %bound0390 = icmp ult ptr %i.ix, %i.je
  %bound1391 = icmp ult ptr %scevgep385, %scevgep383
  %found.conflict392 = and i1 %bound0390, %bound1391
  %conflict.rdx393 = or i1 %found.conflict389, %found.conflict392
  %bound0394 = icmp ult ptr %i.ix, %scevgep386
  %bound1395 = icmp ult ptr %i.jd, %scevgep383
  %found.conflict396 = and i1 %bound0394, %bound1395
  %conflict.rdx397 = or i1 %conflict.rdx393, %found.conflict396
  br i1 %conflict.rdx397, label %.lr.ph265.preheader491, label %vector.body403

vector.body403:                                   ; preds = %vector.memcheck382, %vector.body403
  %index404 = phi i64 [ %index.next415, %vector.body403 ], [ 0, %vector.memcheck382 ] ; 5 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index404 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %wide.load405 = load <4 x float>, ptr %i.jf, align 4, !alias.scope !255, !noalias !258
  %wide.load406 = load <4 x float>, ptr %i.jg, align 4, !alias.scope !255, !noalias !258
  %i.jh = xor i64 %index404, -1
  %i.ji = getelementptr [4 x i8], ptr %i.je, i64 %i.jh ; 2 uses
  %i.jj = getelementptr i8, ptr %i.ji, i64 -12
  %i.jk = getelementptr i8, ptr %i.ji, i64 -28
  %wide.load407 = load <4 x float>, ptr %i.jj, align 4, !alias.scope !262
  %wide.load408 = load <4 x float>, ptr %i.jk, align 4, !alias.scope !262
  %reverse409 = shufflevector <4 x float> %wide.load407, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse410 = shufflevector <4 x float> %wide.load408, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jl = fmul <4 x float> %wide.load405, %reverse409
  %i.jm = fmul <4 x float> %wide.load406, %reverse410
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %index404 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16
  %wide.load411 = load <4 x float>, ptr %i.jn, align 4, !alias.scope !263
  %wide.load412 = load <4 x float>, ptr %i.jo, align 4, !alias.scope !263
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index404 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16
  %wide.load413 = load <4 x float>, ptr %i.jp, align 4, !alias.scope !264
  %wide.load414 = load <4 x float>, ptr %i.jq, align 4, !alias.scope !264
  %i.jr = fmul <4 x float> %wide.load411, %wide.load413
  %i.js = fmul <4 x float> %wide.load412, %wide.load414
  %i.jt = fadd <4 x float> %i.jl, %i.jr
  %i.ju = fadd <4 x float> %i.jm, %i.js
  store <4 x float> %i.jt, ptr %i.jf, align 4, !alias.scope !255, !noalias !258
  store <4 x float> %i.ju, ptr %i.jg, align 4, !alias.scope !255, !noalias !258
  %index.next415 = add nuw i64 %index404, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next415, %n.vec402
  br i1 %i.jv, label %middle.block416, label %vector.body403, !llvm.loop !265

middle.block416:                                  ; preds = %vector.body403
  br i1 %cmp.n417, label %.preheader, label %.lr.ph265.preheader491

.lr.ph265.preheader491:                           ; preds = %vector.memcheck382, %.lr.ph265.preheader, %middle.block416
  %indvars.iv285.ph = phi i64 [ 0, %vector.memcheck382 ], [ 0, %.lr.ph265.preheader ], [ %n.vec402, %middle.block416 ] ; 7 uses
  %.neg510 = or disjoint i64 %indvars.iv285.ph, 1
  br i1 %cmp.n380.a, label %.lr.ph265.prol.loopexit, label %.lr.ph265.prol

.lr.ph265.prol:                                   ; preds = %.lr.ph265.preheader491
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv285.ph ; 2 uses
  %i.jx = load float, ptr %i.jw, align 4
  %i.jy = xor i64 %indvars.iv285.ph, -1
  %i.jz = getelementptr [4 x i8], ptr %i.je, i64 %i.jy
  %i.ka = load float, ptr %i.jz, align 4
  %i.kb = fmul float %i.jx, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv285.ph
  %i.kd = load float, ptr %i.kc, align 4
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv285.ph
  %i.kf = load float, ptr %i.ke, align 4
  %i.kg = fmul float %i.kd, %i.kf
  %i.kh = fadd float %i.kb, %i.kg
  store float %i.kh, ptr %i.jw, align 4
  %indvars.iv.next286.prol = or disjoint i64 %indvars.iv285.ph, 1
  br label %.lr.ph265.prol.loopexit

.lr.ph265.prol.loopexit:                          ; preds = %.lr.ph265.prol, %.lr.ph265.preheader491
  %indvars.iv285.unr = phi i64 [ %indvars.iv285.ph, %.lr.ph265.preheader491 ], [ %indvars.iv.next286.prol, %.lr.ph265.prol ]
  %i.ki = icmp eq i64 %wide.trip.count283, %.neg510
  br i1 %i.ki, label %.preheader, label %.lr.ph265

.preheader:                                       ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265, %middle.block416, %bb.m
  %.2.lcssa = phi i32 [ 0, %bb.m ], [ %i.ak, %middle.block416 ], [ %i.ak, %.lr.ph265 ], [ %i.ak, %.lr.ph265.prol.loopexit ] ; 2 uses
  %i.kj = icmp slt i32 %.2.lcssa, %i.cb
  br i1 %i.kj, label %.lr.ph267.preheader, label %.loopexit

.lr.ph267.preheader:                              ; preds = %.preheader
  %i.kk = zext nneg i32 %.2.lcssa to i64          ; 5 uses
  %2 = sub nsw i64 %wide.trip.count297, %i.kk     ; 3 uses
  %min.iters.check370 = icmp ult i64 %2, 8
  br i1 %min.iters.check370, label %.lr.ph267.preheader489, label %vector.memcheck367

vector.memcheck367:                               ; preds = %.lr.ph267.preheader
  %i.kl = add i64 %i.cr, %i.iw
  %i.km = sub i64 %i.kl, %i.jb
  %diff.check368 = icmp ult i64 %i.km, 32
  br i1 %diff.check368, label %.lr.ph267.preheader489, label %vector.ph371

vector.ph371:                                     ; preds = %vector.memcheck367
  %n.vec373 = and i64 %2, -8                      ; 3 uses
  %i.kn = add nsw i64 %n.vec373, %i.kk
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph371
  %index375 = phi i64 [ 0, %vector.ph371 ], [ %index.next378, %vector.body374 ] ; 2 uses
  %i.ko = add i64 %index375, %i.kk                ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.ko ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 16
  %wide.load376 = load <4 x float>, ptr %i.kp, align 4
  %wide.load377 = load <4 x float>, ptr %i.kq, align 4
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.ko ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store <4 x float> %wide.load376, ptr %i.kr, align 4
  store <4 x float> %wide.load377, ptr %i.ks, align 4
  %index.next378 = add nuw i64 %index375, 8       ; 2 uses
  %i.kt = icmp eq i64 %index.next378, %n.vec373
  br i1 %i.kt, label %middle.block379, label %vector.body374, !llvm.loop !266

middle.block379:                                  ; preds = %vector.body374
  %cmp.n380 = icmp eq i64 %2, %n.vec373
  br i1 %cmp.n380, label %.loopexit, label %.lr.ph267.preheader489

.lr.ph267.preheader489:                           ; preds = %vector.memcheck367, %.lr.ph267.preheader, %middle.block379
  %indvars.iv293.ph = phi i64 [ %i.kk, %vector.memcheck367 ], [ %i.kk, %.lr.ph267.preheader ], [ %i.kn, %middle.block379 ] ; 4 uses
  %i.ku = sub nsw i64 %wide.trip.count297, %indvars.iv293.ph
  %xtraiter500 = and i64 %i.ku, 3                 ; 2 uses
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %.lr.ph267.prol.loopexit, label %.lr.ph267.prol

.lr.ph267.prol:                                   ; preds = %.lr.ph267.preheader489, %.lr.ph267.prol
  %indvars.iv293.prol = phi i64 [ %indvars.iv.next294.prol, %.lr.ph267.prol ], [ %indvars.iv293.ph, %.lr.ph267.preheader489 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph267.prol ], [ 0, %.lr.ph267.preheader489 ]
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv293.prol
  %i.kw = load float, ptr %i.kv, align 4
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv293.prol
  store float %i.kw, ptr %i.kx, align 4
  %indvars.iv.next294.prol = add nuw nsw i64 %indvars.iv293.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter500
  br i1 %prol.iter.cmp.not, label %.lr.ph267.prol.loopexit, label %.lr.ph267.prol, !llvm.loop !267

.lr.ph267.prol.loopexit:                          ; preds = %.lr.ph267.prol, %.lr.ph267.preheader489
  %indvars.iv293.unr = phi i64 [ %indvars.iv293.ph, %.lr.ph267.preheader489 ], [ %indvars.iv.next294.prol, %.lr.ph267.prol ]
  %i.ky = sub nsw i64 %indvars.iv293.ph, %wide.trip.count297
  %i.kz = icmp ugt i64 %i.ky, -4
  br i1 %i.kz, label %.loopexit, label %.lr.ph267

.lr.ph265:                                        ; preds = %.lr.ph265.prol.loopexit, %.lr.ph265
  %indvars.iv285 = phi i64 [ %indvars.iv.next286.1, %.lr.ph265 ], [ %indvars.iv285.unr, %.lr.ph265.prol.loopexit ] ; 7 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv285 ; 2 uses
  %i.lb = load float, ptr %i.la, align 4
  %i.lc = xor i64 %indvars.iv285, -1
  %i.ld = getelementptr [4 x i8], ptr %i.je, i64 %i.lc
  %i.le = load float, ptr %i.ld, align 4
  %i.lf = fmul float %i.lb, %i.le
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv285
  %i.lh = load float, ptr %i.lg, align 4
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv285
  %i.lj = load float, ptr %i.li, align 4
  %i.lk = fmul float %i.lh, %i.lj
  %i.ll = fadd float %i.lf, %i.lk
  store float %i.ll, ptr %i.la, align 4
  %indvars.iv.next286 = add nuw nsw i64 %indvars.iv285, 1 ; 3 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next286 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4
  %i.lo = sub i64 -2, %indvars.iv285
  %i.lp = getelementptr [4 x i8], ptr %i.je, i64 %i.lo
  %i.lq = load float, ptr %i.lp, align 4
  %i.lr = fmul float %i.ln, %i.lq
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next286
  %i.lt = load float, ptr %i.ls, align 4
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next286
  %i.lv = load float, ptr %i.lu, align 4
  %i.lw = fmul float %i.lt, %i.lv
  %i.lx = fadd float %i.lr, %i.lw
  store float %i.lx, ptr %i.lm, align 4
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %exitcond289.not.1 = icmp eq i64 %indvars.iv.next286.1, %wide.trip.count288
  br i1 %exitcond289.not.1, label %.preheader, label %.lr.ph265, !llvm.loop !268

.lr.ph267:                                        ; preds = %.lr.ph267.prol.loopexit, %.lr.ph267
  %indvars.iv293 = phi i64 [ %indvars.iv.next294.3, %.lr.ph267 ], [ %indvars.iv293.unr, %.lr.ph267.prol.loopexit ] ; 6 uses
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv293
  %i.lz = load float, ptr %i.ly, align 4
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv293
  store float %i.lz, ptr %i.ma, align 4
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294
  %i.mc = load float, ptr %i.mb, align 4
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294
  store float %i.mc, ptr %i.md, align 4
  %indvars.iv.next294.1 = add nuw nsw i64 %indvars.iv293, 2 ; 2 uses
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294.1
  %i.mf = load float, ptr %i.me, align 4
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294.1
  store float %i.mf, ptr %i.mg, align 4
  %indvars.iv.next294.2 = add nuw nsw i64 %indvars.iv293, 3 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.next294.2
  %i.mi = load float, ptr %i.mh, align 4
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next294.2
  store float %i.mi, ptr %i.mj, align 4
  %indvars.iv.next294.3 = add nuw nsw i64 %indvars.iv293, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next294.3, %wide.trip.count297
  br i1 %exitcond298.not.3, label %.loopexit, label %.lr.ph267, !llvm.loop !269

bb.n:                                             ; preds = %bb.l
  br i1 %i.by, label %.lr.ph269.preheader, label %.loopexit

.lr.ph269.preheader:                              ; preds = %bb.n
  %i.mk = getelementptr [4 x i8], ptr %i.is, i64 %i.cf ; 5 uses
  br i1 %min.iters.check348, label %.lr.ph269.preheader488, label %vector.memcheck336

vector.memcheck336:                               ; preds = %.lr.ph269.preheader
  %scevgep = getelementptr i8, ptr %i.iv, i64 %i.cl ; 3 uses
  %scevgep337 = getelementptr i8, ptr %i.is, i64 %i.cj
  %scevgep338 = getelementptr i8, ptr %i.is, i64 %i.cn
  %scevgep339 = getelementptr i8, ptr %i.ja, i64 %i.cj
  %bound0 = icmp ult ptr %i.ix, %scevgep337
  %bound1 = icmp ult ptr %i.is, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0340 = icmp ult ptr %i.ix, %i.mk
  %bound1341 = icmp ult ptr %scevgep338, %scevgep
  %found.conflict342 = and i1 %bound0340, %bound1341
  %conflict.rdx = or i1 %found.conflict, %found.conflict342
  %bound0343 = icmp ult ptr %i.ix, %scevgep339
  %bound1344 = icmp ult ptr %i.ja, %scevgep
  %found.conflict345 = and i1 %bound0343, %bound1344
  %conflict.rdx346 = or i1 %conflict.rdx, %found.conflict345
  br i1 %conflict.rdx346, label %.lr.ph269.preheader488, label %vector.body352

vector.body352:                                   ; preds = %vector.memcheck336, %vector.body352
  %index353 = phi i64 [ %index.next363, %vector.body352 ], [ 0, %vector.memcheck336 ] ; 5 uses
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index353 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 16 ; 2 uses
  %wide.load354 = load <4 x float>, ptr %i.ml, align 4, !alias.scope !270, !noalias !273
  %wide.load355 = load <4 x float>, ptr %i.mm, align 4, !alias.scope !270, !noalias !273
  %i.mn = xor i64 %index353, -1
  %i.mo = getelementptr [4 x i8], ptr %i.mk, i64 %i.mn ; 2 uses
  %i.mp = getelementptr i8, ptr %i.mo, i64 -12
  %i.mq = getelementptr i8, ptr %i.mo, i64 -28
  %wide.load356 = load <4 x float>, ptr %i.mp, align 4, !alias.scope !277
  %wide.load357 = load <4 x float>, ptr %i.mq, align 4, !alias.scope !277
  %reverse = shufflevector <4 x float> %wide.load356, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse358 = shufflevector <4 x float> %wide.load357, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.mr = fmul <4 x float> %wide.load354, %reverse
  %i.ms = fmul <4 x float> %wide.load355, %reverse358
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index353 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %wide.load359 = load <4 x float>, ptr %i.mt, align 4, !alias.scope !278
  %wide.load360 = load <4 x float>, ptr %i.mu, align 4, !alias.scope !278
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %index353 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load361 = load <4 x float>, ptr %i.mv, align 4, !alias.scope !279
  %wide.load362 = load <4 x float>, ptr %i.mw, align 4, !alias.scope !279
  %i.mx = fmul <4 x float> %wide.load359, %wide.load361
  %i.my = fmul <4 x float> %wide.load360, %wide.load362
  %i.mz = fadd <4 x float> %i.mr, %i.mx
  %i.na = fadd <4 x float> %i.ms, %i.my
  store <4 x float> %i.mz, ptr %i.ml, align 4, !alias.scope !270, !noalias !273
  store <4 x float> %i.na, ptr %i.mm, align 4, !alias.scope !270, !noalias !273
  %index.next363 = add nuw i64 %index353, 8       ; 2 uses
  %i.nb = icmp eq i64 %index.next363, %n.vec351
  br i1 %i.nb, label %middle.block364, label %vector.body352, !llvm.loop !280

middle.block364:                                  ; preds = %vector.body352
  br i1 %cmp.n365, label %.loopexit, label %.lr.ph269.preheader488

.lr.ph269.preheader488:                           ; preds = %vector.memcheck336, %.lr.ph269.preheader, %middle.block364
  %indvars.iv299.ph = phi i64 [ 0, %vector.memcheck336 ], [ 0, %.lr.ph269.preheader ], [ %n.vec351, %middle.block364 ] ; 7 uses
  %.neg511 = or disjoint i64 %indvars.iv299.ph, 1
  br i1 %lcmp.mod503.not, label %.lr.ph269.prol.loopexit, label %.lr.ph269.prol

.lr.ph269.prol:                                   ; preds = %.lr.ph269.preheader488
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv299.ph ; 2 uses
  %i.nd = load float, ptr %i.nc, align 4
  %i.ne = xor i64 %indvars.iv299.ph, -1
  %i.nf = getelementptr [4 x i8], ptr %i.mk, i64 %i.ne
  %i.ng = load float, ptr %i.nf, align 4
  %i.nh = fmul float %i.nd, %i.ng
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv299.ph
  %i.nj = load float, ptr %i.ni, align 4
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv299.ph
  %i.nl = load float, ptr %i.nk, align 4
  %i.nm = fmul float %i.nj, %i.nl
  %i.nn = fadd float %i.nh, %i.nm
  store float %i.nn, ptr %i.nc, align 4
  %indvars.iv.next300.prol = or disjoint i64 %indvars.iv299.ph, 1
  br label %.lr.ph269.prol.loopexit

.lr.ph269.prol.loopexit:                          ; preds = %.lr.ph269.prol, %.lr.ph269.preheader488
  %indvars.iv299.unr = phi i64 [ %indvars.iv299.ph, %.lr.ph269.preheader488 ], [ %indvars.iv.next300.prol, %.lr.ph269.prol ]
  %i.no = icmp eq i64 %wide.trip.count283, %.neg511
  br i1 %i.no, label %.loopexit, label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.prol.loopexit, %.lr.ph269
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.1, %.lr.ph269 ], [ %indvars.iv299.unr, %.lr.ph269.prol.loopexit ] ; 7 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv299 ; 2 uses
  %i.nq = load float, ptr %i.np, align 4
  %i.nr = xor i64 %indvars.iv299, -1
  %i.ns = getelementptr [4 x i8], ptr %i.mk, i64 %i.nr
  %i.nt = load float, ptr %i.ns, align 4
  %i.nu = fmul float %i.nq, %i.nt
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv299
  %i.nw = load float, ptr %i.nv, align 4
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv299
  %i.ny = load float, ptr %i.nx, align 4
  %i.nz = fmul float %i.nw, %i.ny
  %i.oa = fadd float %i.nu, %i.nz
  store float %i.oa, ptr %i.np, align 4
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 3 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv.next300 ; 2 uses
  %i.oc = load float, ptr %i.ob, align 4
  %i.od = sub i64 -2, %indvars.iv299
  %i.oe = getelementptr [4 x i8], ptr %i.mk, i64 %i.od
  %i.of = load float, ptr %i.oe, align 4
  %i.og = fmul float %i.oc, %i.of
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv.next300
  %i.oi = load float, ptr %i.oh, align 4
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.is, i64 %indvars.iv.next300
  %i.ok = load float, ptr %i.oj, align 4
  %i.ol = fmul float %i.oi, %i.ok
end_hunk_0
begin_hunk_1_@_preextrapolate_helper:bb.a
  %i.v = load ptr, ptr %i.q, align 8
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8
  %invariant.gep = getelementptr [4 x i8], ptr %i.x, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.t, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = xor i64 %index, -1
  %i.z = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.y ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 -12
  %i.ab = getelementptr i8, ptr %i.z, i64 -28
  %wide.load = load <4 x float>, ptr %i.aa, align 4
  %wide.load55 = load <4 x float>, ptr %i.ab, align 4
  %reverse = shufflevector <4 x float> %wide.load, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse56 = shufflevector <4 x float> %wide.load55, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> %reverse, ptr %i.ac, align 16
  store <4 x float> %reverse56, ptr %i.ad, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.t
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.047.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.047 = phi i64 [ %i.ai, %scalar.ph ], [ %.047.ph, %scalar.ph.preheader ] ; 3 uses
  %i.af = xor i64 %.047, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.af
  %i.ag = load float, ptr %gep, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.047
  store float %i.ag, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.047, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ai, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !403

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aj = load i64, ptr %i.h, align 8             ; 3 uses
  %i.ak = trunc i64 %i.aj to i32
  %i.al = sub i32 %i.s, %i.ak
  %i.am = call float @vorbis_lpc_from_data(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef %i.al, i32 noundef 32) ; 0 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.t
  %i.ao = sub i64 0, %i.aj
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 -128
  call void @vorbis_lpc_predict(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aq, i32 noundef 32, ptr noundef nonnull %i.ap, i64 noundef %i.aj)
  br label %.lr.ph51

.lr.ph51:                                         ; preds = %._crit_edge, %.lr.ph51
  %i.ar = phi i64 [ %i.bc, %.lr.ph51 ], [ %i.t, %._crit_edge ]
  %.149 = phi i64 [ %i.ba, %.lr.ph51 ], [ 0, %._crit_edge ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.149
  %i.at = load float, ptr %i.as, align 4
  %i.au = load ptr, ptr %i.q, align 8
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = xor i64 %.149, -1
  %i.ay = getelementptr [4 x i8], ptr %i.aw, i64 %i.ax
  %i.az = getelementptr [4 x i8], ptr %i.ay, i64 %i.ar
  store float %i.at, ptr %i.az, align 4
  %i.ba = add nuw nsw i64 %.149, 1                ; 2 uses
  %i.bb = load i32, ptr %i.b, align 4             ; 2 uses
  %i.bc = sext i32 %i.bb to i64                   ; 2 uses
  %i.bd = icmp slt i64 %i.ba, %i.bc
  br i1 %i.bd, label %.lr.ph51, label %._crit_edge52.loopexit, !llvm.loop !404

._crit_edge52.loopexit:                           ; preds = %.lr.ph51
  %.pre = load ptr, ptr %i.l, align 8
  br label %._crit_edge52

._crit_edge52.critedge:                           ; preds = %.preheader
  %i.be = load i64, ptr %i.h, align 8             ; 3 uses
  %i.bf = trunc i64 %i.be to i32
  %i.bg = sub i32 %i.s, %i.bf
  %i.bh = call float @vorbis_lpc_from_data(ptr noundef nonnull %i.f, ptr noundef nonnull %i.a, i32 noundef %i.bg, i32 noundef 32) ; 0 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.t
  %i.bj = sub i64 0, %i.be
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bj ; 2 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -128
  call void @vorbis_lpc_predict(ptr noundef nonnull %i.a, ptr noundef nonnull %i.bl, i32 noundef 32, ptr noundef nonnull %i.bk, i64 noundef %i.be)
  br label %._crit_edge52

._crit_edge52:                                    ; preds = %._crit_edge52.critedge, %._crit_edge52.loopexit
  %i.bm = phi ptr [ %.pre, %._crit_edge52.loopexit ], [ %i.r, %._crit_edge52.critedge ] ; 2 uses
  %i.bn = phi i32 [ %i.bb, %._crit_edge52.loopexit ], [ %i.s, %._crit_edge52.critedge ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.br, label %.preheader, label %.loopexit, !llvm.loop !405

.loopexit:                                        ; preds = %._crit_edge52, %.preheader45, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local float @vorbis_lpc_from_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #43 {
bb.a:
  %i.a = add nsw i32 %3, 1                        ; 2 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 8 uses
  %i.e = sext i32 %3 to i64                       ; 3 uses
  %i.f = shl nsw i64 %i.e, 3
  %i.g = alloca i8, i64 %i.f, align 16            ; 13 uses
  %.not91 = icmp eq i32 %i.a, 0
  br i1 %.not91, label %._crit_edge111, label %.preheader87.preheader

.preheader87.preheader:                           ; preds = %bb.a
  %i.h = sext i32 %2 to i64
  %i.i = sub i32 %2, %3
  %i.j = sub i32 %3, %2
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge
  %indvar = phi i32 [ 0, %.preheader87.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ %i.e, %.preheader87.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 9 uses
  %i.k = icmp slt i64 %indvars.iv, %i.h
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader87
  %i.l = add i32 %i.i, %indvar
  %xtraiter = and i32 %i.l, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = load float, ptr %i.m, align 4
  %i.o = fpext float %i.n to double
  %i.p = load float, ptr %0, align 4
  %i.q = fpext float %i.p to double
  %i.r = fmul double %i.o, %i.q
  %i.s = fadd double %i.r, 0.000000e+00           ; 2 uses
  %indvars.iv.next118.prol = add nsw i64 %indvars.iv, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa150.unr = phi double [ poison, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %indvars.iv117.unr = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next118.prol, %.lr.ph.prol ]
  %.07690.unr = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.t = add i32 %indvar, -1
  %i.u = icmp eq i32 %i.j, %i.t
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv117 = phi i64 [ %indvars.iv.next118.1, %.lr.ph ], [ %indvars.iv117.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.07690 = phi double [ %i.am, %.lr.ph ], [ %.07690.unr, %.lr.ph.prol.loopexit ]
  %i.v = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv117
  %i.w = load float, ptr %i.v, align 4
  %i.x = fpext float %i.w to double
  %i.y = sub nsw i64 %indvars.iv117, %indvars.iv
  %i.z = getelementptr inbounds [4 x i8], ptr %0, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fpext float %i.aa to double
  %i.ac = fmul double %i.x, %i.ab
  %i.ad = fadd double %.07690, %i.ac
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next118
  %i.af = load float, ptr %i.ae, align 4
  %i.ag = fpext float %i.af to double
  %i.ah = sub nsw i64 %indvars.iv.next118, %indvars.iv
  %i.ai = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fpext float %i.aj to double
  %i.al = fmul double %i.ag, %i.ak
  %i.am = fadd double %i.ad, %i.al                ; 2 uses
  %indvars.iv.next118.1 = add nsw i64 %indvars.iv117, 2 ; 2 uses
  %lftr.wideiv.1 = trunc i64 %indvars.iv.next118.1 to i32
  %exitcond.not.1 = icmp eq i32 %2, %lftr.wideiv.1
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !406

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader87
  %.076.lcssa = phi double [ 0.000000e+00, %.preheader87 ], [ %.lcssa150.unr, %.lr.ph.prol.loopexit ], [ %i.am, %.lr.ph ]
  %i.an = getelementptr inbounds [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %.076.lcssa, ptr %i.an, align 8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ao = icmp eq i64 %indvars.iv, 0
  %indvar.next = add i32 %indvar, 1
  br i1 %i.ao, label %._crit_edge92, label %.preheader87, !llvm.loop !407

._crit_edge92:                                    ; preds = %._crit_edge
  %.pre = load double, ptr %i.d, align 16         ; 2 uses
  %i.ap = icmp sgt i32 %3, 0
  br i1 %i.ap, label %.lr.ph107.preheader, label %._crit_edge111

.lr.ph107.preheader:                              ; preds = %._crit_edge92
  %wide.trip.count133 = zext nneg i32 %3 to i64   ; 3 uses
  br label %.lr.ph107

.lr.ph110.preheader:                              ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %.lr.ph110.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph110.preheader
  %n.vec = and i64 %wide.trip.count133, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %wide.load = load <2 x double>, ptr %i.aq, align 16
  %wide.load147 = load <2 x double>, ptr %i.ar, align 16
  %i.as = fptrunc <2 x double> %wide.load to <2 x float>
  %i.at = fptrunc <2 x double> %wide.load147 to <2 x float>
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store <2 x float> %i.as, ptr %i.au, align 4
  store <2 x float> %i.at, ptr %i.av, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count133
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader148

.lr.ph110.preheader148:                           ; preds = %.lr.ph110.preheader, %middle.block
  %indvars.iv135.ph = phi i64 [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph110

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.d
  %indvars.iv130 = phi i64 [ 0, %.lr.ph107.preheader ], [ %indvars.iv.next131, %bb.d ] ; 15 uses
  %.082104 = phi double [ %.pre, %.lr.ph107.preheader ], [ %i.eh, %bb.d ] ; 3 uses
  %i.ax = lshr i64 %indvars.iv130, 1              ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv130 to i32 ; 2 uses
  %i.az = lshr i32 %i.ay, 1                       ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 3 uses
  %i.ba = fcmp une double %.082104, 0.000000e+00
  br i1 %i.ba, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph107
  %i.bb = shl nuw nsw i64 %i.e, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 %i.bb, i1 false)
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph107
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.next131
  %i.bd = load double, ptr %i.bc, align 8
  %i.be = fneg double %i.bd                       ; 3 uses
  %.not112 = icmp eq i64 %indvars.iv130, 0
  br i1 %.not112, label %._crit_edge97, label %.lr.ph96.preheader

.lr.ph96.preheader:                               ; preds = %bb.b
  %xtraiter151 = and i64 %indvars.iv130, 3        ; 3 uses
  %i.bf = icmp samesign ult i64 %indvars.iv130, 4
  br i1 %i.bf, label %.lr.ph96.epil.preheader, label %.lr.ph96.preheader.new

.lr.ph96.preheader.new:                           ; preds = %.lr.ph96.preheader
  %unroll_iter = and i64 %indvars.iv130, 9223372036854775804
  br label %.lr.ph96

.lr.ph96:                                         ; preds = %.lr.ph96, %.lr.ph96.preheader.new
  %indvars.iv121 = phi i64 [ 0, %.lr.ph96.preheader.new ], [ %indvars.iv.next122.3, %.lr.ph96 ] ; 6 uses
  %.07594 = phi double [ %i.be, %.lr.ph96.preheader.new ], [ %i.ch, %.lr.ph96 ]
  %niter = phi i64 [ 0, %.lr.ph96.preheader.new ], [ %niter.next.3, %.lr.ph96 ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv121
  %i.bh = load double, ptr %i.bg, align 16
  %i.bi = sub nuw nsw i64 %indvars.iv130, %indvars.iv121
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fmul double %i.bh, %i.bk
  %i.bm = fsub double %.07594, %i.bl
  %indvars.iv.next122 = or disjoint i64 %indvars.iv121, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next122
  %i.bo = load double, ptr %i.bn, align 8
  %i.bp = sub nuw nsw i64 %indvars.iv130, %indvars.iv.next122
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bp
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = fmul double %i.bo, %i.br
  %i.bt = fsub double %i.bm, %i.bs
  %indvars.iv.next122.1 = or disjoint i64 %indvars.iv121, 2 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next122.1
  %i.bv = load double, ptr %i.bu, align 16
  %i.bw = sub nuw nsw i64 %indvars.iv130, %indvars.iv.next122.1
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8
  %i.bz = fmul double %i.bv, %i.by
  %i.ca = fsub double %i.bt, %i.bz
  %indvars.iv.next122.2 = or disjoint i64 %indvars.iv121, 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next122.2
  %i.cc = load double, ptr %i.cb, align 8
  %i.cd = sub nuw nsw i64 %indvars.iv130, %indvars.iv.next122.2
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8
  %i.cg = fmul double %i.cc, %i.cf
  %i.ch = fsub double %i.ca, %i.cg                ; 3 uses
  %indvars.iv.next122.3 = add nuw nsw i64 %indvars.iv121, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge97.loopexit.unr-lcssa, label %.lr.ph96, !llvm.loop !409

._crit_edge97.loopexit.unr-lcssa:                 ; preds = %.lr.ph96
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %._crit_edge97, label %.lr.ph96.epil.preheader

.lr.ph96.epil.preheader:                          ; preds = %._crit_edge97.loopexit.unr-lcssa, %.lr.ph96.preheader
  %indvars.iv121.epil.init = phi i64 [ 0, %.lr.ph96.preheader ], [ %indvars.iv.next122.3, %._crit_edge97.loopexit.unr-lcssa ]
  %.07594.epil.init = phi double [ %i.be, %.lr.ph96.preheader ], [ %i.ch, %._crit_edge97.loopexit.unr-lcssa ]
  %lcmp.mod154 = icmp ne i64 %xtraiter151, 0
  tail call void @llvm.assume(i1 %lcmp.mod154)
  br label %.lr.ph96.epil

.lr.ph96.epil:                                    ; preds = %.lr.ph96.epil, %.lr.ph96.epil.preheader
  %indvars.iv121.epil = phi i64 [ %indvars.iv.next122.epil, %.lr.ph96.epil ], [ %indvars.iv121.epil.init, %.lr.ph96.epil.preheader ] ; 3 uses
  %.07594.epil = phi double [ %i.co, %.lr.ph96.epil ], [ %.07594.epil.init, %.lr.ph96.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph96.epil ], [ 0, %.lr.ph96.epil.preheader ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv121.epil
  %i.cj = load double, ptr %i.ci, align 8
  %i.ck = sub nuw nsw i64 %indvars.iv130, %indvars.iv121.epil
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.ck
  %i.cm = load double, ptr %i.cl, align 8
  %i.cn = fmul double %i.cj, %i.cm
  %i.co = fsub double %.07594.epil, %i.cn         ; 2 uses
  %indvars.iv.next122.epil = add nuw nsw i64 %indvars.iv121.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter151
  br i1 %epil.iter.cmp.not, label %._crit_edge97, label %.lr.ph96.epil, !llvm.loop !410

._crit_edge97:                                    ; preds = %._crit_edge97.loopexit.unr-lcssa, %.lr.ph96.epil, %bb.b
  %.075.lcssa = phi double [ %i.be, %bb.b ], [ %i.ch, %._crit_edge97.loopexit.unr-lcssa ], [ %i.co, %.lr.ph96.epil ]
  %i.cp = fdiv double %.075.lcssa, %.082104       ; 10 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv130
  store double %i.cp, ptr %i.cq, align 8
  %.not113 = icmp eq i32 %i.az, 0
  br i1 %.not113, label %._crit_edge102, label %.lr.ph101.preheader

.lr.ph101.preheader:                              ; preds = %._crit_edge97
  %i.cr = getelementptr [8 x i8], ptr %i.g, i64 %indvars.iv130 ; 3 uses
  %i.cs = icmp eq i64 %i.ax, 1
  br i1 %i.cs, label %.lr.ph101.epil.preheader, label %.lr.ph101.preheader.new

.lr.ph101.preheader.new:                          ; preds = %.lr.ph101.preheader
  %unroll_iter159 = and i64 %i.ax, 4611686018427387902
  br label %.lr.ph101

.lr.ph101:                                        ; preds = %.lr.ph101, %.lr.ph101.preheader.new
  %indvars.iv125 = phi i64 [ 0, %.lr.ph101.preheader.new ], [ %indvars.iv.next126.1, %.lr.ph101 ] ; 5 uses
  %niter160 = phi i64 [ 0, %.lr.ph101.preheader.new ], [ %niter160.next.1, %.lr.ph101 ]
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv125 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 16        ; 2 uses
  %i.cv = xor i64 %indvars.iv125, -1
  %i.cw = getelementptr [8 x i8], ptr %i.cr, i64 %i.cv ; 3 uses
  %i.cx = load double, ptr %i.cw, align 8
  %i.cy = fmul double %i.cp, %i.cx
  %i.cz = fadd double %i.cu, %i.cy
  store double %i.cz, ptr %i.ct, align 16
  %i.da = fmul double %i.cp, %i.cu
  %i.db = load double, ptr %i.cw, align 8
  %i.dc = fadd double %i.da, %i.db
  store double %i.dc, ptr %i.cw, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv125
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load double, ptr %i.de, align 8         ; 2 uses
  %i.dg = xor i64 %indvars.iv125, -2
  %i.dh = getelementptr [8 x i8], ptr %i.cr, i64 %i.dg ; 3 uses
  %i.di = load double, ptr %i.dh, align 8
  %i.dj = fmul double %i.cp, %i.di
  %i.dk = fadd double %i.df, %i.dj
  store double %i.dk, ptr %i.de, align 8
  %i.dl = fmul double %i.cp, %i.df
  %i.dm = load double, ptr %i.dh, align 8
  %i.dn = fadd double %i.dl, %i.dm
  store double %i.dn, ptr %i.dh, align 8
  %indvars.iv.next126.1 = add nuw nsw i64 %indvars.iv125, 2 ; 2 uses
  %niter160.next.1 = add i64 %niter160, 2         ; 2 uses
  %niter160.ncmp.1 = icmp eq i64 %niter160.next.1, %unroll_iter159
  br i1 %niter160.ncmp.1, label %._crit_edge102.loopexit.unr-lcssa, label %.lr.ph101, !llvm.loop !411

._crit_edge102.loopexit.unr-lcssa:                ; preds = %.lr.ph101
  %i.do = and i64 %indvars.iv130, 2
  %lcmp.mod157.not = icmp eq i64 %i.do, 0
  br i1 %lcmp.mod157.not, label %._crit_edge102.loopexit, label %.lr.ph101.epil.preheader

.lr.ph101.epil.preheader:                         ; preds = %._crit_edge102.loopexit.unr-lcssa, %.lr.ph101.preheader
  %indvars.iv125.epil.init = phi i64 [ 0, %.lr.ph101.preheader ], [ %indvars.iv.next126.1, %._crit_edge102.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod158 = trunc i64 %i.ax to i1
  tail call void @llvm.assume(i1 %lcmp.mod158)
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv125.epil.init ; 2 uses
  %i.dq = load double, ptr %i.dp, align 8         ; 2 uses
  %i.dr = xor i64 %indvars.iv125.epil.init, -1
  %i.ds = getelementptr [8 x i8], ptr %i.cr, i64 %i.dr ; 3 uses
  %i.dt = load double, ptr %i.ds, align 8
  %i.du = fmul double %i.cp, %i.dt
  %i.dv = fadd double %i.dq, %i.du
  store double %i.dv, ptr %i.dp, align 8
  %i.dw = fmul double %i.cp, %i.dq
  %i.dx = load double, ptr %i.ds, align 8
  %i.dy = fadd double %i.dw, %i.dx
  store double %i.dy, ptr %i.ds, align 8
  br label %._crit_edge102.loopexit

._crit_edge102.loopexit:                          ; preds = %._crit_edge102.loopexit.unr-lcssa, %.lr.ph101.epil.preheader
  %i.dz = zext nneg i32 %i.az to i64
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %._crit_edge102.loopexit, %._crit_edge97
  %.279.lcssa = phi i64 [ 0, %._crit_edge97 ], [ %i.dz, %._crit_edge102.loopexit ]
  %i.ea = and i32 %i.ay, 1
  %.not85 = icmp eq i32 %i.ea, 0
  br i1 %.not85, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge102
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.279.lcssa ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8         ; 2 uses
  %i.ed = fmul double %i.cp, %i.ec
  %i.ee = fadd double %i.ec, %i.ed
  store double %i.ee, ptr %i.eb, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge102, %bb.c
  %i.ef = fmul double %i.cp, %i.cp
  %i.eg = fsub double 1.000000e+00, %i.ef
  %i.eh = fmul double %.082104, %i.eg             ; 3 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
end_hunk_1
begin_hunk_2_@setup_tone_curves:bb.a
  %i.iiq = load float, ptr %i.iip, align 4
  %i.iir = fcmp ogt float %i.iiq, -2.000000e+02
  br i1 %i.iir, label %bb.bz, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iis = getelementptr inbounds nuw i8, ptr %i.ifr, i64 124
  %i.iit = load float, ptr %i.iis, align 4
  %i.iiu = fcmp ogt float %i.iit, -2.000000e+02
  br i1 %i.iiu, label %bb.bz, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.iiv = getelementptr inbounds nuw i8, ptr %i.ifr, i64 120
  %i.iiw = load float, ptr %i.iiv, align 4
  %i.iix = fcmp ogt float %i.iiw, -2.000000e+02
  br i1 %i.iix, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.iiy = getelementptr inbounds nuw i8, ptr %i.ifr, i64 116
  %i.iiz = load float, ptr %i.iiy, align 4
  %i.ija = fcmp ogt float %i.iiz, -2.000000e+02
  br i1 %i.ija, label %bb.bz, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ijb = getelementptr inbounds nuw i8, ptr %i.ifr, i64 112
  %i.ijc = load float, ptr %i.ijb, align 4
  %i.ijd = fcmp ogt float %i.ijc, -2.000000e+02
  br i1 %i.ijd, label %bb.bz, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ije = getelementptr inbounds nuw i8, ptr %i.ifr, i64 108
  %i.ijf = load float, ptr %i.ije, align 4
  %i.ijg = fcmp ogt float %i.ijf, -2.000000e+02
  br i1 %i.ijg, label %bb.bz, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ijh = getelementptr inbounds nuw i8, ptr %i.ifr, i64 104
  %i.iji = load float, ptr %i.ijh, align 4
  %i.ijj = fcmp ogt float %i.iji, -2.000000e+02
  br i1 %i.ijj, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ijk = getelementptr inbounds nuw i8, ptr %i.ifr, i64 100
  %i.ijl = load float, ptr %i.ijk, align 4
  %i.ijm = fcmp ogt float %i.ijl, -2.000000e+02
  br i1 %i.ijm, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ijn = getelementptr inbounds nuw i8, ptr %i.ifr, i64 96
  %i.ijo = load float, ptr %i.ijn, align 4
  %i.ijp = fcmp ogt float %i.ijo, -2.000000e+02
  br i1 %i.ijp, label %bb.bz, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ijq = getelementptr inbounds nuw i8, ptr %i.ifr, i64 92
  %i.ijr = load float, ptr %i.ijq, align 4
  %i.ijs = fcmp ogt float %i.ijr, -2.000000e+02
  br i1 %i.ijs, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ijt = getelementptr inbounds nuw i8, ptr %i.ifr, i64 88
  %i.iju = load float, ptr %i.ijt, align 4
  %i.ijv = fcmp ogt float %i.iju, -2.000000e+02
  br i1 %i.ijv, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ijw = getelementptr inbounds nuw i8, ptr %i.ifr, i64 84
  %i.ijx = load float, ptr %i.ijw, align 4
  %i.ijy = fcmp ogt float %i.ijx, -2.000000e+02
  br i1 %i.ijy, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ijz = getelementptr inbounds nuw i8, ptr %i.ifr, i64 80
  %i.ika = load float, ptr %i.ijz, align 4
  %i.ikb = fcmp ogt float %i.ika, -2.000000e+02
  br i1 %i.ikb, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am
  %.10.lcssa = phi float [ 5.500000e+01, %bb.am ], [ 1.700000e+01, %bb.by ], [ 5.400000e+01, %bb.an ], [ 1.800000e+01, %bb.bx ], [ 5.300000e+01, %bb.ao ], [ 2.700000e+01, %bb.bo ], [ 5.200000e+01, %bb.ap ], [ 1.900000e+01, %bb.bw ], [ 5.100000e+01, %bb.aq ], [ 3.500000e+01, %bb.bg ], [ 5.000000e+01, %bb.ar ], [ 2.000000e+01, %bb.bv ], [ 4.900000e+01, %bb.as ], [ 3.100000e+01, %bb.bk ], [ 4.800000e+01, %bb.at ], [ 2.100000e+01, %bb.bu ], [ 4.700000e+01, %bb.au ], [ 3.400000e+01, %bb.bh ], [ 4.600000e+01, %bb.av ], [ 2.200000e+01, %bb.bt ], [ 4.500000e+01, %bb.aw ], [ 2.800000e+01, %bb.bn ], [ 4.400000e+01, %bb.ax ], [ 2.300000e+01, %bb.bs ], [ 4.300000e+01, %bb.ay ], [ 3.300000e+01, %bb.bi ], [ 4.200000e+01, %bb.az ], [ 2.400000e+01, %bb.br ], [ 4.100000e+01, %bb.ba ], [ 3.000000e+01, %bb.bl ], [ 4.000000e+01, %bb.bb ], [ 2.500000e+01, %bb.bq ], [ 3.900000e+01, %bb.bc ], [ 3.200000e+01, %bb.bj ], [ 3.800000e+01, %bb.bd ], [ 2.600000e+01, %bb.bp ], [ 3.700000e+01, %bb.be ], [ 2.900000e+01, %bb.bm ], [ 3.600000e+01, %bb.bf ]
  %i.ikc = getelementptr inbounds nuw i8, ptr %i.ifr, i64 4
  store float %.10.lcssa, ptr %i.ikc, align 4
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 2 uses
  %exitcond434.not = icmp eq i64 %indvars.iv.next432, 8
  br i1 %exitcond434.not, label %bb.ca, label %bb.j, !llvm.loop !562

bb.ca:                                            ; preds = %bb.bz
  %exitcond438.not = icmp eq i64 %indvars.iv.next436, 17
  br i1 %exitcond438.not, label %bb.cb, label %bb.i, !llvm.loop !563

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #62
  ret ptr %i.g
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_vp_remove_floor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4) local_unnamed_addr #43 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.a) ; 6 uses
  %i.b = icmp sgt i32 %spec.select, 0
  br i1 %i.b, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %spec.select to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.c = icmp eq i32 %spec.select, 1
  br i1 %i.c, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod27 = trunc i32 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil.init
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.h
  %i.j = load float, ptr %i.i, align 4
  %i.k = fmul float %i.e, %i.j
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil.init
  store float %i.k, ptr %i.l, align 4
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.a
  %.017.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select, %.preheader.loopexit.unr-lcssa ], [ %spec.select, %.lr.ph.epil.preheader ] ; 3 uses
  %i.m = icmp slt i32 %.017.lcssa, %i.a
  br i1 %i.m, label %.lr.ph22.preheader, label %._crit_edge

.lr.ph22.preheader:                               ; preds = %.preheader
  %i.n = zext nneg i32 %.017.lcssa to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %scevgep = getelementptr i8, ptr %3, i64 %i.o
  %i.p = xor i32 %.017.lcssa, -1
  %i.q = add nsw i32 %i.a, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.t, i1 false)
  br label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.v = load float, ptr %i.u, align 4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.x = load i32, ptr %i.w, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.y
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fmul float %i.v, %i.aa
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  store float %i.ab, ptr %i.ac, align 4
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [4 x i8], ptr @FLOOR1_fromdB_INV_LOOKUP, i64 %i.ah
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = fmul float %i.ae, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  store float %i.ak, ptr %i.al, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !564

._crit_edge:                                      ; preds = %.lr.ph22.preheader, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_vp_noisemask(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #25 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 10 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 2
  %i.d = alloca i8, i64 %i.c, align 16            ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  tail call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.f, ptr noundef %1, ptr noundef %2, float noundef 1.400000e+02, i32 noundef -1)
  %i.g = icmp sgt i32 %i.a, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge49.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.a, 8
  br i1 %min.iters.check, label %.lr.ph.preheader79, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <4 x float>, ptr %i.h, align 4
  %wide.load61 = load <4 x float>, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load62 = load <4 x float>, ptr %i.j, align 4
  %wide.load63 = load <4 x float>, ptr %i.k, align 4
  %i.l = fsub <4 x float> %wide.load, %wide.load62
  %i.m = fsub <4 x float> %wide.load61, %wide.load63
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x float> %i.l, ptr %i.n, align 16
  store <4 x float> %i.m, ptr %i.o, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !565

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader79

.lr.ph.preheader79:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader79, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader79 ] ; 4 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.r = load float, ptr %i.q, align 4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.t = load float, ptr %i.s, align 4
  %i.u = fsub float %i.r, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.u, ptr %i.v, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !566

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %i.w = load ptr, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 128
  %i.aa = load i32, ptr %i.z, align 8
  call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.w, ptr noundef nonnull %i.d, ptr noundef %2, float noundef 0.000000e+00, i32 noundef %i.aa)
  %wide.trip.count54 = zext nneg i32 %i.a to i64
  %min.iters.check65 = icmp ult i32 %i.a, 8
  br i1 %min.iters.check65, label %.lr.ph46.preheader, label %vector.ph66

vector.ph66:                                      ; preds = %._crit_edge
  %n.vec68 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body69

vector.body69:                                    ; preds = %vector.body69, %vector.ph66
  %index70 = phi i64 [ 0, %vector.ph66 ], [ %index.next75, %vector.body69 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index70 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load71 = load <4 x float>, ptr %i.ab, align 4
  %wide.load72 = load <4 x float>, ptr %i.ac, align 4
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index70 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 2 uses
  %wide.load73 = load <4 x float>, ptr %i.ad, align 16
  %wide.load74 = load <4 x float>, ptr %i.ae, align 16
  %i.af = fsub <4 x float> %wide.load71, %wide.load73
  %i.ag = fsub <4 x float> %wide.load72, %wide.load74
  store <4 x float> %i.af, ptr %i.ad, align 16
  store <4 x float> %i.ag, ptr %i.ae, align 16
  %index.next75 = add nuw i64 %index70, 8         ; 2 uses
  %i.ah = icmp eq i64 %index.next75, %n.vec68
  br i1 %i.ah, label %middle.block76, label %vector.body69, !llvm.loop !567

middle.block76:                                   ; preds = %vector.body69
  %cmp.n77 = icmp eq i64 %n.vec68, %wide.trip.count
  br i1 %cmp.n77, label %.lr.ph48.preheader, label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %._crit_edge, %middle.block76
  %indvars.iv51.ph = phi i64 [ 0, %._crit_edge ], [ %n.vec68, %middle.block76 ]
  br label %.lr.ph46

.lr.ph48.preheader:                               ; preds = %.lr.ph46, %middle.block76
  %wide.trip.count59 = zext nneg i32 %i.a to i64
  br label %.lr.ph48

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.lr.ph46
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %.lr.ph46 ], [ %indvars.iv51.ph, %.lr.ph46.preheader ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv51
  %i.aj = load float, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv51 ; 2 uses
  %i.al = load float, ptr %i.ak, align 4
  %i.am = fsub float %i.aj, %i.al
  store float %i.am, ptr %i.ak, align 4
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %.lr.ph48.preheader, label %.lr.ph46, !llvm.loop !568

.lr.ph48:                                         ; preds = %.lr.ph48.preheader, %.lr.ph48
  %indvars.iv56 = phi i64 [ 0, %.lr.ph48.preheader ], [ %indvars.iv.next57, %.lr.ph48 ] ; 3 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv56 ; 2 uses
  %i.ao = load float, ptr %i.an, align 4
  %i.ap = fpext float %i.ao to double
  %i.aq = fadd double %i.ap, 5.000000e-01
  %i.ar = fptosi double %i.aq to i32
  %i.as = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 0)
  %i.at = tail call i32 @llvm.umin.i32(i32 %i.as, i32 39)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv56
  %i.av = load float, ptr %i.au, align 4
  %i.aw = load ptr, ptr %i.x, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 336
  %i.ay = zext nneg i32 %i.at to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fadd float %i.av, %i.ba
  store float %i.bb, ptr %i.an, align 4
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count59
  br i1 %exitcond60.not, label %._crit_edge49, label %.lr.ph48, !llvm.loop !569

._crit_edge49.critedge:                           ; preds = %bb.a
  %i.bc = load ptr, ptr %i.e, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 128
  %i.bg = load i32, ptr %i.bf, align 8
  call fastcc void @bark_noise_hybridmp(i32 noundef %i.a, ptr noundef %i.bc, ptr noundef nonnull %i.d, ptr noundef %2, float noundef 0.000000e+00, i32 noundef %i.bg)
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %.lr.ph48, %._crit_edge49.critedge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @bark_noise_hybridmp(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, float noundef nofpclass(nan inf nzero sub nnorm) %4, i32 noundef %5) unnamed_addr #43 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 2                      ; 5 uses
  %i.c = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.d = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.e = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.f = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.g = alloca i8, i64 %i.b, align 16            ; 10 uses
  %i.h = load float, ptr %2, align 4
  %i.i = fadd float %4, %i.h                      ; 2 uses
  %i.j = fcmp olt float %i.i, 1.000000e+00
  %.0 = select i1 %i.j, float 1.000000e+00, float %i.i ; 3 uses
  %i.k = fmul float %.0, %.0
  %i.l = fmul float %i.k, 5.000000e-01            ; 5 uses
  %i.m = fmul float %.0, %i.l
  %i.n = fadd float %i.m, 0.000000e+00            ; 2 uses
  store float %i.l, ptr %i.c, align 16
  store float %i.l, ptr %i.d, align 16
  store float 0.000000e+00, ptr %i.e, align 16
  store float %i.n, ptr %i.f, align 16
  store float 0.000000e+00, ptr %i.g, align 16
  %i.o = icmp sgt i32 %0, 1
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader345

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.preheader345:                                    ; preds = %.lr.ph, %bb.a
  %i.p = load i64, ptr %1, align 8                ; 3 uses
  %i.q = and i64 %i.p, 140737488355328
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.preheader344, label %.lr.ph355

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 7 uses
  %.0297352 = phi float [ 1.000000e+00, %.lr.ph.preheader ], [ %i.al, %.lr.ph ] ; 3 uses
  %.0321350 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.af, %.lr.ph ]
  %.0322349 = phi float [ %i.n, %.lr.ph.preheader ], [ %i.ad, %.lr.ph ]
  %.0323348 = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %i.ab, %.lr.ph ]
  %.0324347 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.z, %.lr.ph ]
  %.0325346 = phi float [ %i.l, %.lr.ph.preheader ], [ %i.x, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.t = load float, ptr %i.s, align 4
  %i.u = fadd float %4, %i.t                      ; 2 uses
  %i.v = fcmp olt float %i.u, 1.000000e+00
  %.1 = select i1 %i.v, float 1.000000e+00, float %i.u ; 4 uses
  %i.w = fmul float %.1, %.1                      ; 3 uses
  %i.x = fadd float %.0325346, %i.w               ; 2 uses
  %i.y = fmul float %.0297352, %i.w               ; 3 uses
  %i.z = fadd float %.0324347, %i.y               ; 2 uses
  %i.aa = fmul float %.0297352, %i.y
  %i.ab = fadd float %.0323348, %i.aa             ; 2 uses
  %i.ac = fmul float %.1, %i.w
  %i.ad = fadd float %.0322349, %i.ac             ; 2 uses
  %i.ae = fmul float %.1, %i.y
  %i.af = fadd float %.0321350, %i.ae             ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store float %i.x, ptr %i.ag, align 4
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store float %i.z, ptr %i.ah, align 4
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %i.ab, ptr %i.ai, align 4
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store float %i.ad, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store float %i.af, ptr %i.ak, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = fadd float %.0297352, 1.000000e+00
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader345, label %.lr.ph, !llvm.loop !570

.preheader344.loopexit:                           ; preds = %.lr.ph355
  %i.am = trunc nuw nsw i64 %indvars.iv.next414 to i32
  %.phi.trans.insert = and i64 %indvars.iv.next414, 4294967295
  %.phi.trans.insert439 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.phi.trans.insert
  %.pre = load i64, ptr %.phi.trans.insert439, align 8
  br label %.preheader344

.preheader344:                                    ; preds = %.preheader345, %.preheader344.loopexit
  %i.an = phi i64 [ %.pre, %.preheader344.loopexit ], [ %i.p, %.preheader345 ] ; 2 uses
  %.1315.lcssa = phi i32 [ %i.am, %.preheader344.loopexit ], [ 0, %.preheader345 ] ; 2 uses
  %.0307.lcssa = phi float [ %i.bx, %.preheader344.loopexit ], [ undef, %.preheader345 ]
  %.0303.lcssa = phi float [ %i.ca, %.preheader344.loopexit ], [ undef, %.preheader345 ]
  %.0299.lcssa = phi float [ %i.cd, %.preheader344.loopexit ], [ undef, %.preheader345 ]
  %.1298.lcssa = phi float [ %i.ck, %.preheader344.loopexit ], [ 0.000000e+00, %.preheader345 ] ; 2 uses
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.ao, 65535
  %.not360 = icmp slt i32 %i.ap, %0
  br i1 %.not360, label %.lr.ph363.preheader, label %.preheader343

.lr.ph363.preheader:                              ; preds = %.preheader344
  %i.aq = zext nneg i32 %.1315.lcssa to i64
  br label %.lr.ph363

.lr.ph355:                                        ; preds = %.preheader345, %.lr.ph355
  %indvars.iv413 = phi i64 [ %indvars.iv.next414, %.lr.ph355 ], [ 0, %.preheader345 ] ; 2 uses
  %i.ar = phi i64 [ %i.cm, %.lr.ph355 ], [ %i.p, %.preheader345 ] ; 2 uses
  %.1298354 = phi float [ %i.ck, %.lr.ph355 ], [ 0.000000e+00, %.preheader345 ] ; 2 uses
  %i.as = lshr i64 %i.ar, 16
  %i.at = and i64 %i.ar, 65535                    ; 5 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load float, ptr %i.au, align 4
  %i.aw = sub nsw i64 0, %i.as
  %i.ax = and i64 %i.aw, 4294967295               ; 5 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ax
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fadd float %i.av, %i.az                 ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.at
  %i.bc = load float, ptr %i.bb, align 4
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ax
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = fsub float %i.bc, %i.be                 ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.at
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ax
  %i.bj = load float, ptr %i.bi, align 4
  %i.bk = fadd float %i.bh, %i.bj                 ; 2 uses
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.at
  %i.bm = load float, ptr %i.bl, align 4
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  %i.bo = load float, ptr %i.bn, align 4
  %i.bp = fadd float %i.bm, %i.bo                 ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.at
  %i.br = load float, ptr %i.bq, align 4
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ax
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = fsub float %i.br, %i.bt                 ; 2 uses
  %i.bv = fmul float %i.bk, %i.bp
  %i.bw = fmul float %i.bf, %i.bu
  %i.bx = fsub float %i.bv, %i.bw                 ; 2 uses
  %i.by = fmul float %i.ba, %i.bu
  %i.bz = fmul float %i.bf, %i.bp
  %i.ca = fsub float %i.by, %i.bz                 ; 2 uses
  %i.cb = fmul float %i.ba, %i.bk
  %i.cc = fmul float %i.bf, %i.bf
  %i.cd = fsub float %i.cb, %i.cc                 ; 2 uses
  %i.ce = fmul float %.1298354, %i.ca
  %i.cf = fadd float %i.bx, %i.ce
  %i.cg = fdiv float %i.cf, %i.cd                 ; 2 uses
  %i.ch = fcmp olt float %i.cg, 0.000000e+00
end_hunk_2
begin_hunk_3_@drft_backward:bb.a

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @dradb4(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.ad)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ae = sub nuw nsw i32 1, %.0114122.i
  br label %bb.s

bb.g:                                             ; preds = %.lr.ph.i
  %.not118.i = icmp eq i32 %.0114122.i, 0
  %i.af = sext i32 %.0113123.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.af
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  br i1 %.not118.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @dradb2(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.ah)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call fastcc void @dradb2(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.ah)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ai = sub nuw nsw i32 1, %.0114122.i
  br label %bb.s

bb.k:                                             ; preds = %.lr.ph.i
  %i.aj = add nsw i32 %i.r, %.0113123.i
  %.not120.i = icmp eq i32 %.0114122.i, 0
  %i.ak = sext i32 %.0113123.i to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -4 ; 2 uses
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -4 ; 2 uses
  br i1 %.not120.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @dradb3(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %i.e, ptr noundef %1, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.ap)
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call fastcc void @dradb3(i32 noundef %i.r, i32 noundef %.0112125.i, ptr noundef %1, ptr noundef %i.e, ptr noundef nonnull readonly %i.am, ptr noundef nonnull readonly %i.ap)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aq = sub nuw nsw i32 1, %.0114122.i
  br label %bb.s

bb.o:                                             ; preds = %.lr.ph.i
  %.not121.i = icmp eq i32 %.0114122.i, 0
  %i.ar = sext i32 %.0113123.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ar
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 -4 ; 2 uses
  br i1 %.not121.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call fastcc void @dradbg(i32 noundef %i.r, i32 noundef %i.p, i32 noundef %.0112125.i, i32 noundef %i.s, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %i.e, ptr noundef %1, ptr noundef %1, ptr noundef nonnull readonly %i.at)
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  tail call fastcc void @dradbg(i32 noundef %i.r, i32 noundef %i.p, i32 noundef %.0112125.i, i32 noundef %i.s, ptr noundef %1, ptr noundef %1, ptr noundef %1, ptr noundef %i.e, ptr noundef %i.e, ptr noundef nonnull readonly %i.at)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.au = icmp eq i32 %i.r, 1
  %i.av = sub nuw nsw i32 1, %.0114122.i
  %spec.select.i = select i1 %i.au, i32 %i.av, i32 %.0114122.i
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.j, %bb.f
  %.1.i = phi i32 [ %i.ae, %bb.f ], [ %spec.select.i, %bb.r ], [ %i.aq, %bb.n ], [ %i.ai, %bb.j ] ; 2 uses
  %i.aw = add nsw i32 %i.p, -1
  %i.ax = mul nsw i32 %i.aw, %i.r
  %i.ay = add nsw i32 %i.ax, %.0113123.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !620

._crit_edge.i:                                    ; preds = %bb.s
  %i.az = icmp ne i32 %.1.i, 0
  %i.ba = icmp sgt i32 %i.b, 0
  %or.cond.i = and i1 %i.ba, %i.az
  br i1 %or.cond.i, label %.lr.ph128.preheader.i, label %drftb1.exit

.lr.ph128.preheader.i:                            ; preds = %._crit_edge.i
  %wide.trip.count133.i = zext nneg i32 %i.b to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  %i.bb = sub i64 %i.a, %i.f
  %diff.check = icmp ult i64 %i.bb, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph128.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph128.preheader.i
  %n.vec = and i64 %wide.trip.count133.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %wide.load = load <4 x float>, ptr %i.bc, align 4
  %wide.load8 = load <4 x float>, ptr %i.bd, align 4
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <4 x float> %wide.load, ptr %i.be, align 4
  store <4 x float> %wide.load8, ptr %i.bf, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count133.i
  br i1 %cmp.n, label %drftb1.exit, label %.lr.ph128.i.preheader

.lr.ph128.i.preheader:                            ; preds = %.lr.ph128.preheader.i, %middle.block
  %indvars.iv130.i.ph = phi i64 [ 0, %.lr.ph128.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count133.i, 3    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph128.i.prol.loopexit, label %.lr.ph128.i.prol

.lr.ph128.i.prol:                                 ; preds = %.lr.ph128.i.preheader, %.lr.ph128.i.prol
  %indvars.iv130.i.prol = phi i64 [ %indvars.iv.next131.i.prol, %.lr.ph128.i.prol ], [ %indvars.iv130.i.ph, %.lr.ph128.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph128.i.prol ], [ 0, %.lr.ph128.i.preheader ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv130.i.prol
  %i.bi = load float, ptr %i.bh, align 4
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv130.i.prol
  store float %i.bi, ptr %i.bj, align 4
  %indvars.iv.next131.i.prol = add nuw nsw i64 %indvars.iv130.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph128.i.prol.loopexit, label %.lr.ph128.i.prol, !llvm.loop !622

.lr.ph128.i.prol.loopexit:                        ; preds = %.lr.ph128.i.prol, %.lr.ph128.i.preheader
  %indvars.iv130.i.unr = phi i64 [ %indvars.iv130.i.ph, %.lr.ph128.i.preheader ], [ %indvars.iv.next131.i.prol, %.lr.ph128.i.prol ]
  %i.bk = sub nsw i64 %indvars.iv130.i.ph, %wide.trip.count133.i
  %i.bl = icmp ugt i64 %i.bk, -4
  br i1 %i.bl, label %drftb1.exit, label %.lr.ph128.i

.lr.ph128.i:                                      ; preds = %.lr.ph128.i.prol.loopexit, %.lr.ph128.i
  %indvars.iv130.i = phi i64 [ %indvars.iv.next131.i.3, %.lr.ph128.i ], [ %indvars.iv130.i.unr, %.lr.ph128.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv130.i
  %i.bn = load float, ptr %i.bm, align 4
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv130.i
  store float %i.bn, ptr %i.bo, align 4
  %indvars.iv.next131.i = add nuw nsw i64 %indvars.iv130.i, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i
  store float %i.bq, ptr %i.br, align 4
  %indvars.iv.next131.i.1 = add nuw nsw i64 %indvars.iv130.i, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i.1
  %i.bt = load float, ptr %i.bs, align 4
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i.1
  store float %i.bt, ptr %i.bu, align 4
  %indvars.iv.next131.i.2 = add nuw nsw i64 %indvars.iv130.i, 3 ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next131.i.2
  %i.bw = load float, ptr %i.bv, align 4
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next131.i.2
  store float %i.bw, ptr %i.bx, align 4
  %indvars.iv.next131.i.3 = add nuw nsw i64 %indvars.iv130.i, 4 ; 2 uses
  %exitcond134.not.i.3 = icmp eq i64 %indvars.iv.next131.i.3, %wide.trip.count133.i
  br i1 %exitcond134.not.i.3, label %drftb1.exit, label %.lr.ph128.i, !llvm.loop !623

drftb1.exit:                                      ; preds = %.lr.ph128.i.prol.loopexit, %.lr.ph128.i, %middle.block, %._crit_edge.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable
define dso_local void @drft_init(ptr nofree noundef writeonly captures(none) initializes((0, 4), (8, 24)) %0, i32 noundef %1) local_unnamed_addr #54 {
bb.a:
  store i32 %1, ptr %0, align 8
  %i.a = mul nsw i32 %1, 3
  %i.b = sext i32 %i.a to i64
  %i.c = tail call noalias ptr @calloc(i64 noundef %i.b, i64 noundef 4) #71 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 32, i64 noundef 4) #71 ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.e, ptr %i.f, align 8
  %i.g = icmp eq i32 %1, 1
  br i1 %i.g, label %fdrffti.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.h ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %.loopexit91.i.i

.loopexit91.i.i.backedge:                         ; preds = %.split.us.i.i, %.split.i.i
  %.069.i.i.be = phi i32 [ %.170.i.i, %.split.i.i ], [ %.170.us.i.i, %.split.us.i.i ]
  %.0.i.i.be = phi i64 [ %indvars.iv138.i.i, %.split.i.i ], [ %indvars.iv.i.i, %.split.us.i.i ]
  br label %.loopexit91.i.i

.loopexit91.i.i:                                  ; preds = %.loopexit91.i.i.backedge, %bb.b
  %indvars.iv141.i.i = phi i64 [ -1, %bb.b ], [ %indvars.iv.next142.i.i, %.loopexit91.i.i.backedge ] ; 2 uses
  %.072.i.i = phi i32 [ 0, %bb.b ], [ %.173.fr.i.i, %.loopexit91.i.i.backedge ]
  %.069.i.i = phi i32 [ %1, %bb.b ], [ %.069.i.i.be, %.loopexit91.i.i.backedge ] ; 2 uses
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %.0.i.i.be, %.loopexit91.i.i.backedge ]
  %indvars.iv.next142.i.i = add nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.k = icmp slt i64 %indvars.iv141.i.i, 3
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.loopexit91.i.i
  %i.l = getelementptr inbounds [4 x i8], ptr @drfti1.ntryh, i64 %indvars.iv.next142.i.i
  %i.m = load i32, ptr %i.l, align 4
  br label %bb.e

bb.d:                                             ; preds = %.loopexit91.i.i
  %i.n = add nsw i32 %.072.i.i, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.173.i.i = phi i32 [ %i.m, %bb.c ], [ %i.n, %bb.d ]
  %.173.fr.i.i = freeze i32 %.173.i.i             ; 5 uses
  %.not120.i.i = icmp eq i32 %.173.fr.i.i, 2
  %sext.i = shl i64 %.0.i.i, 32
  %i.o = ashr exact i64 %sext.i, 32               ; 2 uses
  br i1 %.not120.i.i, label %.split.i.i, label %.split.us.i.i

.split.us.i.i:                                    ; preds = %bb.e, %bb.f
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.f ], [ %i.o, %bb.e ] ; 5 uses
  %.170.us.i.i = phi i32 [ %i.p, %bb.f ], [ %.069.i.i, %bb.e ] ; 3 uses
  %i.p = sdiv i32 %.170.us.i.i, %.173.fr.i.i      ; 3 uses
  %i.q = mul nsw i32 %i.p, %.173.fr.i.i
  %.not.us.i.i = icmp eq i32 %.170.us.i.i, %i.q
  br i1 %.not.us.i.i, label %bb.f, label %.loopexit91.i.i.backedge

bb.f:                                             ; preds = %.split.us.i.i
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv.i.i
  %i.s = getelementptr i8, ptr %i.r, i64 8
  store i32 %.173.fr.i.i, ptr %i.s, align 4
  %.not89.us.i.i = icmp eq i32 %i.p, 1
  br i1 %.not89.us.i.i, label %.split99.us.i.i, label %.split.us.i.i

.split99.us.i.i:                                  ; preds = %bb.f
  %i.t = icmp eq i64 %indvars.iv.i.i, 0
  br label %.split99.i.i

.split.i.i:                                       ; preds = %bb.e, %bb.h
  %indvars.iv138.i.i = phi i64 [ %indvars.iv.next139.i.i, %bb.h ], [ %i.o, %bb.e ] ; 7 uses
  %.170.i.i = phi i32 [ %i.u, %bb.h ], [ %.069.i.i, %bb.e ] ; 4 uses
  %indvars.iv.next139.i.i = add i64 %indvars.iv138.i.i, 1 ; 4 uses
  %i.u = sdiv i32 %.170.i.i, 2                    ; 2 uses
  %i.v = shl nsw i32 %i.u, 1
  %.not.i.i = icmp eq i32 %.170.i.i, %i.v
  br i1 %.not.i.i, label %bb.g, label %.loopexit91.i.i.backedge

bb.g:                                             ; preds = %.split.i.i
  %i.w = getelementptr [4 x i8], ptr %i.e, i64 %indvars.iv138.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store i32 2, ptr %i.x, align 4
  %i.y = icmp eq i64 %indvars.iv138.i.i, 0        ; 2 uses
  br i1 %i.y, label %bb.h, label %.preheader90.i.i

.preheader90.i.i:                                 ; preds = %bb.g
  %.not8895.i.i = icmp slt i64 %indvars.iv138.i.i, 1
  br i1 %.not8895.i.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.preheader90.i.i
  %wide.trip.count.i.i = and i64 %indvars.iv.next139.i.i, 4294967295 ; 2 uses
  %2 = add nsw i64 %wide.trip.count.i.i, -1       ; 3 uses
  %min.iters.check = icmp ult i64 %2, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %2, -8                         ; 3 uses
  %i.z = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aa = sub i64 %indvars.iv138.i.i, %index
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.aa ; 4 uses
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 -8
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 -24
  %wide.load = load <4 x i32>, ptr %i.ac, align 4
  %wide.load38 = load <4 x i32>, ptr %i.ad, align 4
  %i.ae = getelementptr inbounds i8, ptr %i.ab, i64 -4
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 -20
  store <4 x i32> %wide.load, ptr %i.ae, align 4
  store <4 x i32> %wide.load38, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv133.i.i.ph = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %i.z, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv133.i.i = phi i64 [ %indvars.iv.next134.i.i, %.lr.ph.i.i ], [ %indvars.iv133.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ah = sub nsw i64 %indvars.iv.next139.i.i, %indvars.iv133.i.i
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 %i.ak, ptr %i.al, align 4
  %indvars.iv.next134.i.i = add nuw nsw i64 %indvars.iv133.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next134.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !625

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block, %.preheader90.i.i
  store i32 2, ptr %i.j, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i, %bb.g
  %i.am = and i32 %.170.i.i, -2
  %.not89.i.i = icmp eq i32 %i.am, 2
  br i1 %.not89.i.i, label %.split99.i.i, label %.split.i.i

.split99.i.i:                                     ; preds = %bb.h, %.split99.us.i.i
  %.us-phi100.i.pre-phi.in.i = phi i64 [ %indvars.iv.next.i.i, %.split99.us.i.i ], [ %indvars.iv.next139.i.i, %bb.h ]
  %.us-phi101.i.i = phi i1 [ %i.t, %.split99.us.i.i ], [ %i.y, %bb.h ]
  %.us-phi102.in.i.i = phi i64 [ %indvars.iv.i.i, %.split99.us.i.i ], [ %indvars.iv138.i.i, %bb.h ] ; 2 uses
  %.us-phi100.i.pre-phi.i = trunc i64 %.us-phi100.i.pre-phi.in.i to i32
  %.us-phi102.i.i = trunc i64 %.us-phi102.in.i.i to i32
  store i32 %1, ptr %i.e, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %.us-phi100.i.pre-phi.i, ptr %i.an, align 4
  %i.ao = sitofp i32 %1 to float
  %i.ap = fdiv nnan float f0x40C90FDB, %i.ao
  %i.aq = icmp slt i32 %.us-phi102.i.i, 1
  %or.cond.not.i.i = select i1 %.us-phi101.i.i, i1 true, i1 %i.aq
  br i1 %or.cond.not.i.i, label %fdrffti.exit, label %.lr.ph119.preheader.i.i

.lr.ph119.preheader.i.i:                          ; preds = %.split99.i.i
  %wide.trip.count154.i.i = and i64 %.us-phi102.in.i.i, 2147483647
  br label %.lr.ph119.i.i

.lr.ph119.i.i:                                    ; preds = %._crit_edge114.i.i, %.lr.ph119.preheader.i.i
  %indvars.iv151.i.i = phi i64 [ 0, %.lr.ph119.preheader.i.i ], [ %indvars.iv.next152.i.i, %._crit_edge114.i.i ] ; 2 uses
  %.079117.i.i = phi i32 [ 0, %.lr.ph119.preheader.i.i ], [ %.180.lcssa.i.i, %._crit_edge114.i.i ] ; 4 uses
  %.081116.i.i = phi i32 [ 1, %.lr.ph119.preheader.i.i ], [ %i.au, %._crit_edge114.i.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv151.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 4            ; 3 uses
  %i.au = mul nsw i32 %i.at, %.081116.i.i         ; 2 uses
  %i.av = sdiv i32 %1, %i.au                      ; 5 uses
  %i.aw = add i32 %i.at, -1                       ; 3 uses
  %i.ax = icmp sgt i32 %i.at, 1
  br i1 %i.ax, label %.lr.ph113.i.i, label %._crit_edge114.i.i

.lr.ph113.i.i:                                    ; preds = %.lr.ph119.i.i
  %i.ay = icmp sgt i32 %i.av, 2
  br i1 %i.ay, label %.lr.ph107.us.preheader.i.i, label %.lr.ph113.split.preheader.i.i

.lr.ph113.split.preheader.i.i:                    ; preds = %.lr.ph113.i.i
  %i.az = mul i32 %i.av, %i.aw
  %i.ba = add i32 %i.az, %.079117.i.i
  br label %._crit_edge114.i.i

.lr.ph107.us.preheader.i.i:                       ; preds = %.lr.ph113.i.i
  %i.bb = sext i32 %.079117.i.i to i64
  %i.bc = zext nneg i32 %i.av to i64
  %i.bd = add nsw i32 %i.av, -3                   ; 2 uses
  %i.be = lshr i32 %i.bd, 1                       ; 2 uses
  %i.bf = add nuw i32 %i.be, 1                    ; 2 uses
  %i.bg = icmp eq i32 %i.be, 0
  %unroll_iter = and i32 %i.bf, -2
  %i.bh = and i32 %i.bd, 2
  %lcmp.mod.not.not = icmp eq i32 %i.bh, 0
  %lcmp.mod48 = trunc i32 %i.bf to i1
  br label %.lr.ph107.us.i.i

.lr.ph107.us.i.i:                                 ; preds = %._crit_edge108.us.i.i, %.lr.ph107.us.preheader.i.i
  %indvars.iv144.i.i = phi i64 [ %i.bb, %.lr.ph107.us.preheader.i.i ], [ %indvars.iv.next145.i.i, %._crit_edge108.us.i.i ] ; 3 uses
  %.177111.us.i.i = phi i32 [ 0, %.lr.ph107.us.preheader.i.i ], [ %i.cn, %._crit_edge108.us.i.i ]
  %.083109.us.i.i = phi i32 [ 0, %.lr.ph107.us.preheader.i.i ], [ %i.bi, %._crit_edge108.us.i.i ]
  %i.bi = add nsw i32 %.083109.us.i.i, %.081116.i.i ; 2 uses
  %i.bj = sitofp i32 %i.bi to float
  %i.bk = fmul float %i.ap, %i.bj                 ; 3 uses
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph107.us.i.i.new

.lr.ph107.us.i.i.new:                             ; preds = %.lr.ph107.us.i.i, %.lr.ph107.us.i.i.new
  %indvars.iv146.i.i = phi i64 [ %indvars.iv.next147.i.i.1, %.lr.ph107.us.i.i.new ], [ %indvars.iv144.i.i, %.lr.ph107.us.i.i ] ; 3 uses
  %.071105.us.i.i = phi float [ %i.bu, %.lr.ph107.us.i.i.new ], [ 0.000000e+00, %.lr.ph107.us.i.i ]
  %niter = phi i32 [ %niter.next.1, %.lr.ph107.us.i.i.new ], [ 0, %.lr.ph107.us.i.i ]
  %i.bl = fadd float %.071105.us.i.i, 1.000000e+00 ; 2 uses
  %i.bm = fmul float %i.bk, %i.bl
  %i.bn = fpext float %i.bm to double             ; 2 uses
  %i.bo = tail call double @cos(double noundef %i.bn) #62
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.bq = tail call double @sin(double noundef %i.bn) #62
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bq, i64 1
  %i.bt = fptrunc <2 x double> %i.bs to <2 x float>
  store <2 x float> %i.bt, ptr %i.bp, align 4
  %i.bu = fadd float %i.bl, 1.000000e+00          ; 3 uses
  %i.bv = fmul float %i.bk, %i.bu
  %i.bw = fpext float %i.bv to double             ; 2 uses
  %i.bx = tail call double @cos(double noundef %i.bw) #62
  %i.by = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %i.ca = tail call double @sin(double noundef %i.bw) #62
  %indvars.iv.next147.i.i.1 = add nsw i64 %indvars.iv146.i.i, 4 ; 2 uses
  %i.cb = insertelement <2 x double> poison, double %i.bx, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.ca, i64 1
  %i.cd = fptrunc <2 x double> %i.cc to <2 x float>
  store <2 x float> %i.cd, ptr %i.bz, align 4
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge108.us.i.i.unr-lcssa, label %.lr.ph107.us.i.i.new, !llvm.loop !626

._crit_edge108.us.i.i.unr-lcssa:                  ; preds = %.lr.ph107.us.i.i.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge108.us.i.i

.epil.preheader:                                  ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.lr.ph107.us.i.i
  %indvars.iv146.i.i.epil.init = phi i64 [ %indvars.iv144.i.i, %.lr.ph107.us.i.i ], [ %indvars.iv.next147.i.i.1, %._crit_edge108.us.i.i.unr-lcssa ]
  %.071105.us.i.i.epil.init = phi float [ 0.000000e+00, %.lr.ph107.us.i.i ], [ %i.bu, %._crit_edge108.us.i.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod48)
  %i.ce = fadd float %.071105.us.i.i.epil.init, 1.000000e+00
  %i.cf = fmul float %i.bk, %i.ce
  %i.cg = fpext float %i.cf to double             ; 2 uses
  %i.ch = tail call double @cos(double noundef %i.cg) #62
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.i, i64 %indvars.iv146.i.i.epil.init
  %i.cj = tail call double @sin(double noundef %i.cg) #62
  %i.ck = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cl = insertelement <2 x double> %i.ck, double %i.cj, i64 1
  %i.cm = fptrunc <2 x double> %i.cl to <2 x float>
  store <2 x float> %i.cm, ptr %i.ci, align 4
  br label %._crit_edge108.us.i.i

._crit_edge108.us.i.i:                            ; preds = %._crit_edge108.us.i.i.unr-lcssa, %.epil.preheader
  %indvars.iv.next145.i.i = add i64 %indvars.iv144.i.i, %i.bc
  %i.cn = add nuw nsw i32 %.177111.us.i.i, 1      ; 2 uses
  %exitcond150.not.i.i = icmp eq i32 %i.cn, %i.aw
  br i1 %exitcond150.not.i.i, label %._crit_edge114.loopexit.i.i, label %.lr.ph107.us.i.i, !llvm.loop !627

._crit_edge114.loopexit.i.i:                      ; preds = %._crit_edge108.us.i.i
  %i.co = mul i32 %i.av, %i.aw
  %i.cp = add i32 %i.co, %.079117.i.i
  br label %._crit_edge114.i.i

._crit_edge114.i.i:                               ; preds = %._crit_edge114.loopexit.i.i, %.lr.ph113.split.preheader.i.i, %.lr.ph119.i.i
  %.180.lcssa.i.i = phi i32 [ %.079117.i.i, %.lr.ph119.i.i ], [ %i.cp, %._crit_edge114.loopexit.i.i ], [ %i.ba, %.lr.ph113.split.preheader.i.i ]
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 2 uses
  %exitcond155.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count154.i.i
  br i1 %exitcond155.not.i.i, label %fdrffti.exit, label %.lr.ph119.i.i, !llvm.loop !628

fdrffti.exit:                                     ; preds = %._crit_edge114.i.i, %bb.a, %.split99.i.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 8) i32 @_ve_amp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) %4) unnamed_addr #25 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.e = load float, ptr %i.d, align 4            ; 2 uses
  %i.f = shl nsw i64 %i.c, 2
  %i.g = alloca i8, i64 %i.f, align 16            ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = tail call i32 @llvm.smax.i32(i32 %i.i, i32 5)
  %narrow = lshr i32 %i.j, 1
  %i.k = zext nneg i32 %narrow to i64
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.m = load float, ptr %i.l, align 4            ; 3 uses
  %i.n = sdiv i32 %i.i, 2
  %i.o = add nsw i32 %i.n, -2
  %i.p = sitofp i32 %i.o to float
  %i.q = fsub float %i.m, %i.p                    ; 2 uses
  %i.r = fcmp olt float %i.q, 0.000000e+00
  %.0159 = select i1 %i.r, float 0.000000e+00, float %i.q ; 2 uses
  %i.s = fcmp ogt float %.0159, %i.m
  %.1160 = select i1 %i.s, float %i.m, float %.0159 ; 2 uses
  %i.t = icmp sgt i32 %i.b, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %min.iters.check = icmp ult i32 %i.b, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %wide.load = load <4 x float>, ptr %i.w, align 4
  %wide.load3 = load <4 x float>, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load4 = load <4 x float>, ptr %i.y, align 4
  %wide.load5 = load <4 x float>, ptr %i.z, align 4
  %i.aa = fmul <4 x float> %wide.load, %wide.load4
  %i.ab = fmul <4 x float> %wide.load3, %wide.load5
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store <4 x float> %i.aa, ptr %i.ac, align 16
  store <4 x float> %i.ab, ptr %i.ad, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !629

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0152193.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph
end_hunk_3
begin_hunk_4_@vorbis_lpc_to_lsp:bb.a
  %lcmp.mod290 = trunc i32 %i.j to i1
  call void @llvm.assume(i1 %lcmp.mod290)
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv171.epil.init
  %i.hg = load float, ptr %i.hf, align 4
  %i.hh = fpext float %i.hg to double
  %i.hi = call double @acos(double noundef %i.hh) #62
  %i.hj = fptrunc double %i.hi to float
  %.idx177.epil = shl nuw nsw i64 %indvars.iv171.epil.init, 3
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 %.idx177.epil
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  store float %i.hj, ptr %i.hl, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph143.epil.preheader, %.loopexit.loopexit.unr-lcssa, %.preheader, %cheby.exit117, %bb.b
  %.096 = phi i32 [ -1, %cheby.exit117 ], [ -1, %bb.b ], [ 0, %.preheader ], [ 0, %.loopexit.loopexit.unr-lcssa ], [ 0, %.lr.ph143.epil.preheader ]
  ret i32 %.096
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define internal fastcc range(i32 -1, 1) i32 @Laguerre_With_Deflation(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr nofree noundef nonnull writeonly captures(none) %2) unnamed_addr #56 {
bb.a:
  %i.a = add nsw i32 %1, 1                        ; 3 uses
  %i.b = sext i32 %i.a to i64
  %i.c = shl nsw i64 %i.b, 3
  %i.d = alloca i8, i64 %i.c, align 16            ; 4 uses
  %.not101 = icmp slt i32 %1, 0
  br i1 %.not101, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 3 uses
  %min.iters.check = icmp ult i32 %i.a, 4
  br i1 %min.iters.check, label %.lr.ph.preheader147, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load142 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load142 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !679

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader97, label %.lr.ph.preheader147

.lr.ph.preheader147:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader97:                                     ; preds = %.lr.ph, %middle.block
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader97
  %i.l = zext nneg i32 %1 to i64                  ; 2 uses
  %i.m = shl nuw nsw i64 %i.l, 3
  %scevgep = getelementptr i8, ptr %i.d, i64 %i.m ; 2 uses
  br label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader147, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader147 ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.o = load float, ptr %i.n, align 4
  %i.p = fpext float %i.o to double
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  store double %i.p, ptr %i.q, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader97, label %.lr.ph, !llvm.loop !680

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge113
  %indvars.iv121 = phi i64 [ %i.l, %.preheader.preheader ], [ %indvars.iv.next122, %._crit_edge113 ] ; 5 uses
  %.072115 = phi ptr [ %i.d, %.preheader.preheader ], [ %i.bj, %._crit_edge113 ] ; 3 uses
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, -1 ; 3 uses
  %i.r = trunc nuw nsw i64 %indvars.iv.next122 to i32
  %i.s = uitofp nneg i32 %i.r to double           ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv121 to i32
  %i.u = uitofp nneg i32 %i.t to double
  %.pre = load double, ptr %scevgep, align 8
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.preheader, %bb.h
  %.070 = phi double [ %i.au, %bb.h ], [ 0.000000e+00, %.preheader ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph107, %bb.b
  %indvars.iv123 = phi i64 [ %indvars.iv121, %.lr.ph107 ], [ %indvars.iv.next124, %bb.b ] ; 3 uses
  %.066106 = phi double [ 0.000000e+00, %.lr.ph107 ], [ %i.w, %bb.b ]
  %.067105 = phi double [ 0.000000e+00, %.lr.ph107 ], [ %i.y, %bb.b ] ; 2 uses
  %.068104 = phi double [ %.pre, %.lr.ph107 ], [ %i.ad, %bb.b ] ; 2 uses
  %i.v = fmul double %.070, %.066106
  %i.w = fadd double %.067105, %i.v               ; 2 uses
  %i.x = fmul double %.070, %.067105
  %i.y = fadd double %.068104, %i.x               ; 6 uses
  %i.z = fmul double %.070, %.068104
  %i.aa = getelementptr [8 x i8], ptr %.072115, i64 %indvars.iv123
  %i.ab = getelementptr i8, ptr %i.aa, i64 -8
  %i.ac = load double, ptr %i.ab, align 8
  %i.ad = fadd double %i.z, %i.ac                 ; 2 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, -1
  %i.ae = trunc nuw i64 %indvars.iv123 to i32
  %i.af = icmp sgt i32 %i.ae, 1
  br i1 %i.af, label %bb.b, label %._crit_edge, !llvm.loop !681

._crit_edge:                                      ; preds = %bb.b
  %i.ag = fmul double %i.y, %i.s
  %i.ah = fmul double %i.y, %i.ag
  %i.ai = fmul double %i.ad, %i.u                 ; 2 uses
  %i.aj = fmul double %i.ai, %i.w
  %i.ak = fsub double %i.ah, %i.aj
  %i.al = fmul double %i.ak, %i.s                 ; 2 uses
  %i.am = fcmp olt double %i.al, 0.000000e+00
  br i1 %i.am, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.an = fcmp ogt double %i.y, 0.000000e+00
  %i.ao = tail call double @sqrt(double noundef %i.al) #62 ; 2 uses
  br i1 %i.an, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ap = fadd double %i.y, %i.ao                 ; 2 uses
  %i.aq = fcmp olt double %i.ap, f0x3EB0C6F7A0B5ED8D
  br i1 %i.aq, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ar = fsub double %i.y, %i.ao                 ; 2 uses
  %i.as = fcmp ogt double %i.ar, f0xBEB0C6F7A0B5ED8D
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.e
  %.065 = phi double [ f0x3EB0C6F7A0B5ED8D, %bb.e ], [ %i.ap, %bb.d ], [ f0xBEB0C6F7A0B5ED8D, %bb.g ], [ %i.ar, %bb.f ]
  %i.at = fdiv double %i.ai, %.065                ; 4 uses
  %i.au = fsub double %.070, %i.at                ; 4 uses
  %i.av = fcmp olt double %i.at, 0.000000e+00
  %i.aw = fneg double %i.at
  %.069 = select i1 %i.av, double %i.aw, double %i.at
  %i.ax = fdiv double %.069, %i.au
  %i.ay = tail call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp olt double %i.ay, f0x3DA5FD7FE1796495
  br i1 %i.az, label %.lr.ph112.preheader, label %.lr.ph107

.lr.ph112.preheader:                              ; preds = %bb.h
  %i.ba = fptrunc double %i.au to float
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next122
  store float %i.ba, ptr %i.bb, align 4
  %load_initial = load double, ptr %scevgep, align 8
  br label %.lr.ph112

.lr.ph112:                                        ; preds = %.lr.ph112.preheader, %.lr.ph112
  %store_forwarded = phi double [ %load_initial, %.lr.ph112.preheader ], [ %i.bg, %.lr.ph112 ]
  %indvars.iv126 = phi i64 [ %indvars.iv121, %.lr.ph112.preheader ], [ %indvars.iv.next127, %.lr.ph112 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.072115, i64 %indvars.iv126
  %i.bd = fmul double %i.au, %store_forwarded
  %i.be = getelementptr i8, ptr %i.bc, i64 -8     ; 2 uses
  %i.bf = load double, ptr %i.be, align 8
  %i.bg = fadd double %i.bf, %i.bd                ; 2 uses
  store double %i.bg, ptr %i.be, align 8
  %indvars.iv.next127 = add nsw i64 %indvars.iv126, -1
  %i.bh = trunc nuw i64 %indvars.iv126 to i32
  %i.bi = icmp sgt i32 %i.bh, 1
  br i1 %i.bi, label %.lr.ph112, label %._crit_edge113, !llvm.loop !682

._crit_edge113:                                   ; preds = %.lr.ph112
  %i.bj = getelementptr inbounds nuw i8, ptr %.072115, i64 8
  %i.bk = icmp sgt i64 %indvars.iv121, 1
  br i1 %i.bk, label %.preheader, label %.loopexit, !llvm.loop !683

.loopexit:                                        ; preds = %._crit_edge113, %._crit_edge, %bb.a, %.preheader97
  %.3 = phi i32 [ 0, %.preheader97 ], [ -1, %._crit_edge ], [ 0, %bb.a ], [ 0, %._crit_edge113 ]
  ret i32 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @Newton_Raphson(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 -1073741824, 1073741824) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #43 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 2 uses
  %i.b = shl nsw i64 %i.a, 3
  %i.c = alloca i8, i64 %i.b, align 16            ; 5 uses
  %i.d = icmp sgt i32 %1, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %wide.load = load <2 x float>, ptr %i.e, align 4
  %wide.load4 = load <2 x float>, ptr %i.f, align 4
  %i.g = fpext <2 x float> %wide.load to <2 x double>
  %i.h = fpext <2 x float> %wide.load4 to <2 x double>
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <2 x double> %i.g, ptr %i.i, align 16
  store <2 x double> %i.h, ptr %i.j, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !684

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader52.split.us, label %.lr.ph.preheader22

.lr.ph.preheader22:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.preheader52.split.us:                            ; preds = %.lr.ph, %middle.block
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.a
  %i.m = load float, ptr %i.l, align 4
  %i.n = fpext float %i.m to double
  %i.o = zext nneg i32 %1 to i64                  ; 2 uses
  br label %.preheader51.us

.preheader51.us:                                  ; preds = %bb.b, %.preheader52.split.us
  %.04965.us = phi i32 [ 0, %.preheader52.split.us ], [ %i.p, %bb.b ] ; 2 uses
  br label %.lr.ph58.us.us

bb.b:                                             ; preds = %._crit_edge63.split.us.us
  %i.p = add nuw nsw i32 %.04965.us, 1
  %i.q = fcmp ogt double %i.ae, f0x3BC79CA10C924223
  br i1 %i.q, label %.preheader51.us, label %.lr.ph67.preheader, !llvm.loop !685

.lr.ph58.us.us:                                   ; preds = %._crit_edge.us.us, %.preheader51.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %._crit_edge.us.us ], [ 0, %.preheader51.us ] ; 2 uses
  %.14860.us.us = phi double [ %i.ae, %._crit_edge.us.us ], [ 0.000000e+00, %.preheader51.us ]
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv75 ; 2 uses
  %i.s = load double, ptr %i.r, align 8           ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph58.us.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %bb.c ], [ %i.o, %.lr.ph58.us.us ] ; 2 uses
  %.057.us.us = phi double [ %i.z, %bb.c ], [ %i.n, %.lr.ph58.us.us ] ; 2 uses
  %.04556.us.us = phi double [ %i.u, %bb.c ], [ 0.000000e+00, %.lr.ph58.us.us ]
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, -1 ; 2 uses
  %i.t = fmul double %i.s, %.04556.us.us
  %i.u = fadd double %i.t, %.057.us.us            ; 2 uses
  %i.v = fmul double %i.s, %.057.us.us
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next73
  %i.x = load float, ptr %i.w, align 4
  %i.y = fpext float %i.x to double
  %i.z = fadd double %i.v, %i.y                   ; 2 uses
  %i.aa = icmp sgt i64 %indvars.iv72, 1
  br i1 %i.aa, label %bb.c, label %._crit_edge.us.us, !llvm.loop !686

._crit_edge.us.us:                                ; preds = %bb.c
  %i.ab = fdiv double %i.z, %i.u                  ; 3 uses
  %i.ac = fsub double %i.s, %i.ab
  store double %i.ac, ptr %i.r, align 8
  %i.ad = fmul double %i.ab, %i.ab
  %i.ae = fadd double %.14860.us.us, %i.ad        ; 2 uses
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %i.o
  br i1 %exitcond79.not, label %._crit_edge63.split.us.us, label %.lr.ph58.us.us, !llvm.loop !687

._crit_edge63.split.us.us:                        ; preds = %._crit_edge.us.us
  %exitcond80 = icmp eq i32 %.04965.us, 41
  br i1 %exitcond80, label %.loopexit, label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader22, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader22 ] ; 3 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fpext float %i.ag to double
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store double %i.ah, ptr %i.ai, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader52.split.us, label %.lr.ph, !llvm.loop !688

.lr.ph67.preheader:                               ; preds = %bb.b
  %wide.trip.count84 = zext nneg i32 %1 to i64
  %min.iters.check6 = icmp ult i32 %1, 4
  br i1 %min.iters.check6, label %.lr.ph67.preheader18, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph67.preheader
  %n.vec9 = and i64 %wide.trip.count, 2147483644  ; 3 uses
  br label %vector.body10

vector.body10:                                    ; preds = %vector.body10, %vector.ph7
  %index11 = phi i64 [ 0, %vector.ph7 ], [ %index.next14, %vector.body10 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load12 = load <2 x double>, ptr %i.aj, align 16
  %wide.load13 = load <2 x double>, ptr %i.ak, align 16
  %i.al = fptrunc <2 x double> %wide.load12 to <2 x float>
  %i.am = fptrunc <2 x double> %wide.load13 to <2 x float>
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index11 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store <2 x float> %i.al, ptr %i.an, align 4
  store <2 x float> %i.am, ptr %i.ao, align 4
  %index.next14 = add nuw i64 %index11, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next14, %n.vec9
  br i1 %i.ap, label %middle.block15, label %vector.body10, !llvm.loop !689

middle.block15:                                   ; preds = %vector.body10
  %cmp.n16 = icmp eq i64 %n.vec9, %wide.trip.count
  br i1 %cmp.n16, label %.loopexit, label %.lr.ph67.preheader18

.lr.ph67.preheader18:                             ; preds = %.lr.ph67.preheader, %middle.block15
  %indvars.iv81.ph = phi i64 [ 0, %.lr.ph67.preheader ], [ %n.vec9, %middle.block15 ]
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %.lr.ph67.preheader18, %.lr.ph67
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %.lr.ph67 ], [ %indvars.iv81.ph, %.lr.ph67.preheader18 ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv81
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = fptrunc double %i.ar to float
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv81
  store float %i.as, ptr %i.at, align 4
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  br i1 %exitcond85.not, label %.loopexit, label %.lr.ph67, !llvm.loop !690

.loopexit:                                        ; preds = %._crit_edge63.split.us.us, %.lr.ph67, %middle.block15, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @comp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #17 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 2 uses
  %i.b = load float, ptr %1, align 4              ; 2 uses
  %i.c = fcmp olt float %i.a, %i.b
  %i.d = zext i1 %i.c to i32
  %i.e = fcmp ogt float %i.a, %i.b
  %.neg = sext i1 %i.e to i32
  %i.f = add nsw i32 %.neg, %i.d
  ret i32 %i.f
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @acos(double noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define dso_local ptr @floor1_fit(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #13 {
bb.a:
  %4 = alloca [64 x %struct.lsfit_acc], align 16  ; 7 uses
  %i.a = alloca [65 x i32], align 16              ; 12 uses
  %i.b = alloca [65 x i32], align 16              ; 12 uses
  %i.c = alloca [65 x i32], align 16              ; 5 uses
  %i.d = alloca [65 x i32], align 16              ; 6 uses
  %i.e = alloca [65 x i32], align 16              ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1296
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1288
  %i.o = load i32, ptr %i.n, align 8              ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1284
  %i.q = load i32, ptr %i.p, align 4              ; 10 uses
  %i.r = sext i32 %i.q to i64                     ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #62
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i32 %i.q, 8
  br i1 %min.iters.check, label %.lr.ph.preheader270, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.r, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x i32> splat (i32 -200), ptr %i.t, align 16
  store <4 x i32> splat (i32 -200), ptr %i.u, align 16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !691

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.r
  br i1 %cmp.n, label %.lr.ph183.preheader, label %.lr.ph.preheader270

.lr.ph.preheader270:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0181.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader270, %.lr.ph
  %.0181 = phi i64 [ %i.x, %.lr.ph ], [ %.0181.ph, %.lr.ph.preheader270 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.0181
  store i32 -200, ptr %i.w, align 4
  %i.x = add nuw nsw i64 %.0181, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %i.r
  br i1 %exitcond.not, label %.lr.ph183.preheader, label %.lr.ph, !llvm.loop !692

.lr.ph183.preheader:                              ; preds = %.lr.ph, %middle.block
  %min.iters.check246 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check246, label %.lr.ph183.preheader269, label %vector.ph247

vector.ph247:                                     ; preds = %.lr.ph183.preheader
  %n.vec249 = and i64 %i.r, 2147483640            ; 3 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph247
  %index251 = phi i64 [ 0, %vector.ph247 ], [ %index.next252, %vector.body250 ] ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index251 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> splat (i32 -200), ptr %i.y, align 16
  store <4 x i32> splat (i32 -200), ptr %i.z, align 16
  %index.next252 = add nuw i64 %index251, 8       ; 2 uses
  %i.aa = icmp eq i64 %index.next252, %n.vec249
  br i1 %i.aa, label %middle.block253, label %vector.body250, !llvm.loop !693

middle.block253:                                  ; preds = %vector.body250
  %cmp.n254 = icmp eq i64 %n.vec249, %i.r
  br i1 %cmp.n254, label %.lr.ph187.preheader, label %.lr.ph183.preheader269

.lr.ph183.preheader269:                           ; preds = %.lr.ph183.preheader, %middle.block253
  %.1182.ph = phi i64 [ 0, %.lr.ph183.preheader ], [ %n.vec249, %middle.block253 ]
  br label %.lr.ph183

.lr.ph183:                                        ; preds = %.lr.ph183.preheader269, %.lr.ph183
  %.1182 = phi i64 [ %i.ac, %.lr.ph183 ], [ %.1182.ph, %.lr.ph183.preheader269 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.1182
  store i32 -200, ptr %i.ab, align 4
  %i.ac = add nuw nsw i64 %.1182, 1               ; 2 uses
  %exitcond212.not = icmp eq i64 %i.ac, %i.r
  br i1 %exitcond212.not, label %.lr.ph187.preheader, label %.lr.ph183, !llvm.loop !694

.lr.ph187.preheader:                              ; preds = %.lr.ph183, %middle.block253
  %i.ad = shl nuw nsw i64 %i.r, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.c, i8 0, i64 %i.ad, i1 false)
  %min.iters.check257 = icmp ult i32 %i.q, 8
  br i1 %min.iters.check257, label %.lr.ph187.preheader268, label %vector.ph258

vector.ph258:                                     ; preds = %.lr.ph187.preheader
  %n.vec260 = and i64 %i.r, 2147483640            ; 3 uses
  br label %vector.body261

vector.body261:                                   ; preds = %vector.body261, %vector.ph258
  %index262 = phi i64 [ 0, %vector.ph258 ], [ %index.next263, %vector.body261 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index262 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> splat (i32 1), ptr %i.ae, align 16
  store <4 x i32> splat (i32 1), ptr %i.af, align 16
  %index.next263 = add nuw i64 %index262, 8       ; 2 uses
  %i.ag = icmp eq i64 %index.next263, %n.vec260
  br i1 %i.ag, label %middle.block264, label %vector.body261, !llvm.loop !695

middle.block264:                                  ; preds = %vector.body261
  %cmp.n265 = icmp eq i64 %n.vec260, %i.r
  br i1 %cmp.n265, label %.preheader, label %.lr.ph187.preheader268

.lr.ph187.preheader268:                           ; preds = %.lr.ph187.preheader, %middle.block264
  %.3186.ph = phi i64 [ 0, %.lr.ph187.preheader ], [ %n.vec260, %middle.block264 ]
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.lr.ph187.preheader268, %.lr.ph187
  %.3186 = phi i64 [ %i.ai, %.lr.ph187 ], [ %.3186.ph, %.lr.ph187.preheader268 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.3186
  store i32 1, ptr %i.ah, align 4
  %i.ai = add nuw nsw i64 %.3186, 1               ; 2 uses
  %exitcond213.not = icmp eq i64 %i.ai, %i.r
  br i1 %exitcond213.not, label %.preheader, label %.lr.ph187, !llvm.loop !696

._crit_edge:                                      ; preds = %bb.a
  %i.aj = icmp eq i32 %i.q, 0
  br i1 %i.aj, label %bb.b, label %.loopexit175.thread

.preheader:                                       ; preds = %.lr.ph187, %middle.block264
  %i.ak = shl nuw nsw i64 %i.r, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.e, i8 -1, i64 %i.ak, i1 false)
  %.not243 = icmp eq i32 %i.q, 1
  br i1 %.not243, label %.loopexit175.thread, label %.lr.ph192.preheader

.lr.ph192.preheader:                              ; preds = %.preheader
  %.pre = load i32, ptr %1, align 8
  %i.al = add nsw i64 %i.r, -2
  br label %.lr.ph192

bb.b:                                             ; preds = %._crit_edge
  %i.am = call fastcc i32 @accumulate_fit(ptr noundef %3, ptr noundef %2, i32 noundef 0, i32 noundef %i.o, ptr noundef %4, i32 noundef %i.o, ptr noundef %i.m)
  %i.an = sext i32 %i.am to i64
  br label %.loopexit175

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %.lr.ph192
  %i.ao = phi i32 [ %i.ar, %.lr.ph192 ], [ %.pre, %.lr.ph192.preheader ]
  %.5191 = phi i64 [ %i.ap, %.lr.ph192 ], [ 0, %.lr.ph192.preheader ] ; 3 uses
  %.0146190 = phi i64 [ %i.av, %.lr.ph192 ], [ 0, %.lr.ph192.preheader ]
  %i.ap = add nuw nsw i64 %.5191, 1               ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = getelementptr inbounds nuw [64 x i8], ptr %4, i64 %.5191
end_hunk_4
begin_hunk_5_@floor1_unpack:bb.a
  %i.je = sext i32 %i.jb to i64
  %i.jf = add nsw i64 %i.jd, %i.je
  %i.jg = icmp sgt i64 %i.jf, %i.im
  br i1 %i.jg, label %oggpack_read.exit157, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.jh = load i8, ptr %.pre.i156184, align 1
  %i.ji = zext i8 %i.jh to i32
  %i.jj = lshr i32 %i.ji, %i.ja                   ; 2 uses
  %i.jk = icmp sgt i32 %i.jb, 8
  br i1 %i.jk, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.jl = getelementptr inbounds nuw i8, ptr %.pre.i156184, i64 1
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = zext i8 %i.jm to i32
  %i.jo = sub nuw nsw i32 8, %i.ja
  %i.jp = shl nuw nsw i32 %i.jn, %i.jo
  %i.jq = or i32 %i.jp, %i.jj                     ; 2 uses
  %i.jr = icmp samesign ugt i32 %i.jb, 16
  br i1 %i.jr, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.js = getelementptr inbounds nuw i8, ptr %.pre.i156184, i64 2
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = zext i8 %i.jt to i32
  %i.jv = sub nuw nsw i32 16, %i.ja
  %i.jw = shl nuw nsw i32 %i.ju, %i.jv
  %i.jx = or i32 %i.jq, %i.jw
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax, %bb.aw
  %.0.i151.in = phi i32 [ %i.jx, %bb.ay ], [ %i.jj, %bb.aw ], [ %i.jq, %bb.ax ]
  %i.jy = and i32 %.0.i151.in, %i.iy
  br label %oggpack_read.exit157

oggpack_read.exit157:                             ; preds = %bb.av, %bb.az
  %.1.i152 = phi i32 [ %i.jy, %bb.az ], [ -1, %bb.av ] ; 3 uses
  %i.jz = sdiv i32 %i.jb, 8
  %i.ka = zext nneg i32 %i.jz to i64              ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.pre.i156184, i64 %i.ka ; 3 uses
  store ptr %i.kb, ptr %i.ba, align 8
  %i.kc = add nsw i64 %i.iz, %i.ka                ; 3 uses
  store i64 %i.kc, ptr %1, align 8
  %i.kd = and i32 %i.jb, 7                        ; 3 uses
  store i32 %i.kd, ptr %i.d, align 8
  %i.ke = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv202
  %i.kf = getelementptr i8, ptr %i.ke, i64 844
  store i32 %.1.i152, ptr %i.kf, align 4
  %i.kg = icmp sgt i32 %.1.i152, -1
  %.not90 = icmp sgt i32 %i.in, %.1.i152
  %or.cond = select i1 %i.kg, i1 %.not90, i1 false
  br i1 %or.cond, label %bb.ba, label %floor1_free_info.exit

bb.ba:                                            ; preds = %oggpack_read.exit157
  %indvars.iv.next203 = add nsw i64 %indvars.iv202, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next203 to i32
  %exitcond205.not = icmp eq i32 %i.iu, %lftr.wideiv
  br i1 %exitcond205.not, label %._crit_edge179.loopexit, label %bb.au, !llvm.loop !741

._crit_edge179.loopexit:                          ; preds = %bb.ba
  %.pre231 = load i32, ptr %i.c, align 4
  br label %._crit_edge179

._crit_edge179:                                   ; preds = %._crit_edge179.loopexit, %bb.at
  %i.kh = phi i32 [ %i.io, %bb.at ], [ %.pre231, %._crit_edge179.loopexit ] ; 2 uses
  %.promoted183230 = phi ptr [ %.promoted183, %bb.at ], [ %i.kb, %._crit_edge179.loopexit ]
  %.promoted182228 = phi i64 [ %.promoted182, %bb.at ], [ %i.kc, %._crit_edge179.loopexit ]
  %.promoted181226 = phi i32 [ %.promoted181, %bb.at ], [ %i.kd, %._crit_edge179.loopexit ]
  %.280.lcssa = phi i32 [ %.179186, %bb.at ], [ %i.iu, %._crit_edge179.loopexit ]
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ki = sext i32 %i.kh to i64
  %i.kj = icmp slt i64 %indvars.iv.next207, %i.ki
  br i1 %i.kj, label %bb.at, label %._crit_edge189, !llvm.loop !742

._crit_edge189:                                   ; preds = %._crit_edge179, %oggpack_read.exit149.._crit_edge189_crit_edge
  %.pre-phi = phi i32 [ %.pre232, %oggpack_read.exit149.._crit_edge189_crit_edge ], [ %i.in, %._crit_edge179 ]
  %i.kk = getelementptr inbounds nuw i8, ptr %i.c, i64 836
  store i32 0, ptr %i.kk, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.c, i64 840
  store i32 %.pre-phi, ptr %i.kl, align 4
  br label %bb.bb

floor1_free_info.exit:                            ; preds = %bb.ac, %bb.ad, %oggpack_read.exit117, %oggpack_read.exit133, %bb.ak, %oggpack_read.exit157
  tail call void @free(ptr noundef nonnull %i.c) #62
  br label %bb.bb

bb.bb:                                            ; preds = %floor1_free_info.exit, %._crit_edge189
  %.076 = phi ptr [ null, %floor1_free_info.exit ], [ %i.c, %._crit_edge189 ]
  ret ptr %.076
}

; Function Attrs: nofree nounwind uwtable
define internal noalias noundef ptr @floor1_look(ptr nofree readnone captures(none) %0, ptr noundef %1) #13 {
bb.a:
  %i.a = alloca [65 x ptr], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #62
  %i.b = tail call noalias dereferenceable_or_null(1328) ptr @calloc(i64 noundef 1, i64 noundef 1328) #71 ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 1296
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 836 ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 840
  %i.f = load i32, ptr %i.e, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1288 ; 2 uses
  store i32 %i.f, ptr %i.g, align 8
  %i.h = load i32, ptr %1, align 4                ; 3 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1284
  store i32 2, ptr %i.j, align 4
  br label %.lr.ph97.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 5 uses
  %wide.trip.count = zext nneg i32 %i.h to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %i.h, 4
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.08793 = phi i32 [ 0, %.lr.ph.new ], [ %i.an, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add nsw i32 %i.r, %.08793
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4
  %i.z = add nsw i32 %i.y, %i.s
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = add nsw i32 %i.af, %i.z
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = add nsw i32 %i.am, %i.ag                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %bb.b, !llvm.loop !743

._crit_edge.unr-lcssa:                            ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  %.08793.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.an, %._crit_edge.unr-lcssa ]
  %lcmp.mod183 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod183)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.c ] ; 2 uses
  %.08793.epil = phi i32 [ %.08793.epil.init, %.epil.preheader ], [ %i.at, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.epil
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = add nsw i32 %i.as, %.08793.epil         ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.c, !llvm.loop !744

._crit_edge:                                      ; preds = %bb.c, %._crit_edge.unr-lcssa
  %.lcssa = phi i32 [ %i.an, %._crit_edge.unr-lcssa ], [ %i.at, %bb.c ] ; 4 uses
  %i.au = add i32 %.lcssa, 2                      ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 1284
  store i32 %i.au, ptr %i.av, align 4
  %i.aw = icmp sgt i32 %.lcssa, -2
  br i1 %i.aw, label %.lr.ph97.preheader, label %.preheader

.lr.ph97.preheader:                               ; preds = %._crit_edge.thread, %._crit_edge
  %i.ax = phi i32 [ 2, %._crit_edge.thread ], [ %i.au, %._crit_edge ] ; 7 uses
  %.087.lcssa158 = phi i32 [ 0, %._crit_edge.thread ], [ %.lcssa, %._crit_edge ] ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %wide.trip.count120 = zext nneg i32 %smax to i64 ; 9 uses
  %min.iters.check = icmp slt i32 %i.ax, 4
  br i1 %min.iters.check, label %.lr.ph97.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph97.preheader
  %n.vec = and i64 %wide.trip.count120, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.d, <2 x i64> %vec.ind
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.d, <2 x i64> %step.add
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store <2 x ptr> %i.ay, ptr %i.ba, align 16
  store <2 x ptr> %i.az, ptr %i.bb, align 16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count120
  br i1 %cmp.n, label %.lr.ph101, label %.lr.ph97.preheader181

.lr.ph97.preheader181:                            ; preds = %.lr.ph97.preheader, %middle.block
  %indvars.iv117.ph = phi i64 [ 0, %.lr.ph97.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph97

.lr.ph97:                                         ; preds = %.lr.ph97.preheader181, %.lr.ph97
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.lr.ph97 ], [ %indvars.iv117.ph, %.lr.ph97.preheader181 ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv117
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv117
  store ptr %i.bd, ptr %i.be, align 8
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond121.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count120
  br i1 %exitcond121.not, label %.lr.ph101, label %.lr.ph97, !llvm.loop !746

.lr.ph101:                                        ; preds = %.lr.ph97, %middle.block
  %i.bf = sext i32 %i.ax to i64
  call void @qsort(ptr noundef nonnull %i.a, i64 noundef %i.bf, i64 noundef 8, ptr noundef nonnull @icomp) #62
  %i.bg = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 2 uses
  %smax125 = call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %wide.trip.count126 = zext nneg i32 %smax125 to i64
  %min.iters.check170 = icmp slt i32 %i.ax, 4
  br i1 %min.iters.check170, label %scalar.ph169.preheader, label %vector.ph171

vector.ph171:                                     ; preds = %.lr.ph101
  %n.vec173 = and i64 %wide.trip.count120, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bg, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph171
  %index175 = phi i64 [ 0, %vector.ph171 ], [ %index.next177, %vector.body174 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index175 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bi, align 16
  %wide.load176 = load <2 x ptr>, ptr %i.bj, align 16
  %i.bk = ptrtoint <2 x ptr> %wide.load to <2 x i64>
  %i.bl = ptrtoint <2 x ptr> %wide.load176 to <2 x i64>
  %i.bm = sub <2 x i64> %i.bk, %broadcast.splat
  %i.bn = sub <2 x i64> %i.bl, %broadcast.splat
  %i.bo = lshr exact <2 x i64> %i.bm, splat (i64 2)
  %i.bp = lshr exact <2 x i64> %i.bn, splat (i64 2)
  %i.bq = trunc <2 x i64> %i.bo to <2 x i32>
  %i.br = trunc <2 x i64> %i.bp to <2 x i32>
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index175 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store <2 x i32> %i.bq, ptr %i.bs, align 4
  store <2 x i32> %i.br, ptr %i.bt, align 4
  %index.next177 = add nuw i64 %index175, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next177, %n.vec173
  br i1 %i.bu, label %middle.block178, label %vector.body174, !llvm.loop !747

middle.block178:                                  ; preds = %vector.body174
  %cmp.n179 = icmp eq i64 %n.vec173, %wide.trip.count120
  br i1 %cmp.n179, label %.lr.ph103, label %scalar.ph169.preheader

scalar.ph169.preheader:                           ; preds = %.lr.ph101, %middle.block178
  %indvars.iv122.ph = phi i64 [ 0, %.lr.ph101 ], [ %n.vec173, %middle.block178 ]
  br label %scalar.ph169

.lr.ph103:                                        ; preds = %scalar.ph169, %middle.block178
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 520 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 5 uses
  %xtraiter185 = and i64 %wide.trip.count120, 3   ; 3 uses
  %i.bx = icmp slt i32 %i.ax, 4
  br i1 %i.bx, label %.epil.preheader184, label %.lr.ph103.new

.lr.ph103.new:                                    ; preds = %.lr.ph103
  %unroll_iter189 = and i64 %wide.trip.count120, 2147483644
  br label %bb.e

scalar.ph169:                                     ; preds = %scalar.ph169.preheader, %scalar.ph169
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %scalar.ph169 ], [ %indvars.iv122.ph, %scalar.ph169.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv122
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = sub i64 %i.ca, %i.bg
  %i.cc = lshr exact i64 %i.cb, 2
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv122
  store i32 %i.cd, ptr %i.ce, align 4
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count126
  br i1 %exitcond127.not, label %.lr.ph103, label %scalar.ph169, !llvm.loop !748

.preheader:                                       ; preds = %._crit_edge
  %i.cf = sext i32 %i.au to i64
  call void @qsort(ptr noundef nonnull %i.a, i64 noundef %i.cf, i64 noundef 8, ptr noundef nonnull @icomp) #62
  br label %._crit_edge106

.lr.ph105.unr-lcssa:                              ; preds = %bb.e
  %lcmp.mod187.not = icmp eq i64 %xtraiter185, 0
  br i1 %lcmp.mod187.not, label %.lr.ph105, label %.epil.preheader184

.epil.preheader184:                               ; preds = %.lr.ph105.unr-lcssa, %.lr.ph103
  %indvars.iv128.epil.init = phi i64 [ 0, %.lr.ph103 ], [ %indvars.iv.next129.3, %.lr.ph105.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter185, 0
  call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader184
  %indvars.iv128.epil = phi i64 [ %indvars.iv128.epil.init, %.epil.preheader184 ], [ %indvars.iv.next129.epil, %bb.d ] ; 3 uses
  %epil.iter186 = phi i64 [ 0, %.epil.preheader184 ], [ %epil.iter186.next, %bb.d ]
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv128.epil
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.ci
  %i.ck = trunc nuw nsw i64 %indvars.iv128.epil to i32
  store i32 %i.ck, ptr %i.cj, align 4
  %indvars.iv.next129.epil = add nuw nsw i64 %indvars.iv128.epil, 1
  %epil.iter186.next = add i64 %epil.iter186, 1   ; 2 uses
  %epil.iter186.cmp.not = icmp eq i64 %epil.iter186.next, %xtraiter185
  br i1 %epil.iter186.cmp.not, label %.lr.ph105, label %bb.d, !llvm.loop !749

.lr.ph105:                                        ; preds = %bb.d, %.lr.ph105.unr-lcssa
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 260 ; 5 uses
  %xtraiter192 = and i64 %wide.trip.count120, 3   ; 3 uses
  %i.cm = icmp slt i32 %i.ax, 4
  br i1 %i.cm, label %.epil.preheader191, label %.lr.ph105.new

.lr.ph105.new:                                    ; preds = %.lr.ph105
  %unroll_iter196 = and i64 %wide.trip.count120, 2147483644
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.lr.ph103.new
  %indvars.iv128 = phi i64 [ 0, %.lr.ph103.new ], [ %indvars.iv.next129.3, %bb.e ] ; 6 uses
  %niter190 = phi i64 [ 0, %.lr.ph103.new ], [ %niter190.next.3, %bb.e ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv128
  %i.co = load i32, ptr %i.cn, align 4
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cp
  %i.cr = trunc nuw nsw i64 %indvars.iv128 to i32
  store i32 %i.cr, ptr %i.cq, align 4
  %indvars.iv.next129 = or disjoint i64 %indvars.iv128, 1 ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next129
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cu
  %i.cw = trunc nuw nsw i64 %indvars.iv.next129 to i32
  store i32 %i.cw, ptr %i.cv, align 4
  %indvars.iv.next129.1 = or disjoint i64 %indvars.iv128, 2 ; 2 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next129.1
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.cz
  %i.db = trunc nuw nsw i64 %indvars.iv.next129.1 to i32
  store i32 %i.db, ptr %i.da, align 4
  %indvars.iv.next129.2 = or disjoint i64 %indvars.iv128, 3 ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next129.2
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.de
  %i.dg = trunc nuw nsw i64 %indvars.iv.next129.2 to i32
  store i32 %i.dg, ptr %i.df, align 4
  %indvars.iv.next129.3 = add nuw nsw i64 %indvars.iv128, 4 ; 2 uses
  %niter190.next.3 = add i64 %niter190, 4         ; 2 uses
  %niter190.ncmp.3 = icmp eq i64 %niter190.next.3, %unroll_iter189
  br i1 %niter190.ncmp.3, label %.lr.ph105.unr-lcssa, label %bb.e, !llvm.loop !750

bb.f:                                             ; preds = %bb.f, %.lr.ph105.new
  %indvars.iv134 = phi i64 [ 0, %.lr.ph105.new ], [ %indvars.iv.next135.3, %bb.f ] ; 6 uses
  %niter197 = phi i64 [ 0, %.lr.ph105.new ], [ %niter197.next.3, %bb.f ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv134
  %i.di = load i32, ptr %i.dh, align 4
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv134
  store i32 %i.dl, ptr %i.dm, align 4
  %indvars.iv.next135 = or disjoint i64 %indvars.iv134, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next135
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next135
  store i32 %i.dr, ptr %i.ds, align 4
  %indvars.iv.next135.1 = or disjoint i64 %indvars.iv134, 2 ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next135.1
  %i.du = load i32, ptr %i.dt, align 4
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next135.1
  store i32 %i.dx, ptr %i.dy, align 4
  %indvars.iv.next135.2 = or disjoint i64 %indvars.iv134, 3 ; 2 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv.next135.2
  %i.ea = load i32, ptr %i.dz, align 4
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next135.2
  store i32 %i.ed, ptr %i.ee, align 4
  %indvars.iv.next135.3 = add nuw nsw i64 %indvars.iv134, 4 ; 2 uses
  %niter197.next.3 = add i64 %niter197, 4         ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %._crit_edge106.loopexit.unr-lcssa, label %bb.f, !llvm.loop !751

._crit_edge106.loopexit.unr-lcssa:                ; preds = %bb.f
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %._crit_edge106, label %.epil.preheader191

.epil.preheader191:                               ; preds = %._crit_edge106.loopexit.unr-lcssa, %.lr.ph105
  %indvars.iv134.epil.init = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next135.3, %._crit_edge106.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader191
  %indvars.iv134.epil = phi i64 [ %indvars.iv134.epil.init, %.epil.preheader191 ], [ %indvars.iv.next135.epil, %bb.g ] ; 3 uses
  %epil.iter193 = phi i64 [ 0, %.epil.preheader191 ], [ %epil.iter193.next, %bb.g ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv134.epil
  %i.eg = load i32, ptr %i.ef, align 4
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv134.epil
  store i32 %i.ej, ptr %i.ek, align 4
  %indvars.iv.next135.epil = add nuw nsw i64 %indvars.iv134.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %._crit_edge106, label %bb.g, !llvm.loop !752

._crit_edge106:                                   ; preds = %._crit_edge106.loopexit.unr-lcssa, %bb.g, %.preheader
  %.087.lcssa157160163166 = phi i32 [ %.lcssa, %.preheader ], [ %.087.lcssa158, %bb.g ], [ %.087.lcssa158, %._crit_edge106.loopexit.unr-lcssa ] ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 832
  %i.em = load i32, ptr %i.el, align 4
  %switch.tableidx = add i32 %i.em, -1            ; 2 uses
  %i.en = icmp ult i32 %switch.tableidx, 4
  br i1 %i.en, label %switch.lookup, label %bb.h

switch.lookup:                                    ; preds = %._crit_edge106
  %i.eo = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.floor1_look, i64 %i.eo
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 1292
  store i32 %switch.ext, ptr %i.ep, align 4
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge106, %switch.lookup
  %i.eq = icmp sgt i32 %.087.lcssa157160163166, 0
  br i1 %i.eq, label %.lr.ph114, label %._crit_edge115

.lr.ph114:                                        ; preds = %bb.h
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 1032
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 780
  %wide.trip.count154 = zext nneg i32 %.087.lcssa157160163166 to i64
  br label %.new

.new:                                             ; preds = %.lr.ph114, %bb.j
  %indvars.iv149 = phi i64 [ 0, %.lr.ph114 ], [ %indvars.iv.next150, %bb.j ] ; 4 uses
  %indvars.iv147 = phi i64 [ 2, %.lr.ph114 ], [ %indvars.iv.next148, %bb.j ] ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv149
end_hunk_5
