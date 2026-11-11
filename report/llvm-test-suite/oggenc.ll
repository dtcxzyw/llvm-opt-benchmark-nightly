Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/oggenc?download=true
inline.NumInlined: 678
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 71
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 195
begin_hunk_0_@vorbis_synthesis_trackonly:bb.a
  %i.cc = sext i32 %i.cb to i64                   ; 5 uses
  %i.cd = getelementptr inbounds i8, ptr %i.aa, i64 %i.cc ; 3 uses
  store ptr %i.cd, ptr %i.ad, align 8
  store i64 %i.cc, ptr %i.i, align 8
  %i.ce = and i32 %i.ar, 7                        ; 4 uses
  store i32 %i.ce, ptr %i.ai, align 8
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
  %.not.i46 = icmp slt i64 %i.cq, %i.ag
  br i1 %.not.i46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cr = shl nsw i64 %i.cc, 3
  %i.cs = zext nneg i32 %i.cp to i64
  %i.ct = add nsw i64 %i.cr, %i.cs
  %i.cu = lshr exact i64 %i.af, 29
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
  store i32 %i.de, ptr %i.ai, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.1.i48, ptr %i.df, align 8
  %i.dg = add nuw nsw i32 %i.de, 1                ; 2 uses
  %i.dh = add nsw i64 %i.dd, 4
  %.not.i55 = icmp slt i64 %i.dh, %i.ag
  br i1 %.not.i55, label %bb.p, label %bb.o

bb.o:                                             ; preds = %oggpack_read.exit54
  %i.di = shl nsw i64 %i.dd, 3
  %i.dj = zext nneg i32 %i.dg to i64
  %i.dk = add nsw i64 %i.di, %i.dj
  %i.dl = lshr exact i64 %i.af, 29
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
  store i32 %i.dv, ptr %i.ai, align 8
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
  store i32 1, ptr %i.ai, align 8
  br label %bb.s

bb.s:                                             ; preds = %.critedge, %oggpack_read.exit63, %oggpack_read.exit45, %oggpack_read.exit, %bb.r
  %.0 = phi i32 [ 0, %bb.r ], [ -135, %oggpack_read.exit ], [ -136, %oggpack_read.exit45 ], [ -136, %oggpack_read.exit63 ], [ -135, %.critedge ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -131, 1) i32 @vorbis_synthesis_blockin(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #25 !guid !3591 {
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
  %i.aj = ashr i64 %i.ai, %i.ah                   ; 12 uses
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
  %. = select i1 %.not241, i32 0, i32 %i.ao       ; 3 uses
  %.256 = select i1 %.not241, i32 %i.ao, i32 0    ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph274, label %._crit_edge275

.lr.ph274:                                        ; preds = %bb.g
  %i.bo = ashr i64 %i.af, %i.ah                   ; 5 uses
  %i.bp = trunc i64 %i.bo to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bs = sext i32 %.256 to i64                   ; 7 uses
  %i.bt = icmp sgt i32 %i.ao, 0
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bv = sdiv i32 %i.ao, 2                       ; 2 uses
  %i.bw = sext i32 %i.bv to i64                   ; 5 uses
  %.neg328332 = lshr i32 %i.ak, 1
  %.neg328.neg = sub nsw i32 0, %.neg328332
  %i.bx = sext i32 %.neg328.neg to i64
  %i.by = icmp sgt i32 %i.ak, 0                   ; 3 uses
  %i.bz = sdiv i32 %i.ak, 2                       ; 4 uses
  %narrow = sub nsw i32 0, %i.bz
  %i.ca = sext i32 %narrow to i64
  %i.cb = add nsw i32 %i.bv, %i.bz                ; 2 uses
  %i.cc = sext i32 %. to i64                      ; 2 uses
  %sext255 = shl i64 %i.bo, 32
  %i.cd = ashr exact i64 %sext255, 30             ; 2 uses
  %i.ce = icmp sgt i32 %i.bp, 0
  %sext327 = shl i64 %i.aj, 32                    ; 3 uses
  %i.cf = ashr exact i64 %sext327, 32             ; 3 uses
  %wide.trip.count = and i64 %i.an, 2147483647    ; 4 uses
  %i.cg = shl i64 %i.an, 2
  %i.ch = and i64 %i.cg, 8589934588               ; 3 uses
  %wide.trip.count283 = and i64 %i.aj, 2147483647 ; 17 uses
  %wide.trip.count288 = and i64 %i.aj, 2147483647
  %wide.trip.count297 = zext i32 %i.cb to i64     ; 4 uses
  %wide.trip.count302 = and i64 %i.aj, 2147483647
  %wide.trip.count307 = and i64 %i.bo, 2147483647 ; 4 uses
  %i.ci = shl nsw i64 %i.cc, 2
  %i.cj = ashr exact i64 %sext327, 30
  %i.ck = shl nuw nsw i64 %wide.trip.count283, 2  ; 3 uses
  %i.cl = sub nsw i64 %i.cj, %i.ck
  %i.cm = add nsw i64 %wide.trip.count283, %i.bs
  %i.cn = shl nsw i64 %i.cm, 2
  %i.co = sext i32 %i.bz to i64
  %i.cp = add nsw i64 %i.bs, %i.co
  %i.cq = sub nsw i64 %i.cp, %i.bw
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = shl nuw nsw i64 %wide.trip.count283, 2  ; 2 uses
  %i.ct = add nsw i64 %wide.trip.count283, %i.bw
  %i.cu = sext i32 %i.bz to i64
  %i.cv = sub nsw i64 %i.ct, %i.cu
  %i.cw = shl nsw i64 %i.cv, 2
  %i.cx = ashr exact i64 %sext327, 30             ; 2 uses
  %i.cy = sub nsw i64 %i.cx, %i.cs
  %i.cz = add nsw i64 %wide.trip.count283, %i.bs
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = shl nuw nsw i64 %wide.trip.count283, 2  ; 3 uses
  %i.dc = sub nsw i64 %i.cx, %i.db
  %i.dd = add nsw i64 %i.bs, %i.bw
  %i.de = add nsw i64 %i.dd, %wide.trip.count283
  %2 = shl nsw i64 %i.de, 2
  %i.df = shl i64 %i.aj, 1
  %3 = and i64 %i.df, 8589934588
  %4 = sub nsw i64 %2, %3
  %i.dg = shl nsw i64 %i.bs, 2
  %min.iters.check493 = icmp samesign ult i64 %wide.trip.count, 8
  %n.vec503 = and i64 %i.an, 2147483640           ; 3 uses
  %cmp.n518 = icmp eq i64 %wide.trip.count, %n.vec503
  %xtraiter = and i64 %i.an, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check452 = icmp samesign ult i64 %wide.trip.count283, 8
  %n.vec466 = and i64 %i.aj, 2147483640           ; 3 uses
  %cmp.n481 = icmp eq i64 %wide.trip.count283, %n.vec466
  %xtraiter529 = and i64 %i.aj, 1
  %lcmp.mod530.not = icmp eq i64 %xtraiter529, 0
  %min.iters.check405 = icmp samesign ult i64 %wide.trip.count283, 8
  %n.vec419 = and i64 %i.aj, 2147483640           ; 3 uses
  %cmp.n434 = icmp eq i64 %wide.trip.count283, %n.vec419
  %xtraiter531 = and i64 %i.aj, 1
  %lcmp.mod532.not = icmp eq i64 %xtraiter531, 0
  %invariant.op = add i64 %i.cr, -1
  %min.iters.check347 = icmp samesign ult i64 %wide.trip.count283, 8
  %n.vec357 = and i64 %i.aj, 2147483640           ; 3 uses
  %cmp.n371 = icmp eq i64 %wide.trip.count283, %n.vec357
  %xtraiter535.a = and i64 %i.aj, 1
  %lcmp.mod536.not.a = icmp eq i64 %xtraiter535.a, 0
  %min.iters.check = icmp samesign ult i64 %wide.trip.count307, 8
  %n.vec = and i64 %i.bo, 2147483640              ; 3 uses
  %cmp.n = icmp eq i64 %wide.trip.count307, %n.vec
  %xtraiter538 = and i64 %i.bo, 3                 ; 2 uses
  %lcmp.mod539.not = icmp eq i64 %xtraiter538, 0
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph274, %._crit_edge
  %indvars.iv309 = phi i64 [ 0, %.lr.ph274 ], [ %indvars.iv.next310, %._crit_edge ] ; 8 uses
  %i.dh = load i64, ptr %i.p, align 8
  %.not251 = icmp eq i64 %i.dh, 0
  %i.di = load i64, ptr %i.n, align 8
  %.not252 = icmp eq i64 %i.di, 0                 ; 2 uses
  br i1 %.not251, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = load ptr, ptr %i.br, align 8
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %indvars.iv309
  %i.dl = load ptr, ptr %i.dk, align 8            ; 3 uses
  %i.dm = getelementptr [4 x i8], ptr %i.dl, i64 %i.bs ; 7 uses
  br i1 %.not252, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dn = load i32, ptr %i.bq, align 4
  %i.do = sub nsw i32 %i.dn, %i.h
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.dp
  %i.dr = load ptr, ptr %i.dq, align 8            ; 6 uses
  %i.ds = load ptr, ptr %1, align 8
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv309
  %i.du = load ptr, ptr %i.dt, align 8            ; 6 uses
  br i1 %i.bt, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.dv = getelementptr i8, ptr %i.dr, i64 %i.ch  ; 5 uses
  br i1 %min.iters.check493, label %.lr.ph.preheader527, label %vector.memcheck494

vector.memcheck494:                               ; preds = %.lr.ph.preheader
  %i.dw = getelementptr i8, ptr %i.dl, i64 %i.dg
  %i.dx = getelementptr i8, ptr %i.dw, i64 %i.ch  ; 2 uses
  %i.dy = getelementptr i8, ptr %i.du, i64 %i.ch
  %bound0495 = icmp ult ptr %i.dm, %i.dv
  %bound1496 = icmp ult ptr %i.dr, %i.dx
  %found.conflict497 = and i1 %bound0495, %bound1496
  %bound0498 = icmp ult ptr %i.dm, %i.dy
  %bound1499 = icmp ult ptr %i.du, %i.dx
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %found.conflict497, %found.conflict500
  br i1 %conflict.rdx501, label %.lr.ph.preheader527, label %vector.body504

vector.body504:                                   ; preds = %vector.memcheck494, %vector.body504
  %index505 = phi i64 [ %index.next516, %vector.body504 ], [ 0, %vector.memcheck494 ] ; 5 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index505 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load506 = load <4 x float>, ptr %i.dz, align 4, !alias.scope !3592, !noalias !3593
  %wide.load507 = load <4 x float>, ptr %i.ea, align 4, !alias.scope !3592, !noalias !3593
  %i.eb = xor i64 %index505, -1
  %i.ec = getelementptr [4 x i8], ptr %i.dv, i64 %i.eb ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -12
  %i.ee = getelementptr i8, ptr %i.ec, i64 -28
  %wide.load508 = load <4 x float>, ptr %i.ed, align 4, !alias.scope !3594
  %wide.load509 = load <4 x float>, ptr %i.ee, align 4, !alias.scope !3594
  %reverse510 = shufflevector <4 x float> %wide.load508, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse511 = shufflevector <4 x float> %wide.load509, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.ef = fmul <4 x float> %wide.load506, %reverse510
  %i.eg = fmul <4 x float> %wide.load507, %reverse511
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %index505 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %wide.load512 = load <4 x float>, ptr %i.eh, align 4, !alias.scope !3595
  %wide.load513 = load <4 x float>, ptr %i.ei, align 4, !alias.scope !3595
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %index505 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load514 = load <4 x float>, ptr %i.ej, align 4, !alias.scope !3594
  %wide.load515 = load <4 x float>, ptr %i.ek, align 4, !alias.scope !3594
  %i.el = fmul <4 x float> %wide.load512, %wide.load514
  %i.em = fmul <4 x float> %wide.load513, %wide.load515
  %i.en = fadd <4 x float> %i.ef, %i.el
  %i.eo = fadd <4 x float> %i.eg, %i.em
  store <4 x float> %i.en, ptr %i.dz, align 4, !alias.scope !3592, !noalias !3593
  store <4 x float> %i.eo, ptr %i.ea, align 4, !alias.scope !3592, !noalias !3593
  %index.next516 = add nuw i64 %index505, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next516, %n.vec503
  br i1 %i.ep, label %middle.block517, label %vector.body504, !llvm.loop !3561

middle.block517:                                  ; preds = %vector.body504
  br i1 %cmp.n518, label %.loopexit, label %.lr.ph.preheader527

.lr.ph.preheader527:                              ; preds = %vector.memcheck494, %.lr.ph.preheader, %middle.block517
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck494 ], [ 0, %.lr.ph.preheader ], [ %n.vec503, %middle.block517 ] ; 7 uses
  %.neg541 = or disjoint i64 %indvars.iv.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader527
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.ph ; 2 uses
  %i.er = load float, ptr %i.eq, align 4
  %i.es = xor i64 %indvars.iv.ph, -1
  %i.et = getelementptr [4 x i8], ptr %i.dv, i64 %i.es
  %i.eu = load float, ptr %i.et, align 4
  %i.ev = fmul float %i.er, %i.eu
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.ph
  %i.ex = load float, ptr %i.ew, align 4
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.ph
  %i.ez = load float, ptr %i.ey, align 4
  %i.fa = fmul float %i.ex, %i.ez
  %i.fb = fadd float %i.ev, %i.fa
  store float %i.fb, ptr %i.eq, align 4
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader527
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader527 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.fc = icmp eq i64 %wide.trip.count, %.neg541
  br i1 %i.fc, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 7 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4
  %i.ff = xor i64 %indvars.iv, -1
  %i.fg = getelementptr [4 x i8], ptr %i.dv, i64 %i.ff
  %i.fh = load float, ptr %i.fg, align 4
  %i.fi = fmul float %i.fe, %i.fh
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  %i.fk = load float, ptr %i.fj, align 4
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv
  %i.fm = load float, ptr %i.fl, align 4
  %i.fn = fmul float %i.fk, %i.fm
  %i.fo = fadd float %i.fi, %i.fn
  store float %i.fo, ptr %i.fd, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next ; 2 uses
  %i.fq = load float, ptr %i.fp, align 4
  %i.fr = sub i64 -2, %indvars.iv
  %i.fs = getelementptr [4 x i8], ptr %i.dv, i64 %i.fr
  %i.ft = load float, ptr %i.fs, align 4
  %i.fu = fmul float %i.fq, %i.ft
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv.next
  %i.fw = load float, ptr %i.fv, align 4
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %indvars.iv.next
  %i.fy = load float, ptr %i.fx, align 4
  %i.fz = fmul float %i.fw, %i.fy
  %i.ga = fadd float %i.fu, %i.fz
  store float %i.ga, ptr %i.fp, align 4
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !3562

bb.k:                                             ; preds = %bb.i
  %i.gb = load i32, ptr %i.bu, align 8
  %i.gc = sub nsw i32 %i.gb, %i.h
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.gd
  %i.gf = load ptr, ptr %i.ge, align 8            ; 8 uses
  %i.gg = getelementptr [4 x i8], ptr %i.dm, i64 %i.bw
  %i.gh = getelementptr [4 x i8], ptr %i.gg, i64 %i.bx ; 7 uses
  %i.gi = load ptr, ptr %1, align 8
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %indvars.iv309
  %i.gk = load ptr, ptr %i.gj, align 8            ; 6 uses
  br i1 %i.by, label %.lr.ph263.preheader, label %.loopexit

.lr.ph263.preheader:                              ; preds = %bb.k
  %i.gl = getelementptr [4 x i8], ptr %i.gf, i64 %i.cf ; 5 uses
  br i1 %min.iters.check452, label %.lr.ph263.preheader525, label %vector.memcheck453

vector.memcheck453:                               ; preds = %.lr.ph263.preheader
  %i.gm = getelementptr i8, ptr %i.dl, i64 %4     ; 3 uses
  %i.gn = getelementptr i8, ptr %i.gf, i64 %i.db
  %i.go = getelementptr i8, ptr %i.gf, i64 %i.dc
  %i.gp = getelementptr i8, ptr %i.gk, i64 %i.db
  %bound0454 = icmp ult ptr %i.gh, %i.gn
  %bound1455 = icmp ult ptr %i.gf, %i.gm
  %found.conflict456 = and i1 %bound0454, %bound1455
  %bound0457 = icmp ult ptr %i.gh, %i.gl
  %bound1458 = icmp ult ptr %i.go, %i.gm
  %found.conflict459 = and i1 %bound0457, %bound1458
  %conflict.rdx460 = or i1 %found.conflict456, %found.conflict459
  %bound0461 = icmp ult ptr %i.gh, %i.gp
  %bound1462 = icmp ult ptr %i.gk, %i.gm
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx464 = or i1 %conflict.rdx460, %found.conflict463
  br i1 %conflict.rdx464, label %.lr.ph263.preheader525, label %vector.body467

vector.body467:                                   ; preds = %vector.memcheck453, %vector.body467
  %index468 = phi i64 [ %index.next479, %vector.body467 ], [ 0, %vector.memcheck453 ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %index468 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %wide.load469 = load <4 x float>, ptr %i.gq, align 4, !alias.scope !3596, !noalias !3597
  %wide.load470 = load <4 x float>, ptr %i.gr, align 4, !alias.scope !3596, !noalias !3597
  %i.gs = xor i64 %index468, -1
  %i.gt = getelementptr [4 x i8], ptr %i.gl, i64 %i.gs ; 2 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 -12
  %i.gv = getelementptr i8, ptr %i.gt, i64 -28
  %wide.load471 = load <4 x float>, ptr %i.gu, align 4, !alias.scope !3598
  %wide.load472 = load <4 x float>, ptr %i.gv, align 4, !alias.scope !3598
  %reverse473 = shufflevector <4 x float> %wide.load471, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse474 = shufflevector <4 x float> %wide.load472, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.gw = fmul <4 x float> %wide.load469, %reverse473
  %i.gx = fmul <4 x float> %wide.load470, %reverse474
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %index468 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load475 = load <4 x float>, ptr %i.gy, align 4, !alias.scope !3599
  %wide.load476 = load <4 x float>, ptr %i.gz, align 4, !alias.scope !3599
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %index468 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %wide.load477 = load <4 x float>, ptr %i.ha, align 4, !alias.scope !3600
  %wide.load478 = load <4 x float>, ptr %i.hb, align 4, !alias.scope !3600
  %i.hc = fmul <4 x float> %wide.load475, %wide.load477
  %i.hd = fmul <4 x float> %wide.load476, %wide.load478
  %i.he = fadd <4 x float> %i.gw, %i.hc
  %i.hf = fadd <4 x float> %i.gx, %i.hd
  store <4 x float> %i.he, ptr %i.gq, align 4, !alias.scope !3596, !noalias !3597
  store <4 x float> %i.hf, ptr %i.gr, align 4, !alias.scope !3596, !noalias !3597
  %index.next479 = add nuw i64 %index468, 8       ; 2 uses
  %i.hg = icmp eq i64 %index.next479, %n.vec466
  br i1 %i.hg, label %middle.block480, label %vector.body467, !llvm.loop !3568

middle.block480:                                  ; preds = %vector.body467
  br i1 %cmp.n481, label %.loopexit, label %.lr.ph263.preheader525

.lr.ph263.preheader525:                           ; preds = %vector.memcheck453, %.lr.ph263.preheader, %middle.block480
  %indvars.iv280.ph = phi i64 [ 0, %vector.memcheck453 ], [ 0, %.lr.ph263.preheader ], [ %n.vec466, %middle.block480 ] ; 7 uses
  %.neg542 = or disjoint i64 %indvars.iv280.ph, 1
  br i1 %lcmp.mod530.not, label %.lr.ph263.prol.loopexit, label %.lr.ph263.prol

.lr.ph263.prol:                                   ; preds = %.lr.ph263.preheader525
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280.ph ; 2 uses
  %i.hi = load float, ptr %i.hh, align 4
  %i.hj = xor i64 %indvars.iv280.ph, -1
  %i.hk = getelementptr [4 x i8], ptr %i.gl, i64 %i.hj
  %i.hl = load float, ptr %i.hk, align 4
  %i.hm = fmul float %i.hi, %i.hl
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280.ph
  %i.ho = load float, ptr %i.hn, align 4
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280.ph
  %i.hq = load float, ptr %i.hp, align 4
  %i.hr = fmul float %i.ho, %i.hq
  %i.hs = fadd float %i.hm, %i.hr
  store float %i.hs, ptr %i.hh, align 4
  %indvars.iv.next281.prol = or disjoint i64 %indvars.iv280.ph, 1
  br label %.lr.ph263.prol.loopexit

.lr.ph263.prol.loopexit:                          ; preds = %.lr.ph263.prol, %.lr.ph263.preheader525
  %indvars.iv280.unr = phi i64 [ %indvars.iv280.ph, %.lr.ph263.preheader525 ], [ %indvars.iv.next281.prol, %.lr.ph263.prol ]
  %i.ht = icmp eq i64 %wide.trip.count283, %.neg542
  br i1 %i.ht, label %.loopexit, label %.lr.ph263

.lr.ph263:                                        ; preds = %.lr.ph263.prol.loopexit, %.lr.ph263
  %indvars.iv280 = phi i64 [ %indvars.iv.next281.1, %.lr.ph263 ], [ %indvars.iv280.unr, %.lr.ph263.prol.loopexit ] ; 7 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv280 ; 2 uses
  %i.hv = load float, ptr %i.hu, align 4
  %i.hw = xor i64 %indvars.iv280, -1
  %i.hx = getelementptr [4 x i8], ptr %i.gl, i64 %i.hw
  %i.hy = load float, ptr %i.hx, align 4
  %i.hz = fmul float %i.hv, %i.hy
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv280
  %i.ib = load float, ptr %i.ia, align 4
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv280
  %i.id = load float, ptr %i.ic, align 4
  %i.ie = fmul float %i.ib, %i.id
  %i.if = fadd float %i.hz, %i.ie
  store float %i.if, ptr %i.hu, align 4
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.gh, i64 %indvars.iv.next281 ; 2 uses
  %i.ih = load float, ptr %i.ig, align 4
  %i.ii = sub i64 -2, %indvars.iv280
  %i.ij = getelementptr [4 x i8], ptr %i.gl, i64 %i.ii
  %i.ik = load float, ptr %i.ij, align 4
  %i.il = fmul float %i.ih, %i.ik
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.next281
  %i.in = load float, ptr %i.im, align 4
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.next281
  %i.ip = load float, ptr %i.io, align 4
  %i.iq = fmul float %i.in, %i.ip
  %i.ir = fadd float %i.il, %i.iq
  store float %i.ir, ptr %i.ig, align 4
  %indvars.iv.next281.1 = add nuw nsw i64 %indvars.iv280, 2 ; 2 uses
  %exitcond284.not.1 = icmp eq i64 %indvars.iv.next281.1, %wide.trip.count283
  br i1 %exitcond284.not.1, label %.loopexit, label %.lr.ph263, !llvm.loop !3569

bb.l:                                             ; preds = %bb.h
  %i.is = load i32, ptr %i.bu, align 8
  %i.it = sub nsw i32 %i.is, %i.h
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds [8 x i8], ptr @vwin, i64 %i.iu
  %i.iw = load ptr, ptr %i.iv, align 8            ; 16 uses
  %i.ix = load ptr, ptr %i.br, align 8
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.ix, i64 %indvars.iv309
  %i.iz = load ptr, ptr %i.iy, align 8            ; 4 uses
  %i.ja = ptrtoaddr ptr %i.iz to i64
  %i.jb = getelementptr [4 x i8], ptr %i.iz, i64 %i.bs ; 20 uses
  %i.jc = load ptr, ptr %1, align 8
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv309
  %i.je = load ptr, ptr %i.jd, align 8            ; 9 uses
  %i.jf = ptrtoaddr ptr %i.je to i64
  br i1 %.not252, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.jg = getelementptr [4 x i8], ptr %i.je, i64 %i.bw
  %i.jh = getelementptr [4 x i8], ptr %i.jg, i64 %i.ca ; 11 uses
  br i1 %i.by, label %.lr.ph265.preheader, label %.preheader

.lr.ph265.preheader:                              ; preds = %bb.m
  %i.ji = getelementptr [4 x i8], ptr %i.iw, i64 %i.cf ; 5 uses
  br i1 %min.iters.check405, label %.lr.ph265.preheader524, label %vector.memcheck406

vector.memcheck406:                               ; preds = %.lr.ph265.preheader
  %i.jj = getelementptr i8, ptr %i.iz, i64 %i.da  ; 3 uses
  %i.jk = getelementptr i8, ptr %i.iw, i64 %i.cs
  %i.jl = getelementptr i8, ptr %i.iw, i64 %i.cy
  %i.jm = getelementptr i8, ptr %i.je, i64 %i.cw
  %bound0407 = icmp ult ptr %i.jb, %i.jk
  %bound1408 = icmp ult ptr %i.iw, %i.jj
  %found.conflict409 = and i1 %bound0407, %bound1408
  %bound0410 = icmp ult ptr %i.jb, %i.ji
  %bound1411 = icmp ult ptr %i.jl, %i.jj
  %found.conflict412 = and i1 %bound0410, %bound1411
  %conflict.rdx413 = or i1 %found.conflict409, %found.conflict412
  %bound0414 = icmp ult ptr %i.jb, %i.jm
  %bound1415 = icmp ult ptr %i.jh, %i.jj
  %found.conflict416 = and i1 %bound0414, %bound1415
  %conflict.rdx417 = or i1 %conflict.rdx413, %found.conflict416
  br i1 %conflict.rdx417, label %.lr.ph265.preheader524, label %vector.body420

vector.body420:                                   ; preds = %vector.memcheck406, %vector.body420
  %index421 = phi i64 [ %index.next432, %vector.body420 ], [ 0, %vector.memcheck406 ] ; 5 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %index421 ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load422 = load <4 x float>, ptr %i.jn, align 4, !alias.scope !3601, !noalias !3602
  %wide.load423 = load <4 x float>, ptr %i.jo, align 4, !alias.scope !3601, !noalias !3602
  %i.jp = xor i64 %index421, -1
  %i.jq = getelementptr [4 x i8], ptr %i.ji, i64 %i.jp ; 2 uses
  %i.jr = getelementptr i8, ptr %i.jq, i64 -12
  %i.js = getelementptr i8, ptr %i.jq, i64 -28
  %wide.load424 = load <4 x float>, ptr %i.jr, align 4, !alias.scope !3603
  %wide.load425 = load <4 x float>, ptr %i.js, align 4, !alias.scope !3603
  %reverse426 = shufflevector <4 x float> %wide.load424, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse427 = shufflevector <4 x float> %wide.load425, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.jt = fmul <4 x float> %wide.load422, %reverse426
  %i.ju = fmul <4 x float> %wide.load423, %reverse427
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %index421 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load428 = load <4 x float>, ptr %i.jv, align 4, !alias.scope !3604
  %wide.load429 = load <4 x float>, ptr %i.jw, align 4, !alias.scope !3604
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %index421 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  %wide.load430 = load <4 x float>, ptr %i.jx, align 4, !alias.scope !3605
  %wide.load431 = load <4 x float>, ptr %i.jy, align 4, !alias.scope !3605
  %i.jz = fmul <4 x float> %wide.load428, %wide.load430
  %i.ka = fmul <4 x float> %wide.load429, %wide.load431
  %i.kb = fadd <4 x float> %i.jt, %i.jz
  %i.kc = fadd <4 x float> %i.ju, %i.ka
  store <4 x float> %i.kb, ptr %i.jn, align 4, !alias.scope !3601, !noalias !3602
  store <4 x float> %i.kc, ptr %i.jo, align 4, !alias.scope !3601, !noalias !3602
  %index.next432 = add nuw i64 %index421, 8       ; 2 uses
  %i.kd = icmp eq i64 %index.next432, %n.vec419
  br i1 %i.kd, label %middle.block433, label %vector.body420, !llvm.loop !3575

middle.block433:                                  ; preds = %vector.body420
  br i1 %cmp.n434, label %.preheader, label %.lr.ph265.preheader524

.lr.ph265.preheader524:                           ; preds = %vector.memcheck406, %.lr.ph265.preheader, %middle.block433
  %indvars.iv285.ph = phi i64 [ 0, %vector.memcheck406 ], [ 0, %.lr.ph265.preheader ], [ %n.vec419, %middle.block433 ] ; 7 uses
  %.neg543 = or disjoint i64 %indvars.iv285.ph, 1
  br i1 %lcmp.mod532.not, label %.lr.ph265.prol.loopexit, label %.lr.ph265.prol

.lr.ph265.prol:                                   ; preds = %.lr.ph265.preheader524
end_hunk_0
